########################################################################################################################

# Cooking for Blockheads II -- make recipe more reasonable, esp. in Middle Earth
recipes.remove(<cookingbook:recipebook:1>);
recipes.addShaped(<cookingbook:recipebook:1>, [
    [null, <minecraft:crafting_table>, null],
    [<ore:toolPot>, <cookingbook:recipebook:0>, <ore:toolSkillet>],
    [null, <minecraft:crafting_table>, null],
]);

# Sink -- add missing recipe
recipes.addShaped(<cookingbook:sink>, [
    [<ore:stainedClayBlack>, <ore:stainedClayBlack>, <ore:stainedClayBlack>],
    [<ore:logWood>, <minecraft:bucket>, <ore:logWood>],
    [<ore:logWood>, <ore:logWood>, <ore:logWood>],
]);
