//Only two jobs, no need to path these.

//The space hobo, to beat up sec officers
/datum/job/space_hobo
	title = "Vagabond"
	department_head = list("the voices in your head") // I HATE NT I HATE NT I HATE NT I HATE NT I HATE NT I HATE NT I HATE NT I HATE NT I HATE NT
	faction = "Station"
	total_positions = 2
	spawn_positions = 2
	supervisors = "the voices in your head" // I HATE JILL NESS I HATE JILL NESS I HATE JILL NESS I HATE JILL NESS I HATE JILL NESS
	selection_color = "#666666"
	maptype = "vagabond"

	outfit = /datum/outfit/job/space_hobo
	display_order = JOB_DISPLAY_ORDER_NOFACTION1

	access = list(ACCESS_MAINT_TUNNELS)
	minimal_access = list(ACCESS_MAINT_TUNNELS)
	bounty_types = CIV_JOB_RANDOM



//Brig Doctor, to balance out the shithead beating up sec officers
/datum/job/brigdoc
	title = "Brig Physician"
	auto_deadmin_role_flags = DEADMIN_POSITION_SECURITY
	department_head = list("Head of Security")
	faction = "Station"
	total_positions = 1
	spawn_positions = 1
	supervisors = "the head of security"
	selection_color = "#ffeeee"
	minimal_player_age = 7
	exp_requirements = 300
	exp_type = EXP_TYPE_CREW
	maptype = "vagabond"

	outfit = /datum/outfit/job/brigdoc

	access = list(ACCESS_SECURITY, ACCESS_SEC_DOORS, ACCESS_BRIG, ACCESS_MEDICAL, ACCESS_COURT, ACCESS_MECH_SECURITY, ACCESS_MAINT_TUNNELS, ACCESS_MORGUE, ACCESS_WEAPONS, ACCESS_FORENSICS_LOCKERS, ACCESS_MINERAL_STOREROOM)
	minimal_access = list(ACCESS_SECURITY, ACCESS_SEC_DOORS, ACCESS_BRIG, ACCESS_MEDICAL, ACCESS_MECH_SECURITY, ACCESS_COURT, ACCESS_WEAPONS, ACCESS_MINERAL_STOREROOM) // See /datum/job/warden/get_access()
	paycheck = PAYCHECK_HARD
	paycheck_department = ACCOUNT_SEC

	mind_traits = list(TRAIT_DONUT_LOVER)
	liver_traits = list(TRAIT_LAW_ENFORCEMENT_METABOLISM)

	display_order = JOB_DISPLAY_ORDER_SECURITY_OFFICER
	bounty_types = CIV_JOB_SEC

/datum/job/brigdoc/get_access()
	var/list/L = list()
	L = ..() | check_config_for_sec_maint()
	return L


