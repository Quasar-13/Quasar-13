/datum/map_generator/cave_generator/icemoon
	open_turf_types =  list(/turf/open/floor/plating/asteroid/snow/icemoon = 19, /turf/open/floor/plating/ice/icemoon = 1)
	closed_turf_types =  list(/turf/closed/mineral/random/snow = 1)


	///Note that this spawn list is also in the lavaland generator
	mob_spawn_list = list(/mob/living/simple_animal/hostile/asteroid/wolf = 50, /obj/structure/spawner/ice_moon = 6, \
						  /mob/living/simple_animal/hostile/asteroid/polarbear = 30, /obj/structure/spawner/ice_moon/polarbear = 4, \
						  /mob/living/simple_animal/hostile/asteroid/hivelord/legion/snow = 50, /mob/living/simple_animal/hostile/asteroid/goldgrub = 10, \
						  /mob/living/simple_animal/hostile/asteroid/lobstrosity = 15)
	flora_spawn_list = list(/obj/structure/flora/tree/pine = 2, /obj/structure/flora/rock/icy = 2, /obj/structure/flora/rock/pile/icy = 2, /obj/structure/flora/grass/both = 6, /obj/structure/flora/ash/chilly = 2)

/datum/map_generator/cave_generator/icemoon/surface
	flora_spawn_chance = 4
	mob_spawn_list = null
	initial_closed_chance = 53
	birth_limit = 5
	death_limit = 4
	smoothing_iterations = 10

/datum/map_generator/cave_generator/icemoon/deep
	initial_closed_chance = 62
	smoothing_iterations = 10
	closed_turf_types = list(/turf/closed/mineral/random/snow/underground = 1)
	open_turf_types =  list(/turf/open/floor/plating/asteroid/snow/icemoon = 19, /turf/open/lava/plasma/ice_moon = 1)
	feature_spawn_list = list(/obj/structure/geyser/wittel = 6, /obj/structure/geyser/random = 2, /obj/structure/geyser/plasma_oxide = 10, /obj/structure/geyser/protozine = 10, /obj/structure/geyser/hollowwater = 10)
	mob_spawn_list = list(/mob/living/simple_animal/hostile/asteroid/ice_demon = 20, /obj/structure/spawner/ice_moon/demonic_portal = 7, \
						  /mob/living/simple_animal/hostile/asteroid/ice_whelp = 12, /obj/structure/spawner/ice_moon/demonic_portal/ice_whelp = 2, \
						  /mob/living/simple_animal/hostile/asteroid/hivelord/legion/snow = 17, /obj/structure/spawner/ice_moon/demonic_portal/snowlegion = 5)
	flora_spawn_list = list(/obj/structure/flora/rock/icy = 6, /obj/structure/flora/rock/pile/icy = 6, /obj/structure/flora/ash/chilly = 1)
