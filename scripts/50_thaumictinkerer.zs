import mods.thaumcraft.Crucible;
import mods.thaumcraft.Infusion;
import mods.thaumcraft.Research;


########################################################################################################################

Research.orphanResearch("ICHORCLOTH_CHEST_GEM");

Research.removeResearch("ICHORCLOTH_BOOTS_GEM");
Research.removeResearch("ICHORCLOTH_CHEST_GEM");
Research.removeResearch("ICHORCLOTH_HELM_GEM");
Research.removeResearch("ICHORCLOTH_LEGS_GEM");

Research.addPrereq("WARP_GATE", "ICHOR", false);
Research.addPrereq("WARP_GATE", "DISLOCATOR", true);


########################################################################################################################

Crucible.addRecipe("DIMENSION_SHARDS", <ThaumicTinkerer:kamiResource:6>, <lotr:item.naurite>, "alienis 2");
Crucible.addRecipe("DIMENSION_SHARDS", <ThaumicTinkerer:kamiResource:7>, <lotr:item.guldurilCrystal>, "alienis 2");
