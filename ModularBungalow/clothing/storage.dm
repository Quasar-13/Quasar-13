////////// BACKPACK///////////
/obj/item/storage/backpack/centcom
	name = "centcom backpack"
	desc = "It's a special backpack made exclusively for Nanotrasen officers. Green for Navy baby."
	icon =	'ModularBungalow/clothing/icons/storage.dmi'
	icon_state = "gcaptainpack"
	worn_icon = 'ModularBungalow/clothing/worn/backw.dmi'
	lefthand_file = 'ModularBungalow/zbungalowicons/items_lefthand.dmi'
	righthand_file = 'ModularBungalow/zbungalowicons/items_righthand.dmi'
	inhand_icon_state = "gcaptainpack"

////////// BRIEFCASE//////////
/obj/item/storage/briefcase/secretary
	folder_path = /obj/item/folder/blue
	icon = 'ModularBungalow/clothing/icons/storage.dmi'
	icon_state = "briefcase_secretary"
	lefthand_file = 'ModularBungalow/zbungalowicons/items_lefthand.dmi'
	righthand_file = 'ModularBungalow/zbungalowicons/items_righthand.dmi'

/obj/item/storage/briefcase/secretary/PopulateContents()
	new /obj/item/reagent_containers/food/drinks/bottle/whiskey(src)
	new /obj/item/paper_bin(src)
	new /obj/item/reagent_containers/food/drinks/drinkingglass/shotglass(src)
	..()

//////////// BAG/////////////
/obj/item/storage/bag/construction/bluespace
	name = "bluespace construction bag"
	icon = 'icons/obj/mining.dmi'
	icon_state = "satchel_bspace"
	worn_icon_state = "construction_bag"
	desc = "Designed for Void Technicians, this satchel can hold incredible amounts of electronic components, circuitboards and machine parts."
	resistance_flags = FLAMMABLE

/obj/item/storage/bag/construction/bluespace/ComponentInitialize()
	. = ..()
	var/datum/component/storage/STR = GetComponent(/datum/component/storage)
	STR.max_combined_w_class = 100
	STR.max_items = 50
	STR.max_w_class = WEIGHT_CLASS_SMALL
	STR.insert_preposition = "in"
	STR.set_holdable(list(
		/obj/item/stack/ore/bluespace_crystal,
		/obj/item/assembly,
		/obj/item/stock_parts,
		/obj/item/reagent_containers/glass/beaker,
		/obj/item/stack/cable_coil,
		/obj/item/circuitboard,
		/obj/item/electronics,
		/obj/item/wallframe))

/datum/design/bsconstruction
	name = "Bluespace Construction Bag"
	desc = "A bag designed to hold absurd amounts of electronics and device frames."
	id = "bsconstruct"
	build_type = PROTOLATHE
	materials = list(/datum/material/iron = 1000, /datum/material/glass = 2000, /datum/material/bluespace = 500, /datum/material/diamond = 100)//expensive-ish for a reason
	build_path = /obj/item/storage/bag/construction/bluespace
	category = list("Bluespace Designs")
	departmental_flags = DEPARTMENTAL_FLAG_ENGINEERING

//Fucking medic bag
/obj/item/storage/bag/chemistry/medic
	name = "medic's chemistry bag"
	desc = "A bag carrying everything needed."

/obj/item/storage/bag/chemistry/medic/PopulateContents()
	new /obj/item/reagent_containers/glass/bottle/epinephrine(src)
	new /obj/item/reagent_containers/glass/bottle/epinephrine(src)
	new /obj/item/reagent_containers/glass/bottle/libital(src)
	new /obj/item/reagent_containers/glass/bottle/libital(src)
	new /obj/item/reagent_containers/glass/bottle/probital(src)
	new /obj/item/reagent_containers/glass/bottle/salicyclic(src)
	new /obj/item/reagent_containers/glass/bottle/aiuri(src)
	new /obj/item/reagent_containers/glass/bottle/synaptizine(src)
	new /obj/item/reagent_containers/glass/bottle/synaptizine(src)
	new /obj/item/reagent_containers/glass/bottle(src)
	for(var/i in 1 to 30)
		new /obj/item/reagent_containers/syringe(src)

/*
	PULSE RIFLE KIT BLACKSITE
*/
/obj/item/storage/backpack/duffelbag/deathsquad
	name = "Pulse Rifle Kit"
	desc = "The classic deathsquad weapon. Set to Destroy"

/obj/item/storage/backpack/duffelbag/deathsquad/PopulateContents()
	new /obj/item/gun/energy/pulse/carbine(src)

/*
	MINIGUN KIT BLACKSITE
*/
/obj/item/storage/backpack/duffelbag/deathsquad/minigun
	name = "Laser Minigun Kit"
	desc = "Contains the new and improved Deathsquad minigun with a pulse pistol sidearm."

/obj/item/storage/backpack/duffelbag/deathsquad/minigun/PopulateContents()
	new /obj/item/minigunpack(src)
	new /obj/item/gun/energy/pulse/pistol(src)

/*
	RIFLE AND ION KIT BLACKSITE ERT
*/
/obj/item/storage/backpack/duffelbag/ert
	name = "E-000 Laser Rifle Kit and Ion Rifle"
	desc = "Usually given to NT station captains, this rifle is in your hands as well for delicate missions"

/obj/item/storage/backpack/duffelbag/ert/PopulateContents()
	new /obj/item/gun/energy/laser/captain/ntgold(src)
	new /obj/item/gun/energy/ionrifle/carbine(src)
	new /obj/item/gun/energy/e_gun/mini(src)

/*
	LASER SNIPER KIT BLACK SITE ERT
*/
/obj/item/storage/backpack/duffelbag/ert/laser
	name = "Laser Sniper Kit"
	desc = "Contains one M76 Lethal laser beam rifle and a usable sidearm."

/obj/item/storage/backpack/duffelbag/ert/laser/PopulateContents()
	new /obj/item/gun/energy/sniper/pin(src)
	new /obj/item/gun/energy/e_gun/mini(src)

/*
	X-RAY KIT BLACKSITE ERT
*/
/obj/item/storage/backpack/duffelbag/ert/xray
	name = "Ultramaterial Rifle Kit"
	desc = "Contains one fully modified L-792 Ultramaterial laser rifle and a usable sidearm."

/obj/item/storage/backpack/duffelbag/ert/xray/PopulateContents()
	new /obj/item/gun/energy/xray(src)
	new /obj/item/gun/energy/e_gun/mini(src)

/*
	ACCELERATION RIFLE KIT BLACKSITE ERT
*/
/obj/item/storage/backpack/duffelbag/ert/pkr
	name = "Particle Acceleration Rifle Kit"
	desc = "Contains one Particle Acceleration rifle and sidearm."

/obj/item/storage/backpack/duffelbag/ert/pkr/PopulateContents()
	new /obj/item/gun/energy/beam_rifle(src)
	new /obj/item/gun/energy/e_gun/mini(src)

/*
	DEFAULT MARINE KIT BLACKSITE MARINE
*/
/obj/item/storage/backpack/duffelbag/marine
	name = "Marine Assault Kit"
	desc = "The classic ballistic NT weapon. Fires semi-auto."

/obj/item/storage/backpack/duffelbag/marine/PopulateContents()
	new /obj/item/clothing/suit/armor/vest/ntmarine(src)
	new /obj/item/gun/ballistic/automatic/ar/semi(src)
	new /obj/item/ammo_box/magazine/m556(src)
	new /obj/item/ammo_box/magazine/m556(src)
	new /obj/item/ammo_box/magazine/m556(src)
	new /obj/item/ammo_box/magazine/m556(src)
	new /obj/item/ammo_box/magazine/m556(src)
	new /obj/item/gun/ballistic/automatic/pistol(src)

/*
	MEDIC KIT BLACKSITE MARINE
*/
/obj/item/storage/backpack/duffelbag/marine/medic
	name = "Marine Medic Kit"
	desc = "Contains two medical kits and a PDW."

/obj/item/storage/backpack/duffelbag/marine/medic/PopulateContents()
	new /obj/item/clothing/suit/armor/vest/ntmarine/medic(src)
	new /obj/item/clothing/head/beret/med(src)
	new /obj/item/gun/ballistic/automatic/wt550(src)
	new /obj/item/ammo_box/magazine/wt550m9(src)
	new /obj/item/ammo_box/magazine/wt550m9(src)
	new /obj/item/ammo_box/magazine/wt550m9(src)
	new /obj/item/storage/bag/chemistry/medic(src)
	new /obj/item/gun/syringe(src)
	new /obj/item/storage/firstaid/emergency(src)
	new /obj/item/storage/firstaid/brute(src)
	new /obj/item/extinguisher/mini(src)
	new /obj/item/gun/ballistic/automatic/pistol(src)

/*
	ENGINEERING KIT BLACKSITE MARINE
*/
/obj/item/storage/backpack/duffelbag/marine/engi
	name = "Marine Engineering Kit"
	desc = "Contains a toolbelt, a bolt action rifle, and a turret."

/obj/item/storage/backpack/duffelbag/marine/engi/PopulateContents()
	new /obj/item/clothing/suit/armor/vest/ntmarine/engineer(src)
	new /obj/item/clothing/head/beret/eng/hazard(src)
	new /obj/item/extinguisher/mini(src)
	new /obj/item/gun/ballistic/rifle/boltaction/brand_new(src)
	new /obj/item/ammo_box/a762(src)
	new /obj/item/ammo_box/a762(src)
	new /obj/item/ammo_box/a762(src)
	new /obj/item/ammo_box/a762(src)
	new /obj/item/choice_beacon/bungalow/turret(src)
	new /obj/item/gun/ballistic/automatic/pistol(src)
	new /obj/item/storage/belt/utility/full/engi(src)

/*
	SHOTGUN KIT BLACKSITE MARINE
*/
/obj/item/storage/backpack/duffelbag/marine/shotgun
	name = "Marine Trenchman Kit"
	desc = "This shotgun is for pointmen who are going in first with a shotgun full of buck and a shield."

/obj/item/storage/backpack/duffelbag/marine/shotgun/PopulateContents()
	new /obj/item/clothing/suit/armor/vest/ntmarine/security(src)
	new /obj/item/clothing/mask/gas/atmos(src)
	new /obj/item/gun/ballistic/shotgun/lethal(src)
	new /obj/item/shield/energy(src)
	new /obj/item/melee/transforming/energy/sword/saber(src)
	new /obj/item/clothing/under/plasmaman/robotics/marine(src)
	new /obj/item/storage/box/shotgun/lasershot(src)
	new /obj/item/storage/box/shotgun/lasershot(src)
	new /obj/item/storage/box/shotgun/lasershot(src)
	new /obj/item/storage/box/shotgun/lasershot(src)
	new /obj/item/storage/box/shotgun/lasershot(src)
	new /obj/item/storage/box/shotgun/meteor(src)
	new /obj/item/storage/box/shotgun/meteor(src)
	new /obj/item/storage/box/shotgun/frag(src)
	new /obj/item/storage/belt/bandolier/marine(src)
	new /obj/item/gun/ballistic/shotgun/doublebarrel/side(src)

/*
	SMG KIT BLACKSITE MARINE
*/
/obj/item/storage/backpack/duffelbag/marine/smg
	name = "Marine SMG Kit"
	desc = "This semi-auto gun has a fast fire rate for clearing rooms."

/obj/item/storage/backpack/duffelbag/marine/smg/PopulateContents()
	new /obj/item/clothing/suit/armor/vest/ntmarine(src)
	new /obj/item/gun/ballistic/automatic/proto/unrestricted(src)
	new /obj/item/shield/energy(src)
	new /obj/item/ammo_box/magazine/smgm9mm(src)
	new /obj/item/ammo_box/magazine/smgm9mm(src)
	new /obj/item/ammo_box/magazine/smgm9mm(src)
	new /obj/item/ammo_box/magazine/smgm9mm(src)
	new /obj/item/ammo_box/magazine/smgm9mm(src)
	new /obj/item/gun/ballistic/automatic/pistol(src)

/*
	MOSIN KIT BLACKSITE MARINE
*/
/obj/item/storage/backpack/duffelbag/marine/mosin
	name = "Marine Ranger Kit"
	desc = "This kit is perfect for scouting out areas for enemies.."

/obj/item/storage/backpack/duffelbag/marine/mosin/PopulateContents()
	new /obj/item/clothing/suit/armor/vest/ntmarine/sniper(src)
	new /obj/item/clothing/neck/cloak/ranger(src)
	new /obj/item/binoculars(src)
	new /obj/item/gun/ballistic/automatic/sniper_rifle(src)
	new /obj/item/ammo_box/magazine/sniper_rounds(src)
	new /obj/item/ammo_box/magazine/sniper_rounds(src)
	new /obj/item/ammo_box/magazine/sniper_rounds(src)
	new /obj/item/ammo_box/magazine/sniper_rounds(src)

/*
  	SAMURAI KIT BLACKSITE MARINE
*/
/obj/item/storage/backpack/duffelbag/marine/samurai
	name = "Marine Blademaster Kit"
	desc = "This kit is great for frontlining, with a bullet deflecting blade."

/obj/item/storage/backpack/duffelbag/marine/samurai/PopulateContents()
	new /obj/item/clothing/suit/armor/vest/ntmarine/samurai(src)
	new /obj/item/clothing/under/plasmaman/robotics/marine(src)
	new /obj/item/clothing/glasses/eyepatch(src)
	new /obj/item/clothing/neck/cloak/samurai(src)
	new /obj/item/vibro_weapon(src)
	new /obj/item/gun/ballistic/automatic/pistol(src)

//Space miner
/obj/item/storage/backpack/duffelbag/space_exploration
	name = "space exploration kit"
	desc = "A kit containing everything a miner needs to qualify for space exploration."
	icon_state = "duffel-explorer"
	inhand_icon_state = "duffel-explorer"

/obj/item/storage/backpack/duffelbag/space_exploration/PopulateContents()
	new /obj/item/clothing/suit/space/hardsuit/mining/compact(src)
	new /obj/item/tank/jetpack/oxygen/harness(src)
	new /obj/item/tank/internals/oxygen(src)
	new /obj/item/binoculars(src)
	new /obj/item/gps/mining(src)
