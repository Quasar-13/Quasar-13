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

//Lever action
/obj/item/ammo_box/shotgun
	name = "admin shell box "
	desc = "If you see this, call a coder!"
	icon_state = "slug"
	icon = 'ModularBungalow/bungalow_Weapons/_icon/ammo_box.dmi'
	ammo_type = /obj/item/ammo_casing/a357
	w_class = WEIGHT_CLASS_NORMAL
	max_ammo = 20

//SHOTGUN AMMO
/obj/item/ammo_box/shotgun
	name = "admin shell box "
	desc = "If you see this, call a coder!"
	icon_state = "slug"
	icon = 'ModularBungalow/bungalow_Weapons/_icon/ammo_box.dmi'
	ammo_type = /obj/item/ammo_casing/shotgun
	w_class = WEIGHT_CLASS_NORMAL
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

/obj/item/ammo_box/shotgun/lasershot
	name = "laser shell box"
	desc = "A box full of 12 laser shells."
	icon_state = "laser"
	ammo_type = /obj/item/ammo_casing/shotgun/laserslug

/obj/item/ammo_box/shotgun/pulse
	name = "pulse slug box"
	desc = "A box full of 12 pulse slugs."
	icon_state = "pulse"
	ammo_type = /obj/item/ammo_casing/shotgun/pulseslug

/obj/item/ammo_box/shotgun/breaching
	name = "breaching slug box"
	desc = "A box full of 12 breaching slugs."
	icon_state = "breacher_box"
	ammo_type = /obj/item/ammo_casing/shotgun/breacher
