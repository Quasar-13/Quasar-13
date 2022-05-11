/datum/job/remnant
	title = "NT Remnant Auxiliary"
	department_head = list("NT Remnant Commander")
	faction = "Station"
	total_positions = 1
	spawn_positions = 1
	supervisors = "NT Remnant Commander"
	selection_color = "#134975"
	maptype = "kepler-ice"

	outfit = /datum/outfit/job/remnant

	access = list(ACCESS_CENT_GENERAL)
	minimal_access = list(ACCESS_CENT_GENERAL)
	paycheck = PAYCHECK_MEDIUM
	display_order = JOB_DISPLAY_ORDER_FACTION1_DOC


/datum/job/remnant/pvt
	title = "NT Remnant Cadet"
	total_positions = 2
	spawn_positions = 2
	display_order = JOB_DISPLAY_ORDER_FACTION1_PVT


/datum/job/remnant/cpl
	title = "NT Remnant Corporal"
	display_order = JOB_DISPLAY_ORDER_FACTION1_LT
	access = list(ACCESS_CENT_GENERAL, ACCESS_CENT_SPECOPS)
	minimal_access = list(ACCESS_CENT_GENERAL, ACCESS_CENT_SPECOPS)


/datum/job/remnant/lt
	title = "NT Remnant Commander"
	department_head = list("No one")
	supervisors = "No one"
	selection_color = "#073052"

	outfit = /datum/outfit/job/remnant/lt

	access = list(ACCESS_CENT_GENERAL, ACCESS_CENT_CAPTAIN, ACCESS_CENT_SPECOPS)
	minimal_access = list(ACCESS_CENT_GENERAL, ACCESS_CENT_CAPTAIN, ACCESS_CENT_SPECOPS)
	paycheck = PAYCHECK_COMMAND

	display_order = JOB_DISPLAY_ORDER_FACTION1_LEADER

