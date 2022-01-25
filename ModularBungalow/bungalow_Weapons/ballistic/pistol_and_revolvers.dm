////////////////////////////////////////////////////
////////////////////////////PISTOLS/////////////////
///////////////////////////////////////////////////

/obj/item/gun/ballistic/automatic/pistol/mk23
	name = "Mark 23 SOCOM"
	desc = "A pistol used by special forces across the galaxy."
	icon_state = "mk23"
	icon = 'ModularBungalow/bungalowWeapons/_icon/ballistics.dmi'
	mag_type = /obj/item/ammo_box/magazine/glock
	can_suppress = FALSE

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

/////////////////////////////////////////////
////////////////////REVOLVERS///////////////
////////////////////////////////////////////

//Chiappa Rhino
/obj/item/gun/ballistic/revolver/rhino
	name = "Chiappa Rhino"
	desc = "A special pistol made for the captain, chambered in .38"
	icon_state = "rhino"
	icon = 'ModularBungalow/bungalowWeapons/_icon/ballistics.dmi'
	mag_type = /obj/item/ammo_box/magazine/internal/cylinder/rev38
	initial_caliber = CALIBER_38

//Sequoia
/obj/item/gun/ballistic/revolver/sequoia
	name = "Captain's Sequoia Pistol"
	desc = "A pistol for solgov captains. Engraved on the bottom is 'Thank you for your 20 years of service.'"
	icon_state = "sequoia"
	icon = 'ModularBungalow/bungalowWeapons/_icon/ballistics.dmi'

//Hakita
/obj/item/gun/ballistic/revolver/hakita
	name = "Hakita Special Revolver"
	desc = "A special pistol used by centcom admirals. Looks sleek, kicks ass."
	icon_state = "hakita"
	icon = 'ModularBungalow/bungalowWeapons/_icon/ballistics.dmi'