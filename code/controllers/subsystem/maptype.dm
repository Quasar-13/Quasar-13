//This literally just exists because I couldn't figure out another way to have a global var. My apologies to whoever is dealing with this spaghetti bullshit in the future.
SUBSYSTEM_DEF(maptype)
	name = "Map Type"
	flags = SS_NO_FIRE
	init_order = INIT_ORDER_MAPTYPE
	var/maptype = "station"//for the love of god, do not change the default we will all die
	var/clearjobs = FALSE	//this is checking if we are clearing jobs or not
	var/faction = "nanotrasen"//shit like the starfury

	//all the maps that delete all jobs
	var/list/clearmaps = list("kepler-ice", "syndicate", "blacksite", "syndicate-station")


//These are all the departments for all the maps, put here for easy access
//Standard maps
	var/list/mapdepartments = list("Command", "Service", "Supply", "Engineering", "Medical", "Science", "Security", "Silicon")


	var/list/positions




/datum/controller/subsystem/maptype/Initialize()

//Goonmaps
	if(maptype == "goonlite")
		mapdepartments = list("Command", "Service", "Security", "Logistics", "Medical", "Science")

//Naval Stations
	if(maptype == "naval")
		mapdepartments = list("Command", "Service", "Supply", "Engineering", "Medical", "Science", "NT Marines", "Silicon")

//Syndicate Station
	if(maptype == "syndicate-station")
		mapdepartments = list("Syndicate Command", "Bioresearch", "Triage", "Logistics", "Military Police", "Auxiliary")

//Add in Operations when it's done
//		mapdepartments = list("Syndicate Command", "Operations", "Triage", "Bioresearch", "Logistics", "Military Police", "Auxiliary")

//Kepler Ice maps
	if(maptype == "kepler-ice")
		mapdepartments = list("Solgov", "NT Marines", "Operations")

//NT Blacksite
	if(maptype == "blacksite")
		mapdepartments = list("NT Marines")

//Syndicate Marines
	if(maptype == "syndicate")
		mapdepartments = list("Syndicate Command", "Operations", "Triage", "Logistics", "Military Police")




//Crew manifest
/*-----------------------------------------------------------------------------*/
	positions = list(
		"Command" = GLOB.command_positions,
		"Security" = GLOB.security_positions,
		"Engineering" = GLOB.engineering_positions,
		"Medical" = GLOB.medical_positions,
		"Science" = GLOB.science_positions,
		"Supply" = GLOB.supply_positions,
		"Service" = GLOB.service_positions,
		"Silicon" = GLOB.nonhuman_positions)

	if(maptype == "planetary")
		positions = list(
			"Command" = GLOB.command_positions,
			"Security" = GLOB.security_positions,
			"Engineering" = GLOB.engineering_positions,
			"Medical" = GLOB.medical_positions,
			"Science" = GLOB.science_positions,
			"Supply" = GLOB.supply_positions,
			"Service" = GLOB.service_positions,
			"Silicon" = GLOB.nonhuman_positions)


	if(maptype == "goonlite")
		positions = list(
			"Command" = GLOB.command_positions,
			"Security" = GLOB.security_positions,
			"Logistics" = GLOB.logistics_positions,
			"Medsci" = GLOB.medical_positions + GLOB.science_positions,
			"Service" = GLOB.service_positions,
			"Silicon" = GLOB.nonhuman_positions)


	if(maptype == "naval")
		positions = list(
			"Command" = GLOB.command_positions,
			"NT Marines" = GLOB.ntmarines_positions,
			"Engineering" = GLOB.engineering_positions,
			"Medical" = GLOB.medical_positions,
			"Science" = GLOB.science_positions,
			"Supply" = GLOB.supply_positions,
			"Service" = GLOB.service_positions,
			"Silicon" = GLOB.nonhuman_positions)

	if(maptype == "syndicate")
		positions = list(
		//Syndiestation
			"Syndicate Command" = GLOB.syncommand_positions,
			"Triage" = GLOB.triage_positions,
			"Operations" = GLOB.operations_positions,
			"Logistics" = GLOB.logistics_positions,
			"Military Police" = GLOB.police_positions)

	if(maptype == "syndicate-station")
		positions = list(
		//Syndiestation
			"Syndicate Command" = GLOB.syncommand_positions,
			"Bioresearch" = GLOB.bioresearch_positions,
			"Triage" = GLOB.triage_positions,
			"Operations" = GLOB.operations_positions,
			"Logistics" = GLOB.logistics_positions,
			"Military Police" = GLOB.police_positions,
			"Auxiliary" = GLOB.auxiliary_positions)

	if(maptype == "blacksite")
		positions = list(
			"NT Marines" = GLOB.ntmarines_positions)

	if(maptype == "kepler-ice")
		positions = list(
			"Solgov Personnel" = GLOB.solgov_positions,
			"NT Remnants" = GLOB.ntmarines_positions,
			"Syndicate Outpost" = GLOB.operations_positions)


