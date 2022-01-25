//bandolier//
/obj/item/storage/belt/bandolier/marine
	name = "soldier's bandolier"
	desc = "A bandolier for holding rifle and shotgun ammunition."
	icon_state = "bandolier"
	inhand_icon_state = "bandolier"
	worn_icon_state = "bandolier"

/obj/item/storage/belt/bandolier/marine/ComponentInitialize()
	. = ..()
	var/datum/component/storage/STR = GetComponent(/datum/component/storage)
	STR.max_items = 35
	STR.max_combined_w_class = 35
	STR.display_numerical_stacking = TRUE
	STR.set_holdable(list(
		/obj/item/ammo_casing/shotgun,
		/obj/item/ammo_casing/a762))
