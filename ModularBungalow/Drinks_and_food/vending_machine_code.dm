// BARTENDER VENDING MACHINE
/obj/machinery/vending/boozeomat/Initialize()
    products += list(/obj/item/reagent_containers/food/drinks/bottle/pisco = 5)
    . = ..()
// SODAS VENDING MACHINE
/obj/machinery/vending/cola/Initialize()
	contraband += list(/obj/item/reagent_containers/food/drinks/soda_cans/tula = 3)
	. = ..()
