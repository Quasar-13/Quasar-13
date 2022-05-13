/obj/item/gun/grenadelauncher/marsoc
	name = "grenade launcher"
	desc = "A terrible, terrible thing. It's really awful!"
	icon = 'ModularBungalow/bungalow_Weapons/_icon/ballistics.dmi'
	icon_state = "compactgl"
	w_class = WEIGHT_CLASS_NORMAL

/obj/item/gun/ballistic/rocketlauncher/marsoc
	name = "\improper SG-PRL31"
	desc = "A reusable rocket propelled grenade launcher. normally intended for clearing jungles vegetation now used for clearing structures, \"ENSURE AREA BEHIND IS CLEAR BEFORE FIRING\""
	icon_state = "rocketlauncher"
	inhand_icon_state = "rocketlauncher"
	icon = 'ModularBungalow/bungalow_Weapons/_icon/rocket.dmi'
	mag_type = /obj/item/ammo_box/magazine/internal/marsoc
	pin = /obj/item/firing_pin
	w_class = WEIGHT_CLASS_BULKY
	slot_flags = ITEM_SLOT_BACK

/obj/item/ammo_box/magazine/internal/cylinder/marsoc
	caliber = CALIBER_84MM
	max_ammo = 4
