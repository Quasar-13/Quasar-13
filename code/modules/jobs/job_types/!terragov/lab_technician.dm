/datum/job/lab_technician
	title = "Lab Technician"
	department_head = list("Commander")
	faction = "Station"
	total_positions = 3
	spawn_positions = 3
	supervisors = "the commander"
	selection_color = "#b7edda"
	maptype = "solgov"

	outfit = /datum/outfit/job/solgov

	access = list(ACCESS_RND)
	minimal_access = list(ACCESS_RND)
	paycheck = PAYCHECK_HARD

	display_order = JOB_DISPLAY_ORDER_SCIENTIST


