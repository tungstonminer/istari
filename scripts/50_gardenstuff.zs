########################################################################################################################

# Decorative Flower Pot -- use chalk instead of quartz
recipes.remove(<GardenContainers:decorative_pot>);
recipes.addShaped(<GardenContainers:decorative_pot>, [
    [<lotr:tile.rock:5>, null, <lotr:tile.rock:5>],
    [<lotr:tile.rock:5>, <lotr:tile.rock:5>, <lotr:tile.rock:5>],
    [null, <lotr:tile.rock:5>, null],
]);

# Decorative Flower Pot (chiseled) -- use chalk instead of quartz
recipes.remove(<GardenContainers:decorative_pot:1>);
recipes.addShaped(<GardenContainers:decorative_pot:1>, [
    [<lotr:tile.brick4:15>, null, <lotr:tile.brick4:15>],
    [<lotr:tile.brick4:15>, <lotr:tile.brick4:15>, <lotr:tile.brick4:15>],
    [null, <lotr:tile.brick4:15>, null],
]);

# Decorative Flower Pot (pillar) -- use chalk instead of quartz
recipes.remove(<GardenContainers:decorative_pot:2>);
recipes.addShaped(<GardenContainers:decorative_pot:2>, [
    [<lotr:tile.pillar2:1>, null, <lotr:tile.pillar2:1>],
    [<lotr:tile.pillar2:1>, <lotr:tile.pillar2:1>, <lotr:tile.pillar2:1>],
    [null, <lotr:tile.pillar2:1>, null],
]);
