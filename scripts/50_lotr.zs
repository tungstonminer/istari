import mods.lotr.ct.dale;
import mods.lotr.ct.lothlorien;
import mods.lotr.ct.highElves;
import mods.lotr.ct.hobbits;
import mods.lotr.ct.rivendell;

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

# Pouch -- add a recipe to craft your own pouches
recipes.addShaped(
    <lotr:item.pouch>, [
        [<minecraft:leather>, <minecraft:string>, <minecraft:leather>],
        [<minecraft:leather>, <minecraft:ender_pearl>, <minecraft:leather>],
        [<minecraft:leather>, <minecraft:leather>, <minecraft:leather>],
    ]
);

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
