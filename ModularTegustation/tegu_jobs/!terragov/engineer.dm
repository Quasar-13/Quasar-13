/datum/job/engineer
	title = "Engineer"
	department_head = list("Commander")
	faction = "Station"
	total_positions = 4
	spawn_positions = 4
	supervisors = "the commander"
	selection_color = "#03fca5"
	maptype = "solgov"

	outfit = /datum/outfit/job/commandant

	access = list(ACCESS_HEADS, ACCESS_SYNDICATE_OFFICER, ACCESS_SYNDICATE_LEADER, ACCESS_SYNDICATE_COMMAND, ACCESS_SYNDICATE_COMMANDANT, ACCESS_SYNDICATE_POLICE)
	minimal_access = list(ACCESS_SYNDICATE, ACCESS_SYNDICATE_OFFICER, ACCESS_SYNDICATE_LEADER, ACCESS_SYNDICATE_COMMAND, ACCESS_SYNDICATE_COMMANDANT, ACCESS_SYNDICATE_POLICE)
	paycheck = PAYCHECK_COMMAND
	paycheck_department = ACCOUNT_ENG

	liver_traits = list(TRAIT_ENGINEER_METABOLISM)

	display_order = JOB_DISPLAY_ORDER_HEAD_OF_PERSONNEL
	bounty_types = CIV_JOB_ENG

/datum/outfit/job/commandant
	name = "Commandant"
	jobtype = /datum/job/commandant
	belt = null

	id = /obj/item/card/id/black
	l_pocket = /obj/item/melee/transforming/energy/sword/saber/red
	r_pocket = /obj/item/melee/classic_baton/telescopic
	suit = /obj/item/clothing/suit/armor/commandant
	shoes = /obj/item/clothing/shoes/jackboots
	suit_store = /obj/item/gun/ballistic/revolver/sw500
	head = /obj/item/clothing/head/hos/syndicate
	ears = /obj/item/radio/headset/syndicate/alt/leader
	gloves = /obj/item/clothing/gloves/color/black
	mask = /obj/item/clothing/mask/cigarette/cigar/havana
	glasses = /obj/item/clothing/glasses/hud/eyepatch/admiral
	uniform = /obj/item/clothing/under/syndicate