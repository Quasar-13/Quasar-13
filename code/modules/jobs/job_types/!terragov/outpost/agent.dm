/datum/job/outpostagent
	title = "Syndicate Outpost Agent"
	department_head = list("Outpost Leader")
	faction = "Station"
	total_positions = 2
	spawn_positions = 2
	supervisors = "the outpost leader"
	selection_color = "#073052"
	maptype = "solgov2"

	outfit = /datum/outfit/job/outpostagent

	access = list(ACCESS_SYNDICATE)
	minimal_access = list(ACCESS_SYNDICATE)
	paycheck = PAYCHECK_MEDIUM

	display_order = JOB_DISPLAY_ORDER_OUTPOSTPVT

/datum/outfit/job/outpostagent
	name = "Syndicate Outpost Agent"
	jobtype = /datum/job/outpostleader

	id = /obj/item/card/id/black
	uniform = /obj/item/clothing/under/syndicate/coldres
	belt = null


/obj/effect/landmark/start/outpostagent
	name = "Syndicate Outpost Agent"
	icon_state = "Security Officer"

/obj/effect/landmark/start/syndicatewhatever/Initialize()
	. = ..()
	var/turf/T = get_turf(src)
	new /obj/effect/landmark/start/outpostagent(T)

