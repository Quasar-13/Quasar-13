/**********************Asteroid Belt Areas**************************/

/area/asteroidbelt
	icon_state = "mining"
	has_gravity = STANDARD_GRAVITY
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
	name = "Rockplanet Caves"
	icon_state = "unexplored"
	ambience_index = AMBIENCE_CREEPY
	area_flags = VALID_TERRITORY | UNIQUE_AREA | CAVES_ALLOWED | MOB_SPAWN_ALLOWED | NO_ALERTS
	map_generator = /datum/map_generator/cave_generator/rockplanet


////////////////////////MAP GENERATOR////////////////////////////////

/datum/map_generator/cave_generator/rockplanet
	open_turf_types = list(/turf/open/floor/plating/asteroid = 1)
	closed_turf_types = list(/turf/closed/mineral/random/stationside/asteroid/rockplanet = 1)

	mob_spawn_chance = 3

	mob_spawn_list = list(/mob/living/simple_animal/hostile/carp = 20,
		/mob/living/simple_animal/hostile/carp/megacarp = 2,
		/mob/living/simple_animal/hostile/construct/juggernaut = 1,
		/mob/living/simple_animal/hostile/construct/protean = 2)
	flora_spawn_list = list()
	feature_spawn_list = list()

	initial_closed_chance = 45
	smoothing_iterations = 50
	birth_limit = 4
	death_limit = 3

/area/mine/rockplanet
	name = "Abandoned Syndicate Mining Facility"

/area/mine/rockplanet_nanotrasen
	name = "Abandoned Mining Facility"

/turf/closed/mineral/random/stationside/asteroid/rockplanet
	initial_gas_mix = OPENTURF_DEFAULT_ATMOS
	turf_type = /turf/open/floor/plating/asteroid/rockplanet
	mineralSpawnChanceList = list(/obj/item/stack/ore/uranium = 5, /obj/item/stack/ore/diamond = 1, /obj/item/stack/ore/gold = 10,
		/obj/item/stack/ore/silver = 12, /obj/item/stack/ore/plasma = 20, /obj/item/stack/ore/iron = 40, /obj/item/stack/ore/titanium = 11,
		/turf/closed/mineral/gibtonite = 4, /obj/item/stack/ore/bluespace_crystal = 1)
	mineralChance = 10

/turf/open/floor/plating/asteroid/rockplanet
	initial_gas_mix = OPENTURF_DEFAULT_ATMOS

