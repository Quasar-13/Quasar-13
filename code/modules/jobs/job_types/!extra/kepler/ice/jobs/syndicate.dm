//Syndicate Outpost roles

//Outpost agent, general bums
/datum/job/outpost
	title = "Syndicate Agent"
	department_head = list("Outpost Leader")
	faction = "Station"
	total_positions = 2
	spawn_positions = 2
	supervisors = "the outpost leader"
	selection_color = "#ff3322"
	maptype = "kepler-ice"

	outfit = /datum/outfit/job/outpostagent

	access = list(ACCESS_SYNDICATE)
	minimal_access = list(ACCESS_SYNDICATE)
	paycheck = PAYCHECK_MEDIUM
	paycheck_department = ACCOUNT_SEC

	display_order = JOB_DISPLAY_ORDER_FACTION2_PVT



//Outpost Leader, The Faction head
/datum/job/outpost/leader
	title = "Outpost Leader"
	department_head = list("Syndicate Command")
	total_positions = 1
	spawn_positions = 1
	supervisors = "Syndicate Command"
	selection_color = "#ab1f18"

	access = list(ACCESS_SYNDICATE, ACCESS_SYNDICATE_LEADER)
	minimal_access = list(ACCESS_SYNDICATE, ACCESS_SYNDICATE_LEADER)
	paycheck = PAYCHECK_COMMAND

	display_order = JOB_DISPLAY_ORDER_FACTION2_LEADER


//The Explorer, a weapons specialist
/datum/job/outpost/explorer
	title = "Syndicate Explorer"
	total_positions = 1
	spawn_positions = 1

	access = list(ACCESS_SYNDICATE, ACCESS_SYNDICATE_LEADER)
	minimal_access = list(ACCESS_SYNDICATE, ACCESS_SYNDICATE_LEADER)
	paycheck = PAYCHECK_HARD

	display_order = JOB_DISPLAY_ORDER_FACTION2_LT	//still the second in command.


//The Doctor
/datum/job/outpost/medic
	title = "Syndicate Medic"
	total_positions = 1
	spawn_positions = 1

	paycheck = PAYCHECK_HARD
	display_order = JOB_DISPLAY_ORDER_FACTION2_DOC


//The Scientist
/datum/job/outpost/scientist
	title = "Syndicate Scientist"
	total_positions = 1
	spawn_positions = 1

	paycheck = PAYCHECK_HARD
	display_order = JOB_DISPLAY_ORDER_FACTION2_AUX1
