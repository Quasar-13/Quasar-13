/datum/job/biotech
	title = "Biotech Engineer"
	department_head = list("Science Officer")
	faction = "Station"
	total_positions = 2
	spawn_positions = 2
	supervisors = "the science officer"
	selection_color = "#ededed"
	exp_type = EXP_TYPE_BIORESEARCH
	maptype = "syndicate-station"

	outfit = /datum/outfit/job/biotech

	access = list(ACCESS_SYNDICATE, ACCESS_SYNDICATE_RESEARCH)
	minimal_access = list(ACCESS_SYNDICATE, ACCESS_SYNDICATE_RESEARCH)
	paycheck = PAYCHECK_MEDIUM
	paycheck_department = ACCOUNT_SCI
	display_order = JOB_DISPLAY_ORDER_BOTANIST

/datum/outfit/job/biotech
	name = "Biotech Engineer"
	jobtype = /datum/job/biotech
	belt = null

	id = /obj/item/card/id/black
	ears = /obj/item/radio/headset/syndicate
	uniform = /obj/item/clothing/under/smc/research
	suit = /obj/item/clothing/suit/armor/labcoat/syndie/research
	shoes = /obj/item/clothing/shoes/jackboots
	gloves = /obj/item/clothing/gloves/color/latex
	head = /obj/item/clothing/head/beret/chem/syndie

