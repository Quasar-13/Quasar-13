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
