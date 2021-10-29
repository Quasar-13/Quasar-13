/*
Assistant
*/
/datum/job/tegu/survivor
	title = "Survivor"
	faction = "Station"
	total_positions = 0
	spawn_positions = 5
	supervisors = "no one. they are all dead."
	selection_color = "#dddddd"
	access = list(ACCESS_MAINT_TUNNELS)
	minimal_access = list(ACCESS_MAINT_TUNNELS)
	outfit = /datum/outfit/job/assistant
	antag_rep = 7
	paycheck = PAYCHECK_ASSISTANT // Get a job. Job reassignment changes your paycheck now. Get over it.
	maptype = "syndicate"

	liver_traits = list(TRAIT_GREYTIDE_METABOLISM)

	paycheck_department = ACCOUNT_CIV
	display_order = JOB_DISPLAY_ORDER_ASSISTANT

/datum/outfit/job/survivor
	name = "Survivor"
	jobtype = /datum/job/tegu/survivor
	uniform = /obj/item/clothing/under/color/grey

//Spawn Point
/obj/effect/landmark/start/survivor
	name = "Survivor"
	icon_state = "Survivor"

