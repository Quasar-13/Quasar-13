/datum/job/civilian
	title = "Civilian"
	department_head = list("Commander")
	faction = "Station"
	total_positions = 50
	spawn_positions = 50
	supervisors = "the commander"
	selection_color = "#d1ded9"
	maptype = "solgov"

	outfit = /datum/outfit/job/civilian

	access = list()
	minimal_access = list()
	paycheck = PAYCHECK_EASY


	display_order = JOB_DISPLAY_ORDER_ASSISTANT

/datum/outfit/job/civilian
	name = "Solgov Survivor (Civilian)"
	id = /obj/item/card/id/solgov
	jobtype = /datum/job/civilian
	belt = null

