/datum/job/staff_officer
	title = "Staff Officer"
	department_head = list("Wing Commander")
	faction = "Station"
	total_positions = 2
	spawn_positions = 2
	supervisors = "the wing commander"
	selection_color = "#884488"
	exp_requirements = 60
	exp_type = EXP_TYPE_CREW
	maptype = "syndicate"

	outfit = /datum/outfit/job/staff_officer

	access = list(ACCESS_SYNDICATE, ACCESS_SYNDICATE_OFFICER)
	minimal_access = list(ACCESS_SYNDICATE, ACCESS_SYNDICATE_OFFICER)
	paycheck = PAYCHECK_MEDIUM
	paycheck_department = ACCOUNT_ENG
	liver_traits = list(TRAIT_ENGINEER_METABOLISM)
	display_order = JOB_DISPLAY_ORDER_SCIENTIST
	bounty_types = CIV_JOB_ENG

/datum/outfit/job/staff_officer
	name = "Staff Officer"
	jobtype = /datum/job/staff_officer

	id = /obj/item/card/id/black
	ears = /obj/item/radio/headset/syndicate/alt/leader
	uniform = /obj/item/clothing/under/syndicate
	shoes = /obj/item/clothing/shoes/jackboots
	mask = /obj/item/clothing/mask/gas/syndicate
	head = /obj/item/clothing/head/beret/so
	gloves = /obj/item/clothing/gloves/color/black
	l_pocket = /obj/item/gun/ballistic/automatic/pistol
	suit = /obj/item/clothing/suit/armor/staff

	belt = null


//Spawn Point
/obj/effect/landmark/start/staff_officer
	name = "Staff Officer"
	icon_state = "staff_officer"
