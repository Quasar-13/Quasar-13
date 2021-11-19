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
