/obj/item/gun/grenadelauncher/marsoc
	name = "SG-M44"
	desc = "a rare grenade launcher typically used by SOC"
	icon = 'ModularBungalow/bungalow_Weapons/_icon/rocket.dmi'
	icon_state = "compactgl"
	w_class = WEIGHT_CLASS_NORMAL

/obj/item/gun/ballistic/rocketlauncher/flash
	name = "SG-M89"
	desc = "A reusable rocket propelled grenade launcher. only the most heartless will use this."
	icon = 'ModularBungalow/bungalow_Weapons/_icon/rocket.dmi'
	icon_state = "flash"
	inhand_icon_state = "flash"
	icon = 'ModularBungalow/bungalow_Weapons/_icon/rocket.dmi'
	mag_type = /obj/item/ammo_box/magazine/internal/cylinder/marsoc
	pin = /obj/item/firing_pin
	w_class = WEIGHT_CLASS_BULKY
	slot_flags = ITEM_SLOT_BACK

/obj/item/ammo_box/magazine/internal/cylinder/marsoc
	caliber = CALIBER_84MM
	max_ammo = 4
