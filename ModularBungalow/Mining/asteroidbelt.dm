/**********************Asteroid Belt Areas**************************/

/area/asteroidbelt
	icon_state = "mining"
	has_gravity = STANDARD_GRAVITY
	outdoors = TRUE
	flags_1 = NONE
	area_flags = VALID_TERRITORY | UNIQUE_AREA
	sound_environment = SOUND_AREA_ASTEROID

/area/asteroidbelt/space
	name = "Asteroid Belt"
	icon_state = "explored"
	power_environ = FALSE
	power_equip = FALSE
	power_light = FALSE
	requires_power = TRUE
	ambience_index = AMBIENCE_CREEPY
	area_flags = VALID_TERRITORY | UNIQUE_AREA | NO_ALERTS

/area/asteroidbelt/space/generation
	name = "Asteroid Belt Unexplored"
	icon_state = "unexplored"
	ambience_index = AMBIENCE_CREEPY
	area_flags = VALID_TERRITORY | UNIQUE_AREA | CAVES_ALLOWED | MOB_SPAWN_ALLOWED | NO_ALERTS
	map_generator = /datum/map_generator/cave_generator/asteroidbelt

/area/asteroidbelt/space/empty
	name = "Asteroid Belt Empty"
	icon_state = "unexplored"
	ambience_index = AMBIENCE_CREEPY
	map_generator = /datum/map_generator/cave_generator/asteroidempty

////////////////////////MAP GENERATOR////////////////////////////////

/datum/map_generator/cave_generator/asteroidbelt
	open_turf_types = list(/turf/open/space = 1)
	closed_turf_types = list(/turf/closed/mineral/random/stationside/asteroidbelt = 1)

	mob_spawn_chance = 0.7

	mob_spawn_list = list(/mob/living/simple_animal/hostile/carp = 20,
		/mob/living/simple_animal/hostile/carp/megacarp = 3,
		)
	flora_spawn_list = list()
	feature_spawn_list = list()

	initial_closed_chance = 23
	smoothing_iterations = 2
	birth_limit = 4
	death_limit = 3

/datum/map_generator/cave_generator/asteroidempty
	open_turf_types = list(/turf/open/space = 1)
	closed_turf_types = list(/turf/open/space = 1)


/area/mine/asteroidbelt_nanotrasen
	name = "Abandoned Mining Facility"

/turf/closed/mineral/random/stationside/asteroidbelt
	turf_type = /turf/open/floor/plating/asteroid
	mineralSpawnChanceList = list(/obj/item/stack/ore/uranium = 5, /obj/item/stack/ore/diamond = 1, /obj/item/stack/ore/gold = 10,
		/obj/item/stack/ore/silver = 12, /obj/item/stack/ore/plasma = 20, /obj/item/stack/ore/iron = 40, /obj/item/stack/ore/titanium = 11,
		/turf/closed/mineral/gibtonite = 4, /obj/item/stack/ore/bluespace_crystal = 1)
	mineralChance = 15
