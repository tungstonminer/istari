########################################################################################################################

# Chunk Loader -- use Edhelivar instead of ender pearls
recipes.remove(<ChickenChunks:chickenChunkLoader>);
recipes.addShaped(<ChickenChunks:chickenChunkLoader>, [
    [null, <lotr:tile.oreStorage:6>, null],
    [<ore:ingotGold>, <ore:ingotGold>, <ore:ingotGold>],
    [<ore:ingotGold>, <minecraft:enchanting_table>, <ore:ingotGold>],
]);

# Spot Loader -- use Edhelivar instead of ender pearls
recipes.remove(<ChickenChunks:chickenChunkLoader:1>);
recipes.addShaped(<ChickenChunks:chickenChunkLoader:1>, [
    [<lotr:tile.oreStorage:6>, <lotr:tile.oreStorage:6>, <lotr:tile.oreStorage:6>],
    [<lotr:tile.oreStorage:6>, <ChickenChunks:chickenChunkLoader:0>, <lotr:tile.oreStorage:6>],
    [<lotr:tile.oreStorage:6>, <lotr:tile.oreStorage:6>, <lotr:tile.oreStorage:6>],
]);
