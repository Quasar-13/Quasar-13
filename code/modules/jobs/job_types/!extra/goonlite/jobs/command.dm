/datum/job/captain/goon
	title = "Captain"
	selection_color = "#006928"
	maptype = "goonlite"
	mapexclude = list()

	outfit = /datum/outfit/job/captain/nt

//Uses NT Captain outfit, this is a good idea I swear
/datum/job/captain/goon
	title = "Captain"
	selection_color = "#006928"
	maptype = "goonlite"
	mapexclude = list()

	outfit = /datum/outfit/job/hop/goon



//gween hop
/datum/job/hop/goon
	title = "Head Of Personnel"
	selection_color = "#10cc74"
	maptype = "goonlite"
	mapexclude = list()

	outfit = /datum/outfit/job/hop/goon




//Hos is back and a pain still.
/datum/job/hos/goon
	title = "Head Of Security"
	maptype = "goonlite"
	mapexclude = list()
	trusted_only = TRUE		//This job is whitelisted.That's how it is on goon

	outfit = /datum/outfit/job/hos/goonlite

	//This actually has to be set because they have goon armory access, and ID modification
	access = list(ACCESS_SECURITY, ACCESS_GOONARMORY, ACCESS_GOONHOS, ACCESS_SEC_DOORS, ACCESS_BRIG, ACCESS_CHANGE_IDS, ACCESS_ARMORY, ACCESS_COURT, ACCESS_MECH_SECURITY,
					ACCESS_FORENSICS_LOCKERS, ACCESS_MORGUE, ACCESS_MAINT_TUNNELS, ACCESS_ALL_PERSONAL_LOCKERS, ACCESS_AUX_BASE, ACCESS_WEAPONS,
					ACCESS_RESEARCH, ACCESS_ENGINE, ACCESS_MINING, ACCESS_MEDICAL, ACCESS_CONSTRUCTION, ACCESS_MAILSORTING, ACCESS_EVA, ACCESS_TELEPORTER,
					ACCESS_HEADS, ACCESS_HOS, ACCESS_RC_ANNOUNCE, ACCESS_KEYCARD_AUTH, ACCESS_GATEWAY, ACCESS_MAINT_TUNNELS, ACCESS_MINERAL_STOREROOM)
	minimal_access = list(ACCESS_SECURITY, ACCESS_GOONARMORY, ACCESS_GOONHOS, ACCESS_SEC_DOORS, ACCESS_BRIG, ACCESS_CHANGE_IDS, ACCESS_ARMORY, ACCESS_COURT, ACCESS_MECH_SECURITY,
					ACCESS_FORENSICS_LOCKERS, ACCESS_MORGUE, ACCESS_MAINT_TUNNELS, ACCESS_ALL_PERSONAL_LOCKERS, ACCESS_AUX_BASE, ACCESS_WEAPONS,
					ACCESS_RESEARCH, ACCESS_ENGINE, ACCESS_MINING, ACCESS_MEDICAL, ACCESS_CONSTRUCTION, ACCESS_MAILSORTING, ACCESS_EVA,
					ACCESS_HEADS, ACCESS_HOS, ACCESS_RC_ANNOUNCE, ACCESS_KEYCARD_AUTH, ACCESS_GATEWAY, ACCESS_MAINT_TUNNELS, ACCESS_MINERAL_STOREROOM)


//They get command access and I don't really want to make a new file
/datum/job/elitesec
	title = "Nanotrasen Security Operative"
	auto_deadmin_role_flags = DEADMIN_POSITION_SECURITY
	department_head = list("Captain")
	head_announce = list(RADIO_CHANNEL_SECURITY)
	faction = "Station"
	total_positions = 1
	spawn_positions = 1
	supervisors = "the captain"
	selection_color = "#ffdddd"
	exp_type = EXP_TYPE_CREW
	exp_type_department = EXP_TYPE_SECURITY
	maptype = "goonlite"
	trusted_only = TRUE

	outfit = /datum/outfit/job/elitesec

	mind_traits = list(TRAIT_DONUT_LOVER)
	liver_traits = list(TRAIT_LAW_ENFORCEMENT_METABOLISM, TRAIT_ROYAL_METABOLISM)

	access = list(ACCESS_SECURITY, ACCESS_GOONARMORY, ACCESS_SEC_DOORS, ACCESS_BRIG, ACCESS_CHANGE_IDS, ACCESS_ARMORY, ACCESS_COURT, ACCESS_MECH_SECURITY,
					ACCESS_FORENSICS_LOCKERS, ACCESS_MORGUE, ACCESS_MAINT_TUNNELS, ACCESS_ALL_PERSONAL_LOCKERS, ACCESS_AUX_BASE, ACCESS_WEAPONS,
					ACCESS_RESEARCH, ACCESS_ENGINE, ACCESS_MINING, ACCESS_MEDICAL, ACCESS_CONSTRUCTION, ACCESS_MAILSORTING, ACCESS_EVA, ACCESS_TELEPORTER,
					ACCESS_HEADS, ACCESS_RC_ANNOUNCE, ACCESS_KEYCARD_AUTH, ACCESS_GATEWAY, ACCESS_MAINT_TUNNELS, ACCESS_MINERAL_STOREROOM)
	minimal_access = list(ACCESS_SECURITY, ACCESS_GOONARMORY, ACCESS_SEC_DOORS, ACCESS_BRIG, ACCESS_CHANGE_IDS, ACCESS_ARMORY, ACCESS_COURT, ACCESS_MECH_SECURITY,
					ACCESS_FORENSICS_LOCKERS, ACCESS_MORGUE, ACCESS_MAINT_TUNNELS, ACCESS_ALL_PERSONAL_LOCKERS, ACCESS_AUX_BASE, ACCESS_WEAPONS,
					ACCESS_RESEARCH, ACCESS_ENGINE, ACCESS_MINING, ACCESS_MEDICAL, ACCESS_CONSTRUCTION, ACCESS_MAILSORTING, ACCESS_EVA,
					ACCESS_HEADS, ACCESS_HOS, ACCESS_RC_ANNOUNCE, ACCESS_KEYCARD_AUTH, ACCESS_GATEWAY, ACCESS_MAINT_TUNNELS, ACCESS_MINERAL_STOREROOM)
	paycheck = PAYCHECK_COMMAND
	paycheck_department = ACCOUNT_SEC

	display_order = JOB_DISPLAY_ORDER_WARDEN
	bounty_types = CIV_JOB_SEC



//Comms Officer, my beloved
/datum/job/commsofficer
	title = "Communication Officer"
	auto_deadmin_role_flags = DEADMIN_POSITION_HEAD
	department_head = list("Captain")
	head_announce = list(RADIO_CHANNEL_COMMAND)
	faction = "Station"
	total_positions = 1
	spawn_positions = 1
	supervisors = "the captain"
	selection_color = "#aaaadd"
	req_admin_notify = 1
	minimal_player_age = 10
	exp_requirements = 180
	exp_type = EXP_TYPE_SERVICE
	exp_type_department = EXP_TYPE_SERVICE
	maptype = "goonlite"

	outfit = /datum/outfit/job/commsofficer

	access = list(ACCESS_SECURITY, ACCESS_WEAPONS, ACCESS_MAINT_TUNNELS, ACCESS_RESEARCH, ACCESS_COMMSOFFICER,
						ACCESS_MEDICAL, ACCESS_ENGINE, ACCESS_AI_UPLOAD, ACCESS_EVA, ACCESS_HEADS,
						ACCESS_MECH_MINING, ACCESS_MECH_ENGINE, ACCESS_MECH_SCIENCE, ACCESS_MECH_SECURITY, ACCESS_MECH_MEDICAL,
						ACCESS_RC_ANNOUNCE, ACCESS_KEYCARD_AUTH, ACCESS_GATEWAY, ACCESS_MINERAL_STOREROOM, ACCESS_AUX_BASE, ACCESS_TELEPORTER)
	minimal_access = list(ACCESS_SECURITY, ACCESS_WEAPONS, ACCESS_MAINT_TUNNELS, ACCESS_RESEARCH, ACCESS_COMMSOFFICER,
						ACCESS_MEDICAL, ACCESS_ENGINE, ACCESS_AI_UPLOAD, ACCESS_EVA, ACCESS_HEADS,
						ACCESS_MECH_MINING, ACCESS_MECH_ENGINE, ACCESS_MECH_SCIENCE, ACCESS_MECH_SECURITY, ACCESS_MECH_MEDICAL,
						ACCESS_RC_ANNOUNCE, ACCESS_KEYCARD_AUTH, ACCESS_GATEWAY, ACCESS_MINERAL_STOREROOM, ACCESS_AUX_BASE, ACCESS_TELEPORTER)
	paycheck = PAYCHECK_COMMAND
	paycheck_department = ACCOUNT_SRV
	bounty_types = CIV_JOB_RANDOM

	liver_traits = list(TRAIT_ROYAL_METABOLISM)

	display_order = JOB_DISPLAY_ORDER_COMMAND
