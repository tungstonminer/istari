########################################################################################################################

# Cart -- fix recipe to use ore dict
recipes.remove(<astikoor:cargocart>);
recipes.addShaped(<astikoor:cargocart>, [
    [<ore:fenceWood>, <ore:chestWood>, <ore:fenceWood>],
    [<ore:fenceWood>, <ore:chestWood>, <ore:fenceWood>],
    [<astikoor:wheel>, <ore:plankWood>, <astikoor:wheel>],
]);

# Plow -- require an iron hoe
recipes.remove(<astikoor:plowcart>);
recipes.addShaped(<astikoor:plowcart>, [
    [<ore:fenceWood>, <ore:fenceWood>, <ore:fenceWood>],
    [<ore:plankWood>, <minecraft:iron_hoe>, <ore:plankWood>],
    [<astikoor:wheel>, <ore:plankWood>, <astikoor:wheel>],
]);

# Wheel -- allow ore dictionary entries
recipes.remove(<astikoor:wheel>);
recipes.addShaped(<astikoor:wheel>, [
    [<ore:stickWood>, <ore:stickWood>, <ore:stickWood>],
    [<ore:stickWood>, <ore:plankWood>, <ore:stickWood>],
    [<ore:stickWood>, <ore:stickWood>, <ore:stickWood>],
]);
