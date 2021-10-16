/datum/job/marine
	title = "Marine"
	department_head = list("Wing Commander", "Staff Officer")
	faction = "Station"
	total_positions = 28
	spawn_positions = 18
	supervisors = "the wing commander and staff officer"
	selection_color = "#884488"
	exp_requirements = 60
	exp_type = EXP_TYPE_OPERATIONS
	maptype = "syndicate"

	outfit = /datum/outfit/job/marine

	access = list(ACCESS_SYNDICATE)
	minimal_access = list(ACCESS_SYNDICATE)
	paycheck = PAYCHECK_MEDIUM
	paycheck_department = ACCOUNT_ENG

	liver_traits = list(TRAIT_ENGINEER_METABOLISM)

	display_order = JOB_DISPLAY_ORDER_GENETICIST
	bounty_types = CIV_JOB_ENG

/datum/outfit/job/marine
	name = "Marine"
	jobtype = /datum/job/marine

	id = /obj/item/card/id/black
	ears = /obj/item/radio/headset/syndicate/alt
	uniform = /obj/item/clothing/under/syndicate
	shoes = /obj/item/clothing/shoes/jackboots
	mask = /obj/item/clothing/mask/gas/syndicate
	head = /obj/item/clothing/head/helmet/blueshirt
	gloves = /obj/item/clothing/gloves/color/black
	l_pocket = /obj/item/gun/ballistic/automatic/pistol
	suit = /obj/item/clothing/suit/armor/vest/blueshirt

	belt = null


//Spawn Point
/obj/effect/landmark/start/marine
	name = "Marine"
	icon_state = "Marine"
