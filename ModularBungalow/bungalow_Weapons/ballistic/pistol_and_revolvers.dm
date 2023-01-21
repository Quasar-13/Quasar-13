///////////////////////
////////PISTOLS////////
///////////////////////

/obj/item/gun/ballistic/automatic/pistol/sig
	name = "K&H P337"
	desc = "A modern version of the classic P226. Chambered in .38 to be more accessible to poor colonies."
	icon_state = "sig"
	icon = 'ModularBungalow/bungalow_Weapons/_icon/ballistics.dmi'
	mag_type = /obj/item/ammo_box/magazine/sig
	can_suppress = FALSE

/obj/item/gun/ballistic/automatic/pistol/ppk
	name = "MZ Type 64"
	desc = "The classic Chinese handgun. Chambered in .38."
	icon = 'ModularBungalow/bungalow_Weapons/_icon/ballistics.dmi'
	icon_state = "ppk"
	mag_type = /obj/item/ammo_box/magazine/m9mm
	can_suppress = FALSE

/obj/item/gun/ballistic/automatic/pistol/actualppk
	name = "K&H PPK"
	desc = "A modern version of the classic spy gun by Kain and Heinrich. Favored by cheap action movie spies."
	icon = 'ModularBungalow/bungalow_Weapons/_icon/ballistics.dmi'
	icon_state = "ppk380"
	mag_type = /obj/item/ammo_box/magazine/m380
	can_suppress = TRUE

/obj/item/gun/ballistic/automatic/pistol/woodmak
	name = "wood grip makarov"
	desc = "A classic soviet piece, wood grip included. Has a threaded barrel for suppressors."
	icon = 'ModularBungalow/bungalow_Weapons/_icon/ballistics.dmi'
	icon_state = "woodmak"

/obj/item/gun/ballistic/automatic/pistol/aps/wood
	name = "wood grip stechkin APS"
	desc = "An ancient 21st century recreation Stechkin APS. It fires quickly, but kicks like a mule. Uses 9mm ammo. Has a threaded barrel for suppressors."
	icon = 'ModularBungalow/bungalow_Weapons/_icon/ballistics.dmi'
	icon_state = "woodaps"

//Syndie Pistols
/obj/item/gun/ballistic/automatic/pistol/sig/syndie
	name = "CSN C38-S"
	desc = "A classic handgun that packs a nice punch. Cybersun have modified this gun to suit their needs."
	icon_state = "sigs"

/obj/item/gun/ballistic/automatic/pistol/glock/fullauto
	name = "CSN A18"
	desc = "A Cybersun version of an 80s classic. This one is fully automatic, and may break your hand."
	burst_size = 1
	spread = 30
	fire_delay = 0.5

/obj/item/gun/ballistic/automatic/pistol/glock/fullauto/ComponentInitialize()
	. = ..()
	AddComponent(/datum/component/automatic_fire, 0.1 SECONDS)

//NT Pistols
/obj/item/gun/ballistic/automatic/pistol/sec
	name = "NT-MRS 'Venus'"
	desc = "Re-creation of a unique and fancy firearm. Used by lower ranking commissioned officers and high-ranking security staff."
	icon = 'ModularBungalow/bungalow_Weapons/_icon/ballistics.dmi'
	icon_state = "venus"
	mag_type = /obj/item/ammo_box/magazine/m9mm
	can_suppress = FALSE

/obj/item/gun/ballistic/automatic/pistol/commander
	name = "NT-RBY 'Ruby'"
	desc = "A modernised version of the 1911. Feeds 9mm instead of the classic .45 ACP. Sometimes seen in the hands of NT security personnel but more commononly sold on the open market."
	icon_state = "commander"
	mag_type = /obj/item/ammo_box/magazine/m9mm
	can_suppress = FALSE

/obj/item/gun/ballistic/automatic/pistol/mk23
	name = "NT-SCM 'SOCOM'"
	desc = "A pistol used by NT special forces and occasionally marines."
	icon_state = "mk23"
	icon = 'ModularBungalow/bungalow_Weapons/_icon/ballistics.dmi'
	mag_type = /obj/item/ammo_box/magazine/m10mm
	can_suppress = TRUE
	suppressor_x_offset = 7

/obj/item/gun/ballistic/automatic/pistol/glock
	name = "NT-GLK 'Glock'"
	desc = "An NT version of an 80s classic. Commonly used by SolGov law enforcement."
	icon = 'ModularBungalow/bungalow_Weapons/_icon/ballistics.dmi'
	icon_state = "glock"
	mag_type = /obj/item/ammo_box/magazine/glock
	can_suppress = FALSE

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

//Colt Detective Special Ivory. a gun used by the kitsune
/obj/item/gun/ballistic/revolver/akira
	name = "Akira's Special"
	desc = "An ornate special revolver made by the kitsune kepler factory. it has a built in barrel charger system which decrease firerate but immensely increase damage output, made chambered in .556, especially strange that they were also only awarded to very few people that proven exceptional to the expedition efforts by the kitsune personally, some of these ornate revolvers survived and were used by the previous site administrator before he passed it along, the owner of this gun took care of it well. faint smells of cinnamon and sake and an engraving of a nine tailed fox."
	icon_state = "akira"
	icon = 'ModularBungalow/bungalow_Weapons/_icon/ballistics.dmi'
	mag_type = /obj/item/ammo_box/magazine/internal/cylinder/rev556
	initial_caliber = CALIBER_A556
	projectile_damage_multiplier = 2
	recoil = 4
	fire_sound = 'sound/weapons/gun/revolver/shot_altp.ogg'

/obj/item/ammo_box/magazine/internal/cylinder/rev556
	ammo_type = /obj/item/ammo_casing/a556
	caliber = CALIBER_A556
	max_ammo = 6

/obj/item/gun/ballistic/revolver/akira/Initialize()
	. = ..()
	fire_delay = 6
//Yet another gun our kitsune would've used
//Albeit less succesfully
/obj/item/gun/ballistic/automatic/pistol/avtomag
	name = ".357 Avtomag"
	desc = "A special pistol made to fire .357 AMP, Although the gun ceased production a long time ago, a certain factory still produce it, Now seen in the hands of certain high ranking kepler officer and solgov officers alike. Do you feel lucky? NO I DON'T, NOT ANYMORE."
	icon_state = "avtomag"
	icon = 'ModularTegustation/Teguicons/kirie_stuff/kiriepistols.dmi'
	mag_type = /obj/item/ammo_box/magazine/avtomag

/obj/item/gun/ballistic/automatic/pistol/avtomag/akira
	name = "\improper Model 35 Avtomag"
	desc = "A special pistol made to fire .357 AMP. the one used by the kitsune of the past, beautifully decorated and coated in chrome, a product of it's time back when it's owner was alive, limited production by the kepler factory, faint smells of cinnamon and sake and an engraving of a nine tailed fox"
	icon_state = "avtomag_kira"
	mag_type = /obj/item/ammo_box/magazine/avtomag/akira

/obj/item/ammo_box/magazine/avtomag/akira
	ammo_type = /obj/item/ammo_casing/a556
	caliber = CALIBER_A556
	max_ammo = 12

/obj/item/gun/ballistic/automatic/pistol/m45a1
	name = "P23 .45"
	desc = "A pistol used by special kepler operation."
	icon_state = "m45a1"
	icon = 'ModularBungalow/bungalow_Weapons/_icon/ballistics.dmi'
	mag_type = /obj/item/ammo_box/magazine/m45

////////////////////
//////REVOLVERS////
///////////////////

//Taurus Judge
/obj/item/gun/ballistic/revolver/judge
	name = "P14 'Judge'"
	desc = "The classic high-powered revolver made in brazil, Typically used by judges as personal defenses weapon in courtroom. it hold six shotgun shells, should be more than enough to kill anything that move."
	icon_state = "judge"
	icon = 'ModularBungalow/bungalow_Weapons/_icon/ballistics.dmi'
	mag_type = /obj/item/ammo_box/magazine/internal/cylinder/revjudge
	initial_caliber = CALIBER_SHOTGUN
	recoil = 3
	pb_knockback = 3
/obj/item/ammo_box/magazine/internal/cylinder/revjudge
	caliber = CALIBER_SHOTGUN
	max_ammo = 6
	ammo_type = /obj/item/ammo_casing/shotgun
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
	name = "Commander's Sequoia Pistol"
	desc = "A pistol for solgov commander. Engraved on the bottom is 'Thank you for your 20 years of service.'"
	icon_state = "sequoia"
	icon = 'ModularBungalow/bungalow_Weapons/_icon/ballistics.dmi'
	mag_type = /obj/item/ammo_box/magazine/internal/cylinder/rev44

/obj/item/ammo_box/magazine/internal/cylinder/rev44
	ammo_type = /obj/item/ammo_casing/a44
	caliber = CALIBER_44
	max_ammo = 7

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

//Single Action Revolver Here

//LONG 45-70
/obj/item/gun/ballistic/shotgun/tracker
	name = "Kepler .45-70 Tracker"
	desc = "horrifyingly powerful single action revolver made specifically for the anti-riot ranger squad, fire extremely high powered .45-70 normally meant for fighting bears."
	icon_state = "tracker"
	icon = 'ModularBungalow/bungalow_Weapons/_icon/ballistics.dmi'
	mag_type = /obj/item/ammo_box/magazine/internal/cylinder/rev4570
	initial_caliber = CALIBER_A4570
	w_class = WEIGHT_CLASS_NORMAL
	inhand_icon_state = "revolver"
	recoil = 1
	pb_knockback = 5
/obj/item/ammo_box/magazine/internal/cylinder/rev4570
	ammo_type = /obj/item/ammo_casing/a4570
	caliber = CALIBER_A4570
	max_ammo = 7

