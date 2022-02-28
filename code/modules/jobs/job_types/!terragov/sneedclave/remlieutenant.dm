/datum/job/remlieutenant
	title = "NT Remnant Lieutenant"
	department_head = list("No one")
	faction = "Station"
	total_positions = 1
	spawn_positions = 1
	supervisors = "No one"
	selection_color = "#073052"
	maptype = "solgov"

	outfit = /datum/outfit/job/remlieutenant

	access = list(ACCESS_CENT_GENERAL, ACCESS_CENT_CAPTAIN)
	minimal_access = list(ACCESS_CENT_GENERAL, ACCESS_CENT_CAPTAIN)
	paycheck = PAYCHECK_COMMAND

	display_order = JOB_DISPLAY_ORDER_SNEEDCLAVELT

/datum/outfit/job/remlieutenant
	name = "NT Remnant (Lieutenant)"
	jobtype = /datum/job/remlieutenant

	id = /obj/item/card/id/gold
	uniform = /obj/item/clothing/under/bni/senior
	suit = /obj/item/clothing/suit/hooded/wintercoat
	belt = null


/obj/effect/landmark/start/remlieutenant
	name = "NT Remnant Lieutenant"
	icon_state = "Security Officer"

/obj/effect/landmark/start/ntremnant/Initialize()
	. = ..()
	var/turf/T = get_turf(src)
	new /obj/effect/landmark/start/remlieutenant(T)


/obj/effect/landmark/start/ntremnant
	name = "NT Remnant Start"

