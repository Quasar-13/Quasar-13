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

/obj/item/ammo_box/magazine/avtomag/akira
	name = ".556 Avtomag Magazine"
	desc = "a 10 rounds .556 magazine for the Special Avtomag."
	ammo_type = /obj/item/ammo_casing/a556
	caliber = CALIBER_A556

/obj/item/ammo_casing/a556/pl
	projectile_type = /obj/projectile/bullet/a556/pl
/obj/projectile/bullet/a556/pl
	name = "5.56mm bullet"
	damage = 55
	armour_penetration = 0
	wound_bonus = -20

/obj/item/ammo_casing/a556/sk
	projectile_type = /obj/projectile/bullet/a556/sk
/obj/projectile/bullet/a556/sk
	name = "5.56mm bullet"
	damage = 65
	armour_penetration = 45
	wound_bonus = 20

