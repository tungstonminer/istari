import mods.thaumcraft.Arcane;


########################################################################################################################

<ore:anyShard>.add(<Thaumcraft:ItemShard:0>);
<ore:anyShard>.add(<Thaumcraft:ItemShard:1>);
<ore:anyShard>.add(<Thaumcraft:ItemShard:2>);
<ore:anyShard>.add(<Thaumcraft:ItemShard:3>);
<ore:anyShard>.add(<Thaumcraft:ItemShard:4>);
<ore:anyShard>.add(<Thaumcraft:ItemShard:5>);
<ore:anyShard>.add(<Thaumcraft:ItemShard:6>);

var ANY_SHARD = <ore:anyShard>;

var ARCANE_STONE = <Thaumcraft:blockCosmeticSolid:6>;

var EDHELVIR_BLOCK = <lotr:tile.oreStorage:6>;


########################################################################################################################

# Runic Matrix -- use edhelvir instead of ender pearl
Arcane.removeRecipe(<Thaumcraft:blockStoneDevice:2>);
Arcane.addShaped("INFUSION", <Thaumcraft:blockStoneDevice:2>, "ordo 40", [
    [ARCANE_STONE, ANY_SHARD, ARCANE_STONE],
    [ANY_SHARD, EDHELVIR_BLOCK, ANY_SHARD],
    [ARCANE_STONE, ANY_SHARD, ARCANE_STONE],
]);
