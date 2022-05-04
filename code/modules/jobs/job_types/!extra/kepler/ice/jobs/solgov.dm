//This refactor puts all the jobs in one file for easier use


//Bunker Crew, the Misc/Assistant job
/datum/job/solgov
	title = "Bunker Crew"
	maptype = "kepler-ice"
	faction = "Station"
	department_head = list("Commander")
	supervisors = "the commander"
	total_positions = 4
	spawn_positions = 4
	selection_color = "#b7edda"
	outfit = /datum/outfit/job/solgov

	access = list(ACCESS_ENGINE, ACCESS_ATMOSPHERICS)
	minimal_access = list(ACCESS_ENGINE, ACCESS_ATMOSPHERICS)

	paycheck = PAYCHECK_MEDIUM
	display_order = JOB_DISPLAY_ORDER_STATION_ENGINEER

	paycheck_department = ACCOUNT_ENG
	bounty_types = CIV_JOB_ENG


//Captain Equivalent
/datum/job/solgov/commander
	title = "Site Commander"
	department_head = list("Solgov Command")
	total_positions = 1
	spawn_positions = 1
	supervisors = "space law"
	selection_color = "#89c7b1"
	outfit = /datum/outfit/job/solgov/commander

	access = list(ACCESS_MEDICAL, ACCESS_ENGINE, ACCESS_CAPTAIN,  ACCESS_SECURITY, ACCESS_RND, ACCESS_ARMORY, ACCESS_HEADS, ACCESS_ATMOSPHERICS)
	minimal_access = list(ACCESS_MEDICAL, ACCESS_ENGINE, ACCESS_CAPTAIN,  ACCESS_SECURITY, ACCESS_RND, ACCESS_ARMORY, ACCESS_HEADS, ACCESS_ATMOSPHERICS)
	paycheck = PAYCHECK_COMMAND
	display_order = JOB_DISPLAY_ORDER_CAPTAIN



//HOP Equivalent
/datum/job/solgov/administrator
	title = "Site Administrator"
	total_positions = 1
	spawn_positions = 1
	selection_color = "#03fca5"

	access = list(ACCESS_MEDICAL, ACCESS_ENGINE, ACCESS_RND, ACCESS_HEADS, ACCESS_ATMOSPHERICS)
	minimal_access = list(ACCESS_MEDICAL, ACCESS_ENGINE, ACCESS_RND, ACCESS_HEADS, ACCESS_ATMOSPHERICS)
	paycheck = PAYCHECK_COMMAND
	display_order = JOB_DISPLAY_ORDER_COMMAND



//Engineer & Atmos tech
/datum/job/solgov/engineer
	title = "Engineer"
	total_positions = 3
	spawn_positions = 3

	access = list(ACCESS_ENGINE, ACCESS_ATMOSPHERICS)
	minimal_access = list(ACCESS_ENGINE, ACCESS_ATMOSPHERICS)

	paycheck = PAYCHECK_MEDIUM
	display_order = JOB_DISPLAY_ORDER_STATION_ENGINEER



//Doctor
/datum/job/solgov/doctor
	title = "Medical Technician"
	total_positions = 2
	spawn_positions = 2

	access = list(ACCESS_MEDICAL)
	minimal_access = list(ACCESS_MEDICAL)

	paycheck = PAYCHECK_HARD
	display_order = JOB_DISPLAY_ORDER_MEDICAL_DOCTOR



//Scientist
/datum/job/solgov/scientist
	title = "Lab Technician"
	total_positions = 3
	spawn_positions = 3

	access = list(ACCESS_RND)
	minimal_access = list(ACCESS_RND)

	paycheck = PAYCHECK_HARD
	display_order = JOB_DISPLAY_ORDER_SCIENTIST


//Soldier
/datum/job/solgov/soldier
	title = "Soldier"
	total_positions = 6
	spawn_positions = 6

	access = list(ACCESS_ARMORY)
	minimal_access = list(ACCESS_ARMORY)

	paycheck = PAYCHECK_HARD
	display_order = JOB_DISPLAY_ORDER_WARDEN
	outfit = /datum/outfit/job/solgov/soldier

//Security
/datum/job/solgov/security
	title = "Security"
	total_positions = 4
	spawn_positions = 4

	access = list(ACCESS_SECURITY)
	minimal_access = list(ACCESS_SECURITY)

	paycheck = PAYCHECK_MEDIUM
	display_order = JOB_DISPLAY_ORDER_SECURITY_OFFICER
	outfit = /datum/outfit/job/solgov/sec


