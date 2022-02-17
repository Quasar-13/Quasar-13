// BARTENDER VENDING MACHINE
/obj/machinery/vending/boozeomat/Initialize()
	products += list(
		/obj/item/reagent_containers/food/drinks/bottle/pisco = 5,
	)
	. = ..()

// SODAS VENDING MACHINE
/obj/machinery/vending/cola/Initialize()
	contraband += list(
		/obj/item/reagent_containers/food/drinks/soda_cans/tula = 3,
	)
	. = ..()

//AUTODROBE VENDING MACHINE
/obj/machinery/vending/autodrobe/Initialize()
	products += list(
		/obj/item/clothing/suit/hooded/harlequin = 1,
    /obj/item/clothing/glasses/regular/bigshot = 1,
	)
	. = ..()

//ENGINER WARDROBE VENDING MACHINE

//This makes the menu look REALLY gross, I'm going to move this to the original file.
/*
/obj/machinery/vending/wardrobe/engi_wardrobe/Initialize()
	products += list(
		/obj/item/clothing/suit/hooded/wintercoat/engineering/void = 3,
	)
	.=..()
*/

//SECURITY WARDROME VENDING MACHINE

/obj/machinery/vending/wardrobe/sec_wardrobe/Initialize()
    products += list(
      /obj/item/clothing/head/beret/sec/navyofficer/black = 3,
    )
    . = ..()
