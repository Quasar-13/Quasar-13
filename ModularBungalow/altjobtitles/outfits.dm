//assistant
/datum/outfit/job/assistant/businessman
	name = "Assistant (Businessman)"
	uniform = /obj/item/clothing/under/suit/black_really
	l_hand = /obj/item/storage/briefcase

/datum/outfit/job/assistant/visitor
	name = "Assistant (Visitor)"
	uniform = /obj/item/clothing/under/misc/assistantformal
	neck = /obj/item/camera

/datum/outfit/job/assistant/trader
	name = "Assistant (Trader)"
	r_pocket = /obj/item/coin/gold
	backpack_contents = list(/obj/item/export_scanner=1, /obj/item/modular_computer/tablet/preset/cargo=1)

/datum/outfit/job/assistant/entertainer
	name = "Assistant (Entertainer)"
	r_hand = /obj/item/bikehorn //hjonk

//atmos tech
/datum/outfit/job/atmos/firefighter
	name = "Atmospheric Technician (Firefighter)"
	uniform = /obj/item/clothing/under/rank/engineering/engineer/hazard
	head = /obj/item/clothing/head/hardhat/red
	l_hand = /obj/item/extinguisher

/datum/outfit/job/atmos/lifesupportspecialist
	name = "Atmospheric Technician (Life Support Specialist)"
	backpack_contents = list(/obj/item/modular_computer/tablet/preset/advanced=1, /obj/item/storage/box/survival=2)

//cook
/datum/outfit/job/cook/grillmaster
	uniform = /obj/item/clothing/under/rank/civilian/cookjorts
	suit = null
	head = null
	mask = null
	r_hand = /obj/item/reagent_containers/food/drinks/soda_cans/monkey_energy

//curator
/datum/outfit/job/curator/journalist
	name = "Curator (Journalist)"
	uniform = /obj/item/clothing/under/suit/checkered
	head = /obj/item/clothing/head/fedora
	neck = /obj/item/camera
	l_hand = /obj/item/taperecorder
	l_pocket = /obj/item/newspaper
	backpack_contents = list(
		/obj/item/choice_beacon/hero = 1,
		/obj/item/soapstone = 1,
		/obj/item/tape = 1
	)

//md
/datum/outfit/job/doctor/surgeon
	name = "Medical Doctor (Surgeon)"
	uniform = /obj/item/clothing/under/rank/medical/doctor/blue
	suit = /obj/item/clothing/suit/apron/surgical
	suit_store = null
	mask = /obj/item/clothing/mask/surgical

/datum/outfit/job/doctor/nurse
 	name = "Medical Doctor (Nurse)"
 	head = /obj/item/clothing/head/nursehat
 	uniform = /obj/item/clothing/under/rank/medical/doctor/nurse
 	suit = null
 	suit_store = null
 	accessory = /obj/item/clothing/accessory/armband/medblue

//se
/datum/outfit/job/engineer/electrician
	name = "Station Engineer (Electrician)"
	l_hand = /obj/item/storage/toolbox/electrical
	gloves = /obj/item/clothing/gloves/color/grey

/datum/outfit/job/engineer/enginetechnician
	name = "Station Engineer (Engine Technician)"
	uniform = /obj/item/clothing/under/rank/engineering/engineer/hazard
	r_pocket = /obj/item/geiger_counter

/datum/outfit/job/engineer/maintenancetechnician
	name = "Station Engineer (Maintenance Technician)"
	uniform = /obj/item/clothing/under/color/grey
	suit = /obj/item/clothing/suit/hazardvest
	r_pocket = /obj/item/stack/cable_coil
	l_pocket = /obj/item/flashlight
	l_hand = /obj/item/storage/bag/construction

/datum/outfit/job/engineer/signaltechnician
	name = "Station Engineer (Signal Technician)"
	uniform = /obj/item/clothing/under/rank/engineering/signal_tech
	suit = /obj/item/clothing/suit/hooded/wintercoat/engineering/tcomms
	l_pocket = /obj/item/pda/signal_tech
	head = null

//Captain

/datum/outfit/job/captain/commandingofficer
	name = "Captain (Commanding Officer)"
	head = /obj/item/clothing/head/beret/captain
	uniform = /obj/item/clothing/under/misc/coparade
	suit = /obj/item/clothing/suit/armor/captain/co

/datum/outfit/job/captain/commodore
	name = "Captain (Commodore)"
	head = /obj/item/clothing/head/centhat
	uniform = /obj/item/clothing/under/misc/comparade
	suit = /obj/item/clothing/suit/armor/vest/centcom_formal/cap

/datum/outfit/job/captain/marshal
	name = "Captain (Marshal)"
	head = null
	glasses = /obj/item/clothing/glasses/eyepatch
	uniform = /obj/item/clothing/under/misc/marparade
	suit = /obj/item/clothing/suit/armor/captain/marshal

//They get a cool ID so this manages that
/datum/outfit/job/captain/commodore/post_equip(mob/living/carbon/human/H)
	var/obj/item/card/id/W = H.wear_id
	W.access = get_centcom_access(ACCESS_CENT_GENERAL, ACCESS_CENT_MEDICAL, ACCESS_CENT_LIVING)
	..()

/datum/outfit/job/captain/marshal/post_equip(mob/living/carbon/human/H)
	var/obj/item/card/id/W = H.wear_id
	W.access = get_centcom_access(ACCESS_CENT_GENERAL, ACCESS_CENT_MEDICAL, ACCESS_CENT_LIVING)
	..()




