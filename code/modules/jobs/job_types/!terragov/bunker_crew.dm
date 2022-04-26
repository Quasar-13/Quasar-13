/datum/job/bunker_crew
	title = "Bunker Crew"
	department_head = list("Commander")
	faction = "Station"
	total_positions = 4
	spawn_positions = 4
	supervisors = "the commander"
	selection_color = "#b7edda"
	maptype = "solgov"

	outfit = /datum/outfit/job/solgov

	access = list(ACCESS_ENGINE, ACCESS_ATMOSPHERICS)
	minimal_access = list(ACCESS_ENGINE, ACCESS_ATMOSPHERICS)
	paycheck = PAYCHECK_MEDIUM

	liver_traits = list(TRAIT_ENGINEER_METABOLISM)

	display_order = JOB_DISPLAY_ORDER_STATION_ENGINEER
	bounty_types = CIV_JOB_ENG

