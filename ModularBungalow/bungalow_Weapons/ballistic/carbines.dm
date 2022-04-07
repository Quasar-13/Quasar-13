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
	w_class = WEIGHT_CLASS_BULKY
	item_flags = NEEDS_PERMIT | SLOWS_WHILE_IN_HAND
	slowdown = 0.7
	burst_size = 1
	fire_delay = 3
