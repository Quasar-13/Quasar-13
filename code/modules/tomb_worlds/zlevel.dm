// How much "space" we give the edge of the map
GLOBAL_LIST_INIT(potentialTombWorlds, generateMapList(filename = "[global.config.directory]/tomb_worlds.txt"))
GLOBAL_DATUM(tomb_portal_location, /obj/effect/landmark/tomb_portal_start)

/proc/createRandomTomb()
	if(GLOB.potentialTombWorlds && GLOB.potentialTombWorlds.len)
		to_chat(world, span_boldannounce("Loading tomb world...</span>")
		var/map = pick(GLOB.potentialTombWorlds)
		load_new_z_level(map, "Tomb World")
		to_chat(world, span_boldannounce("Tomb world loaded.</span>")

/obj/effect/landmark/tomb_portal_start
	name = "tomb portal spawner location"

/obj/effect/landmark/tomb_portal_start/Initialize()
	. = ..()
	GLOB.tomb_portal_location = src
