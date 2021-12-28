/datum/job/medical_technician
	title = "Medical Technician"
	department_head = list("Commander")
	faction = "Station"
	total_positions = 2
	spawn_positions = 2
	supervisors = "the commander"
	selection_color = "#b7edda"
	maptype = "solgov"

	outfit = /datum/outfit/job/medical_technician

	access = list(ACCESS_MEDICAL)
	minimal_access = list(ACCESS_MEDICAL)
	paycheck = PAYCHECK_HARD
	paycheck_department = ACCOUNT_ENG


	display_order = JOB_DISPLAY_ORDER_MEDICAL_DOCTOR

/datum/outfit/job/medical_technician
	name = "Solgov Survivor (Medical Technician)"
	id = /obj/item/card/id/solgov
	jobtype = /datum/job/medical_technician
	belt = null
