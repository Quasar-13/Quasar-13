///////
//SMG//
///////
/obj/item/gun/energy/laser/captain/ntgold/smg
	name = "E-450 NT GOLD Laser Submachinegun"
	icon_state = "capsmg"
	ammo_type = list(/obj/item/ammo_casing/energy/laser/scatter/rapid)
	desc = "A rapid-fire version of the Captain's gun. Shoots rapid small bullets instead of usual rifle ammo."

/obj/item/gun/energy/laser/captain/ntgold/smg/ComponentInitialize()
	. = ..()
	AddComponent(/datum/component/automatic_fire, 0.18 SECONDS)
