//The TerraGov's (What I have up so far) own designed weaponry for non-lethal and riot control energy-based purposes

//Main Weapon, Disabler Rifle
/obj/item/gun/energy/disabler/advanced/tgrifle
	name = "TGMPC Disabler Rifle"
	desc = "TerraGov's Military police's own varaint of the SX-0 Disabler Autorifle"
	icon_state = "taserrifle"
	weapon_weight = WEAPON_HEAVY
	selfcharge = 1

/obj/item/gun/energy/disabler/advanced/tgrifle/ComponentInitialize()
	. = ..()
	AddComponent(/datum/component/automatic_fire, 0.15 SECONDS)


/obj/item/gun/energy/disabler/advanced/tgpistol
	name = "SX-2 Disabler Magnum MK II"
	desc = "TerraGov's Military police's own variant of the SX-0 Disabler Magnum, more compact for ease of carry"
	icon_state = "taserpistol"
	w_class = WEIGHT_CLASS_SMALL
	selfcharge = 1

/obj/item/gun/energy/disabler/advanced/disruptor
	name = "TGMPC Disruptor Pistol"
	desc = "A highly experimental pistol, which has its capacitors overcharged for maximum disabling, possibly a war crime from the sheer pain it gives"
	icon_state = "disruptorpistol"
	ammo_type = list(/obj/item/ammo_casing/energy/sniper/disable)
	weapon_weight = WEAPON_MEDIUM

	/obj/item/gun/energy/disabler/advanced/disruptor/Initialize()
	. = ..()
	fire_delay = 5