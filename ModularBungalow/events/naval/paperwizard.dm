/datum/round_event_control/paperwizard
	name = "Paper Wizard Miniboss (Naval)"
	typepath = /datum/round_event/paperwizard
	weight = 50
	min_players = 5
	earliest_start = 30 MINUTES
	max_occurrences = 10
	maptype = "naval"


/datum/round_event/paperwizard

/datum/round_event/paperwizard/setup()
	startWhen = 3
	endWhen = startWhen + 1
	announceWhen	= 1

/datum/round_event/paperwizard/announce(fake)
	priority_announce("And so, he archived it. All of it. All of his creations, for further generations", "Hostile Lifeform Alert")


/datum/round_event/paperwizard/start()
	var/list/spawn_locs = list()
	for(var/obj/effect/landmark/navalboss/L in GLOB.landmarks_list)
		spawn_locs += L.loc
		message_admins("ALERT! This proced!")
	if(!spawn_locs.len)
		return MAP_ERROR

	new/mob/living/simple_animal/hostile/boss/paper_wizard(pick(spawn_locs))
	message_admins("ALERT! Mob should have spawned.")

