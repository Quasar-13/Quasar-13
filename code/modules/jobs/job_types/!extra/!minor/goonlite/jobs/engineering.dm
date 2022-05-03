//Cargo Technician is now engineering.
//This fuckign job just WON'T subtype under cargo_tech/goon. Fucking hell if you can do this please do

/datum/job/cargo_goon
	title = "Cargo Technician"
	faction = "Station"
	department_head = list("Chief Engineer")
	supervisors = "the chief engineer"
	total_positions = 3
	spawn_positions = 2
	selection_color = "#fff5cc"
	maptype = "goonlite"

	outfit = /datum/outfit/job/cargo_tech/goon

	access = list(ACCESS_MAINT_TUNNELS, ACCESS_MAILSORTING, ACCESS_ENGINE, ACCESS_CARGO, ACCESS_QM, ACCESS_ATMOSPHERICS, ACCESS_MINING,
						ACCESS_MECH_MINING, ACCESS_MINING_STATION, ACCESS_MINERAL_STOREROOM)
	minimal_access = list(ACCESS_MAINT_TUNNELS, ACCESS_MAILSORTING, ACCESS_CARGO, ACCESS_MAILSORTING, ACCESS_MINERAL_STOREROOM, ACCESS_MECH_MINING)
	paycheck_department = ACCOUNT_ENG
	paycheck = PAYCHECK_EASY

	display_order = JOB_DISPLAY_ORDER_ATMOSPHERIC_TECHNICIAN



//Mining is now engineering
/datum/job/mining/goon
	title = "Miner"
	department_head = list("Chief Engineer")
	supervisors = "the chief engineer"
	selection_color = "#fff5cc"
	maptype = "goonlite"
	mapexclude = list()

	outfit = /datum/outfit/job/miner/goon

	access = list(ACCESS_MAINT_TUNNELS, ACCESS_MAILSORTING, ACCESS_CARGO, ACCESS_MINING, ACCESS_MECH_MINING, ACCESS_MINING_STATION,
						ACCESS_MINERAL_STOREROOM, ACCESS_AUX_BASE, ACCESS_ENGINE, ACCESS_ATMOSPHERICS)
	minimal_access = list(ACCESS_MINING, ACCESS_MECH_MINING, ACCESS_MINING_STATION, ACCESS_MAILSORTING, ACCESS_MINERAL_STOREROOM, ACCESS_AUX_BASE)
	paycheck_department = ACCOUNT_ENG



//Mechanic, my beloved
/datum/job/goonmechanic
	title = "Mechanic"
	department_head = list("Chief Engineer")
	faction = "Station"
	total_positions = 2
	spawn_positions = 2
	supervisors = "the chief engineer"
	selection_color = "#fff5cc"
	maptype = "goonlite"

	outfit = /datum/outfit/job/goonmechanic

	access = list(ACCESS_ENGINE, ACCESS_ENGINE_EQUIP, ACCESS_TECH_STORAGE, ACCESS_MAINT_TUNNELS, ACCESS_MECH_ENGINE, ACCESS_AUX_BASE,
									ACCESS_EXTERNAL_AIRLOCKS, ACCESS_CONSTRUCTION, ACCESS_ATMOSPHERICS, ACCESS_TCOMSAT, ACCESS_MINERAL_STOREROOM)
	minimal_access = list(ACCESS_ENGINE, ACCESS_ENGINE_EQUIP, ACCESS_TECH_STORAGE, ACCESS_MAINT_TUNNELS, ACCESS_MECH_ENGINE, ACCESS_AUX_BASE,
									ACCESS_EXTERNAL_AIRLOCKS, ACCESS_CONSTRUCTION, ACCESS_TCOMSAT, ACCESS_MINERAL_STOREROOM)
	paycheck = PAYCHECK_MEDIUM
	paycheck_department = ACCOUNT_ENG

	liver_traits = list(TRAIT_ENGINEER_METABOLISM)

	display_order = JOB_DISPLAY_ORDER_ATMOSPHERIC_TECHNICIAN
	bounty_types = CIV_JOB_ENG
