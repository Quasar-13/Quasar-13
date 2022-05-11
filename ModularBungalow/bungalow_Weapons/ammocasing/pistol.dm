//Pistol mags
/obj/item/ammo_box/magazine/avtomag
	name = ".357 Avtomag Magazine"
	desc = "a 10 rounds .357 AMP magazine for the Avtomag."
	ammo_type = /obj/item/ammo_casing/a357
	caliber = CALIBER_357
	max_ammo = 10
	multiple_sprites = AMMO_BOX_FULL_EMPTY
	icon_state = "avtomag-10"

/obj/item/ammo_box/magazine/avtomag/update_icon()
	..()
	if (ammo_count() >= 10)
		icon_state = "avtomag-10"
	else
		icon_state = "avtomag-[ammo_count()]"

