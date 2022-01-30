//MEGAZINES
/obj/item/ammo_box/magazine/glock
	name = "pistol magazine (Glock 9mm)"
	icon_state = "9x19p-8"
	ammo_type = /obj/item/ammo_casing/c9mm
	caliber = CALIBER_9MM
	max_ammo = 17

/obj/item/ammo_box/magazine/glock/update_icon()
	..()
	if (ammo_count() == 0)
		icon_state = "9x19p-0"
	else
		icon_state = "9x19p-8"

/obj/item/ammo_box/magazine/sig
	name = "pistol magazine (.38 SIG)"
	icon_state = "9x19p-8"
	ammo_type = /obj/item/ammo_casing/c38
	caliber = CALIBER_38
	max_ammo = 12

/obj/item/ammo_box/magazine/sig/update_icon()
	..()
	if (ammo_count() == 0)
		icon_state = "9x19p-0"
	else
		icon_state = "9x19p-8"

//SHOTGUN AMMO
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

