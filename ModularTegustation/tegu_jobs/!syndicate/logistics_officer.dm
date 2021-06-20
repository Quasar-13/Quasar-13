/datum/job/tegu/logistics_officer
	title = "Logistics Officer"
	department_head = list("First Officer", "Commandant")
	faction = "Station"
	total_positions = 28
	spawn_positions = 18
	supervisors = "the wing commander and staff officer"
	selection_color = "#BBBB11"
	exp_requirements = 60
	exp_type = EXP_TYPE_CREW
	maptype = "syndicate"

	outfit = /datum/outfit/job/logistics_officer

	access = list(ACCESS_ENGINE)
	minimal_access = list(ACCESS_ENGINE)
	paycheck = PAYCHECK_MEDIUM
	paycheck_department = ACCOUNT_ENG

	liver_traits = list(TRAIT_ENGINEER_METABOLISM)

	display_order = JOB_DISPLAY_ORDER_CHIEF_ENGINEER
	bounty_types = CIV_JOB_ENG

/datum/outfit/job/logistics_officer
	name = "Logistics Officer"
	jobtype = /datum/job/tegu/logistics_officer

	id = /obj/item/card/id/black
	belt = /obj/item/storage/belt/utility/syndicate/sbc
	ears = /obj/item/radio/headset/syndicate/alt/leader
	uniform = /obj/item/clothing/under/syndicate
	shoes = /obj/item/clothing/shoes/jackboots
	gloves = /obj/item/clothing/gloves/color/black
	suit = /obj/item/clothing/suit/armor/vest/alt
	head =/obj/item/clothing/head/hardhat/white
	l_pocket = /obj/item/gun/ballistic/automatic/pistol/PL14


//Spawn Point
/obj/effect/landmark/start/logistics_officer
	name = "Logistics Officer"
	icon_state = "Logistics Officer"
