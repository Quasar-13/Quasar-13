//Syndicate
/obj/effect/landmark/start/outpost
	name = "Syndicate Outpost Agent"
	icon_state = "Security Officer"

/obj/effect/landmark/start/outpost/explorer
	name = "Syndicate Outpost Explorer"
	icon_state = "Security Officer"


/obj/effect/landmark/start/outpost/leader
	name = "Syndicate Outpost Leader"
	icon_state = "Security Officer"


/obj/effect/landmark/start/outpost/medic
	name = "Syndicate Outpost Medic"
	icon_state = "Security Officer"

/obj/effect/landmark/start/outpost/scientist
	name = "Syndicate Scientist"
	icon_state = "Security Officer"

//Syndicate job spawns
/obj/effect/landmark/start/syndicatewhatever
	name = "Outpost Syndicate Start"

/obj/effect/landmark/start/syndicatewhatever/Initialize()
	. = ..()
	var/turf/T = get_turf(src)
	new /obj/effect/landmark/start/outpost/explorer(T)
	new /obj/effect/landmark/start/outpost(T)
	new /obj/effect/landmark/start/outpost/leader(T)
	new /obj/effect/landmark/start/outpost/medic(T)
	new /obj/effect/landmark/start/outpost/scientist(T)



//NT job spawn (unused)
/obj/effect/landmark/start/ntremnant
	name = "NT Remnant Start"

/obj/effect/landmark/start/ntremnant/Initialize()
	. = ..()
//	var/turf/T = get_turf(src)





