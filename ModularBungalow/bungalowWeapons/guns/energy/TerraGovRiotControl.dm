//The TerraGov's (What I have up so far) own designed weaponry for non-lethal and riot control energy-based purposes

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
	
