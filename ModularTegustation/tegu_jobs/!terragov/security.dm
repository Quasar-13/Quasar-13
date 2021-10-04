/datum/job/security
	title = "Security"
	department_head = list("Commander")
	faction = "Station"
	total_positions = 4
	spawn_positions = 4
	supervisors = "the commander"
	selection_color = "#b7edda"
	maptype = "solgov"

	outfit = /datum/outfit/job/security

	access = list(ACCESS_SECURITY)
	minimal_access = list(ACCESS_SECURITY)
	paycheck = PAYCHECK_MEDIUM

	display_order = JOB_DISPLAY_ORDER_SECURITY_OFFICER


/datum/outfit/job/security
	name = "Solgov Survivor outfit"
	id = /obj/item/card/id/solgov
	jobtype = /datum/job/security
	belt = null
