///////////////////////
////////PISTOLS////////
///////////////////////

/obj/item/gun/ballistic/automatic/pistol/mk23
	name = "Mark 23 SOCOM"
	desc = "A pistol used by special forces across the galaxy."
	icon_state = "mk23"
	icon = 'ModularBungalow/bungalow_Weapons/_icon/ballistics.dmi'
	mag_type = /obj/item/ammo_box/magazine/glock
	can_suppress = FALSE

/obj/item/gun/ballistic/automatic/pistol/sig
	name = "SIG Sauer P226"
	desc = "A classic handgun that packs a slightly larger punch. Syndicate have modified this gun to fire a custom .38 cartridge, modified from the .357 SIG."
	icon_state = "sig"
	icon = 'ModularBungalow/bungalow_Weapons/_icon/ballistics.dmi'
	mag_type = /obj/item/ammo_box/magazine/sig
	can_suppress = FALSE

/obj/item/gun/ballistic/automatic/pistol/ppk
	name = "Type 64"
	desc = "The classic Chinese handgun. Chambered in .38."
	icon = 'ModularBungalow/bungalow_Weapons/_icon/ballistics.dmi'
	icon_state = "ppk"
	mag_type = /obj/item/ammo_box/magazine/m9mm
	can_suppress = FALSE

/obj/item/gun/ballistic/automatic/pistol/glock
	name = "Glock 17"
	desc = "The well known austrian pistol. Commonly used by law enforcement."
	icon = 'ModularBungalow/bungalow_Weapons/_icon/ballistics.dmi'
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

//PL-14
/obj/item/gun/ballistic/automatic/pistol/PL14
	name = "PL-14"
	desc = "A Russian semi-automatic pistol chambered in 9x19 Parabellum."
	icon_state = "pl14"
	icon = 'ModularTegustation/Teguicons/kirie_stuff/kiriepistols.dmi'
	w_class = WEIGHT_CLASS_NORMAL
	mag_type = /obj/item/ammo_box/magazine/m9mm
	can_suppress = FALSE
	fire_sound = 'sound/weapons/gun/pistol/shot_alt.ogg'
	rack_sound = 'sound/weapons/gun/pistol/rack.ogg'
	lock_back_sound = 'sound/weapons/gun/pistol/slide_lock.ogg'
	bolt_drop_sound = 'sound/weapons/gun/pistol/slide_drop.ogg'


//Special lore variant
/obj/item/gun/ballistic/automatic/pistol/PL14_nicole
	name = "bloody PL-14"
	desc = "A Russian semi-automatic pistol chambered in 9x19 Parabellum. The name 'Nicole' is scribed in gold leaf into the side, and there is centuries old, caked on blood coating the handle. You get a feeling the owner is long dead."
	icon_state = "pl14_nicole"
	icon = 'ModularTegustation/Teguicons/kirie_stuff/kiriepistols.dmi'

////////////////////
//////REVOLVERS////
///////////////////

//Chiappa Rhino
/obj/item/gun/ballistic/revolver/rhino
	name = "Chiappa Rhino"
	desc = "A special pistol made for the captain, chambered in .38"
	icon_state = "rhino"
	icon = 'ModularBungalow/bungalow_Weapons/_icon/ballistics.dmi'
	mag_type = /obj/item/ammo_box/magazine/internal/cylinder/rev38
	initial_caliber = CALIBER_38

//Sequoia
/obj/item/gun/ballistic/revolver/sequoia
	name = "Captain's Sequoia Pistol"
	desc = "A pistol for solgov captains. Engraved on the bottom is 'Thank you for your 20 years of service.'"
	icon_state = "sequoia"
	icon = 'ModularBungalow/bungalow_Weapons/_icon/ballistics.dmi'

//Hakita
/obj/item/gun/ballistic/revolver/hakita
	name = "Hakita Special Revolver"
	desc = "A special pistol used by centcom admirals. Looks sleek, kicks ass."
	icon_state = "hakita"
	icon = 'ModularBungalow/bungalow_Weapons/_icon/ballistics.dmi'

//S&W 500 Revolver
/obj/item/gun/ballistic/revolver/sw500
	name = "S&W 500 Revolver"
	desc = "The classic high-powered revolver to rival the Mateba. This one is loaded in .357 with a custom 7 bullet cylinder."
	icon_state = "sw500"
	icon = 'ModularTegustation/Teguicons/kirie_stuff/kiriepistols.dmi'
	mag_type = /obj/item/ammo_box/magazine/internal/cylinder
	fire_sound = 'sound/weapons/gun/revolver/shot_alt.ogg'
	load_sound = 'sound/weapons/gun/revolver/load_bullet.ogg'
	eject_sound = 'sound/weapons/gun/revolver/empty.ogg'
	vary_fire_sound = FALSE
	fire_sound_volume = 90
	dry_fire_sound = 'sound/weapons/gun/revolver/dry_fire.ogg'
	casing_ejector = FALSE
	internal_magazine = TRUE
	bolt_type = BOLT_TYPE_NO_BOLT
	tac_reloads = FALSE
	spin_delay = 10
	recent_spin = 0
