//RUINS
/area/crew_quarters/devious_lick
	name = "Devious Lick"
	icon = 'ModularBungalow/zbungalowicons/areasb.dmi'
	icon_state = "amongus"
	ambientsounds = list('ModularBungalow/zbungalowsounds/ruins/among_Us_Drip_Theme.ogg')

//FSS2: Prototype Station
/area/ruin/has_grav/prototype
	requires_power = TRUE
	outdoors = FALSE
	power_light = FALSE
	power_equip = FALSE
	power_environ = FALSE

/area/ruin/has_grav/DnDmansion
	requires_power = FALSE
	outdoors = FALSE
	power_light = TRUE
	power_equip = TRUE
	power_environ = TRUE

/area/ruin/has_grav/prototype/Captain
	name = "Prototype Captain's quarter"
	icon_state = "blue"

/area/ruin/has_grav/prototype/arrivals
	name = "Prototype Arrivals"
	icon_state = "hallP"

/area/ruin/has_grav/prototype/hallway
	name = "Prototype Main Hallway"
	icon_state = "hallS"

/area/ruin/has_grav/prototype/medsci
	name = "Prototype Med-Sci"
	icon_state = "green"

/area/ruin/has_grav/prototype/botany
	name = "Prototype Botany"
	icon_state = "garden"

/area/ruin/has_grav/prototype/engineering
	name = "Prototype Engineering"
	icon_state = "engi_storage"

/area/ruin/has_grav/prototype/solars
	name = "Prototype Solars"
	icon_state = "engi_storage"

/area/ruin/has_grav/prototype/kitchen
	name = "Prototype Kitchen"
	icon_state = "kitchen"

/area/ruin/has_grav/prototype/brig
	name = "Prototype Brig"
	icon_state = "maint_brig"

/area/ruin/has_grav/prototype/dorms
	name = "Prototype Dormitories"
	icon_state = "dorms"

//FSS4 Areas
/area/ruin/space/has_grav/powered/biosphere
	name = "Bio Sphere"
	ambientsounds = list('sound/ambience/ambitech2.ogg', 'sound/ambience/ambitech3.ogg', 'sound/ambience/aurora_caelus_short.ogg')

/area/ruin/space/has_grav/powered/biosphere/dorm_m
	name = "Bio Sphere Male Dormitories"
	icon_state = "dorms_male"

/area/ruin/space/has_grav/powered/biosphere/dorm_f
	name = "Bio Sphere Female Dormitories"
	icon_state = "dorms_female"

//TEG ruin
/area/ruin/has_grav/teg
	name = "Abandoned TEG Room"
	icon_state = "engine"

/area/ruin/has_grav/teg/storage
	name = "Abandoned TEG Facility Storage"
	icon_state = "cargo_warehouse"

/area/ruin/has_grav/teg/eva
	name = "Abadoned TEG Facility EVA"
	icon_state = "eva"

//SERVICE
/area/office/clown
	name = "Clown's office"
	icon = 'ModularBungalow/zbungalowicons/areasb.dmi'
	icon_state = "clown"
	sound_environment = SOUND_AREA_STANDARD_STATION

/area/office/mime
	name = "Mime's office"
	icon = 'ModularBungalow/zbungalowicons/areasb.dmi'
	icon_state ="mime"
	sound_environment = SOUND_AREA_STANDARD_STATION

//Marine areas for Casio
/area/marines
	name = "NT Marine Brig"
	icon = 'ModularBungalow/zbungalowicons/areasb.dmi'
	icon_state = "marine"

/area/marines/gateway
	name = "Marine Gateway"
	icon = 'ModularBungalow/zbungalowicons/areasb.dmi'
	icon_state = "marine_gateway"

/area/marines/police
	name = "NT Marine Police Prep"
	icon = 'ModularBungalow/zbungalowicons/areasb.dmi'
	icon_state = "marine_police"

/area/marines/police/armory
	name = "NT Marine Police Armory"
	icon = 'ModularBungalow/zbungalowicons/areasb.dmi'
	icon_state = "marine_armory"

/area/marines/police/warden
	name = "NT Marine Police Station"
	icon = 'ModularBungalow/zbungalowicons/areasb.dmi'
	icon_state = "marine_warden"

/area/marines/squad_office
	name = "NT Marine Squad Leader Office"
	icon = 'ModularBungalow/zbungalowicons/areasb.dmi'
	icon_state = "marine_sl"

/area/blueshield
	name = "Blueshield Office"
	icon = 'ModularBungalow/zbungalowicons/areasb.dmi'
	icon_state = "blueshield"

//Operations for syndiecorps
/area/operations
	name = "Hangar"
	icon = 'ModularBungalow/zbungalowicons/areasb.dmi'
	icon_state = "hangar"

//engineer
/area/engine/voidtech
	name = "Void technician's Office"
	icon = 'ModularBungalow/zbungalowicons/areasb.dmi'
	icon_state = "voidtech"

//CREW QUARTERS AKA OFFICES
/area/crew_quarters/office/secretary
	name = "secretary office"
	icon = 'ModularBungalow/zbungalowicons/areasb.dmi'
	icon_state = "secretary"
	sound_environment = SOUND_AREA_WOODFLOOR
