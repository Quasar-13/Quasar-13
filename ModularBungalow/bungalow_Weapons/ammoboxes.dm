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


/obj/item/ammo_box/shotgun
	name = "admin shell box "
	desc = "If you see this, call a coder!"
	icon_state = "slug"
	icon = 'ModularBungalow/bungalow_Weapons/_icon/shotgunshell.dmi'
	ammo_type = /obj/item/ammo_casing/shotgun
	max_ammo = 12

/obj/item/ammo_box/shotgun/slug
	name = "slug shell box "
	desc = "A box full of 12 shotgun slugs."
	icon_state = "slug"
	ammo_type = /obj/item/ammo_casing/shotgun

/obj/item/ammo_box/shotgun/buckshot
	name = "buckshot shell box"
	desc = "A box full of 12 buckshot shells."
	icon_state = "buckshot"
	ammo_type = /obj/item/ammo_casing/shotgun/buckshot

/obj/item/ammo_box/shotgun/rubber
	name = "rubber shell box"
	desc = "A box full of 12 rubber shells."
	icon_state = "rubber"
	ammo_type = /obj/item/ammo_casing/shotgun/rubbershot

/obj/item/ammo_box/shotgun/beanbag
	name = "beanbag shell box"
	desc = "A box full of 12 beanbag shells."
	icon_state = "beanbag"
	ammo_type = /obj/item/ammo_casing/shotgun/beanbag

/obj/item/ammo_box/shotgun/frag
	name = "frag grenade shell box"
	desc = "A box full of 12 shotgun frag grenades."
	icon_state = "frag"
	ammo_type = /obj/item/ammo_casing/shotgun/frag12

/obj/item/ammo_box/shotgun/meteor
	name = "meteor shell box"
	desc = "A box full of 12 meteor shells."
	icon_state = "meteor"
	ammo_type = /obj/item/ammo_casing/shotgun/meteorslug

/obj/item/ammo_box/shotgun/laser
	name = "laser shell box"
	desc = "A box full of 12 laser shells."
	icon_state = "laser"
	ammo_type = /obj/item/ammo_casing/shotgun/laserslug

/obj/item/ammo_box/shotgun/pulse
	name = "pulse slug box"
	desc = "A box full of 12 pulse slugs."
	icon_state = "pulse"
	ammo_type = /obj/item/ammo_casing/shotgun/pulseslug
