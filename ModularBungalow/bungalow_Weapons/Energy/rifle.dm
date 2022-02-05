//Blueshield gun
/obj/item/gun/energy/e_gun/stun/blueshield
	name = "\improper XX-02 Tactical Engergy Rifle"
	desc = "A modified XX-01 that has a disabler mode."
	w_class = WEIGHT_CLASS_BULKY
	ammo_type = list(/obj/item/ammo_casing/energy/disabler/hitscan, /obj/item/ammo_casing/energy/laser)

//old laser guns
/obj/item/gun/energy/laser/fifth
	name = "\improper L-504 Laser Gun"
	desc = "Nanotrasen’s 5th series rifle."
	icon = 'ModularBungalow/bungalow_Weapons/_icon/energy.dmi'
	icon_state = "oldgun"

/obj/item/gun/energy/laser/fifth/small
	name = "Compartmentalized L-504 Laser Gun"
	desc = "Nanotrasen’s 5th series rifle. Modified to be smaller"
	w_class = WEIGHT_CLASS_NORMAL

/obj/item/gun/energy/laser/fifth/cybersun
	name = "\improper Cybersun 'Naga' Laser Gun"
	hitsound = 'sound/weapons/blade1.ogg'
	desc = "Nanotrasen’s 5th series rifle."
	icon_state = "naga"
	force = 20
