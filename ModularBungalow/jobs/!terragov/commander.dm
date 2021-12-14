/datum/job/commander
	title = "Commander"
	department_head = list("Solgov Command")
	faction = "Station"
	total_positions = 1
	spawn_positions = 1
	supervisors = "space law"
	selection_color = "#89c7b1"
	maptype = "solgov"
	trusted_only = TRUE

	outfit = /datum/outfit/job/commander

	access = list(ACCESS_MEDICAL, ACCESS_ENGINE, ACCESS_CAPTAIN,  ACCESS_SECURITY, ACCESS_RND, ACCESS_ARMORY, ACCESS_HEADS)
	minimal_access = list(ACCESS_MEDICAL, ACCESS_ENGINE, ACCESS_CAPTAIN,  ACCESS_SECURITY, ACCESS_RND, ACCESS_ARMORY, ACCESS_HEADS)
	paycheck = PAYCHECK_COMMAND
	paycheck_department = ACCOUNT_ENG

	liver_traits = list(TRAIT_ENGINEER_METABOLISM)

	display_order = JOB_DISPLAY_ORDER_CAPTAIN
	bounty_types = CIV_JOB_ENG

/datum/outfit/job/commander
	name = "Solgov Survivor (Commander)"
	id = /obj/item/card/id/solgov
	jobtype = /datum/job/commander
	belt = null

