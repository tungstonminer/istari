import minetweaker.item.IItemStack;
import mods.lotr.ct.angmar;
import mods.lotr.ct.dale;
import mods.lotr.ct.dolGuldur;
import mods.lotr.ct.gundabad;
import mods.lotr.ct.halfTrolls;
import mods.lotr.ct.highElves;
import mods.lotr.ct.hobbits;
import mods.lotr.ct.lothlorien;
import mods.lotr.ct.mordor;
import mods.lotr.ct.rivendell;
import mods.lotr.millstone;

########################################################################################################################

var EMPTY_CONTAINERS = {
    "aleHorn": <lotr:item.aleHorn>,
    "bottle": <minecraft:glass_bottle>,
    "ceramicMug": <lotr:item.ceramicMug>,
    "copperGoblet": <lotr:item.gobletCopper>,
    "goldenAleHorn": <lotr:item.aleHornGold>,
    "goldenGoblet": <lotr:item.gobletGold>,
    "silverGoblet": <lotr:item.gobletSilver>,
    "skullCup": <lotr:item.skullCup>,
    "waterskin": <lotr:item.waterskin>,
    "wineGlass": <lotr:item.wineGlass>,
    "woodenGoblet": <lotr:item.gobletWood>,
    "woodenMug": <lotr:item.mug>,
} as IItemStack[string];

var CONTAINER_META = {
    "aleHorn": 1000,
    "bottle": 800,
    "ceramicMug": 100,
    "copperGoblet": 400,
    "goldenAleHorn": 1100,
    "goldenGoblet": 200,
    "silverGoblet": 300,
    "skullCup": 600,
    "waterskin": 900,
    "wineGlass": 700,
    "woodenGoblet": 500,
    "woodenMug": 0,
} as int[string];

var CONTAINER_NAMES = [
    "aleHorn",
    "bottle",
    "ceramicMug",
    "copperGoblet",
    "goldenAleHorn",
    "goldenGoblet",
    "silverGoblet",
    "skullCup",
    "waterskin",
    "wineGlass",
    "woodenGoblet",
    "woodenMug",
] as string[];


########################################################################################################################

# Apple Crumble -- adapt recipe to use HarvestCraft ore dict entries
recipes.remove(<lotr:item.appleCrumble>);
recipes.addShapeless(<lotr:item.appleCrumble>, [
    <ore:toolBakeware>, <ore:foodDough>, <ore:listAllmilk>, <ore:listAllsugar>,
    <ore:cropApple>, <ore:cropApple>
]);

# Banana Bread -- adapt recipe to use HarvestCraft ore dict entries
recipes.remove(<lotr:item.bananaBread>);
recipes.addShapeless(<lotr:item.bananaBread>, [
    <ore:toolBakeware>, <ore:foodDough>, <ore:cropBanana>
]);

# Banana Cake -- adapt recipe to use HarvestCraft ore dict entries
recipes.remove(<lotr:item.bananaCake>);
recipes.addShapeless(<lotr:item.bananaCake>, [
    <ore:toolBakeware>, <ore:foodDough>, <ore:listAllmilk>, <ore:listAllsugar>,
    <ore:cropBanana>, <ore:cropBanana>
]);

# Berry Pie -- adapt recipe to use HarvestCraft ore dict entries
recipes.remove(<lotr:item.berryPie>);
recipes.addShapeless(<lotr:item.berryPie>, [
    <ore:toolBakeware>, <ore:foodDough>, <ore:listAllmilk>, <ore:listAllsugar>,
    <ore:listAllberry>, <ore:listAllberry>
]);

# Cherry Pie -- adapt recipe to use HarvestCraft ore dict entries
recipes.remove(<lotr:item.cherryPie>);
recipes.addShapeless(<lotr:item.cherryPie>, [
    <ore:toolBakeware>, <ore:foodDough>, <ore:listAllmilk>, <ore:listAllsugar>,
    <ore:cropCherry>, <ore:cropCherry>
]);

# Dalish Pastry -- adapt recipe to use HarvestCraft
dale.removeShaped(<lotr:item.dalishPastry>, null);
dale.addShaped(<lotr:item.dalishPastry>, [
    [<ore:toolBakeware>, <ore:foodDough>, <ore:listAllmilk>],
    [<ore:listAllsugar>, <ore:foodRaisins>, <ore:cropMaplesyrup>],
]);

# Corn -- allow HarvestCraft corn to be converted
recipes.addShapeless(<lotr:item.corn>, [<harvestcraft:cornItem>]);

# Horse Armor -- allow vanilla armor to be converted
recipes.addShapeless(<lotr:item.horseArmorDiamond>, [<minecraft:diamond_horse_armor>]);
recipes.addShapeless(<lotr:item.horseArmorGold>, [<minecraft:golden_horse_armor>]);
recipes.addShapeless(<lotr:item.horseArmorIron>, [<minecraft:iron_horse_armor>]);

# Hobbit Pancake -- use a HarvestCraft-friendly recipe
hobbits.removeShapeless(<lotr:item.hobbitPancake>, null, true);
hobbits.addShaped(<lotr:item.hobbitPancake>, [
    [<ore:toolSkillet>, <ore:foodFlour>],
    [<ore:listAllegg>, <ore:listAllmilk>],
]);

# Hobbit Pancake with Syrup -- allow any maple syrup
hobbits.removeShapeless(<lotr:item.hobbitPancakeMapleSyrup>, null, true);
hobbits.addShaped(<lotr:item.hobbitPancakeMapleSyrup>, [
    [<lotr:item.hobbitPancake>, <ore:cropMaplesyrup>],
]);

# Leek Soup -- adapt recipe to use HarvestCraft ore dict entries
recipes.remove(<lotr:item.leekSoup>);
recipes.addShapeless(<lotr:item.leekSoup>, [<minecraft:bowl>, <ore:cropLeek>, <ore:cropLeek>, <ore:cropPotato>]);

# Lembas -- add a recipe for making the famous elven waybread
lothlorien.addShaped(<lotr:item.lembas>, [
    [<ore:toolBakeware>, <ore:foodDough>],
    [<ore:listAllmiruvor>, <lotr:tile.fallenLeaves:0>],
]);
highElves.addShaped(<lotr:item.lembas>, [
    [<ore:toolBakeware>, <ore:foodDough>],
    [<ore:listAllmiruvor>, <lotr:tile.fallenLeaves:0>],
]);
rivendell.addShaped(<lotr:item.lembas>, [
    [<ore:toolBakeware>, <ore:foodDough>],
    [<ore:listAllmiruvor>, <lotr:tile.fallenLeaves:0>],
]);

# Lemon Cake -- adapt recipe to use HarvestCraft ore dict entries
recipes.remove(<lotr:item.lemonCake>);
recipes.addShapeless(<lotr:item.lemonCake>, [
    <ore:toolBakeware>, <ore:foodDough>, <ore:listAllmilk>, <ore:listAllsugar>,
    <ore:cropLemon>, <ore:cropLemon>
]);

# Maggoty Bread -- use a HarvestCraft-inspired recipe
angmar.removeShaped(<lotr:item.maggotyBread>, null);
angmar.addShaped(<lotr:item.maggotyBread>, [
    [<ore:toolBakeware>, <ore:foodDough>],
]);

dolGuldur.removeShaped(<lotr:item.maggotyBread>, null);
dolGuldur.addShaped(<lotr:item.maggotyBread>, [
    [<ore:toolBakeware>, <ore:foodDough>],
]);

gundabad.removeShaped(<lotr:item.maggotyBread>, null);
gundabad.addShaped(<lotr:item.maggotyBread>, [
    [<ore:toolBakeware>, <ore:foodDough>],
]);

halfTrolls.removeShaped(<lotr:item.maggotyBread>, null);
halfTrolls.addShaped(<lotr:item.maggotyBread>, [
    [<ore:toolBakeware>, <ore:foodDough>],
]);

mordor.removeShaped(<lotr:item.maggotyBread>, null);
mordor.addShaped(<lotr:item.maggotyBread>, [
    [<ore:toolBakeware>, <ore:foodDough>],
]);

# The Uruk faction's crafting table isn't actually supported yet.  :-(
#
# uruk.removeShaped(<lotr:item.maggotyBread>, null);
# uruk.addShaped(<lotr:item.maggotyBread>, [
#     [<ore:toolBakeware>, <ore:foodDough>],
# ]);

# Milk & Water -- allow milk & water to be poured into actual containers
for name in CONTAINER_NAMES {
    var emptyItem = EMPTY_CONTAINERS[name];
    var filledMeta = CONTAINER_META[name];

    recipes.addShapeless(<lotr:item.mugMilk>.definition.makeStack(filledMeta) * 4, [
        <minecraft:milk_bucket>, emptyItem, emptyItem, emptyItem, emptyItem
    ]);
    recipes.addShapeless(<lotr:item.mugMilk>.definition.makeStack(filledMeta), [
        <harvestcraft:freshmilkItem>, emptyItem
    ]);
    recipes.addShapeless(<lotr:item.mugWater>.definition.makeStack(filledMeta) * 4, [
        <minecraft:water_bucket>, emptyItem, emptyItem, emptyItem, emptyItem
    ]);
    recipes.addShapeless(<lotr:item.mugWater>.definition.makeStack(filledMeta), [
        <harvestcraft:freshwaterItem>, emptyItem
    ]);
}

# Mushroom Pie -- adapt recipe to use HarvestCraft ore dict entries
recipes.remove(<lotr:item.mushroomPie>);
recipes.addShapeless(<lotr:item.mushroomPie>, [
    <ore:toolBakeware>, <ore:foodDough>, <ore:listAllegg>,
    <ore:listAllmushroom>, <ore:listAllmushroom>
]);

# Olive Bread -- adapt recipe to use HarvestCraft ore dict entries
recipes.remove(<lotr:item.oliveBread>);
recipes.addShapeless(<lotr:item.oliveBread>, [
    <ore:toolBakeware>, <ore:foodDough>, <ore:cropOlive>
]);

# Salt -- allow filtering sand to get salt
recipes.addShapeless(<lotr:item.salt>, [
    <ore:toolPot>, <ore:listAllwater>, <minecraft:sand>, <ore:materialCloth>
]);
recipes.addShapeless(<lotr:item.salt> * 2, [
    <ore:toolPot>, <ore:listAllwater>, <lotr:tile.whiteSand>, <ore:materialCloth>
]);

# Scorched Stone -- Adapt recipe to allow various kinds of stone to be scorched
furnace.remove(<lotr:tile.scorchedStone>);
furnace.addRecipe(<lotr:tile.scorchedStone>, <minecraft:stone>);
furnace.addRecipe(<lotr:tile.scorchedStone>, <lotr:tile.rock:0>);
furnace.addRecipe(<lotr:tile.scorchedStone>, <lotr:tile.rock:1>);
furnace.addRecipe(<lotr:tile.scorchedStone>, <lotr:tile.rock:2>);
furnace.addRecipe(<lotr:tile.scorchedStone>, <lotr:tile.rock:3>);
furnace.addRecipe(<lotr:tile.scorchedStone>, <lotr:tile.rock:5>);

# Sugar -- allow creating from maple syrup
furnace.addRecipe(<minecraft:sugar>, <ore:cropMaplesyrup>);
