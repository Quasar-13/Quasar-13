/datum/job/tegu/meddeck
	title = "Medical Deckhand"
	department_head = list("Medical Commander")
	faction = "Syndicate"
	total_positions = 3
	spawn_positions = 3
	supervisors = "the medical commander"
	selection_color = "#bbe291"

	outfit = /datum/outfit/job/meddeck

	access = list()
	minimal_access = list()
	paycheck = PAYCHECK_EASY
	paycheck_department = ACCOUNT_SRV
	display_order = JOB_DISPLAY_ORDER_BOTANIST
	bounty_types = CIV_JOB_GROW

/datum/outfit/job/meddeck
	name = "Medical Deckhand"
	jobtype = /datum/job/tegu/meddeck

	belt = /obj/item/pda/botanist
	ears = /obj/item/radio/headset/headset_srv
	uniform = /obj/item/clothing/under/rank/civilian/hydroponics
	suit = /obj/item/clothing/suit/apron
	gloves  =/obj/item/clothing/gloves/botanic_leather
	suit_store = /obj/item/plant_analyzer

	backpack = /obj/item/storage/backpack/botany
	satchel = /obj/item/storage/backpack/satchel/hyd
	duffelbag = /obj/item/storage/backpack/duffelbag/hydroponics
