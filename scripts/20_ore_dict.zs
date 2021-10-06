########################################################################################################################

var LOTR_MUG_METAS = [
    0, 100, 200, 300, 400, 500, 600, 700, 800, 900, 1000, 1100
] as int[];


########################################################################################################################

# HarvestCraft -- don't allow a bucket of milk to count as milk food portion
<ore:listAllmilk>.remove(<minecraft:milk_bucket>);

# LOTR -- add fences to the ore dict
for meta in 0 .. 15 {
    <ore:fenceWood>.add(<lotr:tile.fence>.definition.makeStack(meta));
}
for meta in 0 .. 15 {
    <ore:fenceWood>.add(<lotr:tile.fence2>.definition.makeStack(meta));
}
for meta in 0 .. 5 {
    <ore:fenceWood>.add(<lotr:tile.fence3>.definition.makeStack(meta));
}


# LOTR -- add milk items to the foodMilk entry
for meta in LOTR_MUG_METAS {
    <ore:listAllmilk>.add(<lotr:item.mugMilk>.definition.makeStack(meta));
}

# LOTR -- add miruvor to a common ore dict
for meta in LOTR_MUG_METAS {
    <ore:listAllmiruvor>.add(<lotr:item.mugMiruvor>.definition.makeStack(meta));
}

# LOTR -- dyed feathers count as feathers
<ore:feather>.add(<lotr:item.featherDyed>);

# LOTR -- add gems to appropriate dict entries
<ore:blockDiamond>.add(<lotr:tile.blockGem:5>);
<ore:blockEmerald>.add(<lotr:tile.blockGem:9>);
<ore:gemAmber>.add(<lotr:item.amber>);
<ore:gemDiamond>.add(<lotr:item.diamond>);
<ore:gemEmerald>.add(<lotr:item.emerald>);

# LOTR -- add food to the HarvestCraft ore dict entries
<ore:apple>.add(<lotr:item.appleGreen>);
<ore:cropAlmond>.add(<lotr:item.almond>);
<ore:cropApple>.add(<lotr:item.appleGreen>);
<ore:cropBanana>.add(<lotr:item.banana>);
<ore:cropBlackberry>.add(<lotr:item.blackberry>);
<ore:cropBlueberry>.add(<lotr:item.blueberry>);
<ore:cropCherry>.add(<lotr:item.cherry>);
<ore:cropChestnut>.add(<lotr:item.chestnut>);
<ore:cropCorn>.add(<lotr:item.corn>);
<ore:cropCranberry>.add(<lotr:item.cranberry>);
<ore:cropDate>.add(<lotr:item.date>);
<ore:cropGrape>.add(<lotr:item.grapeRed>);
<ore:cropGrape>.add(<lotr:item.grapeWhite>);
<ore:cropLeek>.add(<lotr:item.leek>);
<ore:cropLemon>.add(<lotr:item.lemon>);
<ore:cropLettuce>.add(<lotr:item.lettuce>);
<ore:cropLime>.add(<lotr:item.lime>);
<ore:cropMango>.add(<lotr:item.mango>);
<ore:cropMaplesyrup>.add(<lotr:item.mapleSyrup>);
<ore:cropOlive>.add(<lotr:item.olive>);
<ore:cropOrange>.add(<lotr:item.orange>);
<ore:cropPear>.add(<lotr:item.pear>);
<ore:cropPlum>.add(<lotr:item.plum>);
<ore:cropPomegranate>.add(<lotr:item.pomegranate>);
<ore:cropRaspberry>.add(<lotr:item.raspberry>);
<ore:cropSweetpotato>.add(<lotr:item.yam>);
<ore:cropTurnip>.add(<lotr:item.turnip>);
<ore:dustSalt>.add(<lotr:item.salt>);
<ore:foodLambkebab>.add(<lotr:item.kebab>);
<ore:foodMuttoncooked>.add(<lotr:item.muttonCooked>);
<ore:foodMuttonraw>.add(<lotr:item.muttonRaw>);
<ore:foodRabbitcooked>.add(<lotr:item.rabbitCooked>);
<ore:foodRabbitraw>.add(<lotr:item.rabbitRaw>);
<ore:foodRaisins>.add(<lotr:item.raisins>);
<ore:foodRoastedchestnut>.add(<lotr:item.chestnutRoast>);
<ore:foodSalt>.add(<lotr:item.salt>);
<ore:foodVenisoncooked>.add(<lotr:item.deerCooked>);
<ore:foodVenisonraw>.add(<lotr:item.deerRaw>);
<ore:itemSalt>.add(<lotr:item.salt>);
<ore:listAllberry>.add(<lotr:item.blackberry>);
<ore:listAllberry>.add(<lotr:item.blueberry>);
<ore:listAllberry>.add(<lotr:item.cranberry>);
<ore:listAllberry>.add(<lotr:item.elderberry>);
<ore:listAllberry>.add(<lotr:item.raspberry>);
<ore:listAllcitrus>.add(<lotr:item.lemon>);
<ore:listAllcitrus>.add(<lotr:item.lime>);
<ore:listAllcitrus>.add(<lotr:item.orange>);
<ore:listAllfruit>.add(<lotr:item.appleGreen>);
<ore:listAllfruit>.add(<lotr:item.banana>);
<ore:listAllfruit>.add(<lotr:item.blackberry>);
<ore:listAllfruit>.add(<lotr:item.blueberry>);
<ore:listAllfruit>.add(<lotr:item.cherry>);
<ore:listAllfruit>.add(<lotr:item.cranberry>);
<ore:listAllfruit>.add(<lotr:item.date>);
<ore:listAllfruit>.add(<lotr:item.elderberry>);
<ore:listAllfruit>.add(<lotr:item.grapeRed>);
<ore:listAllfruit>.add(<lotr:item.grapeWhite>);
<ore:listAllfruit>.add(<lotr:item.lemon>);
<ore:listAllfruit>.add(<lotr:item.lime>);
<ore:listAllfruit>.add(<lotr:item.mango>);
<ore:listAllfruit>.add(<lotr:item.orange>);
<ore:listAllfruit>.add(<lotr:item.pear>);
<ore:listAllfruit>.add(<lotr:item.plum>);
<ore:listAllfruit>.add(<lotr:item.pomegranate>);
<ore:listAllfruit>.add(<lotr:item.raspberry>);
<ore:listAllgreenveggie>.add(<lotr:item.lettuce>);
<ore:listAllmeatcooked>.add(<lotr:item.camelCooked>);
<ore:listAllmeatcooked>.add(<lotr:item.deerCooked>);
<ore:listAllmeatcooked>.add(<lotr:item.gammon>);
<ore:listAllmeatcooked>.add(<lotr:item.lionCooked>);
<ore:listAllmeatcooked>.add(<lotr:item.muttonCooked>);
<ore:listAllmeatcooked>.add(<lotr:item.rabbitCooked>);
<ore:listAllmeatcooked>.add(<lotr:item.rhinoCooked>);
<ore:listAllmeatcooked>.add(<lotr:item.zebraCooked>);
<ore:listAllmeatraw>.add(<lotr:item.camelRaw>);
<ore:listAllmeatraw>.add(<lotr:item.deerRaw>);
<ore:listAllmeatraw>.add(<lotr:item.lionRaw>);
<ore:listAllmeatraw>.add(<lotr:item.manFlesh>);
<ore:listAllmeatraw>.add(<lotr:item.muttonRaw>);
<ore:listAllmeatraw>.add(<lotr:item.rabbitRaw>);
<ore:listAllmeatraw>.add(<lotr:item.rhinoRaw>);
<ore:listAllmeatraw>.add(<lotr:item.zebraRaw>);
<ore:listAllmuttoncooked>.add(<lotr:item.muttonCooked>);
<ore:listAllmuttonraw>.add(<lotr:item.muttonRaw>);
<ore:listAllnut>.add(<lotr:item.almond>);
<ore:listAllnut>.add(<lotr:item.chestnut>);
<ore:listAllrabbitcooked>.add(<lotr:item.rabbitCooked>);
<ore:listAllrabbitraw>.add(<lotr:item.rabbitRaw>);
<ore:listAllrootveggie>.add(<lotr:item.turnip>);
<ore:listAllrootveggie>.add(<lotr:item.yam>);
<ore:listAllseed>.add(<lotr:item.flaxSeeds>);
<ore:listAllseed>.add(<lotr:item.pipeweedSeeds>);
<ore:listAllseed>.add(<lotr:item.seedsGrapeRed>);
<ore:listAllseed>.add(<lotr:item.seedsGrapeWhite>);
<ore:listAllveggie>.add(<lotr:item.corn>);
<ore:listAllveggie>.add(<lotr:item.leek>);
<ore:listAllveggie>.add(<lotr:item.lettuce>);
<ore:listAllveggie>.add(<lotr:item.turnip>);
<ore:listAllveggie>.add(<lotr:item.yam>);
<ore:listAllvenisoncooked>.add(<lotr:item.deerCooked>);
<ore:listAllvenisonraw>.add(<lotr:item.deerRaw>);

# Minecraft -- add fences to the ore dictionary
for meta in 0 .. 5 {
    <ore:fenceWood>.add(<minecraft:fence>.definition.makeStack(meta));
}

# Minecraft -- stone arrow heads
<ore:arrowHeadStone>.add(<minecraft:flint>);
<ore:arrowHeadStone>.add(<lotr:item.obsidianShard>);

# Thaumcraft -- add all shards to a convenient ore dictionary
<ore:anyShard>.add(<Thaumcraft:ItemShard:0>);
<ore:anyShard>.add(<Thaumcraft:ItemShard:1>);
<ore:anyShard>.add(<Thaumcraft:ItemShard:2>);
<ore:anyShard>.add(<Thaumcraft:ItemShard:3>);
<ore:anyShard>.add(<Thaumcraft:ItemShard:4>);
<ore:anyShard>.add(<Thaumcraft:ItemShard:5>);
<ore:anyShard>.add(<Thaumcraft:ItemShard:6>);
<ore:anyShard>.add(<ThaumicTinkerer:kamiResource:6>);
<ore:anyShard>.add(<ThaumicTinkerer:kamiResource:7>);

# Thaumcraft -- don't allow using Thaumcraft coins as gold nuggets
<ore:nuggetGold>.remove(<Thaumcraft:ItemResource:18>);
