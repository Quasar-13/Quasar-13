/datum/job/administrator
	title = "Administrator"
	department_head = list("Commander")
	faction = "Station"
	total_positions = 1
	spawn_positions = 1
	supervisors = "the commander"
	selection_color = "#03fca5"
	maptype = "solgov"

	outfit = /datum/outfit/job/solgov

	access = list(ACCESS_MEDICAL, ACCESS_ENGINE, ACCESS_RND, ACCESS_HEADS, ACCESS_ATMOSPHERICS)
	minimal_access = list(ACCESS_MEDICAL, ACCESS_ENGINE, ACCESS_RND, ACCESS_HEADS, ACCESS_ATMOSPHERICS)
	paycheck = PAYCHECK_COMMAND
	paycheck_department = ACCOUNT_ENG

	display_order = JOB_DISPLAY_ORDER_COMMAND



