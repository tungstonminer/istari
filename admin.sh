#!/bin/bash

# Text ################################################################################################################

read -d  SERVER_PROPERTIES <<-END
allow-flight=true
allow-nether=true
announce-player-achievements=true
difficulty=2
enable-command-block=false
enable-query=false
enable-rcon=false
force-gamemode=false
gamemode=0
generate-structures=true
generator-settings=
hardcore=false
level-name=istari
level-seed=istari-alpha-1
level-type=middleearth
max-build-height=256
max-players=8
max-threads=4
motd=The Official Server for Istari
online-mode=true
op-permission-level=4
player-idle-timeout=30
pvp=true
resource-pack=
server-ip=
server-port=25565
snooper-enabled=false
spawn-animals=true
spawn-monsters=true
spawn-npcs=true
spawn-protection=0
view-distance=12
white-list=true
END

read -d  USAGE <<-END
USAGE: $(basename $0) <command> <options>*

    installer -- create an archive for players to install locally
    backup    -- create a backup of the current server
    create    -- create a new server folder
    delete    -- delete the current server folder
    exec      -- run a command in the server then tail the logs
    refresh   -- update mods, configs, scripts, etc. in the server
    restart   -- stop the server and start it again
    start     -- start the server exactly as-is
    status    -- check whether the server is actually running
    stop      -- stop the server
    tail      -- tail the current server log
END

BASE_DIR="$(cd "$(dirname "$0")"; pwd)"
JAVA=$(which java)

if [[ -x "/Library/Internet Plug-Ins/JavaAppletPlugin.plugin/Contents/Home/bin/java" ]]; then
    JAVA="/Library/Internet Plug-Ins/JavaAppletPlugin.plugin/Contents/Home/bin/java"
fi

# Helper Functions ####################################################################################################

function cancel {
    usage
    if [[ "$1" != "" ]]; then
        printf "\n\n$1\n"
    fi
    printf "Canceled.\n\n"
    exit 0
}

function find-running-server-pid {
    PORT=$(cat $BASE_DIR/server/server.properties | grep server-port | cut -d= -f2)
    lsof -i -n 2>/dev/null | grep $PORT | grep LISTEN | awk '{print $2}'
}

function find-running-script-pid {
    ps -ef | grep "bash.*$(basename $0)" | grep -v grep | grep -v $$ | awk '{print $2}'
}

function require-ops {
    [[ -e ../ops.txt ]] || cancel "No ops.txt file was found."
}

function require-players {
    [[ -e ../players.txt ]] || cancel "No players.txt file was found."
}

function server-cmd {
    STDIN_FILE="$BASE_DIR/server/stdin"
    touch $STDIN_FILE
    echo $* >> $STDIN_FILE
}

function usage {
    printf "\n$USAGE\n\n"
}

# Command Functions ###################################################################################################

function command-installer {
    rm -rf installers/*.zip 2>/dev/null

    rm -rf installers/tmp
    mkdir -p installers/tmp

    REPO_DIR="$PWD"

    pushd installers/tmp
        git clone "$REPO_DIR" $SERVER_NAME
        rm -rf $SERVER_NAME/.git
        zip -r9 "../$SERVER_NAME-$(date +'%Y-%m-%d-%H-%M').zip" $SERVER_NAME
    popd

    rm -rf installers/tmp
}

function command-backup {
    mkdir -p "backups"
    server-cmd "/save-all"

    find $BASE_DIR -name ".DS_Store" | xargs rm
    zip -r9 "backups/$SERVER_NAME-backup-$(date +'%Y-%m-%d-%H-%M').zip" "$BASE_DIR/server"

    pushd backups
        ls -t | awk 'NR>5' | while read FILE; do rm $FILE; done
    popd
}

function command-create {
    if [[ -d "$BASE_DIR/server" ]]; then
        echo "Server $SERVER_NAME already exists. Skipping."
        return
    fi

    FORGE_INSTALLER_JAR=$(ls | grep "forge-.*-installer.jar" | tail -n1)
    if [[ ! -e "$FORGE_INSTALLER_JAR" ]]; then
        echo "$SERVER_NAME doesn't have a forge installer. Aborting..."
        return
    fi

    echo "Creating server for $SERVER_NAME..."
    mkdir -p "$BASE_DIR/server"

    pushd "$BASE_DIR/server"
        "$JAVA" -jar "../$FORGE_INSTALLER_JAR" --installServer
        echo "eula=true" > eula.txt
        command-refresh
    popd
}

function command-delete {
    rm -rf "$BASE_DIR/server"
}

function command-exec {
    server-cmd $*
    command-tail
}

function command-refresh {
    pushd "$BASE_DIR/server"
        rm -rf config 2>/dev/null
        cp -R ../config config

        rm -rf mods
        mkdir -p mods
        pushd mods
            ls ../../mods/ | while read FILE; do cp -r "../../mods/$FILE" "$FILE"; done
            if [[ -e ../../client-mods.txt ]]; then
                cat ../../client-mods.txt | while read PATTERN; do rm $PATTERN; done
            fi
        popd

        rm -rf scripts 2>/dev/null
        cp -R ../scripts scripts

        mkdir -p logs
        mv *.log logs
        pushd logs
            if [[ -e "server.log" ]]; then
                zip -r9 "$(date +'%Y-%m-%d-%H-%M')-server.log.zip" server.log
                rm server.log
            fi
            ls -t "*-server.log.zip" 2>/dev/null | awk 'NR>5' | while read FILE; do rm $FILE; done
        popd

        if [[ -e "../server.properties" ]]; then
            cp -s ../server.properties .
        else
            echo "$SERVER_PROPERTIES" > server.properties
        fi
    popd
}

function command-restart {
    command-stop
    sleep 2
    command-start
}

function command-start {
    if [[ "$1" != "--override" && -e "STOP" ]]; then
        exit
    fi

    require-ops
    require-players

    PID=$(find-running-script-pid)
    if [[ "$PID" != "" ]]; then
        echo "Script already running..."
        exit 0
    fi

    PID=$(find-running-server-pid)
    if [[ "$PID" != "" ]]; then
        echo "Server already running..."
        exit 0
    fi

    echo "[$(date)] No server running..."
    pushd "$BASE_DIR/server"
        echo "[$(date)] Setting up server..."
        printf "Starting Minecraft Server with properties:\n\n$(cat server.properties)\n\n" >> logs/server.log

        rm stdin &>/dev/null
        touch stdin

        SERVER_JAR=$(ls forge*.jar | tail -n1)

        echo "[$(date)] Starting server..."
        tail -n 0 -F stdin \
            | "$JAVA" -XX:+UseG1GC -Xmx3G -Xms3G \
                -Dio.netty.leakDetection.level=advanced \
                -Dsun.rmi.dgc.server.gcInterval=2147483646 \
                -Dfml.queryResult=confirm \
                -XX:+UnlockExperimentalVMOptions \
                -XX:G1NewSizePercent=20 \
                -XX:G1ReservePercent=20 \
                -XX:MaxGCPauseMillis=50 \
                -XX:G1HeapRegionSize=32M \
                -jar $SERVER_JAR nogui $SERVER_NAME \
            >> logs/server.log 2>&1 &
        disown

        sleep 10

        if [[ -e "../ops.txt" ]]; then
            cat ../ops.txt | while read USER_NAME; do
                server-cmd "/op $USER_NAME"
            done
        fi

        if [[ -e "../players.txt" ]]; then
            cat ../players.txt | while read USER_NAME; do
                server-cmd "/whitelist add $USER_NAME"
            done
        fi

        server-cmd "/say Minecraft Server $SERVER_NAME is ready!"
    popd

    ATTEMPTS=0
    STOP="NO"
    echo "[$(date)] Waiting for server to finish starting up..."
    while [[ "$STOP" == "NO" ]]; do
        PID=$(find-running-server-pid)
        [[ "$PID" != "" ]] && STOP="YES"

        if [[ $ATTEMPTS -gt 60 ]]; then
            echo "[$(date)] Failed to start server after 60 seconds"
            exit 1
        fi
        (( ATTEMPTS = ATTEMPTS + 1 ))
        sleep 1
    done

    PORT=$(cat "$BASE_DIR/server/server.properties" | grep server-port | cut -d= -f2)
    echo "[$(date)] Server started on port $PORT after $ATTEMPTS seconds"
    echo "[$(date)] Input at: $BASE_DIR/server/stdin"
    echo "[$(date)] Logs at: $BASE_DIR/server/logs/server.log"
    echo ""
}

function command-status {
    PID=$(find-running-server-pid)
    if [[ "$PID" == "" ]]; then
        printf "[$(date)] No server is running for $SERVER_NAME\n\n"
    else
        PORT=$(cat "$BASE_DIR/server/server.properties" | grep server-port | cut -d= -f2)
        printf "[$(date)] Server for $SERVER_NAME is runnning on port $PORT\n\n"
    fi
}

function command-stop {
    PID=$(find-running-server-pid)
    if [[ "$PID" == "" ]]; then
        printf "[$(date)] No server running.\n\n"
    else
        printf "[$(date)] Stopping server...\n"
        (( COUNT = DELAY ))
        server-cmd "/say Server going down in $COUNT seconds..."
        while [[ $COUNT -gt 0 ]]; do
            sleep 1
            (( COUNT = COUNT - 1 ))
            server-cmd "/say $COUNT..."
        done

        server-cmd "/stop"
        while [[ "$PID" != "" ]]; do
            PID=$(find-running-server-pid)
            if [[ "$PID" == "" ]]; then
                rm "$BASE_DIR/server/stdin" &>/dev/null
                printf "[$(date)] Server stopped\n\n"
                return
            fi

            sleep 1
        done
    fi
}

function command-tail {
    tail -f $BASE_DIR/server/logs/server.log
}

# Script ##############################################################################################################

COMMAND="$1"; shift
DELAY=10
SERVER_NAME=$(basename $PWD)

case $COMMAND in
    -h)         usage;;
    backup)     command-backup;;
    client)     command-installer;;
    create)     command-create;;
    delete)     command-delete;;
    exec)       command-exec $*;;
    restart)    command-restart;;
    script-pid) find-running-script-pid;;
    server-pid) find-running-server-pid;;
    refresh)    command-refresh;;
    start)      command-start $*;;
    status)     command-status;;
    stop)       command-stop;;
    tail)       command-tail;;
    *)          cancel "Unrecognized command: $COMMAND"
esac
