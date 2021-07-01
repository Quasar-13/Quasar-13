/datum/job/pilot_officer
	title = "Pilot Officer"
	department_head = list("Wing Commander")
	faction = "Station"
	total_positions = 2
	spawn_positions = 2
	supervisors = "the wing commander"
	selection_color = "#884488"
	exp_requirements = 60
	exp_type = EXP_TYPE_CREW
	maptype = "syndicate"

	outfit = /datum/outfit/job/pilot_officer

	access = list(ACCESS_SYNDICATE, ACCESS_SYNDICATE_OFFICER)
	minimal_access = list(ACCESS_SYNDICATE, ACCESS_SYNDICATE_OFFICER)
	paycheck = PAYCHECK_MEDIUM
	paycheck_department = ACCOUNT_ENG
	liver_traits = list(TRAIT_ENGINEER_METABOLISM)
	display_order = JOB_DISPLAY_ORDER_SCIENTIST
	bounty_types = CIV_JOB_ENG

/datum/outfit/job/pilot_officer
	name = "Pilot Officer"
	jobtype = /datum/job/pilot_officer

	id = /obj/item/card/id/black
	glasses = /obj/item/clothing/glasses/sunglasses
	ears = /obj/item/radio/headset/syndicate/alt/leader
	uniform = /obj/item/clothing/under/syndicate
	shoes = /obj/item/clothing/shoes/jackboots
	suit = /obj/item/clothing/suit/armor/pilot
	belt = /obj/item/gun/ballistic/automatic/pistol/ppk



//Spawn Point
/obj/effect/landmark/start/pilot_officer
	name = "Pilot Officer"
	icon_state = "pilot_officer"
