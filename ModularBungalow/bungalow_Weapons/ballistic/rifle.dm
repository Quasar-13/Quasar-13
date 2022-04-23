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

//T-12
/obj/item/gun/ballistic/automatic/t12
	name = "T-12"
	desc = "A standard assault rifle used by TerraGov military."
	icon = 'ModularTegustation/Teguicons/48x32_guns.dmi'
	lefthand_file = 'ModularTegustation/Teguicons/teguitems_hold_left.dmi'
	righthand_file = 'ModularTegustation/Teguicons/teguitems_hold_right.dmi'
	icon_state = "t12"
	inhand_icon_state = "t12"
	fire_sound = "gun_t12"
	base_pixel_x = -8
	burst_size = 1
	force = 14
	actions_types = list()
	mag_display = TRUE
	weapon_weight = WEAPON_MEDIUM
	w_class = WEIGHT_CLASS_BULKY
	mag_type = /obj/item/ammo_box/magazine/t12

/obj/item/gun/ballistic/automatic/t12/ComponentInitialize()
	. = ..()
	AddComponent(/datum/component/automatic_fire, 0.18 SECONDS)

//Surplus Rifle .45 ACP
/obj/item/gun/ballistic/automatic/surplus/m45
	desc = "A mostly obsolete cheap semi-auto rifle chambered in .45 ACP."
	icon_state = "surplus2"
	mag_type = /obj/item/ammo_box/magazine/m45/rifle

/obj/item/gun/ballistic/automatic/laser/burst
	name = "L-807 Neo Laser Burst Rifle "
	desc = "The Miracle of the L-804, in it's full burst fire glory."
	icon_state = "laserburst"
	burst_size = 3
