/datum/job/soldier
	title = "Soldier"
	department_head = list("Commander")
	faction = "Station"
	total_positions = 6
	spawn_positions = 6
	supervisors = "the commander"
	selection_color = "#b7edda"
	maptype = "solgov"

	outfit = /datum/outfit/job/solgov

	access = list(ACCESS_ARMORY)
	minimal_access = list(ACCESS_ARMORY)
	paycheck = PAYCHECK_MEDIUM

	display_order = JOB_DISPLAY_ORDER_WARDEN

