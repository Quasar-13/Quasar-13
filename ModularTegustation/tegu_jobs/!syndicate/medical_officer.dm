/datum/job/medical_officer
	title = "Medical Officer"
	department_head = list("Commandant")
	faction = "Station"
	total_positions = 1
	spawn_positions = 1
	supervisors = "the commandant"
	selection_color = "#335522"
	exp_requirements = 60
	exp_type = EXP_TYPE_TRIAGE
	maptype = "syndicate"

	outfit = /datum/outfit/job/medical_officer

	access = list(ACCESS_SYNDICATE, ACCESS_SYNDICATE_OFFICER, ACCESS_SYNDICATE_LEADER, ACCESS_SYNDICATE_COMMAND, ACCESS_HEADS)
	minimal_access = list(ACCESS_SYNDICATE, ACCESS_SYNDICATE_OFFICER, ACCESS_SYNDICATE_LEADER, ACCESS_SYNDICATE_COMMAND, ACCESS_HEADS)
	paycheck = PAYCHECK_COMMAND
	paycheck_department = ACCOUNT_MED
	liver_traits = list(TRAIT_ENGINEER_METABOLISM)
	display_order = JOB_DISPLAY_ORDER_CHIEF_MEDICAL_OFFICER
	bounty_types = CIV_JOB_MED

/datum/outfit/job/medical_officer
	name = "Medical Officer"
	jobtype = /datum/job/medical_officer

	id = /obj/item/card/id/black
	belt = /obj/item/storage/belt/medical/surgeryfilled
	ears = /obj/item/radio/headset/syndicate/alt/leader
	uniform = /obj/item/clothing/under/syndicate
	glasses = /obj/item/clothing/glasses/hud/health/sunglasses
	shoes = /obj/item/clothing/shoes/jackboots
	gloves = /obj/item/clothing/gloves/color/latex
	suit = /obj/item/clothing/suit/armor/medical_officer
	head = /obj/item/clothing/head/beret/mo
	suit_store = /obj/item/gun/ballistic/automatic/pistol/sig



//Spawn Point
/obj/effect/landmark/start/medical_officer
	name = "Medical Officer"
	icon_state = "medical_officer"
