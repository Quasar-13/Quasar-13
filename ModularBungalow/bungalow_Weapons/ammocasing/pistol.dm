//Pistol mags
/obj/item/ammo_box/magazine/avtomag
	name = ".357 Avtomag Magazine"
	desc = "a 10 rounds .357 AMP magazine for the Avtomag."
	ammo_type = /obj/item/ammo_casing/a357
	caliber = CALIBER_357
	max_ammo = 10
	multiple_sprites = AMMO_BOX_FULL_EMPTY
	icon_state = "avtomag-10"
	icon = 'ModularBungalow/bungalow_Weapons/_icon/ammo_box.dmi'

/obj/item/ammo_box/magazine/avtomag/update_icon()
	..()
	if (ammo_count() >= 10)
		icon_state = "avtomag-10"
	else
		icon_state = "avtomag-[ammo_count()]"

/obj/item/ammo_box/magazine/avtomag/akira
	name = ".556 Avtomag Magazine"
	desc = "a 10 rounds .556 magazine for the Special Avtomag."
	ammo_type = /obj/item/ammo_casing/a556/highp
	caliber = CALIBER_A556
	icon_state = "avtomagakira-10"

/obj/item/ammo_casing/a4570
	name = "45-70 Govt bullet"
	desc = "High Power .45-70 Govt Round, intended for taking down bears and whatnot"
	projectile_type = /obj/projectile/bullet/a4570
	caliber = CALIBER_A4570
/obj/projectile/bullet/a4570
	name = "45-70 Govt bullet"
	damage = 55
	armour_penetration = 35
	wound_bonus = 10
	stamina = 5

/obj/item/ammo_box/magazine/m45/big
	name = "Double stack .45 ACP Magazine"
	desc = "Not enough ammo? here's your solution."
	max_ammo = 14
	multiple_sprites = AMMO_BOX_FULL_EMPTY
	icon_state = "double45"
	icon = 'ModularBungalow/bungalow_Weapons/_icon/ammo_box.dmi'
