/datum/job/remaux
	title = "NT Remnant Auxiliary"
	department_head = list("NT Remnant Lieutenant")
	faction = "Station"
	total_positions = 1
	spawn_positions = 1
	supervisors = "NT Remnant Lieutenant"
	selection_color = "#134975"
	maptype = "solgov"

	outfit = /datum/outfit/job/remprivate

	access = list(ACCESS_CENT_GENERAL)
	minimal_access = list(ACCESS_CENT_GENERAL)
	paycheck = PAYCHECK_MEDIUM

	display_order = JOB_DISPLAY_ORDER_SNEEDCLAVEAUX

/obj/effect/landmark/start/remaux
	name = "NT Remnant Auxiliary"
	icon_state = "Security Officer"

/obj/effect/landmark/start/ntremnant/Initialize()
	. = ..()
	var/turf/T = get_turf(src)
	new /obj/effect/landmark/start/remaux(T)

