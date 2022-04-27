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
	name = "\improper Type P45 Uzi"
	desc = "A lightweight, fully automatic submachinegun, for when you really need someone dead. Uses 9mm rounds."
	icon_state = "miniuzikepler"
	w_class = WEIGHT_CLASS_NORMAL
	icon = 'ModularBungalow/bungalow_Weapons/_icon/ballistics.dmi'

/obj/item/gun/ballistic/automatic/mini_uzi/kepler/Initialize()
	. = ..()
	AddComponent(/datum/component/automatic_fire, 0.16 SECONDS)
