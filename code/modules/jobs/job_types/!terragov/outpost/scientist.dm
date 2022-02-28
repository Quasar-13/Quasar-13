/datum/job/outpostscientist
	title = "Syndicate Scientist"
	department_head = list("Outpost Leader")
	faction = "Station"
	total_positions = 1
	spawn_positions = 1
	supervisors = "the outpost leader"
	selection_color = "#ff3322"
	maptype = "solgov"

	outfit = /datum/outfit/job/outpostagent

	access = list(ACCESS_SYNDICATE)
	minimal_access = list(ACCESS_SYNDICATE)
	paycheck = PAYCHECK_MEDIUM

	display_order = JOB_DISPLAY_ORDER_OUTPOSTSCI

/obj/effect/landmark/start/outpostscientist
	name = "Syndicate Scientist"
	icon_state = "Security Officer"

/obj/effect/landmark/start/syndicatewhatever/Initialize()
	. = ..()
	var/turf/T = get_turf(src)
	new /obj/effect/landmark/start/outpostscientist(T)

