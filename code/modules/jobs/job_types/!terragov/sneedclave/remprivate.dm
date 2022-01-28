/datum/job/remprivate
	title = "NT Remnant Cadet"
	department_head = list("NT Remnant Lieutenant")
	faction = "Station"
	total_positions = 2
	spawn_positions = 2
	supervisors = "NT Remnant Lieutenant"
	selection_color = "#134975"
	maptype = "solgov"

	outfit = /datum/outfit/job/remprivate

	access = list(ACCESS_CENT_GENERAL)
	minimal_access = list(ACCESS_CENT_GENERAL)
	paycheck = PAYCHECK_MEDIUM

	display_order = JOB_DISPLAY_ORDER_SNEEDCLAVEPVT

/datum/outfit/job/remprivate
	name = "NT Remnant (Cadet)"
	jobtype = /datum/job/remprivate

	id = /obj/item/card/id
	uniform = /obj/item/clothing/under/bni
	suit = /obj/item/clothing/suit/hooded/wintercoat
	belt = null


/obj/effect/landmark/start/remprivate
	name = "NT Remnant Cadet"
	icon_state = "Security Officer"

/obj/effect/landmark/start/ntremnant/Initialize()
	. = ..()
	var/turf/T = get_turf(src)
	new /obj/effect/landmark/start/remprivate(T)



