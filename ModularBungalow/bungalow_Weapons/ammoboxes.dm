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

/obj/item/ammo_box/speedloader
	name = "admin shell box "
	desc = "If you see this, call a coder!"
	icon_state = "slug"
	icon = 'ModularBungalow/bungalow_Weapons/_icon/ammo_box.dmi'
	ammo_type = /obj/item/ammo_casing/a357
	w_class = WEIGHT_CLASS_NORMAL
	max_ammo = 12
	multiple_sprites = AMMO_BOX_PER_BULLET

/obj/item/ammo_box/speedloader/c38
	name = ".38 speedloader"
	desc = "A speedloader full of .38 catridges ready to be used!"
	icon_state = "slc38"
	icon = 'ModularBungalow/bungalow_Weapons/_icon/ammo_box.dmi'
	ammo_type = /obj/item/ammo_casing/c38

/obj/item/ammo_box/speedloader/c38/dumdum
	name = ".38 dum dum speedloader"
	desc = "A speedloader full of .38 dum dum catridges ready to be used!"
	ammo_type = /obj/item/ammo_casing/c38/dumdum

/obj/item/ammo_box/speedloader/a357
	name = ".357 speedloader"
	desc = "A speedloader full of .357 catridges ready to be used!"
	icon_state = "slc357"
	icon = 'ModularBungalow/bungalow_Weapons/_icon/ammo_box.dmi'
	ammo_type = /obj/item/ammo_casing/a357

/obj/item/ammo_box/speedloader/a357/match
	name = ".357 match speedloader"
	desc = "A speedloader full of .357 match catridges ready to be used!"
	icon_state = "slc357"
	icon = 'ModularBungalow/bungalow_Weapons/_icon/ammo_box.dmi'
	ammo_type = /obj/item/ammo_casing/a357/match

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

//Ammoboxe for the armylathe hehe - Akira
/obj/item/ammo_box/rifle
	name = ".556 ammo box"
	desc = "A box full of .556 Cartridges ready to be used, hold 60 casing"
	icon_state = "riflebox"
	icon = 'ModularBungalow/bungalow_Weapons/_icon/ammo_box.dmi'
	ammo_type = /obj/item/ammo_casing/a556
	w_class = WEIGHT_CLASS_NORMAL
	max_ammo = 60

//do not make this one printable, mapping purpose and lootdrop.
/obj/item/ammo_box/rifle/big
	name = "large .556 ammo box"
	desc = "A box full of .556 Cartridges ready to be used, hold 180 casing, this one is bulky"
	icon_state = "superriflebox"
	icon = 'ModularBungalow/bungalow_Weapons/_icon/ammo_box.dmi'
	ammo_type = /obj/item/ammo_casing/a556
	w_class = WEIGHT_CLASS_BULKY
	max_ammo = 180

/obj/item/ammo_box/ab357
	name = ".357 ammo box"
	desc = "A box full of .357 Cartridges ready to be used, hold 24 casing"
	icon_state = "357box"
	icon = 'ModularBungalow/bungalow_Weapons/_icon/ammo_box.dmi'
	ammo_type = /obj/item/ammo_casing/a357
	w_class = WEIGHT_CLASS_NORMAL
	max_ammo = 24
