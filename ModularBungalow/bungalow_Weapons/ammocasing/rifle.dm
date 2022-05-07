//T-21
/obj/item/ammo_box/magazine/t12
	name = "T12 Magazine (10x24mm)"
	icon = 'ModularTegustation/Teguicons/magazines.dmi'
	icon_state = "t12_mag_item"
	ammo_type = /obj/item/ammo_casing/ballistic/a10_24
	caliber = "10x24mm"
	max_ammo = 50

/obj/item/ammo_casing/ballistic/a10_24
	name = "10x24mm bullet casing"
	desc = "A 10x24mm bullet casing."
	caliber = "10x24mm"
	variance = 2
	projectile_type = /obj/projectile/bullet/a10_24

/obj/projectile/bullet/a10_24
	name = "10x24mm bullet"
	damage = 26
	armour_penetration = 25

//AK47/AK74
/obj/item/ammo_box/magazine/ak47
	name = "AK-47 Magazine (7.62x39mm)"
	icon = 'ModularTegustation/Teguicons/magazines.dmi'
	icon_state = "ak_mag_item"
	ammo_type = /obj/item/ammo_casing/ballistic/a762_39
	caliber = "7.62x39mm"
	max_ammo = 30

/obj/item/ammo_box/magazine/ak47/expanded
	name = "AK-47 Expanded Magazine (7.62x39mm)"
	icon_state = "ak_mag_large_item"
	max_ammo = 50

/obj/item/ammo_box/magazine/aks74u
	name = "AKS-74U Magazine (5.45x39mm)"
	icon = 'ModularTegustation/Teguicons/magazines.dmi'
	icon_state = "ak_mag_item"
	ammo_type = /obj/item/ammo_casing/ballistic/a545_39
	caliber = "5.45x39mm"
	max_ammo = 30

/obj/item/ammo_box/magazine/aks74u/expanded
	name = "AKS-74U Expanded Magazine (5.45x39mm)"
	icon_state = "ak_mag_large_item"
	max_ammo = 50

//CASINGS
/obj/item/ammo_casing/ballistic/a762_39
	name = "7.62x39mm bullet casing"
	desc = "A 7.62x39mm bullet casing."
	caliber = "7.62x39mm"
	variance = 2
	projectile_type = /obj/projectile/bullet/a762_39

/obj/item/ammo_casing/ballistic/a545_39
	name = "5.45x39mm bullet casing"
	desc = "A 5.45x39mm bullet casing."
	caliber = "5.45x39mm"
	randomspread = TRUE
	variance = 2
	projectile_type = /obj/projectile/bullet/a545_39

//BULLETS
// AK-47 bullet
/obj/projectile/bullet/a762_39
	name = "7.62x39mm bullet"
	damage = 27

// AK-74 bullet
/obj/projectile/bullet/a545_39
	name = "5.45x39mm bullet"
	damage = 34

/obj/item/ammo_casing/a556/pl
	projectile_type = /obj/projectile/bullet/a556/pl
/obj/projectile/bullet/a556/pl
	name = "5.56mm bullet"
	damage = 20
	stamina = 50
	armour_penetration = 15
	wound_bonus = -20

/obj/item/ammo_casing/a556/sk
	projectile_type = /obj/projectile/bullet/a556/sk
/obj/projectile/bullet/a556/sk
	name = "5.56mm bullet"
	damage = 35
	armour_penetration = 50
	wound_bonus = -20
	stamina = 20

/obj/item/ammo_casing/a556/highp
	projectile_type = /obj/projectile/bullet/a556/highp
/obj/projectile/bullet/a556/highp
	name = "5.56mm bullet"
	damage = 55
	armour_penetration = 10
	wound_bonus = 10
	stamina = 25
