/datum/job/commander
	title = "Commander"
	department_head = list("Solgov Command")
	faction = "Station"
	total_positions = 1
	spawn_positions = 1
	supervisors = "space law"
	selection_color = "#03fca5"
	maptype = "solgov"
	trusted_only = TRUE

	outfit = /datum/outfit/job/commandant

	access = list(ACCESS_MEDICAL, ACCESS_ENGINE, )
	minimal_access = list(ACCESS_SYNDICATE, ACCESS_SYNDICATE_OFFICER, ACCESS_SYNDICATE_LEADER, ACCESS_SYNDICATE_COMMAND, ACCESS_SYNDICATE_COMMANDANT, ACCESS_SYNDICATE_POLICE)
	paycheck = PAYCHECK_COMMAND
	paycheck_department = ACCOUNT_ENG

	liver_traits = list(TRAIT_ENGINEER_METABOLISM)

	display_order = JOB_DISPLAY_ORDER_CAPTAIN
	bounty_types = CIV_JOB_ENG

/datum/outfit/job/solgov
	name = "Solgov outfit"
	jobtype = /datum/job/commander
	id = /obj/item/card/id/solgov