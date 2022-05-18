/obj/item/gun/ballistic/automatic/m90/unrestricted/auto
	name = "\improper M-90A Automatic Carbine"
	desc = "An automatic 5.56 toploading carbine, designated 'M-90A'. Has an attached underbarrel grenade launcher which can be toggled on and off."
	icon = 'ModularBungalow/bungalow_Weapons/_icon/ballistics.dmi'
	icon_state = "m90"
	burst_size = 1
	fire_delay = 2
	pin = /obj/item/firing_pin
	actions_types = list()

/obj/item/gun/ballistic/automatic/m90/unrestricted/auto/ComponentInitialize()
	. = ..()
	AddComponent(/datum/component/automatic_fire, 0.3 SECONDS)

/obj/item/gun/ballistic/automatic/ar/semi
	name = "\improper NT-ARS 'Sweeper'"
	desc = "A robust assault rifle used by Nanotrasen fighting forces. This one is modified to be semi-automatic"
	icon = 'ModularBungalow/bungalow_Weapons/_icon/ballistics.dmi'
	icon_state = "argsweeper"
	w_class = WEIGHT_CLASS_BULKY
	item_flags = NEEDS_PERMIT | SLOWS_WHILE_IN_HAND
	slowdown = 0.7
	burst_size = 1
	fire_delay = 3
	
/obj/item/gun/ballistic/automatic/c20r/hellcarbine
	name = "\improper C-191r Carbine"
	desc = "A disgusting amalgamation of parts. It appears to be a C20-r with the ammo counter replaced with a rail and modified to feed 1911 magazines. Hopefully whoever designed this is burning in hell."
	icon = 'ModularBungalow/bungalow_Weapons/_icon/ballistics.dmi'
	icon_state = "c191r"
	inhand_icon_state = "c20r"
	mag_type = /obj/item/ammo_box/magazine/m45
	fire_delay = 2
	burst_size = 2
	pin = /obj/item/firing_pin
