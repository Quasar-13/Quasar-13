/datum/job/military_warden
	title = "Military Warden"
	department_head = list("Commandant")
	faction = "Station"
	total_positions = 1
	spawn_positions = 1
	supervisors = "the commandant"
	selection_color = "#335599"
	maptype = "syndicate"

	outfit = /datum/outfit/job/militarywarden

	access = list(ACCESS_SYNDICATE, ACCESS_SYNDICATE_LEADER)
	minimal_access = list(ACCESS_SYNDICATE, ACCESS_SYNDICATE_LEADER)
	paycheck = PAYCHECK_COMMAND
	paycheck_department = ACCOUNT_SRV
	display_order = JOB_DISPLAY_ORDER_HEAD_OF_SECURITY
	bounty_types = CIV_JOB_GROW

/datum/outfit/job/militarywarden
	name = "Military Warden"
	jobtype = /datum/job/tegu/militarywarden
	glasses = /obj/item/clothing/glasses/hud/security
	id = /obj/item/card/id/black
	ears = /obj/item/radio/headset/syndicate/alt
	uniform = /obj/item/clothing/under/syndicate
	shoes = /obj/item/clothing/shoes/jackboots
	gloves = /obj/item/clothing/gloves/color/black
	l_pocket = /obj/item/gun/ballistic/automatic/pistol/sig

	belt = null

