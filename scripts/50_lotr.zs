########################################################################################################################

# Apple Crumble -- adapt recipe to use HarvestCraft ore dict entries
recipes.removeShaped(<lotr:item.appleCrumble>);
recipes.addShaped(
    <lotr:item.appleCrumble>,
    [
        [<ore:listAllmilk>, <ore:listAllmilk>, <ore:listAllmilk>],
        [<ore:cropApple>, <ore:listAllsugar>, <ore:cropApple>],
        [<ore:cropWheat>, <ore:cropWheat>, <ore:cropWheat>],
    ]
);

# Banana Cake -- adapt recipe to use HarvestCraft ore dict entries
recipes.removeShaped(<lotr:item.bananaCake>);
recipes.addShaped(
    <lotr:item.bananaCake>,
    [
        [<ore:listAllmilk>, <ore:listAllmilk>, <ore:listAllmilk>],
        [<ore:cropBanana>, <ore:listAllegg>, <ore:cropBanana>],
        [<ore:cropWheat>, <ore:cropWheat>, <ore:cropWheat>],
    ]
);

# Berry Pie -- adapt recipe to use HarvestCraft ore dict entries
recipes.removeShaped(<lotr:item.berryPie>);
recipes.addShaped(
    <lotr:item.berryPie>,
    [
        [<ore:listAllmilk>, <ore:listAllmilk>, <ore:listAllmilk>],
        [<ore:listAllberry>, <ore:listAllberry>, <ore:listAllberry>],
        [<ore:cropWheat>, <ore:cropWheat>, <ore:cropWheat>],
    ]
);

# Cherry Pie -- adapt recipe to use HarvestCraft ore dict entries
recipes.removeShaped(<lotr:item.cherryPie>);
recipes.addShaped(
    <lotr:item.cherryPie>,
    [
        [<ore:listAllmilk>, <ore:listAllmilk>, <ore:listAllmilk>],
        [<ore:cropCherry>, <ore:listAllsugar>, <ore:cropCherry>],
        [<ore:cropWheat>, <ore:cropWheat>, <ore:cropWheat>],
    ]
);

# Leek Soup -- adapt recipe to use HarvestCraft ore dict entries
recipes.removeShaped(<lotr:item.leekSoup>);
recipes.addShapeless(<lotr:item.leekSoup>, [<minecraft:bowl>, <ore:cropLeek>, <ore:cropLeek>, <ore:cropPotato>]);

# Lemon Cake -- adapt recipe to use HarvestCraft ore dict entries
recipes.removeShaped(<lotr:item.lemonCake>);
recipes.addShaped(
    <lotr:item.lemonCake>,
    [
        [<ore:listAllmilk>, <ore:listAllmilk>, <ore:listAllmilk>],
        [<ore:cropLemon>, <ore:listAllsugar>, <ore:cropLemon>],
        [<ore:cropWheat>, <ore:cropWheat>, <ore:cropWheat>],
    ]
);

# Mushroom Pie -- adapt recipe to use HarvestCraft ore dict entries
recipes.removeShaped(<lotr:item.mushroomPie>);
recipes.addShapeless(<lotr:item.mushroomPie>, [<ore:listAllegg>, <ore:listAllmushroom>, <ore:listAllmushroom>]);

# Olive Bread -- adapt recipe to use HarvestCraft ore dict entries
recipes.removeShaped(<lotr:item.oliveBread>);
recipes.addShaped(<lotr:item.oliveBread>, [[<ore:cropWheat>, <ore:cropOlive>, <ore:cropWheat>]]);

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
