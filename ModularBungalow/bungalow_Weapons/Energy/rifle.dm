//////////
//RIFLES//
//////////
//Blueshield gun
/obj/item/gun/energy/e_gun/stun/blueshield
	name = "\improper XX-02 Tactical Engergy Rifle"
	desc = "A modified XX-01 that has a disabler mode."
	w_class = WEIGHT_CLASS_BULKY
	ammo_type = list(/obj/item/ammo_casing/energy/disabler/hitscan, /obj/item/ammo_casing/energy/laser)

//NT GOLD Series
/obj/item/gun/energy/laser/captain/ntgold
	name = "E-400 NT GOLD Laser Rifle"
	icon = 'ModularBungalow/bungalowWeapons/_icon/energy.dmi'
	icon_state = "caprifle"
	inhand_icon_state = "gun"
	w_class = WEIGHT_CLASS_BULKY
	desc = "This is a replica of antique laser gun. Chrome finish with gold accents and leather furniture. NT is inscribed on the side."

//Autorifle
/obj/item/gun/energy/disabler/advanced/rifle
	name = "SX-0 Disabler Autorifle"
	desc = "A fully automatic disabler rifle for security use."
	icon_state = "autorifle"
	weapon_weight = WEAPON_HEAVY

/obj/item/gun/energy/disabler/advanced/rifle/ComponentInitialize()
	. = ..()
	AddComponent(/datum/component/automatic_fire, 0.20 SECONDS)

//Beam Rifle
/obj/item/gun/energy/disabler/advanced/beam
	name = "SX-1 Disabler Beam Rifle"
	desc = "A fully automatic disabler beam rifle for security use."
	icon_state = "beamrifle"
	ammo_type = list(/obj/item/ammo_casing/energy/disabler/hitscan)
	weapon_weight = WEAPON_HEAVY

/obj/item/gun/energy/disabler/advanced/beam/ComponentInitialize()
	. = ..()
	AddComponent(/datum/component/automatic_fire, 0.25 SECONDS)
