/datum/job/outpostleader
	title = "Syndicate Outpost Leader"
	department_head = list("Syndicate Command")
	faction = "Station"
	total_positions = 1
	spawn_positions = 1
	supervisors = "Syndicate Command"
	selection_color = "#073052"
	maptype = "solgov2"

	outfit = /datum/outfit/job/outpostagent

	access = list(ACCESS_SYNDICATE, ACCESS_SYNDICATE_LEADER)
	minimal_access = list(ACCESS_SYNDICATE, ACCESS_SYNDICATE_LEADER)
	paycheck = PAYCHECK_MEDIUM

	display_order = JOB_DISPLAY_ORDER_OUTPOSTLEADER

/obj/effect/landmark/start/outpostleader
	name = "Syndicate Outpost Leader"
	icon_state = "Security Officer"

/obj/effect/landmark/start/syndicatewhatever/Initialize()
	. = ..()
	var/turf/T = get_turf(src)
	new /obj/effect/landmark/start/outpostleader(T)

/obj/effect/landmark/start/syndicatewhatever
	name = "Outpost Syndicate Start"
