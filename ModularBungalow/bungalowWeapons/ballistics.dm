//Bungalow CMO weapon
/obj/item/gun/syringe/rifle
	name = "cmo's syringe rifle"
	desc = "The CMO is known for doing a little bit of sports shooting, and this is their gun of choice"
	icon = 'ModularBungalow/bungalowWeapons/_icon/ballistics.dmi'
	icon_state = "syringerifle"
	max_syringes = 3


/obj/item/gun/ballistic/automatic/pistol/sig
	name = "SIG Sauer P226"
	desc = "A classic handgun with a larger than average magazine capacity."
	icon = 'ModularBungalow/bungalowWeapons/_icon/ballistics.dmi'
	spread = 15
	icon_state = "sig"
	icon = 'ModularBungalow/bungalowWeapons/_icon/ballistics.dmi'
	mag_type = /obj/item/ammo_box/magazine/m9mm
	can_suppress = FALSE

/obj/item/gun/ballistic/automatic/pistol/ppk
	name = "Type 64"
	desc = "The classic Chinese handgun. Chambered in .38."
	icon = 'ModularBungalow/bungalowWeapons/_icon/ballistics.dmi'
	icon_state = "ppk"
	mag_type = /obj/item/ammo_box/magazine/m9mm
	can_suppress = FALSE

/obj/item/gun/ballistic/automatic/pistol/glock
	name = "Glock 17"
	desc = "The well known austrian pistol. Commonly used by law enforcement."
	icon = 'ModularBungalow/bungalowWeapons/_icon/ballistics.dmi'
	icon_state = "glock"
	can_suppress = FALSE

/obj/item/gun/ballistic/automatic/pistol/glock/fullauto
	name = "Glock 18"
	desc = "The well known austrian pistol. This one is fully automatic, and may break your hand."
	burst_size = 1
	spread = 30
	fire_delay = 0.5

/obj/item/gun/ballistic/automatic/pistol/glock/fullauto/ComponentInitialize()
	. = ..()
	AddComponent(/datum/component/automatic_fire, 0.1 SECONDS)
