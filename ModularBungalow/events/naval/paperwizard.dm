/datum/round_event_control/paperwizard
	name = "Paper Wizard Miniboss (Naval)"
	typepath = /datum/round_event/paperwizard
	weight = 50
	min_players = 5
	earliest_start = 30 MINUTES
	max_occurrences = 10
	maptype = "naval"


/datum/round_event/paperwizard
	announceWhen	= 3
	startWhen = 50
	var/hasAnnounced = FALSE

/datum/round_event/paperwizard/setup()
	startWhen = rand(40, 60)

/datum/round_event/paperwizard/announce(fake)
	priority_announce("And so, he archived it. All of it. All of his creations, for further generations", "Hostile Lifeform Alert")


/datum/round_event/paperwizard/start()
	var/turf/T = get_turf(/obj/effect/landmark/navalboss)
	new /mob/living/simple_animal/hostile/boss/paper_wizard(T)


