/datum/job/administrator
	title = "Administrator"
	department_head = list("Commander")
	faction = "Station"
	total_positions = 1
	spawn_positions = 1
	supervisors = "the commander"
	selection_color = "#03fca5"
	maptype = "solgov"

	outfit = /datum/outfit/job/administrator

	access = list(ACCESS_MEDICAL, ACCESS_ENGINE, ACCESS_RESEARCH, ACCESS_HEADS)
	minimal_access = list(ACCESS_MEDICAL, ACCESS_ENGINE, ACCESS_RESEARCH, ACCESS_HEADS)
	paycheck = PAYCHECK_COMMAND
	paycheck_department = ACCOUNT_ENG

	display_order = JOB_DISPLAY_ORDER_SECRETARY

/datum/outfit/job/administrator
	name = "Solgov Survivor (Administrator)"
	id = /obj/item/card/id/solgov
	jobtype = /datum/job/administrator
	belt = null

