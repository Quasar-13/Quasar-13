/datum/job/science_officer
	title = "Science Officer"
	department_head = list("Commandant")
	faction = "Station"
	total_positions = 1
	spawn_positions = 1
	supervisors = "the commandant"
	selection_color = "#d9d7d7"
	exp_requirements = 60
	exp_type = EXP_TYPE_BIORESEARCH
	maptype = "syndicate-station"

	outfit = /datum/outfit/job/science_officer

	access = list(ACCESS_SYNDICATE, ACCESS_SYNDICATE_OFFICER, ACCESS_SYNDICATE_COMMAND, ACCESS_HEADS, ACCESS_SYNDICATE_RESEARCH)
	minimal_access = list(ACCESS_SYNDICATE, ACCESS_SYNDICATE_OFFICER, ACCESS_SYNDICATE_COMMAND, ACCESS_HEADS, ACCESS_SYNDICATE_RESEARCH)
	paycheck = PAYCHECK_COMMAND
	paycheck_department = ACCOUNT_SCI
	display_order = JOB_DISPLAY_ORDER_BARTENDER

/datum/outfit/job/science_officer
	name = "Science Officer"
	jobtype = /datum/job/science_officer

	id = /obj/item/card/id/black
	ears = /obj/item/radio/headset/syndicate/alt/leader
	uniform = /obj/item/clothing/under/smc/research
	shoes = /obj/item/clothing/shoes/jackboots
	gloves = /obj/item/clothing/gloves/color/latex
	suit = /obj/item/clothing/suit/armor/research
	head = /obj/item/clothing/head/beret/chem/syndie
	suit_store = /obj/item/gun/ballistic/automatic/pistol/sig



//Spawn Point
/obj/effect/landmark/start/science_officer
	name = "Science Officer"
	icon_state = "medical_officer"
