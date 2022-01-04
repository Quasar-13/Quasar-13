/datum/crafting_recipe/markii
	name = "Disabler Mark II"
	tools = list(TOOL_SCREWDRIVER, TOOL_WIRECUTTER)
	result = /obj/item/gun/energy/disabler/advanced/markii/nopin
	reqs = list(/obj/item/weaponcrafting/barrel = 1,
				/obj/item/stack/cable_coil = 5,
				/obj/item/weaponcrafting/laser_receiver = 1,
				/obj/item/weaponcrafting/gunkit/mark2 = 1)
	time = 600
	category = CAT_WEAPONRY
	subcategory = CAT_GUNSMITHING

/datum/crafting_recipe/autorifle
	name = "Disabler Auto Rifle"
	tools = list(TOOL_SCREWDRIVER, TOOL_WIRECUTTER)
	result = /obj/item/gun/energy/disabler/advanced/rifle/nopin
	reqs = list(/obj/item/weaponcrafting/longbarrel = 1,
				/obj/item/stack/cable_coil = 5,
				/obj/item/weaponcrafting/plastic_stock = 1,
				/obj/item/weaponcrafting/laser_receiver = 1,
				/obj/item/weaponcrafting/gunkit/drifle = 1)
	time = 600
	category = CAT_WEAPONRY
	subcategory = CAT_GUNSMITHING

/datum/crafting_recipe/beamrifle
	name = "Disabler Beam Rifle"
	tools = list(TOOL_SCREWDRIVER, TOOL_WIRECUTTER)
	result = /obj/item/gun/energy/disabler/advanced/beam/nopin
	reqs = list(/obj/item/weaponcrafting/longbarrel = 1,
				/obj/item/weaponcrafting/plastic_stock = 1,
				/obj/item/weaponcrafting/stepper = 1,
				/obj/item/stack/cable_coil = 5,
				/obj/item/weaponcrafting/laser_receiver = 1,
				/obj/item/weaponcrafting/gunkit/beam = 1)
	time = 600
	category = CAT_WEAPONRY
	subcategory = CAT_GUNSMITHING

/datum/crafting_recipe/dmr
	name = "Disabler Marksman Rifle"
	tools = list(TOOL_SCREWDRIVER, TOOL_WIRECUTTER)
	result = /obj/item/gun/energy/disabler/advanced/dmr/nopin
	reqs = list(/obj/item/weaponcrafting/longbarrel = 1,
				/obj/item/weaponcrafting/plastic_stock = 1,
				/obj/item/weaponcrafting/stepper = 1,
				/obj/item/stack/cable_coil = 5,
				/obj/item/weaponcrafting/laser_receiver = 1,
				/obj/item/weaponcrafting/gunkit/dmr = 1)
	time = 600
	category = CAT_WEAPONRY
	subcategory = CAT_GUNSMITHING

/datum/crafting_recipe/shotgun
	name = "Disabler Shotgun"
	tools = list(TOOL_SCREWDRIVER, TOOL_WIRECUTTER)
	result = /obj/item/gun/energy/disabler/advanced/scatter/nopin
	reqs = list(/obj/item/weaponcrafting/longbarrel = 1,
				/obj/item/weaponcrafting/plastic_stock = 1,
				/obj/item/stack/cable_coil = 5,
				/obj/item/weaponcrafting/laser_receiver = 1,
				/obj/item/weaponcrafting/gunkit/shotgun = 1)
	time = 600
	category = CAT_WEAPONRY
	subcategory = CAT_GUNSMITHING

/datum/crafting_recipe/smg
	name = "Disabler PDW"
	tools = list(TOOL_SCREWDRIVER, TOOL_WIRECUTTER)
	result = /obj/item/gun/energy/disabler/advanced/pdw/nopin
	reqs = list(/obj/item/weaponcrafting/barrel = 1,
				/obj/item/weaponcrafting/plastic_stock = 1,
				/obj/item/stack/cable_coil = 5,
				/obj/item/weaponcrafting/laser_receiver = 1,
				/obj/item/weaponcrafting/gunkit/smg = 1)
	time = 600
	category = CAT_WEAPONRY
	subcategory = CAT_GUNSMITHING


//Other guns that I'm adding to this
/datum/crafting_recipe/advancedegun_scratch
	name = "Advanced Energy Gun"
	tools = list(TOOL_SCREWDRIVER, TOOL_WIRECUTTER)
	result = /obj/item/gun/energy/e_gun/nuclear
	reqs = list(/obj/item/weaponcrafting/longbarrel = 1,
				/obj/item/stack/cable_coil = 5,
				/obj/item/weaponcrafting/override = 1,
				/obj/item/weaponcrafting/plastic_stock = 1,
				/obj/item/weaponcrafting/laser_receiver = 1,
				/obj/item/weaponcrafting/gunkit/nuclear = 1)
	time = 600
	category = CAT_WEAPONRY
	subcategory = CAT_GUNSMITHING


/datum/crafting_recipe/tempgun_scratch
	name = "Temperature Gun"
	tools = list(TOOL_SCREWDRIVER, TOOL_WIRECUTTER)
	result = /obj/item/gun/energy/temperature
	reqs = list(/obj/item/weaponcrafting/longbarrel = 1,
				/obj/item/stack/cable_coil = 5,
				/obj/item/weaponcrafting/plastic_stock = 1,
				/obj/item/weaponcrafting/laser_receiver = 1,
				/obj/item/weaponcrafting/gunkit/temperature = 1)
	time = 600
	category = CAT_WEAPONRY
	subcategory = CAT_GUNSMITHING


/datum/crafting_recipe/beam_rifle_scratch
	name = "Particle Acceleration Rifle"
	tools = list(TOOL_SCREWDRIVER, TOOL_WIRECUTTER)
	result = /obj/item/gun/energy/beam_rifle
	reqs = list(/obj/item/weaponcrafting/longbarrel = 1,
				/obj/item/stack/cable_coil = 5,
				/obj/item/weaponcrafting/override = 1,
				/obj/item/weaponcrafting/laser_receiver = 1,
				/obj/item/weaponcrafting/plastic_stock = 1,
				/obj/item/assembly/signaler/anomaly/flux = 1,
				/obj/item/assembly/signaler/anomaly/grav = 1,
				/obj/item/weaponcrafting/gunkit/beam_rifle = 1)
	time = 600
	category = CAT_WEAPONRY
	subcategory = CAT_GUNSMITHING


/datum/crafting_recipe/ebow_scratch
	name = "Energy Crossbow"
	tools = list(TOOL_SCREWDRIVER, TOOL_WIRECUTTER)
	result = /obj/item/gun/energy/kinetic_accelerator/crossbow/large
	reqs = list(/obj/item/weaponcrafting/laser_receiver = 1,
				/obj/item/weaponcrafting/plastic_stock = 1,
				/obj/item/stack/cable_coil = 5,
				/obj/item/weaponcrafting/override = 1,
				/obj/item/weaponcrafting/gunkit/ebow = 1,
				/datum/reagent/uranium/radium = 15)
	time = 600
	category = CAT_WEAPONRY
	subcategory = CAT_GUNSMITHING


/datum/crafting_recipe/xraylaser_scratch
	name = "X-ray Laser Gun"
	tools = list(TOOL_SCREWDRIVER, TOOL_WIRECUTTER)
	result = /obj/item/gun/energy/xray
	reqs = list(/obj/item/weaponcrafting/longbarrel = 1,
				/obj/item/stack/cable_coil = 5,
				/obj/item/weaponcrafting/override = 1,
				/obj/item/weaponcrafting/plastic_stock = 1,
				/obj/item/weaponcrafting/laser_receiver = 1,
				/obj/item/weaponcrafting/gunkit/xray = 1)
	time = 600
	category = CAT_WEAPONRY
	subcategory = CAT_GUNSMITHING


/datum/crafting_recipe/hellgun_scratch
	name = "Hellfire Laser Gun"
	tools = list(TOOL_SCREWDRIVER, TOOL_WIRECUTTER)
	result = /obj/item/gun/energy/laser/hellgun
	reqs = list(/obj/item/weaponcrafting/longbarrel = 1,
				/obj/item/stack/cable_coil = 5,
				/obj/item/weaponcrafting/override = 2,
				/obj/item/weaponcrafting/plastic_stock = 1,
				/obj/item/weaponcrafting/laser_receiver = 1,
				/obj/item/weaponcrafting/gunkit/hellgun = 1)
	time = 600
	category = CAT_WEAPONRY
	subcategory = CAT_GUNSMITHING

