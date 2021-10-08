// AK-47
/obj/item/gun/ballistic/automatic/ak47
	name = "AK-47"
	desc = "An old assault rifle, dating back to 20th century. It is commonly used by various bandits, pirates and colonists due to its cheap production and maintenance cost."
	icon = 'ModularTegustation/Teguicons/48x32_guns.dmi'
	icon_state = "ak47"
	base_pixel_x = -8
	fire_sound = 'ModularTegustation/Tegusounds/weapons/guns/ak47.ogg'
	burst_size = 1
	actions_types = list()
	mag_display = TRUE
	weapon_weight = WEAPON_MEDIUM
	w_class = WEIGHT_CLASS_BULKY
	mag_type = /obj/item/ammo_box/magazine/ak47

/obj/item/gun/ballistic/automatic/ak47/ComponentInitialize()
	. = ..()
	AddComponent(/datum/component/automatic_fire, 0.15 SECONDS)

// AKS-74U
// Hits much harder than AK-47, but players can't obtain it normally.
/obj/item/gun/ballistic/automatic/aks74u
	name = "AKS-74U"
	desc = "A compact assault carbine with a foldable stock for easier transportation. Although old, it is still commonly used by some guerrilla fighters and other militias around the universe."
	icon = 'ModularTegustation/Teguicons/48x32_guns.dmi'
	icon_state = "aks74u"
	fire_sound = 'ModularTegustation/Tegusounds/weapons/guns/ak47.ogg' // Temporary
	burst_size = 1
	actions_types = list()
	mag_display = TRUE
	weapon_weight = WEAPON_MEDIUM
	w_class = WEIGHT_CLASS_NORMAL
	mag_type = /obj/item/ammo_box/magazine/aks74u

/obj/item/gun/ballistic/automatic/aks74u/ComponentInitialize()
	. = ..()
	AddComponent(/datum/component/automatic_fire, 0.12 SECONDS)


//MAGS
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
