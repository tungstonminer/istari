import mods.thaumcraft.Arcane;
import mods.thaumcraft.Infusion;


########################################################################################################################

<ore:anyShard>.add(<Thaumcraft:ItemShard:0>);
<ore:anyShard>.add(<Thaumcraft:ItemShard:1>);
<ore:anyShard>.add(<Thaumcraft:ItemShard:2>);
<ore:anyShard>.add(<Thaumcraft:ItemShard:3>);
<ore:anyShard>.add(<Thaumcraft:ItemShard:4>);
<ore:anyShard>.add(<Thaumcraft:ItemShard:5>);
<ore:anyShard>.add(<Thaumcraft:ItemShard:6>);

var AIR_SHARD = <Thaumcraft:ItemShard:0>;
var ANY_SHARD = <ore:anyShard>;
var ARCANE_BORE = <Thaumcraft:blockWoodenDevice:5>;
var ARCANE_STONE = <Thaumcraft:blockCosmeticSolid:6>;
var EARTH_SHARD = <Thaumcraft:ItemShard:3>;
var EDHELVIR_BLOCK = <lotr:tile.oreStorage:6>;
var GREATWOOD_PLANKS = <Thaumcraft:blockWoodenDevice:6>;


########################################################################################################################

# Arcane Bore -- use Blue Dwarven equipment instead of diamond
Infusion.removeRecipe(<Thaumcraft:blockWoodenDevice:5>);
Infusion.addRecipe(
    "ARCANEBORE",
    <minecraft:piston>, [
        GREATWOOD_PLANKS, GREATWOOD_PLANKS, <minecraft:gold_ingot>, <minecraft:gold_ingot>,
        <lotr:item.pickaxeBlueDwarven>, <lotr:item.shovelBlueDwarven>, AIR_SHARD, EARTH_SHARD
    ],
    "perfodio 32, machina 32, potentia 16, vacuos 16, motus 16",
    ARCANE_BORE,
    5
);

# Runic Matrix -- use edhelvir instead of ender pearl
Arcane.removeRecipe(<Thaumcraft:blockStoneDevice:2>);
Arcane.addShaped("INFUSION", <Thaumcraft:blockStoneDevice:2>, "ordo 40", [
    [ARCANE_STONE, ANY_SHARD, ARCANE_STONE],
    [ANY_SHARD, EDHELVIR_BLOCK, ANY_SHARD],
    [ARCANE_STONE, ANY_SHARD, ARCANE_STONE],
]);
