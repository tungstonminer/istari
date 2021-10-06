import mods.thaumcraft.Arcane;
import mods.thaumcraft.Crucible;
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
var ANCIENT_STONE = <Thaumcraft:blockCosmeticSolid:11>;
var ANCIENT_STONE_PEDESTAL = <Thaumcraft:blockCosmeticSolid:15>;
var ANCIENT_STONE_SLAB = <Thaumcraft:blockCosmeticSlabStone:1>;
var ANCIENT_STONE_STAIRS = <Thaumcraft:blockStairsEldritch>;
var ANY_SHARD = <ore:anyShard>;
var ARCANE_BORE = <Thaumcraft:blockWoodenDevice:5>;
var ARCANE_STONE = <Thaumcraft:blockCosmeticSolid:6>;
var EARTH_SHARD = <Thaumcraft:ItemShard:3>;
var EDHELVIR_BLOCK = <lotr:tile.oreStorage:6>;
var GREATWOOD_PLANKS = <Thaumcraft:blockWoodenDevice:6>;


########################################################################################################################

# Ancient Stone -- allow creation by alchemy
Crucible.addRecipe("GADOMANCY.E_PORTAL_CREATOR", ANCIENT_STONE, <minecraft:stone>, "alienis 2, alfirin 4");

# Ancient Stone Slab -- allow regular slab recipe
recipes.addShaped(ANCIENT_STONE_SLAB * 6, [
    [ANCIENT_STONE, ANCIENT_STONE, ANCIENT_STONE],
]);

# Ancient Stone Pedestal -- use double-slab recipe
recipes.addShaped(ANCIENT_STONE_PEDESTAL, [
    [ANCIENT_STONE_SLAB],
    [ANCIENT_STONE_SLAB],
]);

# Ancient Stone Stairs -- use regular vanilla recipe
recipes.addShaped(ANCIENT_STONE_STAIRS * 4, [
    [ANCIENT_STONE, null, null],
    [ANCIENT_STONE, ANCIENT_STONE, null],
    [ANCIENT_STONE, ANCIENT_STONE, ANCIENT_STONE],
]);

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

# Gold Coin -- allow making coins using the same recipe as LOTR coins
recipes.addShaped(<Thaumcraft:ItemResource:18> * 4, [
    [<ore:nuggetGold>, <ore:nuggetGold>],
    [<ore:nuggetGold>, <ore:nuggetGold>],
]);

# Nether Shard -- allow creating Nether Shards in the crucible
Crucible.addRecipe("CRUCIBLE", <minecraft:ghast_tear>, <lotr:item.mithrilNugget>, "aqua 4, spiritus 4");

# Obsidian Totem -- allow creating obsidian totems using LOTR materials
Infusion.addRecipe(
    "INFUSION",
    <minecraft:obsidian>,
    [
        <lotr:item.naurite>, <lotr:item.naurite>,
        <lotr:item.naurite>, <lotr:item.naurite>,
    ],
    "spiritus 12",
    <Thaumcraft:blockCosmeticSolid:0>,
    3
);

# Runic Matrix -- use edhelvir instead of ender pearl
Arcane.removeRecipe(<Thaumcraft:blockStoneDevice:2>);
Arcane.addShaped("INFUSION", <Thaumcraft:blockStoneDevice:2>, "ordo 40", [
    [ARCANE_STONE, ANY_SHARD, ARCANE_STONE],
    [ANY_SHARD, EDHELVIR_BLOCK, ANY_SHARD],
    [ARCANE_STONE, ANY_SHARD, ARCANE_STONE],
]);
