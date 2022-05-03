/datum/job/remcpl
	title = "NT Remnant Corporal"
	department_head = list("NT Remnant Commander")
	faction = "Station"
	total_positions = 1
	spawn_positions = 1
	supervisors = "NT Remnant Commander"
	selection_color = "#134975"
	maptype = "solgov"

	outfit = /datum/outfit/job/remprivate

	access = list(ACCESS_CENT_GENERAL, ACCESS_CENT_SPECOPS)
	minimal_access = list(ACCESS_CENT_GENERAL, ACCESS_CENT_SPECOPS)
	paycheck = PAYCHECK_MEDIUM

	display_order = JOB_DISPLAY_ORDER_SNEEDCLAVEAUX

/obj/effect/landmark/start/remcpl
	name = "NT Remnant Corporal"
	icon_state = "Security Officer"

/obj/effect/landmark/start/ntremnant/Initialize()
	. = ..()
	var/turf/T = get_turf(src)
	new /obj/effect/landmark/start/remcpl(T)
