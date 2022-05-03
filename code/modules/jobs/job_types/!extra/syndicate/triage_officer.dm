/datum/job/triage_officer
	title = "Triage Officer"
	department_head = list("Medical Officer")
	faction = "Station"
	total_positions = 3
	spawn_positions = 3
	supervisors = "the medical officer"
	selection_color = "#338800"
	exp_requirements = 60
	exp_type = EXP_TYPE_TRIAGE
	maptype = "syndicate"

	outfit = /datum/outfit/job/triage_officer

	access = list(ACCESS_SYNDICATE)
	minimal_access = list(ACCESS_SYNDICATE)
	paycheck = PAYCHECK_MEDIUM
	paycheck_department = ACCOUNT_MED
	liver_traits = list(TRAIT_ENGINEER_METABOLISM)
	display_order = JOB_DISPLAY_ORDER_PARAMEDIC
	bounty_types = CIV_JOB_MED

/datum/outfit/job/triage_officer
	name = "Triage Officer"
	jobtype = /datum/job/triage_officer
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
