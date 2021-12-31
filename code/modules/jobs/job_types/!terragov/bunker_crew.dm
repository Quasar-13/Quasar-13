/datum/job/bunker_crew
	title = "Bunker Crew"
	department_head = list("Commander")
	faction = "Station"
	total_positions = 4
	spawn_positions = 4
	supervisors = "the commander"
	selection_color = "#b7edda"
	maptype = "solgov"

	outfit = /datum/outfit/job/bunker_crew

	access = list(ACCESS_ENGINE)
	minimal_access = list(ACCESS_ENGINE)
	paycheck = PAYCHECK_MEDIUM

	liver_traits = list(TRAIT_ENGINEER_METABOLISM)

	display_order = JOB_DISPLAY_ORDER_STATION_ENGINEER
	bounty_types = CIV_JOB_ENG


/datum/outfit/job/bunker_crew
	name = "Solgov Survivor (Bunker Crew)"
	id = /obj/item/card/id/solgov
	jobtype = /datum/job/bunker_crew
	belt = null
