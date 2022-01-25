//Wetwork Energy Sniper
/obj/item/gun/energy/sniper/security
	name = "L-733 Anti-Personnel Rifle"
	desc = "An advanced piece of weaponry forged by NT to terminate troublemakers."
	ammo_type = list(/obj/item/ammo_casing/energy/sniper/disable)

/obj/item/gun/energy/sniper/security/Initialize()
	. = ..()
	fire_delay = 30
