/datum/job/requisitions_chief
	title = "Requisitions Chief"
	department_head = list("First Officer", "Logistics Officer")
	faction = "Station"
	total_positions = 1
	spawn_positions = 1
	supervisors = "the logistics officer and first officer"
	selection_color = "#DDDD33"
	exp_requirements = 60
	exp_type = EXP_TYPE_LOGISTICS
	maptype = "syndicate"

	outfit = /datum/outfit/job/requisitions_chief

	access = list(ACCESS_SYNDICATE, ACCESS_SYNDICATE_OFFICER)
	minimal_access = list(ACCESS_SYNDICATE, ACCESS_SYNDICATE_OFFICER)
	paycheck = PAYCHECK_COMMAND
	paycheck_department = ACCOUNT_ENG

	liver_traits = list(TRAIT_ENGINEER_METABOLISM)

	display_order = JOB_DISPLAY_ORDER_CHIEF_ENGINEER
	bounty_types = CIV_JOB_ENG

/datum/outfit/job/requisitions_chief
	name = "Requisitions Chief"
	jobtype = /datum/job/requisitions_chief

	id = /obj/item/card/id/black
	belt = null
	ears = /obj/item/radio/headset/syndicate/alt/leader
	uniform = /obj/item/clothing/under/syndicate
	shoes = /obj/item/clothing/shoes/jackboots
	gloves = /obj/item/clothing/gloves/color/black
	suit = /obj/item/clothing/suit/armor/vest/alt
	l_pocket = /obj/item/gun/ballistic/automatic/pistol/ppk
	head = /obj/item/clothing/head/flatcap
