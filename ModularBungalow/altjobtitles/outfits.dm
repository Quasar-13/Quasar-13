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

//ge
/datum/outfit/job/geneticist/freakofgenetics
	name = "Geneticist (Freak of Genetics)"
	uniform = /obj/item/clothing/under/shorts/purple
	suit = null
	suit_store = null
	shoes = /obj/item/clothing/shoes/sandal
	backpack = /obj/item/storage/backpack/satchel/leather

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

//pris
/datum/outfit/job/prisoner/protectedcustody
	name = "Prisoner (Protected Custody)"
	uniform = /obj/item/clothing/under/rank/prisoner/custody
	shoes = /obj/item/clothing/shoes/laceup
	head = /obj/item/clothing/head/bowler
	suit = /obj/item/clothing/suit/toggle/lawyer/black
	r_pocket = /obj/item/lighter
	r_hand = /obj/item/storage/fancy/cigarettes/cigars
	ears = /obj/item/radio/headset

//secoff
/datum/outfit/job/security/reservemilitarypolice
	name = "Security Officer (Reserve MP)"
	head = /obj/item/clothing/head/beret/sec/navyofficer/black
	uniform = /obj/item/clothing/under/rank/centcom/ert
	suit = /obj/item/clothing/suit/armor/vest
	
/datum/outfit/job/security/sergeantofficer
	name = "Security Officer (Sergeant Officer)"
	head = /obj/item/clothing/head/beret/sec/navyofficer
	uniform = /obj/item/clothing/under/rank/security/officer/formal
	suit = /obj/item/clothing/suit/security/officer
	
//det
/datum/outfit/job/detective/intelligenceofficer
	name = "Detective (Intelligence Officer)"
	head = /obj/item/clothing/head/beret/sec/bni
	uniform = /obj/item/clothing/under/bni
	neck = null
	suit = /obj/item/clothing/suit/det_suit/noir/intel
	accessory = /obj/item/clothing/accessory/medal/rank/nt/bnisnr
	suit_store = /obj/item/gun/ballistic/revolver/rhino
	shoes = /obj/item/clothing/shoes/jackboots
	backpack = /obj/item/storage/backpack/security
	//the backpack is for style (also because det doesn't have officer armory access yet)

//Secretary
/datum/outfit/job/secretary/lieutenant
	name = "Secretary (Lieutenant)"
	accessory = /obj/item/clothing/accessory/medal/rank/nt/ltj
	head = /obj/item/clothing/head/beret/black
	glasses = /obj/item/clothing/glasses/sunglasses
	
/datum/outfit/job/secretary/seniorbridgeofficer
	name = "Secretary (Senior Bridge Officer)"
	accessory = /obj/item/clothing/accessory/medal/rank/nt/lt
	head = /obj/item/clothing/head/beret/command
	glasses = /obj/item/clothing/glasses/sunglasses
	gloves = /obj/item/clothing/gloves/color/black
	shoes = /obj/item/clothing/shoes/laceup
	
//Chief Medical Officer
/datum/outfit/job/cmo/medicalprofessor
	name = "Chief Medical Officer (Medical Professor)"
	uniform = /obj/item/clothing/under/rank/medical/chief_medical_officer/turtleneck
	suit = /obj/item/clothing/suit/toggle/labcoat/cmo
	head = /obj/item/clothing/head/beret/cmo/ice

/datum/outfit/job/cmo/seniormedicalofficer
	name = "Chief Medical Officer (Senior Medical Officer)"
	uniform = /obj/item/clothing/under/rank/medical/chief_medical_officer/suit
	suit = /obj/item/clothing/suit/neocoat/trench/cmo
	head = /obj/item/clothing/head/beret/cmo/ice

//Chief Engineer
/datum/outfit/job/ce/chiefatmosphericstechnician
	name = "Chief Engineer (Chief Atmospherics Technician)"
	uniform = /obj/item/clothing/under/rank/engineering/chief_engineer/atmos

//Captain
/datum/outfit/job/captain/stationcommander
	name = "Captain (Station Commander)"
	head = null
	uniform = /obj/item/clothing/under/misc/parade/cdr
	suit = /obj/item/clothing/suit/armor/captain/cdr_jacket
	r_hand = /obj/item/clothing/accessory/medal/rank/nt/cdr

/datum/outfit/job/captain/commandingofficer
	name = "Captain (Commanding Officer)"
	head = /obj/item/clothing/head/beret/captain
	uniform = /obj/item/clothing/under/misc/parade/co
	suit = /obj/item/clothing/suit/armor/captain/co
	r_hand = /obj/item/clothing/accessory/medal/rank/nt/cpt

/datum/outfit/job/captain/commodore
	name = "Captain (Commodore)"
	head = /obj/item/clothing/head/centhat
	uniform = /obj/item/clothing/under/misc/parade/com
	suit = /obj/item/clothing/suit/armor/vest/centcom_formal/cap
	gloves = /obj/item/clothing/gloves/color/captain/commodore
	r_hand = /obj/item/clothing/accessory/medal/rank/nt/cdre
	backpack = /obj/item/storage/backpack/centcom

/datum/outfit/job/captain/marshal
	name = "Captain (Marshal)"
	head = null
	glasses = /obj/item/clothing/glasses/eyepatch
	uniform = /obj/item/clothing/under/misc/parade/mar
	suit = /obj/item/clothing/suit/armor/captain/marshal
	r_hand = /obj/item/clothing/accessory/medal/rank/nt/cdre

//They get a cool ID so this manages that
/datum/outfit/job/captain/commodore/post_equip(mob/living/carbon/human/H)
	var/obj/item/card/id/W = H.wear_id
	W.access = get_centcom_access(ACCESS_CENT_GENERAL, ACCESS_CENT_MEDICAL, ACCESS_CENT_LIVING)
	..()

/datum/outfit/job/captain/marshal/post_equip(mob/living/carbon/human/H)
	var/obj/item/card/id/W = H.wear_id
	W.access = get_centcom_access(ACCESS_CENT_GENERAL, ACCESS_CENT_MEDICAL, ACCESS_CENT_LIVING)
	..()
