/obj/item/storage/bag/construction/bluespace
	name = "bluespace construction bag"
	icon = 'icons/obj/mining.dmi'
	icon_state = "satchel_bspace"
	worn_icon_state = "construction_bag"
	desc = "Designed for Void Technicians, this satchel can hold incredible amounts of electronic components, circuitboards and machine parts."
	resistance_flags = FLAMMABLE

/obj/item/storage/bag/construction/bluespace/ComponentInitialize()
	. = ..()
	var/datum/component/storage/STR = GetComponent(/datum/component/storage)
	STR.max_combined_w_class = 100
	STR.max_items = 50
	STR.max_w_class = WEIGHT_CLASS_SMALL
	STR.insert_preposition = "in"
	STR.set_holdable(list(
		/obj/item/stack/ore/bluespace_crystal,
		/obj/item/assembly,
		/obj/item/stock_parts,
		/obj/item/reagent_containers/glass/beaker,
		/obj/item/stack/cable_coil,
		/obj/item/circuitboard,
		/obj/item/electronics,
		/obj/item/wallframe
		))


/datum/design/bsconstruction
	name = "Bluespace Construction Bag"
	desc = "A bag designed to hold absurd amounts of electronics and device frames."
	id = "bsconstruct"
	build_type = PROTOLATHE
	materials = list(/datum/material/iron = 1000, /datum/material/glass = 2000, /datum/material/bluespace = 500, /datum/material/diamond = 100)//expensive-ish for a reason
	build_path = /obj/item/storage/bag/construction/bluespace
	category = list("Bluespace Designs")
	departmental_flags = DEPARTMENTAL_FLAG_ENGINEERING
