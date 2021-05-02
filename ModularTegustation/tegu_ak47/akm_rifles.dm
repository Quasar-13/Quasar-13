/obj/item/gun/ballistic/automatic/ak47
	name = "AK-47"
//	desc = {"A favorite among both the soldiers of the Russian Colonial Army and civilians out on the edges of explored space, the AK-47 is a reliable rifle designed and sold by a Space Russian company and remains one of the most common automatic rifles in the known galaxy."}
	desc = "While TG-Russia has deprecriated this gun in favor of the AK-12 over 450 years ago, it is still a favorite of civillians, bandits, terrorists and the like, and sees action among the stars."
	icon = 'ModularTegustation/teguicons/tegu_guns.dmi'
	icon_state = "ak47"
	burst_size = 1
	actions_types = list()
	mag_display = TRUE
	weapon_weight = WEAPON_MEDIUM
	w_class = WEIGHT_CLASS_BULKY
	mag_type = /obj/item/ammo_box/magazine/ak47

/obj/item/gun/ballistic/automatic/ak47/ComponentInitialize()
	. = ..()
	AddComponent(/datum/component/automatic_fire, 0.15 SECONDS)


/obj/item/gun/ballistic/automatic/aks74u //unused, maybe find it on a desert planet soon...
	name = "AKS-74U"
	desc = "A automatic rifle used by colonists on Kepler-453b, before the sudden end of the White Sands project. This is also the Third Soviet Union's standard rifle."
//	desc = {"
//	 A pre-FTL era carbine, the \"curio\" status of the weapon and its relative cheap cost to manufacture make it
//	 perfect for colonists on a budget looking to license firearms for local manufacture.
//	"}
	icon = 'ModularTegustation/teguicons/tegu_guns.dmi'
	icon_state = "aks74u"
	burst_size = 1
	weapon_weight = WEAPON_MEDIUM
	w_class = WEIGHT_CLASS_NORMAL
	pin = /obj/item/firing_pin/explorer
	mag_type = /obj/item/ammo_box/magazine/aks74u

/obj/item/gun/ballistic/automatic/aks74u/russian //probably gonna find it when you piss off the space russians, likely by blowing up their nuclear reactor.
	desc = "Standard issue rifle of the Third Soviet Union."
	pin = /obj/item/firing_pin

/obj/item/gun/ballistic/automatic/aks74u/ComponentInitialize()
	. = ..()
	AddComponent(/datum/component/automatic_fire, 0.05 SECONDS)


//MAGS
/obj/item/ammo_box/magazine/ak47
	name = "AK-47 Magazine (7.62x39mm FMJ)"
	icon = 'ModularTegustation/teguicons/tegu_guns.dmi'
	icon_state = "ak47_mag_item"
	ammo_type = /obj/item/ammo_casing/ballistic/a762_39
	caliber = "7.62x39mm FMJ"
	max_ammo = 30

/obj/item/ammo_box/magazine/aks74u //unused, maybe find it on a desert planet soon...
	name = "AKS-74U Magazine (5.45x39mm cartridge)"
	icon = 'ModularTegustation/teguicons/tegu_guns.dmi'
	icon_state = "ak74_mag_item"
	ammo_type = /obj/item/ammo_casing/ballistic/a545_39
	caliber = "5.45x39mm"
	max_ammo = 30

//CASINGS
/obj/item/ammo_casing/ballistic/a762_39
	name = "7.62x39mm FMJ bullet casing"
	desc = "A 7.62x39mm FMJ bullet casing."
	caliber = "7.62x39mm FMJ"
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
/obj/projectile/bullet/a545_39
	name = "5.45x39mm bullet"
	damage = 32

/obj/projectile/bullet/a762_39
	name = "7.62x39mm FMJ"
	damage = 30
