/datum/job/deckhand
	title = "Deckhand"
	department_head = list("Logistics Officer")
	faction = "Station"
	total_positions = 2
	spawn_positions = 2
	supervisors = "the commandant"
	selection_color = "#DDDD33"
	exp_requirements = 60
	exp_type = EXP_TYPE_LOGISTICS
	maptype = "syndicate"

	outfit = /datum/outfit/job/deckhand

	access = list(ACCESS_SYNDICATE)
	minimal_access = list(ACCESS_SYNDICATE)
	paycheck = PAYCHECK_MEDIUM
	paycheck_department = ACCOUNT_ENG
	liver_traits = list(TRAIT_ENGINEER_METABOLISM)
	display_order = JOB_DISPLAY_ORDER_STATION_ENGINEER
	bounty_types = CIV_JOB_ENG

/datum/outfit/job/deckhand
	name = "Deckhand"
	jobtype = /datum/job/deckhand

	id = /obj/item/card/id/black
	belt = /obj/item/storage/belt/utility
	ears = /obj/item/radio/headset/syndicate
	uniform = /obj/item/clothing/under/smc/deckhand
	shoes = /obj/item/clothing/shoes/workboots
	box = /obj/item/storage/box/survival/engineer



//Spawn Point
/obj/effect/landmark/start/deckhand
	name = "Deckhand"
	icon_state = "Deckhand"

