/datum/job/tegu/mechanic
	title = "Mechanic"
	department_head = list("Logistics Officer")
	faction = "Station"
	total_positions = 1
	spawn_positions = 1
	supervisors = "the commandant"
	selection_color = "#DDDD33"
	exp_requirements = 60
	exp_type = EXP_TYPE_LOGISTICS
	maptype = "syndicate"

	outfit = /datum/outfit/job/mechanic

	access = list(ACCESS_ENGINE)
	minimal_access = list(ACCESS_ENGINE)
	paycheck = PAYCHECK_MEDIUM
	paycheck_department = ACCOUNT_ENG
	liver_traits = list(TRAIT_ENGINEER_METABOLISM)
	display_order = JOB_DISPLAY_ORDER_STATION_ENGINEER
	bounty_types = CIV_JOB_ENG

/datum/outfit/job/mechanic
	name = "Mechanic"
	jobtype = /datum/job/tegu/mechanic

	id = /obj/item/card/id/black
	belt = /obj/item/storage/belt/utility
	ears = /obj/item/radio/headset/syndicate
	uniform = /obj/item/clothing/under/syndicate
	suit = /obj/item/clothing/suit/hazardvest
	shoes = /obj/item/clothing/shoes/workboots
	box = /obj/item/storage/box/survival/engineer

//Spawn Point
/obj/effect/landmark/start/mechanic
	name = "Mechanic"
	icon_state = "mechanic"
