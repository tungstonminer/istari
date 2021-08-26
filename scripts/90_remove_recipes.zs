import minetweaker.item.IItemStack;
import mods.nei.NEI;


########################################################################################################################

var HIDE_ONLY = [
    # HarvestCraft
    <harvestcraft:ovenon>,

    # Middle Earth Thaumaturgy
    <mett:iconMiddleEarthThaumaturgy>,

    # Minecraft
    <minecraft:fire>,

    # YeOldeTanks -- remove creative mode items and anchronistic items
    <YeOldeTanks:yot.creativeBarrel>,
    <YeOldeTanks:yot.infiniteWaterBucket>,
    <YeOldeTanks:yot.barrelminecart>,
] as IItemStack[];

for itemStack in HIDE_ONLY {
    NEI.hide(itemStack);
}


########################################################################################################################

var REMOVE_AND_HIDE = [
    # Cooking for Blockheads
    <cookingbook:cookingoven>,
    <cookingbook:toaster>,
    <cookingbook:toast>,

    # HarvestCraft
    <harvestcraft:salt>,
    <harvestcraft:oven>,

    # Minecraft
    <minecraft:activator_rail>,
    <minecraft:golden_rail>,
    <minecraft:detector_rail>,
    <minecraft:rail>,
    <minecraft:minecart>,
    <minecraft:chest_minecart>,
    <minecraft:furnace_minecart>,
    <minecraft:tnt_minecart>,
    <minecraft:hopper_minecart>,
    <minecraft:command_block_minecart>,

    # OpenBlocks -- remove anachronistic items
    <OpenBlocks:generic:0>, # glider wing
    <OpenBlocks:generic:1>, # beam
    <OpenBlocks:generic:2>, # crane engine
    <OpenBlocks:generic:3>, # crane magnet
    <OpenBlocks:generic:5>, # line
    <OpenBlocks:generic:6>, # map controller module
    <OpenBlocks:generic:7>, # map memory module
    <OpenBlocks:generic:9>, # assistant's base
    <OpenBlocks:generic:10>, # unprepared stencil
    <OpenBlocks:generic:11>, # sketching pencil
    <OpenBlocks:genericUnstackable:0>, # pointer
] as IItemStack[];

for itemStack in REMOVE_AND_HIDE {
    recipes.remove(itemStack);
    NEI.hide(itemStack);
}
