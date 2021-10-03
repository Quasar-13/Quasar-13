/datum/job/military_police
	title = "Military Police"
	department_head = list("Military Warden")
	faction = "Station"
	total_positions = 2
	spawn_positions = 2
	supervisors = "the military warden"
	selection_color = "#77aaee"
	maptype = "syndicate"

	outfit = /datum/outfit/job/military_police

	access = list(ACCESS_SYNDICATE, ACCESS_SYNDICATE_OFFICER, ACCESS_SYNDICATE_POLICE)
	minimal_access = list(ACCESS_SYNDICATE, ACCESS_SYNDICATE_OFFICER, ACCESS_SYNDICATE_POLICE)
	paycheck = PAYCHECK_HARD
	paycheck_department = ACCOUNT_SRV
	display_order = JOB_DISPLAY_ORDER_WARDEN
	bounty_types = CIV_JOB_GROW

/datum/outfit/job/military_police
	name = "Military Police"
	jobtype = /datum/job/military_police
	glasses = /obj/item/clothing/glasses/hud/security/syndicate
	id = /obj/item/card/id/black
	ears = /obj/item/radio/headset/syndicate/alt
	uniform = /obj/item/clothing/under/syndicate
	shoes = /obj/item/clothing/shoes/jackboots
	gloves = /obj/item/clothing/gloves/color/black
	l_pocket = /obj/item/gun/ballistic/automatic/pistol
	r_pocket = /obj/item/restraints/handcuffs

	belt = null
