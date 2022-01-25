//bandolier//

/obj/item/storage/belt/bandolier/marine
	name = "soldier's bandolier"
	desc = "A bandolier for holding rifle and shotgun ammunition."
	icon_state = "bandolier"
	inhand_icon_state = "bandolier"
	worn_icon_state = "bandolier"

/obj/item/storage/belt/bandolier/marine/ComponentInitialize()
	. = ..()
	var/datum/component/storage/STR = GetComponent(/datum/component/storage)
	STR.max_items = 35
	STR.max_combined_w_class = 35
	STR.display_numerical_stacking = TRUE
	STR.set_holdable(list(
		/obj/item/ammo_casing/shotgun,
		/obj/item/ammo_casing/a762,
	))

////////////
//SHOTGUNS//
////////////

/obj/item/gun/ballistic/shotgun/doublebarrel/side
	name = "Short Shottie"
	desc = "A small double-barrel shotgun."
	icon_state = "dshotgun_sawn"
	w_class = WEIGHT_CLASS_SMALL
	pb_knockback = 3 // it's a super shotgun!

//svet shotgun, dont know man
/obj/item/gun/ballistic/shotgun/doublebarrel/svet_shotgun
	name = "Brass Cannon"
	desc = "A triple-barrel shotgun. This one is customized with a purple vernish paint, attached to a brass frame and trimed with silver."
	icon = 'ModularBungalow/zbungalowicons/weapons/shotguns.dmi'
	icon_state = "svet_shotgun"
	worn_icon = 'ModularBungalow/zbungalowicons/clothing/back/shotguns.dmi'
	lefthand_file = 'ModularBungalow/zbungalowicons/weapons/shotguns_lefthand.dmi'
	righthand_file = 'ModularBungalow/zbungalowicons/weapons/shotguns_righthand.dmi'
	inhand_icon_state = null
	w_class = WEIGHT_CLASS_BULKY
	weapon_weight = WEAPON_MEDIUM
	force = 10
	mag_type = /obj/item/ammo_box/magazine/internal/shot/triple
	obj_flags = UNIQUE_RENAME
	semi_auto = TRUE
	bolt_type = BOLT_TYPE_NO_BOLT
	can_be_sawn_off = FALSE
	pb_knockback = 3 // it's a super shotgun!

//BREACH AND CLEAN
/obj/item/gun/ballistic/shotgun/automatic/breaching
	name = "tactical breaching shotgun"
	desc = "A compact semi-auto shotgun designed to fire breaching slugs and create rapid entry points. Only accepts breaching slugs."
	icon = 'ModularBungalow/zbungalowicons/weapons/shotguns.dmi'
	icon_state = "breachingshotgun"
	mag_type = /obj/item/ammo_box/magazine/internal/shot/breaching
	w_class = WEIGHT_CLASS_NORMAL //compact so it fits in backpacks
	can_be_sawn_off = FALSE

/obj/item/ammo_box/magazine/internal/shot/breaching
	name = "breaching shotgun internal magazine"
	ammo_type = /obj/item/ammo_casing/shotgun/breacher
	max_ammo = 7
	caliber = "breacher"



/obj/item/ammo_box/magazine/internal/shot/triple
	name = "triple-barrel shotgun internal magazine"
	max_ammo = 3

////////////////////////////////////////////////////////////
///////////////////////BUNGALOW HEADS WEAPONS///////////////
//////////////////////////////////////////////////////////

//CMO SYRINGE RIFLE
/obj/item/gun/syringe/rifle
	name = "cmo's syringe rifle"
	desc = "The CMO is known for doing a little bit of sports shooting, and this is their gun of choice"
	icon = 'ModularBungalow/bungalowWeapons/_icon/ballistics.dmi'
	icon_state = "syringerifle"
	max_syringes = 3

//CE SHORT SHOTTIE
/obj/item/gun/ballistic/shotgun/riot/shortie
	name = "Serbu Super Shorty"
	desc = "The CE's short shottie. Holds 3+1 bullets, loaded in "
	icon_state = "shortie"
	icon = 'ModularBungalow/zbungalowicons/weapons/shotguns.dmi'
	fire_delay = 8
	mag_type = /obj/item/ammo_box/magazine/internal/shot/four
	can_be_sawn_off = FALSE
	w_class = WEIGHT_CLASS_NORMAL

//HOP X-41 Pulse Disabler Rifle
/obj/item/gun/energy/e_gun/hop
	name = "\improper X-41 Disabler Beam Rifle"
	desc = "A classic, the shotgun variant of the X-01 Multiphase, this rifle trades the ion and kill modes for a concentrated, but weak disabler beam and scattershot blasts."
	cell_type = /obj/item/stock_parts/cell/hos_gun
	icon = 'ModularBungalow/bungalowWeapons/_icon/energy.dmi'
	icon_state = "hoprifle"
	inhand_icon_state = "energydisable3"
	shaded_charge = TRUE
	w_class = WEIGHT_CLASS_BULKY
	force = 5
	ammo_type = list(/obj/item/ammo_casing/energy/disabler/hitscan, /obj/item/ammo_casing/energy/laser/scatter/disabler, /obj/item/ammo_casing/energy/laser/scatter/close)
	ammo_x_offset = 2

/obj/item/ammo_box/magazine/internal/shot/four
	name = "shotgun internal magazine"
	ammo_type = /obj/item/ammo_casing/shotgun/beanbag
	caliber = CALIBER_SHOTGUN
	max_ammo = 3
	multiload = FALSE

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

///////////////////////////////////////////////////
//////////////////////CARBINES////////////////////
//////////////////////////////////////////////////

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

////////////////////////////////////////////
//////////////////LASERS///////////////////
///////////////////////////////////////////

///////////////
//Old Lasguns//
///////////////
/obj/item/gun/energy/laser/fifth
	name = "\improper L-504 Laser Gun"
	desc = "Nanotrasen’s 5th series rifle."
	icon = 'ModularBungalow/bungalowWeapons/_icon/energy.dmi'
	icon_state = "oldgun"

/obj/item/gun/energy/laser/fifth/cybersun
	name = "\improper Cybersun 'Naga' Laser Gun"
	hitsound = 'sound/weapons/blade1.ogg'
	desc = "Nanotrasen’s 5th series rifle."
	icon_state = "naga"
	force = 20

//LASER REVOLVER
//Home Defender pistol
/obj/item/gun/energy/e_gun/homedef
	name = "\improper E-220 Home Defender Beam Revolver"
	desc = "Nanotrasen’s experiment to re-invent portable, self-recharging batteries and combine it with their special multi-phase technology."
	icon = 'ModularBungalow/bungalowWeapons/_icon/energy.dmi'
	icon_state = "homedefender"
	inhand_icon_state = "gun"
	ammo_type = list(/obj/item/ammo_casing/energy/disabler/hitscan/heavy, /obj/item/ammo_casing/energy/ion)
	w_class = WEIGHT_CLASS_SMALL
	cell_type = /obj/item/stock_parts/cell/mini_egun
	selfcharge = 1
	ammo_x_offset = 2
	charge_sections = 6

//Rob's Special Version
/obj/item/gun/energy/e_gun/homedef/special
	name = "\improper Custom E-220 Home Defender"
	desc = "An old but well kept E-220. Someone painted a purple H on it. It looks well kept, if a little dustied."
	icon_state = "homedefender-special"
	selfcharge = 1

//////////
//RIFLES//
//////////
//Blueshield gun
/obj/item/gun/energy/e_gun/stun/blueshield
	name = "\improper XX-02 Tactical Engergy Rifle"
	desc = "A modified XX-01 that has a disabler mode."
	w_class = WEIGHT_CLASS_BULKY
	ammo_type = list(/obj/item/ammo_casing/energy/disabler/hitscan, /obj/item/ammo_casing/energy/laser)

//NT GOLD Series
/obj/item/gun/energy/laser/captain/ntgold
	name = "E-400 NT GOLD Laser Rifle"
	icon = 'ModularBungalow/bungalowWeapons/_icon/energy.dmi'
	icon_state = "caprifle"
	inhand_icon_state = "gun"
	w_class = WEIGHT_CLASS_BULKY
	desc = "This is a replica of antique laser gun. Chrome finish with gold accents and leather furniture. NT is inscribed on the side."

//Autorifle
/obj/item/gun/energy/disabler/advanced/rifle
	name = "SX-0 Disabler Autorifle"
	desc = "A fully automatic disabler rifle for security use."
	icon_state = "autorifle"
	weapon_weight = WEAPON_HEAVY

/obj/item/gun/energy/disabler/advanced/rifle/ComponentInitialize()
	. = ..()
	AddComponent(/datum/component/automatic_fire, 0.20 SECONDS)

//Beam Rifle
/obj/item/gun/energy/disabler/advanced/beam
	name = "SX-1 Disabler Beam Rifle"
	desc = "A fully automatic disabler beam rifle for security use."
	icon_state = "beamrifle"
	ammo_type = list(/obj/item/ammo_casing/energy/disabler/hitscan)
	weapon_weight = WEAPON_HEAVY

/obj/item/gun/energy/disabler/advanced/beam/ComponentInitialize()
	. = ..()
	AddComponent(/datum/component/automatic_fire, 0.25 SECONDS)

////////////
//SNIPERS//
///////////
//Wetwork Energy Sniper
/obj/item/gun/energy/sniper/security
	name = "L-733 Anti-Personnel Rifle"
	desc = "An advanced piece of weaponry forged by NT to terminate troublemakers."
	ammo_type = list(/obj/item/ammo_casing/energy/sniper/disable)

/obj/item/gun/energy/sniper/security/Initialize()
	. = ..()
	fire_delay = 30

///////////
//PISTOLS//
///////////
/obj/item/gun/energy/laser/captain/ntgold/pistol
	name = "E-420 NT GOLD Laser Pistol"
	icon_state = "cappistol"
	desc = "The second gun ever made in the NT GOLD series guns. Compact, and stylish."
	w_class = WEIGHT_CLASS_SMALL
	cell_type = /obj/item/stock_parts/cell/mini_egun

////////////
//SHOTGUNS//
///////////
/obj/item/gun/energy/laser/captain/ntgold/shotgun
	name = "E-440 NT GOLD Laser Scattergun"
	icon_state = "capshotgun"
	ammo_type = list(/obj/item/ammo_casing/energy/laser/scatter)
	desc = "An old captain's shotgun, replicated and made more stylish."

//Shotgun
/obj/item/gun/energy/laser/captain/ntgold/shotgun
	name = "E-440 NT GOLD Laser Scattergun"
	icon_state = "capshotgun"
	ammo_type = list(/obj/item/ammo_casing/energy/laser/scatter)
	desc = "An old captain's shotgun, replicated and made more stylish."
//SMG
/obj/item/gun/energy/laser/captain/ntgold/smg
	name = "E-450 NT GOLD Laser Submachinegun"
	icon_state = "capsmg"
	ammo_type = list(/obj/item/ammo_casing/energy/laser/scatter/rapid)
	desc = "A rapid-fire version of the Captain's gun. Shoots rapid small bullets instead of usual rifle ammo."

/obj/item/gun/energy/laser/captain/ntgold/smg/ComponentInitialize()
	. = ..()
	AddComponent(/datum/component/automatic_fire, 0.18 SECONDS)

/////////////
//DISABLERS//
/////////////
//The SX- Series Guns
/obj/item/gun/energy/disabler/advanced
	name = "SX Series gun"
	icon = 'ModularBungalow/bungalowWeapons/_icon/energy.dmi'
	desc = "If you see this: Call a coder!."
	icon_state = "disabler"
	inhand_icon_state = "arg"
	ammo_type = list(/obj/item/ammo_casing/energy/disabler)
	shaded_charge = TRUE

// Svet's Disabler
/obj/item/gun/energy/disabler/svet_disabler
	name = "Brass Ray"
	desc = "A self-defense weapon that exhausts organic targets, weakening them until they collapse. This one has a wooden vernished purple stock, assembled with a brass frame and trimed with silver linings. It also has been modified to be self rechargeable and have rays instant, at the cost of the capacity."
	icon = 'ModularBungalow/zbungalowicons/weapons/energy.dmi'
	icon_state = "svet_disabler"
	lefthand_file = 'ModularBungalow/zbungalowicons/weapons/energy_lefthand.dmi'
	righthand_file = 'ModularBungalow/zbungalowicons/weapons/energy_righthand.dmi'
	ammo_type = list(/obj/item/ammo_casing/energy/disabler/hitscan)
	ammo_x_offset = 2
	can_flashlight = TRUE
	flight_x_offset = 15
	flight_y_offset = 10
	selfcharge = 1
	w_class = WEIGHT_CLASS_SMALL

//Mark II pistol
/obj/item/gun/energy/disabler/advanced/markii
	name = "SX-2 Disabler Magnum MK II"
	desc = "A self-charging disabler magnum. Better than the original in every way."
	icon_state = "disabler"
	selfcharge = 1

//DMR
/obj/item/gun/energy/disabler/advanced/dmr
	name = "SX-3 Disabler Marksman rifle"
	desc = "A semi-auto disabler rifle with zoom settings."
	icon_state = "dmr"
	ammo_type = list(/obj/item/ammo_casing/energy/disabler/hitscan/heavy)
	weapon_weight = WEAPON_HEAVY
	zoomable = TRUE
	zoom_amt = 5
	zoom_out_amt = 0

/obj/item/gun/energy/disabler/advanced/dmr/Initialize()
	. = ..()
	fire_delay = 10

//Shottie
/obj/item/gun/energy/disabler/advanced/scatter
	name = "SX-4 Disabler Scattergun"
	desc = "A semi-auto disabler shotgun."
	icon_state = "scattergun"
	ammo_type = list(/obj/item/ammo_casing/energy/laser/scatter/disabler)
	weapon_weight = WEAPON_HEAVY


//SMG
/obj/item/gun/energy/disabler/advanced/pdw
	name = "SX-5 Disabler PDW"
	desc = "A fully auto PDW for security use."
	icon_state = "pdw"
	weapon_weight = WEAPON_HEAVY
	ammo_type = list(/obj/item/ammo_casing/energy/disabler/rapid)

/obj/item/gun/energy/disabler/advanced/pdw/ComponentInitialize()
	. = ..()
	AddComponent(/datum/component/automatic_fire, 0.14 SECONDS)

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//The TerraGov's (What I have up so far) own designed weaponry for non-lethal and riot control energy-based purposes//
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//Main Weapon, Disabler Rifle
/obj/item/gun/energy/disabler/advanced/tgrifle
	name = "TGMPC Disabler Rifle"
	desc = "TerraGov's Military police's own varaint of the SX-0 Disabler Autorifle"
	icon_state = "tgdisablerrifle"
	weapon_weight = WEAPON_HEAVY
	ammo_type = list(/obj/item/ammo_casing/energy/disabler/hitscan/heavy)
	can_flashlight = TRUE
	selfcharge = 1

/obj/item/gun/energy/disabler/advanced/tgrifle/ComponentInitialize()
	. = ..()
	AddComponent(/datum/component/automatic_fire, 0.15 SECONDS)


/obj/item/gun/energy/disabler/advanced/tgpistol
	name = "TGMPC Disabler pistol"
	desc = "TerraGov's Military police's own variant of the SX-0 Disabler Magnum, more compact for ease of carry"
	icon_state = "tgdisablerpistol"
	inhand_icon_state = "gun"
	lefthand_file = 'ModularBungalow/zbungalowicons/weapons/energy_lefthand.dmi'
	righthand_file = 'ModularBungalow/zbungalowicons/weapons/energy_righthand.dmi'
	w_class = WEIGHT_CLASS_SMALL
	ammo_type = list(/obj/item/ammo_casing/energy/disabler/hitscan)
	can_flashlight = TRUE
	selfcharge = 1

/obj/item/gun/energy/disabler/advanced/disruptor
	name = "TGMPC Disruptor Pistol"
	desc = "A highly experimental pistol, which has its capacitors overcharged for maximum disabling, possibly a war crime from the sheer pain it gives"
	icon_state = "disruptorpistol"
	inhand_icon_state = "gun"
	lefthand_file = 'ModularBungalow/zbungalowicons/weapons/energy_lefthand.dmi'
	righthand_file = 'ModularBungalow/zbungalowicons/weapons/energy_righthand.dmi'
	ammo_type = list(/obj/item/ammo_casing/energy/sniper/disable)
	weapon_weight = WEAPON_MEDIUM

/obj/item/gun/energy/disabler/advanced/disruptor/Initialize()
	. = ..()
	fire_delay = 5

/////////////////////////////////////////
//////////////////MINING/////////////////
/////////////////////////////////////////

//Miner's Laser pistol
/obj/item/gun/energy/e_gun/miner
	name = "\improper E-324 Mining Pistol"
	desc = "Nanotrasen’s standard issue mining beam pistol."
	icon = 'ModularBungalow/bungalowWeapons/_icon/miningguns.dmi'
	icon_state = "mining"
	inhand_icon_state = "gun"
	pin = /obj/item/firing_pin/explorer
	ammo_type = list(/obj/item/ammo_casing/energy/lasergun, /obj/item/ammo_casing/energy/kinetic)
	w_class = WEIGHT_CLASS_SMALL
	cell_type = /obj/item/stock_parts/cell/mini_egun
	selfcharge = 1


//Miner's Laser Revolver
/obj/item/gun/energy/e_gun/miner/revolver
	name = "\improper E-326 Mining Revolve"
	desc = "A refined, powerful hitscan pistol."
	icon = 'ModularBungalow/bungalowWeapons/_icon/miningguns.dmi'
	icon_state = "mining-revolver"
	ammo_type = list(/obj/item/ammo_casing/energy/laser/hellfire, /obj/item/ammo_casing/energy/kinetic)

//Miner's Laser Shotgun
/obj/item/gun/energy/e_gun/miner/shotty
	name = "\improper E-344 Mining Scattershot"
	desc = "Nanotrasen’s standard issue mining scattershot."
	icon_state = "mining-scatter"
	lefthand_file = 'icons/mob/inhands/weapons/64x_guns_left.dmi'
	righthand_file = 'icons/mob/inhands/weapons/64x_guns_right.dmi'
	inhand_icon_state = "shotgun"
	inhand_x_dimension = 64
	inhand_y_dimension = 64
	ammo_type = list(/obj/item/ammo_casing/energy/laser/scatter, /obj/item/ammo_casing/energy/kinetic)
	w_class = WEIGHT_CLASS_BULKY
	cell_type = /obj/item/stock_parts/cell


//Miner's AutoShotgun
/obj/item/gun/energy/e_gun/miner/autoshotty
	name = "\improper E-346 Mining Autoshotgun"
	desc = "Nanotrasen’s 2nd generation laser shotgun."
	icon_state = "mining-autoscatter"
	inhand_icon_state = "arg"
	ammo_type = list(/obj/item/ammo_casing/energy/laser/scatter/close, /obj/item/ammo_casing/energy/kinetic)
	w_class = WEIGHT_CLASS_BULKY
	cell_type = /obj/item/stock_parts/cell

/obj/item/gun/energy/e_gun/miner/autoshotty/ComponentInitialize()
	. = ..()
	AddComponent(/datum/component/automatic_fire, 0.32 SECONDS)


//"Miner" Laser Rifle
/obj/item/gun/energy/e_gun/miner/rifle
	name = "\improper E-304 Mining Assault Rifle"
	desc = "Nanotrasen’s standard issue mining rifle."
	icon = 'ModularBungalow/bungalowWeapons/_icon/miningguns.dmi'
	icon_state = "mining-rifle"
	ammo_type = list(/obj/item/ammo_casing/energy/laser/scatter/rapid, /obj/item/ammo_casing/energy/kinetic)
	w_class = WEIGHT_CLASS_BULKY
	cell_type = /obj/item/stock_parts/cell

/obj/item/gun/energy/e_gun/miner/rifle/ComponentInitialize()
	. = ..()
	AddComponent(/datum/component/automatic_fire, 0.23 SECONDS)


//"Miner" Heavy Rifle
/obj/item/gun/energy/e_gun/miner/heavyrifle
	name = "\improper E-307 Mining Heavy Rifle"
	desc = "Nanotrasen’s standard issue mining rifle that fires heavy bolts."
	icon = 'ModularBungalow/bungalowWeapons/_icon/miningguns.dmi'
	icon_state = "mining-heavyrifle"
	ammo_type = list(/obj/item/ammo_casing/energy/lasergun, /obj/item/ammo_casing/energy/kinetic)
	w_class = WEIGHT_CLASS_BULKY
	cell_type = /obj/item/stock_parts/cell

/obj/item/gun/energy/e_gun/miner/heavyrifle/ComponentInitialize()
	. = ..()
	AddComponent(/datum/component/automatic_fire, 0.30 SECONDS)


//Miner Superheavy Rifle
/obj/item/gun/energy/e_gun/miner/superheavyrifle
	name = "\improper E-308 Mining Superheavy Rifle"
	desc = "Nanotrasen’s standard issue mining rifle that fires heavy bolts."
	icon = 'ModularBungalow/bungalowWeapons/_icon/miningguns.dmi'
	icon_state = "mining-superheavy"
	ammo_type = list(/obj/item/ammo_casing/energy/laser/heavy, /obj/item/ammo_casing/energy/kinetic)
	w_class = WEIGHT_CLASS_BULKY
	cell_type = /obj/item/stock_parts/cell

/obj/item/gun/energy/e_gun/miner/superheavyrifle/ComponentInitialize()
	. = ..()
	AddComponent(/datum/component/automatic_fire, 0.36 SECONDS)


//Mining Bolter
/obj/item/gun/energy/e_gun/miner/bolter
	name = "\improper E-325 Mining Bolt Pistol"
	desc = "Nanotrasen’s standard issue mining bolter. Fires mini bullets at insane speeds, but has a low capacity"
	icon = 'ModularBungalow/bungalowWeapons/_icon/miningguns.dmi'
	icon_state = "mining-bolter"
	ammo_type = list(/obj/item/ammo_casing/energy/laser/scatter/rapid, /obj/item/ammo_casing/energy/kinetic)

/obj/item/gun/energy/e_gun/miner/bolter/ComponentInitialize()
	. = ..()
	AddComponent(/datum/component/automatic_fire, 0.15 SECONDS)

