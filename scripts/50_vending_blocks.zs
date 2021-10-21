import mods.nei.NEI;


########################################################################################################################

# Remove all the different variants of vending machines
for meta in 1 .. 16 {
    var stack = <vending:vendingMachine>.definition.makeStack(meta);
    recipes.remove(stack);
    NEI.hide(stack);

    stack = <vending:vendingMachineAdvanced>.definition.makeStack(meta);
    recipes.remove(stack);
    NEI.hide(stack);

    stack = <vending:vendingMachineMultiple>.definition.makeStack(meta);
    recipes.remove(stack);
    NEI.hide(stack);
}
