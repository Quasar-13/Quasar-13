/////////////
//DISABLERS//
/////////////
//The SX- Series Guns
/obj/item/gun/energy/disabler/advanced
	name = "SX Series gun"
	icon = 'ModularBungalow/bungalowWeapons/_icon/energy.dmi'
	desc = "If you see this: Call a coder!."
	icon_state = "disabler"
	inhand_icon_state = "arg"
	ammo_type = list(/obj/item/ammo_casing/energy/disabler)
	shaded_charge = TRUE

// Svet's Disabler
/obj/item/gun/energy/disabler/svet_disabler
	name = "Brass Ray"
	desc = "A self-defense weapon that exhausts organic targets, weakening them until they collapse. This one has a wooden vernished purple stock, assembled with a brass frame and trimed with silver linings. It also has been modified to be self rechargeable and have rays instant, at the cost of the capacity."
	icon = 'ModularBungalow/zbungalowicons/weapons/energy.dmi'
	icon_state = "svet_disabler"
	lefthand_file = 'ModularBungalow/zbungalowicons/weapons/energy_lefthand.dmi'
	righthand_file = 'ModularBungalow/zbungalowicons/weapons/energy_righthand.dmi'
	ammo_type = list(/obj/item/ammo_casing/energy/disabler/hitscan)
	ammo_x_offset = 2
	can_flashlight = TRUE
	flight_x_offset = 15
	flight_y_offset = 10
	selfcharge = 1
	w_class = WEIGHT_CLASS_SMALL

//Mark II pistol
/obj/item/gun/energy/disabler/advanced/markii
	name = "SX-2 Disabler Magnum MK II"
	desc = "A self-charging disabler magnum. Better than the original in every way."
	icon_state = "disabler"
	selfcharge = 1

//DMR
/obj/item/gun/energy/disabler/advanced/dmr
	name = "SX-3 Disabler Marksman rifle"
	desc = "A semi-auto disabler rifle with zoom settings."
	icon_state = "dmr"
	ammo_type = list(/obj/item/ammo_casing/energy/disabler/hitscan/heavy)
	weapon_weight = WEAPON_HEAVY
	zoomable = TRUE
	zoom_amt = 5
	zoom_out_amt = 0

/obj/item/gun/energy/disabler/advanced/dmr/Initialize()
	. = ..()
	fire_delay = 10

//Shottie
/obj/item/gun/energy/disabler/advanced/scatter
	name = "SX-4 Disabler Scattergun"
	desc = "A semi-auto disabler shotgun."
	icon_state = "scattergun"
	ammo_type = list(/obj/item/ammo_casing/energy/laser/scatter/disabler)
	weapon_weight = WEAPON_HEAVY


//SMG
/obj/item/gun/energy/disabler/advanced/pdw
	name = "SX-5 Disabler PDW"
	desc = "A fully auto PDW for security use."
	icon_state = "pdw"
	weapon_weight = WEAPON_HEAVY
	ammo_type = list(/obj/item/ammo_casing/energy/disabler/rapid)

/obj/item/gun/energy/disabler/advanced/pdw/ComponentInitialize()
	. = ..()
	AddComponent(/datum/component/automatic_fire, 0.14 SECONDS)

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//The TerraGov's (What I have up so far) own designed weaponry for non-lethal and riot control energy-based purposes//
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//Main Weapon, Disabler Rifle
/obj/item/gun/energy/disabler/advanced/tgrifle
	name = "TGMPC Disabler Rifle"
	desc = "TerraGov's Military police's own varaint of the SX-0 Disabler Autorifle"
	icon_state = "tgdisablerrifle"
	weapon_weight = WEAPON_HEAVY
	ammo_type = list(/obj/item/ammo_casing/energy/disabler/hitscan/heavy)
	can_flashlight = TRUE
	selfcharge = 1

/obj/item/gun/energy/disabler/advanced/tgrifle/ComponentInitialize()
	. = ..()
	AddComponent(/datum/component/automatic_fire, 0.15 SECONDS)


/obj/item/gun/energy/disabler/advanced/tgpistol
	name = "TGMPC Disabler pistol"
	desc = "TerraGov's Military police's own variant of the SX-0 Disabler Magnum, more compact for ease of carry"
	icon_state = "tgdisablerpistol"
	inhand_icon_state = "gun"
	lefthand_file = 'ModularBungalow/zbungalowicons/weapons/energy_lefthand.dmi'
	righthand_file = 'ModularBungalow/zbungalowicons/weapons/energy_righthand.dmi'
	w_class = WEIGHT_CLASS_SMALL
	ammo_type = list(/obj/item/ammo_casing/energy/disabler/hitscan)
	can_flashlight = TRUE
	selfcharge = 1

/obj/item/gun/energy/disabler/advanced/disruptor
	name = "TGMPC Disruptor Pistol"
	desc = "A highly experimental pistol, which has its capacitors overcharged for maximum disabling, possibly a war crime from the sheer pain it gives"
	icon_state = "disruptorpistol"
	inhand_icon_state = "gun"
	lefthand_file = 'ModularBungalow/zbungalowicons/weapons/energy_lefthand.dmi'
	righthand_file = 'ModularBungalow/zbungalowicons/weapons/energy_righthand.dmi'
	ammo_type = list(/obj/item/ammo_casing/energy/sniper/disable)
	weapon_weight = WEAPON_MEDIUM

/obj/item/gun/energy/disabler/advanced/disruptor/Initialize()
	. = ..()
	fire_delay = 5
