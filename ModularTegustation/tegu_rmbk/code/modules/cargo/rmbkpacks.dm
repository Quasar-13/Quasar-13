/datum/supply_pack/engine/bananium_fuel_rod
	name = "Bananium Fuel Rod crate"
	desc = "Two fuel rods designed to utilize and multiply bananium in a reactor, requires CE access to open. Caution: Radioactive"
	cost = 4000
	access = ACCESS_CE // Nag your local CE
	contains = list(/obj/item/twohanded/required/fuel_rod/material/bananium,
					/obj/item/twohanded/required/fuel_rod/material/bananium)
	crate_name = "Bluespace Crystal Fuel Rod crate"
	crate_type = /obj/structure/closet/crate/secure/engineering
	dangerous = TRUE
	contraband = TRUE

/datum/supply_pack/engine/fuel_rod
	name = "Uranium Fuel Rod crate"
	desc = "Two additional fuel rods for use in a reactor, requires CE access to open. Caution: Radioactive"
	cost = 3000
	access = ACCESS_CE
	contains = list(/obj/item/twohanded/required/fuel_rod,
					/obj/item/twohanded/required/fuel_rod)
	crate_name = "Uranium-235 Fuel Rod crate"
	crate_type = /obj/structure/closet/crate/secure/engineering
	dangerous = TRUE

/datum/supply_pack/engine/reactor
	name = "RMBK Nuclear Reactor Kit" // (not) a toy
	desc = "Contains a reactor beacon and 3 reactor consoles. Uranium rods not included."
	cost = 12000
	access = ACCESS_CE
	contains = list(/obj/item/survivalcapsule/reactor,
					/obj/machinery/computer/reactor/control_rods/cargo,
					/obj/machinery/computer/reactor/stats/cargo,
					/obj/machinery/computer/reactor/fuel_rods/cargo)
	crate_name = "Build Your Own Reactor Kit"
	crate_type = /obj/structure/closet/crate/secure/engineering
	dangerous = TRUE


