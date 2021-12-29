//ammo
/obj/item/storage/box/shotgun/lasershot
	name = "box of laser shotgun shots"
	desc = "A box full of laser shots, designed for riot shotguns."
	icon_state = "lethalshot_box"
	illustration = null

/obj/item/storage/box/shotgun/lasershot/PopulateContents()
	for(var/i in 1 to 7)
		new /obj/item/ammo_casing/shotgun/laserslug(src)

/obj/item/storage/box/shotgun/slug
	name = "box of shotgun slugs"
	desc = "A box full of lethal slugs, designed for riot shotguns."
	icon_state = "lethalshot_box"
	illustration = null

/obj/item/storage/box/shotgun/slug/PopulateContents()
	for(var/i in 1 to 7)
		new /obj/item/ammo_casing/shotgun(src)

/obj/item/storage/box/shotgun/meteor
	name = "box of meteor slugs"
	desc = "A box full of meteor slugs, designed for riot shotguns."
	icon_state = "lethalshot_box"
	illustration = null

/obj/item/storage/box/shotgun/meteor/PopulateContents()
	for(var/i in 1 to 7)
		new /obj/item/ammo_casing/shotgun/meteorslug(src)

/obj/item/storage/box/shotgun/frag
	name = "box of shotgun grenades"
	desc = "A box full of grenades, designed for riot shotguns."
	icon_state = "lethalshot_box"
	illustration = null

/obj/item/storage/box/shotgun/frag/PopulateContents()
	for(var/i in 1 to 7)
		new /obj/item/ammo_casing/shotgun/frag12(src)

//bandolier
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
		/obj/item/ammo_casing/a762
		))


/obj/item/gun/ballistic/shotgun/doublebarrel/side
	name = "Short Shottie"
	desc = "A small double-barrel shotgun."
	icon_state = "dshotgun_sawn"
	w_class = WEIGHT_CLASS_SMALL
	pb_knockback = 3 // it's a super shotgun!

