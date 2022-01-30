/datum/design/chargepylon
	name = "Charging Pylon"
	desc = "A pylon that can recharge nearby powercells"
	id = "infection_charger"
	build_type = PROTOLATHE
	materials = list(/datum/material/bluespace = 4000, /datum/material/glass = 500, /datum/material/diamond = 1500, /datum/material/iron = 200)
	build_path = /obj/item/pylon_spawner/charger
	category = list("equipment")
	departmental_flags = ALL

/datum/design/turretpylon
	name = "Turret Pylon"
	desc = "A pylon that destroys nearby infection"
	id = "infection_turret"
	build_type = PROTOLATHE
	materials = list(/datum/material/bluespace = 4000, /datum/material/glass = 500, /datum/material/diamond = 1500, /datum/material/iron = 200)
	build_path = /obj/item/pylon_spawner/turret
	category = list("equipment")
	departmental_flags = ALL

/datum/design/healinjector
	name = "Infection Reusable Medical Injector"
	desc = "A reusable medical injector using infection-based technology"
	id = "infection_injector"
	build_type = PROTOLATHE
	materials = list(/datum/material/iron = 1200, /datum/material/glass = 1200, /datum/material/plastic = 500, /datum/material/bluespace = 1500, /datum/material/diamond = 500)
	build_path = /obj/item/healing_injector
	category = list("Medical Designs")
	departmental_flags = ALL
