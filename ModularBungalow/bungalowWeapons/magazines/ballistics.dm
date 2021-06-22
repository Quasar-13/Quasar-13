/obj/item/ammo_box/magazine/de9mm
	name = "Colt Delta Elite magazine (9mm)"
	desc = "A single-stack m1911 magazine, modified to fit 9mm auto."
	icon_state = "45-8"
	ammo_type = /obj/item/ammo_casing/c9mm
	caliber = "9mm"
	max_ammo = 8

/obj/item/ammo_box/magazine/de9mm/update_icon()
	..()
	if (ammo_count() >= 8)
		icon_state = "45-8"
	else
		icon_state = "45-[ammo_count()]"
