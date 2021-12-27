//Bungalow CMO weapon
/obj/item/gun/syringe/rifle
	name = "cmo's syringe rifle"
	desc = "The CMO is known for doing a little bit of sports shooting, and this is their gun of choice"
	icon = 'ModularBungalow/bungalowWeapons/_icon/ballistics.dmi'
	icon_state = "syringerifle"
	max_syringes = 3

//Syndiecorps pistols
/obj/item/gun/ballistic/automatic/pistol/sig
	name = "SIG Sauer P226"
	desc = "A classic handgun that packs a slightly larger punch. Syndicate have modified this gun to fire a custom .38 cartridge, modified from the .357 SIG."
	icon_state = "sig"
	icon = 'ModularBungalow/bungalowWeapons/_icon/ballistics.dmi'
	mag_type = /obj/item/ammo_box/magazine/sig
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
	mag_type = /obj/item/ammo_box/magazine/glock
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

/obj/item/gun/ballistic/automatic/m90/unrestricted/auto
	name = "\improper M-90A Automatic Carbine"
	desc = "An automatic 5.56 toploading carbine, designated 'M-90A'. Has an attached underbarrel grenade launcher which can be toggled on and off."
	icon = 'ModularBungalow/bungalowWeapons/_icon/ballistics.dmi'
	icon_state = "m90"
	burst_size = 1
	fire_delay = 2
	pin = /obj/item/firing_pin
	actions_types = list()


/obj/item/gun/ballistic/automatic/m90/unrestricted/auto/ComponentInitialize()
	. = ..()
	AddComponent(/datum/component/automatic_fire, 0.3 SECONDS)

