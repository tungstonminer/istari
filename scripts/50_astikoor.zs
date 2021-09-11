########################################################################################################################

# Plow -- require an iron hoe
recipes.remove(<astikoor:plowcart>);
recipes.addShaped(<astikoor:plowcart>, [
    [<minecraft:fence>, <minecraft:fence>, <minecraft:fence>],
    [<ore:plankWood>, <minecraft:iron_hoe>, <ore:plankWood>],
    [<astikoor:wheel>, <ore:plankWood>, <astikoor:wheel>],
]);
