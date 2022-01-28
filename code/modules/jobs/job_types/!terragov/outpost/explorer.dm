/datum/job/outpostexplorer
	title = "Syndicate Explorer"
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

	display_order = JOB_DISPLAY_ORDER_OUTPOSTEXP

/obj/effect/landmark/start/outpostexplorer
	name = "Syndicate Outpost Explorer"
	icon_state = "Security Officer"

/obj/effect/landmark/start/syndicatewhatever/Initialize()
	. = ..()
	var/turf/T = get_turf(src)
	new /obj/effect/landmark/start/outpostexplorer(T)

