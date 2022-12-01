//BULLETS

// AK-47 bullet
/obj/item/ammo_casing/ballistic/a762_39
	name = "7.62x39mm bullet casing"
	desc = "A 7.62x39mm bullet casing."
	icon_state = "762x39-casing"
	caliber = "7.62x39mm"
	variance = 2
	projectile_type = /obj/projectile/bullet/a762_39

/obj/item/ammo_casing/ballistic/a545_39
	name = "5.45x39mm bullet casing"
	desc = "A 5.45x39mm bullet casing."
	icon_state = "762-casing"
	caliber = "5.45x39mm"
	randomspread = TRUE
	variance = 2
	projectile_type = /obj/projectile/bullet/a545_39

/obj/projectile/bullet/a762_39
	name = "7.62x39mm bullet"
	damage = 27

/obj/projectile/bullet/a545_39
	name = "5.45x39mm bullet"
	damage = 34

// t-12 bullet
/obj/item/ammo_casing/ballistic/a10_24
	name = "10x24mm bullet casing"
	desc = "A 10x24mm bullet casing."
	icon_state = "762-casing"
	caliber = "10x24mm"
	variance = 2
	projectile_type = /obj/projectile/bullet/a10_24

/obj/projectile/bullet/a10_24
	name = "10x24mm bullet"
	damage = 26
	armour_penetration = 25

// autogun bullet
/obj/item/ammo_casing/ballistic/a762_51
	name = "7.62x51mm bullet casing"
	desc = "A 7.62x51mm bullet casing."
	icon_state = "762x39-casing"
	caliber = "7.62x51"
	variance = 5
	projectile_type = /obj/projectile/bullet/a762_51

/obj/projectile/bullet/a762_51
	name = "7.62x51mm bullet"
	damage = 26


//CUSTOM KEPLER STUFF BELOW

/obj/item/ammo_box/magazine/m556/big
	name = "5.56 expanded magazine"
	icon_state = "556big-50"
	icon = 'ModularBungalow/bungalow_Weapons/_icon/ammo_box.dmi'
	max_ammo = 50
/obj/item/ammo_box/magazine/m556/big/update_icon()
	..()
	if (ammo_count() == 0)
		icon_state = "556big-0"
	else
		icon_state = "556big-50"

/obj/item/ammo_casing/a556/pl
	projectile_type = /obj/projectile/bullet/a556/pl
/obj/projectile/bullet/a556/pl
	name = "5.56mm bullet"
	damage = 20
	stamina = 59
	armour_penetration = -30
	wound_bonus = -20

/obj/item/ammo_casing/a556/sk
	projectile_type = /obj/projectile/bullet/a556/sk
/obj/projectile/bullet/a556/sk
	name = "5.56mm bullet"
	damage = 22
	armour_penetration = 17
	wound_bonus = 5
	stamina = 20

/obj/item/ammo_casing/a556/highp
	projectile_type = /obj/projectile/bullet/a556/highp
/obj/projectile/bullet/a556/highp
	name = "5.56mm bullet"
	damage = 45
	armour_penetration = 40
	wound_bonus = 20
	stamina = 30
