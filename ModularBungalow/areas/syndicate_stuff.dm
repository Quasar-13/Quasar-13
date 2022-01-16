//Infiltrator's Team Base
/area/infiltrator/infiltrator_base
	name = "Syndicate Infiltrator Base"
	icon = 'icons/turf/areas.dmi'
	icon_state = "red"
	requires_power = FALSE
	has_gravity = TRUE
	flags_1 = NONE
	ambientsounds = HIGHSEC
	dynamic_lighting = DYNAMIC_LIGHTING_FORCED

/area/infiltrator/infiltrator_base/poweralert(state, obj/source)
	return

/area/infiltrator/infiltrator_base/atmosalert(danger_level, obj/source)
	return

/area/infiltrator/infiltrator_base/jail
	name = "Syndicate Infiltrator Base Brig"

//headcanon lore: this is some random snowy moon that the syndies use as a base
/area/yogs/infiltrator_base/outside
	name = "Syndicate Base X-77"
	icon_state = "yellow"
	dynamic_lighting = DYNAMIC_LIGHTING_DISABLED


//Infiltrator's Ship (SIFC Cutter)

/area/shuttle/infiltrator/stealthcruiser
	name = "Syndicate Infiltration Cruiser"

/area/shuttle/yogs/stealthcruiser/poweralert(state, obj/source)
	return

/area/shuttle/yogs/stealthcruiser/atmosalert(danger_level, obj/source)
	return