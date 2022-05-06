//Wetwork Energy Sniper
/obj/item/gun/energy/sniper/security
	name = "L-733 Anti-Personnel Rifle"
	desc = "An advanced piece of weaponry forged by NT to terminate troublemakers."
	ammo_type = list(/obj/item/ammo_casing/energy/sniper/disable)

/obj/item/gun/energy/sniper/security/Initialize()
	. = ..()
	fire_delay = 30


//Arlem rifle
/obj/item/gun/energy/sniper/fallout
	name = "AER-12 Advanced laser rifle"
	desc = "An advanced piece of weaponry forged by unknown forces."
	icon = 'ModularBungalow/bungalow_Weapons/_icon/energy.dmi'
	icon_state = "aer12"
	ammo_type = list(/obj/item/ammo_casing/energy/sniper/weak)
	pin = /obj/item/firing_pin/explorer
	zoomable = FALSE

/obj/item/gun/energy/sniper/fallout/Initialize()
	. = ..()
	fire_delay = 6

