//NT GOLD Series
/obj/item/gun/energy/laser/captain/ntgold
	name = "E-400 NT GOLD Laser Rifle"
	icon = 'ModularBungalow/bungalowWeapons/_icon/energy.dmi'
	icon_state = "caprifle"
	inhand_icon_state = "gun"
	w_class = WEIGHT_CLASS_BULKY
	desc = "This is a replica of antique laser gun. Chrome finish with gold accents and leather furniture. NT is inscribed on the side."

//Pistol
/obj/item/gun/energy/laser/captain/ntgold/pistol
	name = "E-420 NT GOLD Laser Pistol"
	icon_state = "cappistol"
	desc = "The second gun ever made in the NT GOLD series guns. Compact, and stylish."
	w_class = WEIGHT_CLASS_SMALL
	cell_type = /obj/item/stock_parts/cell/mini_egun

//Shotgun
/obj/item/gun/energy/laser/captain/ntgold/shotgun
	name = "E-440 NT GOLD Laser Scattergun"
	icon_state = "capshotgun"
	ammo_type = list(/obj/item/ammo_casing/energy/laser/scatter)
	desc = "An old captain's shotgun, replicated and made more stylish."

//SMG
/obj/item/gun/energy/laser/captain/ntgold/smg
	name = "E-450 NT GOLD Laser Submachinegun"
	icon_state = "capsmg"
	ammo_type = list(/obj/item/ammo_casing/energy/laser/scatter/rapid)
	desc = "A rapid-fire version of the Captain's gun. Shoots rapid small bullets instead of usual rifle ammo."

/obj/item/gun/energy/laser/captain/ntgold/smg/ComponentInitialize()
	. = ..()
	AddComponent(/datum/component/automatic_fire, 0.18 SECONDS)

