/datum/job/soldier
	title = "Soldier"
	department_head = list("Commander")
	faction = "Station"
	total_positions = 6
	spawn_positions = 6
	supervisors = "the commander"
	selection_color = "#b7edda"
	maptype = "solgov"

	outfit = /datum/outfit/job/soldier

	access = list(ACCESS_ARMORY)
	minimal_access = list(ACCESS_ARMORY)
	paycheck = PAYCHECK_MEDIUM

	display_order = JOB_DISPLAY_ORDER_WARDEN

/datum/outfit/job/soldier
	name = "Solgov Survivor (Soldier)"
	id = /obj/item/card/id/solgov
	jobtype = /datum/job/soldier
	belt = null
