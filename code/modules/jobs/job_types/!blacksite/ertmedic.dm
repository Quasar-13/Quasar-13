/datum/job/ertmedic
	title = "ERT Medic"
	faction = "Station"
	total_positions = 1
	spawn_positions = 1
	supervisors = "space law and the ERT Commander"
	selection_color = "#49f2a3"
	exp_type = EXP_TYPE_NTMARINE
	maptype = "blacksite"

	outfit = /datum/outfit/job/ertmedic

	access = list()
	minimal_access = list()
	paycheck = PAYCHECK_COMMAND
	paycheck_department = ACCOUNT_SEC
	display_order = JOB_DISPLAY_ORDER_BARTENDER


/datum/outfit/job/ertmedic
	name = "ERT Medic"
	jobtype = /datum/job/ertmedic

	mask = /obj/item/clothing/mask/gas/sechailer
	uniform = /obj/item/clothing/under/rank/centcom/officer
	shoes = /obj/item/clothing/shoes/combat/swat
	gloves = /obj/item/clothing/gloves/combat
	ears = /obj/item/radio/headset/headset_cent/alt
	id = /obj/item/card/id/ert/medical
	suit = /obj/item/clothing/suit/space/hardsuit/ert/med
	glasses = /obj/item/clothing/glasses/hud/health
	back = /obj/item/storage/backpack/ert/medical
	belt = /obj/item/storage/belt/medical/surgeryfilled
	l_hand = /obj/item/storage/firstaid/regular
	r_hand = /obj/item/gun/medbeam
	accessory = /obj/item/clothing/accessory/medal/rank/nt/ltj
	backpack_contents = list(
		/obj/item/storage/box/survival/engineer = 1,
		/obj/item/choice_beacon/bungalow/combat/ert = 1,
		/obj/item/defibrillator/compact/combat/loaded/nanotrasen = 1,
		/obj/item/melee/baton/loaded = 1,
		/obj/item/reagent_containers/hypospray/combat = 1,
		/obj/item/storage/firstaid/advanced = 1,
	)


//Spawn Point
/obj/effect/landmark/start/ertmedic
	name = "ERT Medic"
	icon_state = "Assistant"
