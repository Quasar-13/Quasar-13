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
/obj/item/gun/ballistic/automatic/surplus/acp45
	desc = "A mostly obsolete cheap semi-auto rifle chambered in .45 ACP."
	fire_delay = 15
	icon = 'ModularBungalow/bungalow_Weapons/_icon/ballistics.dmi'
	icon_state = "surplus2"
	mag_type = /obj/item/ammo_box/magazine/surplusrifle/acp45

/obj/item/gun/ballistic/automatic/laser/burst
	name = "L-807 Neo Laser Burst Rifle "
	desc = "The Miracle of the L-804, in it's full burst fire glory."
	icon_state = "laserburst"
	burst_size = 3




//OORAH SIR YES SIR!
/obj/item/gun/ballistic/automatic/m90/unrestricted/auto/halo
	name = "MA5C Individual Combat Weapons System"
	desc = "An air-cooled, gas-operated, magazine fed weapon designed for automatic fire."
	icon_state = "halo"
	inhand_icon_state = "hk21"
	icon = 'ModularBungalow/bungalow_Weapons/_icon/ballistics.dmi'
	fire_sound = 'sound/weapons/gun/l6/shot.ogg'
	rack_sound = 'sound/weapons/gun/l6/l6_rack.ogg'
	pin = /obj/item/firing_pin/explorer

/obj/item/gun/ballistic/automatic/m90/unrestricted/auto/halo/ComponentInitialize()
	. = ..()
	AddComponent(/datum/component/automatic_fire, 0.13 SECONDS)


//Kepler guns
//Sprite by kirie and akira!
/obj/item/gun/ballistic/automatic/m90/xm29
	name = "SG-XM29 'Determinator'"
	desc = "It's a grenade launcher with a rifle attached to it.. used by Solgov fighting forces. Although It was never officially adopted, it was typically seen used by kepler group mercenaries and in hand of some heavy rangers"
	icon_state = "xm29"
	inhand_icon_state = "hk21"
	icon = 'ModularBungalow/bungalow_Weapons/_icon/ballistics.dmi'
	fire_sound = 'sound/weapons/gun/l6/shot.ogg'
	rack_sound = 'sound/weapons/gun/l6/l6_rack.ogg'
	pin = /obj/item/firing_pin
	w_class = WEIGHT_CLASS_BULKY
	weapon_weight = WEAPON_HEAVY
	zoomable = TRUE
	zoom_amt = 8
	zoom_out_amt = 4
	fire_delay = 0.10
/obj/item/gun/ballistic/automatic/m90/xm29/Initialize()
	. = ..()
	underbarrel = new /obj/item/gun/ballistic/revolver/grenadelauncher/xm29(src)
	update_icon()

/obj/item/gun/ballistic/revolver/grenadelauncher/xm29
	mag_type = /obj/item/ammo_box/magazine/internal/grenadelauncher/cylinder/xm29
	pin = /obj/item/firing_pin

/obj/item/ammo_box/magazine/internal/grenadelauncher/cylinder/xm29
	name = "grenade launcher internal magazine"
	ammo_type = /obj/item/ammo_casing/a40mm
	caliber = CALIBER_40MM
	max_ammo = 5

//being a rare weapon with decent firerate
/obj/item/gun/ballistic/automatic/gyropistol/xm25
	name = "SG-P25 'Crow'"
	desc = "A prototype grenade launcher designed to fire magazine fed grenades. Although It was never officially adopted, some were used by heavy rangers due to their increased range"
	icon_state = "xm25"
	icon = 'ModularBungalow/bungalow_Weapons/_icon/ballistics.dmi'
	w_class = WEIGHT_CLASS_BULKY
	weapon_weight = WEAPON_HEAVY
	zoomable = TRUE
	zoom_amt = 8
	zoom_out_amt = 4

/obj/item/gun/ballistic/automatic/gyropistol/xm25/Initialize()
	. = ..()
	fire_delay = 14


/obj/item/gun/ballistic/automatic/ar/hk21
	name = "\improper SG-GPM21 'Terminator'"
	desc = "A general purpose machine gun used by Solgov fighting forces.Typically seen in the kepler colony and in hand of some heavy rangers"
	icon = 'ModularBungalow/bungalow_Weapons/_icon/ballistics.dmi'
	icon_state = "hk21"
	inhand_icon_state = "hk21"
	slot_flags = 0
	burst_size = 1
	fire_sound = 'sound/weapons/gun/l6/shot.ogg'
	rack_sound = 'sound/weapons/gun/l6/l6_rack.ogg'
	weapon_weight = WEAPON_HEAVY

/obj/item/gun/ballistic/automatic/ar/hk21/Initialize()
	. = ..()
	AddComponent(/datum/component/automatic_fire, 0.15 SECONDS)

//THE MARSOC ARE COMING RUN
/obj/item/gun/ballistic/automatic/ar/hk21/marsoc
	name = "\improper K-GPM21S 'Peacemaker'"
	desc = "A modified machinegun with its stock and barrel shortened for close quarter combat, Foxtrot-1, Finish the job."
	icon_state = "hk21c"
	w_class = WEIGHT_CLASS_NORMAL
	weapon_weight = WEAPON_LIGHT

/obj/item/gun/ballistic/automatic/ar/hk21/Initialize()
	. = ..()
	AddComponent(/datum/component/automatic_fire, 0.12 SECONDS)

/obj/item/gun/ballistic/automatic/sniper_rifle/solgov
	name = "Type 45 Sniper Rifle"
	desc = "Typically used by Solgov marksman, combat technician or in this case, found in the hand of mercenary snipers."
	icon_state = "rifle45"
	inhand_icon_state = "rifle45"
	icon = 'ModularBungalow/bungalow_Weapons/_icon/ballistics.dmi'
	mag_display_ammo = 1
	spawnwithmagazine = 0
	mag_type = /obj/item/ammo_box/magazine/sniper_rounds/solgov_longrifle

/obj/item/gun/ballistic/automatic/sniper_rifle/solgov/ranger
	name = "Type 40 Sniper Rifle"
	desc = "Typically used by Ranger marksman of the past."
	icon_state = "rifle40"
	inhand_icon_state = "rifle40"
	mag_display_ammo = 1
	spawnwithmagazine = 1

//Used for both of these!
/obj/item/ammo_box/magazine/sniper_rounds/solgov_longrifle
	max_ammo = 12
	caliber = CALIBER_50

/obj/item/ammo_box/magazine/sniper_rounds/solgov_longrifle/penetrator
	name = "sniper rounds (penetrator)"
	desc = "An extremely powerful round capable of passing straight through cover and anyone unfortunate enough to be behind it."
	ammo_type = /obj/item/ammo_casing/p50/penetrator
