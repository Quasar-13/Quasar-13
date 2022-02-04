/datum/job/syndi_Scientist
	title = "Syndicate Scientist"
	department_head = list("Medical Officer")
	faction = "Syndicate"
	total_positions = 3
	spawn_positions = 3
	supervisors = "the medical officer"
	selection_color = "#2ba5dd"
	exp_requirements = 60
	exp_type = EXP_TYPE_TRIAGE
	maptype = "crashsite"

	outfit = /datum/outfit/job/triage_officer

	access = list(ACCESS_SYNDICATE, ACCESS_SYNDICATE_MEDICAL, ACCESS_SYNDICATE_SCIENCE)
	minimal_access = list(ACCESS_SYNDICATE, ACCESS_SYNDICATE_MEDICAL, ACCESS_SYNDICATE_SCIENCE)
	paycheck = PAYCHECK_MEDIUM
	paycheck_department = ACCOUNT_MED
	liver_traits = list(TRAIT_ENGINEER_METABOLISM)
	display_order = JOB_DISPLAY_ORDER_PARAMEDIC
	bounty_types = CIV_JOB_MED

/datum/outfit/job/syndicate_doctor
	name = "Syndicate Scientist"
	jobtype = /datum/job/syndicate_doctor
	belt = null

	id = /obj/item/card/id/black
	ears = /obj/item/radio/headset/syndicate/alt
	uniform = /obj/item/clothing/under/smc/triageofficer
	glasses = /obj/item/clothing/glasses/hud/health/syndicate
	shoes = /obj/item/clothing/shoes/jackboots
	gloves = /obj/item/clothing/gloves/color/latex
	suit = /obj/item/clothing/suit/armor/labcoat/syndie
	l_hand = /obj/item/storage/firstaid/medical
	l_pocket = /obj/item/gun/ballistic/automatic/pistol



//Spawn Point
/obj/effect/landmark/start/triage_officer
	name = "Triage Officer"
	icon_state = "triage_officer"
