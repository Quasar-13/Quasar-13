/datum/job/syndicate_engineer
	title = "Syndicate Engineer"
	department_head = list("Requisitions Chief")
	faction = "Syndicate"
	total_positions = 3
	spawn_positions = 3
	supervisors = "the commandant"
	selection_color = "#DDDD33"
	exp_requirements = 60
	exp_type = EXP_TYPE_LOGISTICS
	maptype = "crashsite"

	outfit = /datum/outfit/job/mechanic

	access = list(ACCESS_SYNDICATE, ACCESS_SYNDICATE_ENGINEERING)
	minimal_access = list(ACCESS_SYNDICATE, ACCESS_SYNDICATE_ENGINEERING)
	paycheck = PAYCHECK_MEDIUM
	paycheck_department = ACCOUNT_ENG
	liver_traits = list(TRAIT_ENGINEER_METABOLISM)
	display_order = JOB_DISPLAY_ORDER_STATION_ENGINEER
	bounty_types = CIV_JOB_ENG

/datum/outfit/job/mechanic
	name = "Mechanic"
	jobtype = /datum/job/mechanic

	id = /obj/item/card/id/black
	belt = /obj/item/storage/belt/utility/syndicate
	ears = /obj/item/radio/headset/syndicate
	uniform = /obj/item/clothing/under/smc/mechanic
	shoes = /obj/item/clothing/shoes/workboots
	box = /obj/item/storage/box/survival/engineer

//Spawn Point
/obj/effect/landmark/start/mechanic
	name = "Mechanic"
	icon_state = "mechanic"
