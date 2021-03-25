/obj/item/storage/bag/construction/bluespace
	name = "bluespace construction bag"
	icon = 'icons/obj/mining.dmi'
	icon_state = "satchel_bspace"
	worn_icon_state = "construction_bag"
	desc = "Designed for Void Technicians, this satchel can hold incredible amounts of electronic components, circuitboards and machine parts."
	resistance_flags = FLAMMABLE

/obj/item/storage/bag/construction/bluespace/ComponentInitialize()
	. = ..()
	STR.max_combined_w_class = 1000
	STR.max_items = 600
