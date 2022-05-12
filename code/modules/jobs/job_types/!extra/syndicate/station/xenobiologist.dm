/datum/job/xenobiologist
	title = "Xenobiologist"
	department_head = list("Science Officer")
	faction = "Station"
	total_positions = 1
	spawn_positions = 1
	supervisors = "the science officer"
	selection_color = "#ededed"
	exp_type = EXP_TYPE_BIORESEARCH
	maptype = "syndicate-station"

	outfit = /datum/outfit/job/xenobiologist

	access = list(ACCESS_SYNDICATE, ACCESS_SYNDICATE_RESEARCH, ACCESS_SYNDICATE_OFFICER)
	minimal_access = list(ACCESS_SYNDICATE, ACCESS_SYNDICATE_RESEARCH, ACCESS_SYNDICATE_OFFICER)
	paycheck = PAYCHECK_HARD
	paycheck_department = ACCOUNT_SCI
	display_order = JOB_DISPLAY_ORDER_BOTANIST

/datum/outfit/job/xenobiologist
	name = "Xenobiologit"
	jobtype = /datum/job/xenobiologist
	belt = null

	id = /obj/item/card/id/black
	ears = /obj/item/radio/headset/syndicate
	uniform = /obj/item/clothing/under/smc/researchxeno
	shoes = /obj/item/clothing/shoes/jackboots
	gloves = /obj/item/clothing/gloves/color/latex
	head = /obj/item/clothing/head/beret/chem/syndie
//	accessory = /obj/item/clothing/accessory/medal/rank/syndicate/xeno
