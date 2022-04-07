/obj/item/gun/ballistic/automatic/uzi
	name = "\improper Type U3 Uzi"
	desc = "A lightweight, fully automatic submachine gun, for when you really want someone dead. Uses 9mm rounds."
	icon_state = "uzi"
	mag_type = /obj/item/ammo_box/magazine/uzim9mm
	bolt_type = BOLT_TYPE_OPEN
	w_class = WEIGHT_CLASS_BULKY
	show_bolt_icon = FALSE
	mag_display = TRUE
	rack_sound = 'sound/weapons/gun/pistol/slide_lock.ogg'

/obj/item/gun/ballistic/automatic/uzi/Initialize()
	. = ..()
	AddComponent(/datum/component/automatic_fire, 0.3 SECONDS)
