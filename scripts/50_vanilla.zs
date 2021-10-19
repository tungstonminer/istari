import mods.lotr.millstone;
import mods.thaumcraft.Crucible;
import mods.thaumcraft.Infusion;


########################################################################################################################

# Arrow -- allow creating arrows with iron or bronze nuggets for arrow heads
recipes.remove(<minecraft:arrow>);
recipes.addShaped(<minecraft:arrow> * 3, [
    [<ore:horn>],
    [<ore:stickWood>],
    [<ore:feather>],
]);
recipes.addShaped(<minecraft:arrow> * 4, [
    [<ore:arrowHeadStone>],
    [<ore:stickWood>],
    [<ore:feather>],
]);
recipes.addShaped(<minecraft:arrow> * 6, [
    [<ore:nuggetIron>],
    [<ore:stickWood>],
    [<ore:feather>],
]);
recipes.addShaped(<minecraft:arrow> * 8, [
    [<ore:nuggetThaumium>],
    [<ore:stickWood>],
    [<ore:feather>],
]);
recipes.addShaped(<minecraft:arrow> * 12, [
    [<lotr:item.mithrilNugget>],
    [<ore:stickWood>],
    [<ore:feather>],
]);

# Blaze Rod -- allow creating blaze rods from Thamucraft materials
recipes.addShaped(
    <minecraft:blaze_rod>, [
        [<minecraft:blaze_powder>, <Thaumcraft:WandRod:1>, <minecraft:blaze_powder>],
    ]
);

# Bread -- remove vanilla recipe in preference for cooking dough
recipes.remove(<minecraft:bread>);

# Bucket -- allow making buckets out of tin
recipes.addShaped(<minecraft:bucket>, [
    [<ore:ingotTin>, null, <ore:ingotTin>],
    [null, <ore:ingotTin>, null],
]);

# Cake -- use a HarvestCraft-friendly recipe
recipes.removeShaped(<minecraft:cake>);
recipes.addShapeless(<minecraft:cake>, [
    <ore:toolBakeware>, <ore:foodDough>, <ore:listAllmilk>, <ore:listAllsugar>, <ore:dyeRed>
]);

# Diamond -- allow LOTR diamonds to be converted and vice-versa
recipes.addShapeless(<minecraft:diamond>, [<lotr:item.diamond>]);
recipes.addShapeless(<lotr:item.diamond>, [<minecraft:diamond>]);

# Emerald -- allow LOTR emeralds to be converted and vice-versa
recipes.addShapeless(<minecraft:emerald>, [<lotr:item.emerald>]);
recipes.addShapeless(<lotr:item.emerald>, [<minecraft:emerald>]);

# Ender Pearl -- allow creating ender pearls using LOTR materials
Infusion.addRecipe(
    "INFUSION",
    <lotr:item.pearl>,
    [
        <lotr:item.guldurilCrystal>, <lotr:item.guldurilCrystal>,
        <lotr:item.guldurilCrystal>, <lotr:item.guldurilCrystal>,
    ],
    "iter 12",
    <minecraft:ender_pearl>,
    2
);

# End Stone -- allow creating end stone from ender pearls
recipes.addShaped(
    <minecraft:end_stone> * 8, [
        [<minecraft:stone>, <minecraft:stone>, <minecraft:stone>],
        [<minecraft:stone>, <minecraft:ender_pearl>, <minecraft:stone>],
        [<minecraft:stone>, <minecraft:stone>, <minecraft:stone>],
    ]
);

# Ghast Tear -- allow creating ghast tears by alchemy
Crucible.addRecipe("CRUCIBLE", <minecraft:ghast_tear>, <lotr:item.mithrilNugget>, "aqua 4, spiritus 4");

# Nether Wart -- allow creating nether wart by alchemy
Crucible.addRecipe("CRUCIBLE", <minecraft:nether_wart>, <minecraft:red_mushroom>, "exanimis 1");

# Nether Wart -- allow creating netherrack from LOTR materials
furnace.addRecipe(<minecraft:netherrack>, <lotr:tile.rock:4>);

# Pumpkin Pie -- use a HarvestCraft-friendly recipe
recipes.removeShaped(<lotr:item.mushroomPie>);
recipes.addShapeless(<lotr:item.mushroomPie>, [
    <ore:toolBakeware>, <ore:foodDough>, <ore:listAllegg>,
    <ore:listAllSugar>, <ore:cropPumpkin>
]);

# Quartz Block -- allow creating blocks of quartz my alchemy
Crucible.addRecipe("CRUCIBLE", <minecraft:quartz_block>, <lotr:tile.oreStorage2:3>, "ignis 4, vitreus 4");

# Quartz -- allow breaking quartz blocks into quartz items
recipes.addShapeless(<minecraft:quartz> * 4, [<minecraft:quartz_block>]);

# Redstone -- allow creating redstone from raw materials
millstone.addRecipe(<lotr:item.ruby>, <minecraft:redstone> * 8, 1.0);

# Slime Ball -- allow creating slime balls from food items
recipes.addShaped(
    <minecraft:slime_ball>, [
        [<lotr:item.dye:3>, <lotr:item.dye:3>, <lotr:item.dye:3>],
        [<lotr:item.dye:3>, <minecraft:milk_bucket>, <lotr:item.dye:3>],
        [<lotr:item.dye:3>, <lotr:item.dye:3>, <lotr:item.dye:3>],
    ]
);

# Soul Sand -- allow creating soul sand using alchemy
Crucible.addRecipe("CRUCIBLE", <minecraft:soul_sand>, <minecraft:sand>, "spiritus 1");

# Wither Skull -- allow creating by alchemy
Crucible.addRecipe("CRUCIBLE", <minecraft:skull:1>, <minecraft:skull:0>, "exanimis 8, alienis 4");
