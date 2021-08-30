import mods.lotr.millstone;
import mods.nei.NEI;

########################################################################################################################

var FLOUR_MAKING_ITEM = <ore:listAllgrain> | <ore:cropPotato> | <ore:cropRice>;

########################################################################################################################

# Apiary -- remove Apiary as it causes crashes
recipes.remove(<harvestcraft:apiary>);

# Black Pepper -- add recipe for millstone
millstone.addRecipe(<harvestcraft:blackpepperItem>, <harvestcraft:peppercornItem>);

# Cocoa Powder -- add recipe for millstone
millstone.addRecipe(<harvestcraft:cocoapowderItem>, <minecraft:dye:3>);

# Corn -- allow making HC corn from LOTR corn
recipes.addShapeless(<harvestcraft:cornItem>, [<lotr:item.corn>]);

# Cornbread -- remove in favor of the LotR version, but use the Harvestcraft recipe
NEI.hide(<harvestcraft:cornbreadItem>);
recipes.remove(<harvestcraft:cornbreadItem>);
recipes.remove(<lotr:item.cornBread>);
recipes.addShapeless(<lotr:item.cornBread>, [
    <ore:toolSkillet>, <ore:foodCornmeal>, <ore:listAllegg>, <ore:listAllmilk>
]);

# Cornmeal -- only allow processing in the Quern or Millstone
recipes.remove(<harvestcraft:cornmealItem>);
millstone.addRecipe(<harvestcraft:cornItem>, <harvestcraft:cornmealItem>);
millstone.addRecipe(<lotr:item.corn>, <harvestcraft:cornmealItem>);

# Curry Powder -- add recipe for millstone
millstone.addRecipe(<harvestcraft:currypowderItem>, <harvestcraft:curryleafItem>);

# Damper -- use food salt, not ore
recipes.remove(<harvestcraft:damperItem>);
recipes.addShapeless(<harvestcraft:damperItem>, [
    <ore:toolBakeware>, <ore:foodFlour>, <ore:listAllMilk>, <ore:foodSalt>, <ore:foodButter>
]);

# Flour -- only allow processing in Millstone or Quern
recipes.remove(<harvestcraft:flourItem>);
millstone.addRecipe(<harvestcraft:barleyItem>, <harvestcraft:flourItem>);
millstone.addRecipe(<harvestcraft:oatsItem>, <harvestcraft:flourItem>);
millstone.addRecipe(<harvestcraft:riceItem>, <harvestcraft:flourItem>);
millstone.addRecipe(<harvestcraft:ryeItem>, <harvestcraft:flourItem>);
millstone.addRecipe(<minecraft:potato>, <harvestcraft:flourItem>);
millstone.addRecipe(<minecraft:wheat>, <harvestcraft:flourItem>);

# Gherkin -- use food salt, not ore
recipes.remove(<harvestcraft:gherkinItem>);
recipes.addShapeless(<harvestcraft:gherkinItem>, [
    <ore:toolPot>, <ore:foodVinegar>, <ore:foodSalt>, <ore:cropSpiceleaf>, <ore:cropCucumber>
]);

# Ground Cinnamon -- add recipe for the millstone
millstone.addRecipe(<harvestcraft:cinnamonItem>, <harvestcraft:groundcinnamonItem>);

# Ground Nutmeg -- add recipe for the millstone
millstone.addRecipe(<harvestcraft:nutmegItem>, <harvestcraft:groundnutmegItem>);

# Maple Syrup -- create from LotR maple wood & bottle
recipes.addShapeless(<harvestcraft:maplesyrupItem>, [<lotr:tile.wood3>, <minecraft:glass_bottle>]);
