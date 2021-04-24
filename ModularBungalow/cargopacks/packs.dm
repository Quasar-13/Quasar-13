//EMERGENCY
/datum/supply_pack/emergency/beacon_structures
	name = "Instant Structure Capsules"
	desc = "Contains two beacons that contains capsules able to build premade structures."
	cost = CARGO_CRATE_VALUE * 4
	contains = list(/obj/item/choice_beacon/structures,
					/obj/item/choice_beacon/structures)
	crate_name = "Structure capsules"

/datum/supply_pack/emergency/beacon_workplaces
	name = "Instant Workshop Capsules"
	desc = "Contains one beacon that contains a capsule able to build premade and functional workplaces."
	cost = CARGO_CRATE_VALUE * 16
	contains = list(/obj/item/choice_beacon/workplaces)
	crate_name = "Structure capsules"

//SECURITY


//ARMORY
/datum/supply_pack/security/armory/box_rubbershots
	name = "Rubbershots boxes crate"
	desc = "Contains 4 boxes of rubbershot shells. Requires Armory access to open."
	cost = CARGO_CRATE_VALUE * 3
	contains = list(/obj/item/storage/box/rubbershot,
					/obj/item/storage/box/rubbershot,
					/obj/item/storage/box/rubbershot,
					/obj/item/storage/box/rubbershot)
	crate_name = "rubbershots box crate"

/datum/supply_pack/security/armory/box_beanbags
	name = "Beanbags boxes crate"
	desc = "Contains 4 boxes of beanbag shells. Requires Armory access to open."
	cost = CARGO_CRATE_VALUE * 2.5
	contains = list(/obj/item/storage/box/beanbag,
					/obj/item/storage/box/beanbag,
					/obj/item/storage/box/beanbag,
					/obj/item/storage/box/beanbag)
	crate_name = "beanbags box crate"

/datum/supply_pack/security/armory/box_buckshots
	name = "Buckshots boxes crate"
	desc = "Contains 4 boxes of buckshots shells. Requires Armory access to open."
	cost = CARGO_CRATE_VALUE * 5
	contains = list(/obj/item/storage/box/lethalshot,
					/obj/item/storage/box/lethalshot,
					/obj/item/storage/box/lethalshot,
					/obj/item/storage/box/lethalshot)
	crate_name = "buckshots box crate"

/datum/supply_pack/security/armory/sechardsuit
	name = "Security hardsuit"
	desc = "Contains a security hardsuit for Space, Space Law application ! Requires Armory access to open."
	cost = CARGO_CRATE_VALUE * 9
	contains = list(/obj/item/clothing/suit/space/hardsuit/security)
	crate_name = "security hardsuit box crate"

/datum/supply_pack/security/armory/secbiosuit
	name = "Security biosuit"
	desc = "Contains a security biosuit to deal with biohazard criminals ! Requires Armory access to open."
	cost = CARGO_CRATE_VALUE * 7
	contains = list(/obj/item/clothing/suit/bio_suit/security,
					/obj/item/clothing/head/bio_hood/security)
	crate_name = "security biosuit box crate"

//MATERIALS
/datum/supply_pack/materials/silver20
	name = "20 Silver Ingots"
	desc = "A crate of silver ingots to fullfill medical constructions"
	cost = CARGO_CRATE_VALUE * 4
	contains = list(/obj/item/stack/sheet/mineral/silver/twenty)
	crate_name = "silver ingots crate"

/datum/supply_pack/materials/gold20
	name = "20 Gold Ingots"
	desc = "A crate of gold ingots to fullfill electronics assemblies"
	cost = CARGO_CRATE_VALUE * 6.5
	contains = list(/obj/item/stack/sheet/mineral/gold/twenty)
	crate_name = "gold ingots crate"

/datum/supply_pack/materials/uranium20
	name = "20 Uranium Sheets"
	desc = "A crate of uranium sheets to fullfill advanced technologic assemblies"
	cost = CARGO_CRATE_VALUE * 10
	contains = list(/obj/item/stack/sheet/mineral/uranium/twenty)
	crate_name = "uranium sheets crate"

/datum/supply_pack/materials/titanium20
	name = "20 Gold Ingots"
	desc = "A crate of gold ingots to fullfill electronics assemblies"
	cost = CARGO_CRATE_VALUE * 8
	contains = list(/obj/item/stack/sheet/mineral/silver/twenty)
	crate_name = "glass sheets crate"


//SCIENCE

/datum/supply_pack/critter/slime
	name = "Slime Crate"
	desc = "Either you want to make an auxilary Xenobiology lab, or somehow lost all the slimes we sent to you. Contains one grey slime. Needs RD access to unlock."
	cost = CARGO_CRATE_VALUE * 25
	access = ACCESS_RD
	access_view = ACCESS_RESEARCH
	contains = list(/mob/living/simple_animal/slime)
	crate_name = "slime crate"
	crate_type = /obj/structure/closet/crate/secure/science

/datum/supply_pack/critter/slime/generate()
	. = ..()
	if(prob(5))//Why not
		var/mob/living/simple_animal/slime/C = locate() in .
		qdel(C)
		new /mob/living/simple_animal/hostile/blob/blobbernaut/independent(.)

//MEDICAL

/datum/supply_pack/medical/medbeam
	name = "Medical beam gun"
	desc = "Contains a medical beam gun that mends most of basic damage. Ideal for emergency situation. Don't ever cross the beams ! Requires CMO access to open."
	cost = CARGO_CRATE_VALUE * 100
	access = ACCESS_CMO
	access_view = ACCESS_MEDICAL
	contains = list(/obj/item/gun/medbeam)
	crate_name = "medical beam crate"
	crate_type = /obj/structure/closet/crate/secure/weapon

/datum/supply_pack/medical/syringegun
	name = "Syringe gun"
	desc = "Contains a standard syringe gun for remote injections ! Requires CMO access to open."
	cost = CARGO_CRATE_VALUE * 15
	access = ACCESS_CMO
	access_view = ACCESS_MEDICAL
	contains = list(/obj/item/gun/syringe)
	crate_name = "syringe gun crate"
	crate_type = /obj/structure/closet/crate/secure/weapon

/datum/supply_pack/medical/syringegun
	name = "Syringe gun"
	desc = "Contains a standard syringe gun for remote injections ! Requires CMO access to open."
	cost = CARGO_CRATE_VALUE * 15
	access = ACCESS_CMO
	access_view = ACCESS_MEDICAL
	contains = list(/obj/item/gun/syringe)
	crate_name = "syringe gun crate"
	crate_type = /obj/structure/closet/crate/secure/weapon

/datum/supply_pack/medical/defibcompact
	name = "Compact Defibrillator Crate"
	desc = "Contains one compact defibrillator for bringing the recently deceased back to life. Requires medical access to unlock."
	access = ACCESS_MEDICAL
	access_view = ACCESS_MEDICAL
	cost = CARGO_CRATE_VALUE * 10
	contains = list(/obj/item/defibrillator/compact/loaded )
	crate_name = "compact defibrillator crate"
	crate_type = /obj/structure/closet/crate/secure/weapon

/datum/supply_pack/medical/firstaid_triple
	name = "3 First Aid Kits"
	desc = "A crate containing 3 first-aid kits, fit for healing most types of bodily harm."
	access_view = ACCESS_MEDICAL
	cost = CARGO_CRATE_VALUE * 3
	contains = list(/obj/item/storage/firstaid/regular,
					/obj/item/storage/firstaid/regular,
					/obj/item/storage/firstaid/regular)
	crate_name = "first aid crate"

/datum/supply_pack/medical/firstaidbruises_triple
	name = "3 Bruise Treatment Kits"
	desc = "A crate containing 3 bruise treatment kits."
	access_view = ACCESS_MEDICAL
	cost = CARGO_CRATE_VALUE * 3.5
	contains = list(/obj/item/storage/firstaid/brute,
					/obj/item/storage/firstaid/brute,
					/obj/item/storage/firstaid/brute)
	crate_name = "brute treatment crate"

/datum/supply_pack/medical/firstaidburns_triple
	name = "3 Burn Treatment Kits"
	desc = "A crate containing 3 burn treatment kits."
	access_view = ACCESS_MEDICAL
	cost = CARGO_CRATE_VALUE * 3.5
	contains = list(/obj/item/storage/firstaid/fire,
					/obj/item/storage/firstaid/fire,
					/obj/item/storage/firstaid/fire)
	crate_name = "burn treatment crate"

/datum/supply_pack/medical/firstaidtoxins_triple
	name = "3 Toxin Treatment Kits"
	desc = "A crate containing 3 toxin treatment kits."
	access_view = ACCESS_MEDICAL
	cost = CARGO_CRATE_VALUE * 3.5
	contains = list(/obj/item/storage/firstaid/toxin,
					/obj/item/storage/firstaid/toxin,
					/obj/item/storage/firstaid/toxin)
	crate_name = "toxin treatment crate"

/datum/supply_pack/medical/firstaidoxygen_triple
	name = "3 oxygen Treatment Kits"
	desc = "A crate containing 3 oxygen treatment kits."
	access_view = ACCESS_MEDICAL
	cost = CARGO_CRATE_VALUE * 3.5
	contains = list(/obj/item/storage/firstaid/o2,
					/obj/item/storage/firstaid/o2,
					/obj/item/storage/firstaid/o2)
	crate_name = "oxygen treatment crate"

/datum/supply_pack/medical/firstaidemergency_triple
	name = "3 Emergency First Aid Kits"
	desc = "A crate containing 3 oxygen treatment kits."
	cost = CARGO_CRATE_VALUE * 2.5
	contains = list(/obj/item/storage/firstaid/emergency,
					/obj/item/storage/firstaid/emergency,
					/obj/item/storage/firstaid/emergency)
	crate_name = "emergency first aid crate"

/datum/supply_pack/medical/bodybagboxes
	name = "2 Bodybags boxes"
	desc = "A crate containing 2 bodybags boxes. For when you can't deal with all the corpses."
	cost = CARGO_CRATE_VALUE * 1.5
	contains = list(/obj/item/storage/box/bodybags,
					/obj/item/storage/box/bodybags)
	crate_name = "bodybags boxes crate"

/datum/supply_pack/medical/latexmaskandgloves
	name = "Latex gloves and mask boxes."
	desc = "A crate containing one box of latex gloves and one box of masks."
	cost = CARGO_CRATE_VALUE * 1.5
	contains = list(/obj/item/storage/box/masks,
					/obj/item/storage/box/gloves)
	crate_name = "latex gloves and masks crate"

/datum/supply_pack/medical/anesthetics
	name = "Anesthetics Crate"
	desc = "Contains two of the following: Morphine bottles, syringes, breath masks, and anesthetic tanks. Requires Medical Access to open."
	access = ACCESS_MEDICAL
	access_view = ACCESS_MEDICAL
	cost = CARGO_CRATE_VALUE * 6.5
	contains = list(/obj/item/reagent_containers/glass/bottle/morphine,
                    /obj/item/reagent_containers/glass/bottle/morphine,
                    /obj/item/reagent_containers/syringe,
                    /obj/item/reagent_containers/syringe,
                    /obj/item/clothing/mask/breath,
                    /obj/item/clothing/mask/breath,
                    /obj/item/tank/internals/anesthetic,
                    /obj/item/tank/internals/anesthetic,)
	crate_name = "anesthetics crate"
	crate_type = /obj/structure/closet/crate/secure/plasma

/datum/supply_pack/medical/rollerbeds
	name = "5 Roller beds"
	desc = "A crate containing 5 roller beds. For easier patient transportation."
	cost = CARGO_CRATE_VALUE * 2.5
	contains = list(/obj/item/roller,
					/obj/item/roller,
					/obj/item/roller,
					/obj/item/roller,
					/obj/item/roller)
	crate_name = "roller beds crate"

//ENGINEERING
/datum/supply_pack/engineering/engiehardsuit
	name = "Engineering Hardsuit"
	desc = "Contains one engineering hardsuit, resistant to radiations. Requires engineering access to unlock."
	cost = CARGO_CRATE_VALUE * 12.5
	access = ACCESS_ENGINE_EQUIP
	access_view = ACCESS_ENGINE_EQUIP
	contains = list(/obj/item/clothing/suit/space/hardsuit/engine)
	crate_name = "engineering hardsuit crate"
	crate_type = /obj/structure/closet/crate/secure/engineering

/datum/supply_pack/engineering/atmoshardsuit
	name = "Atmospherics Hardsuit"
	desc = "Contains one atmospherics hardsuit, resistant to heat. Requires engineering access to unlock."
	cost = CARGO_CRATE_VALUE * 12.5
	access = ACCESS_ENGINE_EQUIP
	access_view = ACCESS_ENGINE_EQUIP
	contains = list(/obj/item/clothing/suit/space/hardsuit/engine/atmos)
	crate_name = "atmospherics hardsuit crate"
	crate_type = /obj/structure/closet/crate/secure/engineering

/datum/supply_pack/engineering/industrialrcd
	name = "Industrial RCD"
	desc = "Contains one industrial RCD, having a bigger capacity than normal ones. Upgrades not included ! Requires CE access to unlock."
	cost = CARGO_CRATE_VALUE * 15
	access = ACCESS_CE
	access_view = ACCESS_ENGINE_EQUIP
	contains = list(/obj/item/construction/rcd/combat)
	crate_name = "industrial RCD crate"

/datum/supply_pack/engineering/space_heater
	name = "Space Heater Crate"
	desc = "A dual purpose heater/cooler for when things are too chilly/toasty."
	cost = CARGO_CRATE_VALUE * 2
	contains = list(/obj/machinery/space_heater)
	crate_name = "space heater crate"
	crate_type = /obj/structure/closet/crate/large

/datum/supply_pack/engineering/doublecap_tanks
	name = "Double extended emergency tank Crate"
	desc = "Contains four double extended-capacity emergency tanks."
	access_view = ACCESS_ENGINE_EQUIP
	contains = list(/obj/item/tank/internals/emergency_oxygen/double,
					/obj/item/tank/internals/emergency_oxygen/double,
					/obj/item/tank/internals/emergency_oxygen/double,
					/obj/item/tank/internals/emergency_oxygen/double)
	cost = CARGO_CRATE_VALUE * 9
	crate_name = "double extended emergency tank crate"
