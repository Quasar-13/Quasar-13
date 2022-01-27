/datum/job/agent
	title = "Syndicate Outpost Leader"
	department_head = list("Outpost Leader")
	faction = "Station"
	total_positions = 2
	spawn_positions = 2
	supervisors = "the outpost leader"
	selection_color = "#073052"
	maptype = "solgov2"

	outfit = /datum/outfit/job/outpostleader

	access = list(ACCESS_CENT_GENERAL, ACCESS_CENT_CAPTAIN)
	minimal_access = list(ACCESS_CENT_GENERAL, ACCESS_CENT_CAPTAIN)
	paycheck = PAYCHECK_MEDIUM

	display_order = JOB_DISPLAY_ORDER_SNEEDCLAVEPVT

/datum/outfit/job/outpostleader
	name = "Syndicate Outpost Leader"
	jobtype = /datum/job/outpostleader

	id = /obj/item/card/id/black
	uniform = /obj/item/clothing/under/syndicate/coldres
	belt = null


/obj/effect/landmark/start/outpostleader
	name = "Syndicate Outpost Leader"
	icon_state = "Security Officer"

/obj/effect/landmark/start/syndicatewhatever/Initialize()
	. = ..()
	var/turf/T = get_turf(src)
	new /obj/effect/landmark/start/outpostleader(T)

/obj/effect/landmark/start/syndicatewhatever
	name = "Outpost Syndicate Start"
