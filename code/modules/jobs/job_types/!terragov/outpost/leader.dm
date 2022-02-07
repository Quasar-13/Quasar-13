/datum/job/outpostleader
	title = "Outpost Leader"
	department_head = list("Syndicate Command")
	faction = "Station"
	total_positions = 1
	spawn_positions = 1
	supervisors = "Syndicate Command"
	selection_color = "#ab1f18"
	maptype = "solgov"

	outfit = /datum/outfit/job/outpostagent

	access = list(ACCESS_SYNDICATE, ACCESS_SYNDICATE_LEADER)
	minimal_access = list(ACCESS_SYNDICATE, ACCESS_SYNDICATE_LEADER)
	paycheck = PAYCHECK_COMMAND

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
