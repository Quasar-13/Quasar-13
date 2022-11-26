/obj/item/gun/ballistic/automatic/uzi
	name = "\improper Type U3 Uzi"
	desc = "A lightweight, fully automatic submachine gun, for when you really want someone dead. Uses 9mm rounds."
	icon_state = "uzi"
	mag_type = /obj/item/ammo_box/magazine/uzim9mm
	bolt_type = BOLT_TYPE_OPEN
	burst_size = 1
	w_class = WEIGHT_CLASS_BULKY
	show_bolt_icon = FALSE
	mag_display = TRUE
	rack_sound = 'sound/weapons/gun/pistol/slide_lock.ogg'

/obj/item/gun/ballistic/automatic/uzi/Initialize()
	. = ..()
	AddComponent(/datum/component/automatic_fire, 0.26 SECONDS)

/obj/item/gun/ballistic/automatic/vector
	name = "\improper NT-VEK Vector Submachinegun"
	desc = "A lightweight, fully automatic submachine gun, for when you really want someone dead. Uses 9mm rubber rounds."
	icon_state = "vector"
	mag_type = /obj/item/ammo_box/magazine/vector
	bolt_type = BOLT_TYPE_OPEN
	burst_size = 1
	w_class = WEIGHT_CLASS_BULKY
	mag_display = TRUE
	rack_sound = 'sound/weapons/gun/pistol/slide_lock.ogg'

/obj/item/gun/ballistic/automatic/vector/Initialize()
	. = ..()
	AddComponent(/datum/component/automatic_fire, 0.17 SECONDS)

/obj/item/gun/ballistic/automatic/mini_uzi/kepler
	name = "\improper Type P23 Submachinegun"
	desc = "A lightweight, fully automatic submachinegun used by the frontier police forces and certain special units. Uses 9mm rounds."
	icon_state = "cbj"
	w_class = WEIGHT_CLASS_NORMAL
	icon = 'ModularBungalow/bungalow_Weapons/_icon/ballistics.dmi'

/obj/item/gun/ballistic/automatic/mini_uzi/kepler/Initialize()
	. = ..()
	AddComponent(/datum/component/automatic_fire, 0.16 SECONDS)

/obj/item/gun/ballistic/automatic/wt550/wt572
	name = "NT-PDW 'WT572'"
	desc = "A smaller more modern version of the WT550 colloquially known as the 572. Very popular among rich civilians and law enforcement alike."
	icon = 'ModularBungalow/bungalow_Weapons/_icon/ballistics.dmi'
	icon_state = "wt572"
	w_class = WEIGHT_CLASS_NORMAL
	can_suppress = TRUE
	can_bayonet = FALSE
	suppressor_x_offset = 4

/obj/item/gun/ballistic/automatic/wt550/wt572/Initialize()
	. = ..()
	AddComponent(/datum/component/automatic_fire, 0.2 SECONDS)

/obj/item/gun/ballistic/automatic/wt550/wt572/military
	name = "NT-IAW 'Hornet'" //IAW means Infantry Assault Weapon
	desc = "NT's military version of the 572, named the hornet for it's armor piercing capabilities. Equipped with a red dot sight and foregrip."
	icon_state = "wt572mili"
	pin = /obj/item/firing_pin/implant/mindshield

/obj/item/gun/ballistic/automatic/wt550/wt572/spec
	name = "NT-SPW 'Nightshade'" //SPW means Special Purpose Weapon, as it is a stealthy SMG for special missions
	desc = "A special version of the 572, only rarely seen used by shady figures in dark blue jackets. Wonder who they are."
	icon_state = "wt572spec"
	pin = /obj/item/firing_pin/implant/mindshield
