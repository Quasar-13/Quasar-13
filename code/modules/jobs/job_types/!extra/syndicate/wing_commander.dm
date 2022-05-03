/datum/job/wing_commander
	title = "Wing Commander"
	department_head = list("First Officer")
	faction = "Station"
	total_positions = 1
	spawn_positions = 1
	supervisors = "the wing commander"
	selection_color = "#663366"
	exp_requirements = 60
	exp_type = EXP_TYPE_CREW
	maptype = "syndicate"

	outfit = /datum/outfit/job/wing_commander

	access = list(ACCESS_SYNDICATE, ACCESS_SYNDICATE_OFFICER, ACCESS_SYNDICATE_LEADER, ACCESS_SYNDICATE_COMMAND)
	minimal_access = list(ACCESS_SYNDICATE, ACCESS_SYNDICATE_OFFICER, ACCESS_SYNDICATE_LEADER, ACCESS_SYNDICATE_COMMAND)
	paycheck = PAYCHECK_COMMAND
	paycheck_department = ACCOUNT_ENG
	liver_traits = list(TRAIT_ENGINEER_METABOLISM)
	display_order = JOB_DISPLAY_ORDER_RESEARCH_DIRECTOR
	bounty_types = CIV_JOB_ENG

/datum/outfit/job/wing_commander
	name = "Wing Commander"
	jobtype = /datum/job/wing_commander

	id = /obj/item/card/id/black
	ears = /obj/item/radio/headset/syndicate/alt/leader
	glasses = /obj/item/clothing/glasses/sunglasses
	uniform = /obj/item/clothing/under/syndicate
	shoes = /obj/item/clothing/shoes/jackboots
	suit = /obj/item/clothing/suit/armor/wing
	belt = /obj/item/gun/ballistic/automatic/pistol/PL14


//Spawn Point
/obj/effect/landmark/start/wing_commander
	name = "Wing Commander"
	icon_state = "wing_commander"
