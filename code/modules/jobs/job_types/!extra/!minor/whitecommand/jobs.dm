//This one has to be copypasted because captain doesn't like anyone based off it for some fucking reason
/datum/job/captain_galaxy
	title = "Captain"
	auto_deadmin_role_flags = DEADMIN_POSITION_HEAD|DEADMIN_POSITION_SECURITY
	department_head = list("CentCom")
	faction = "Station"
	total_positions = 1
	spawn_positions = 1
	supervisors = "Nanotrasen officials and Space law"
	selection_color = "#eeeeee"
	req_admin_notify = 1
	minimal_player_age = 14
	exp_requirements = 180
	exp_type = EXP_TYPE_CREW
	exp_type_department = EXP_TYPE_COMMAND
	maptype = "galaxy"

	outfit = /datum/outfit/job/captain/galaxy

	access = list() 			//See get_access()
	minimal_access = list() 	//See get_access()
	paycheck = PAYCHECK_COMMAND
	paycheck_department = ACCOUNT_SEC

	liver_traits = list(TRAIT_ROYAL_METABOLISM)

	display_order = JOB_DISPLAY_ORDER_CAPTAIN

/datum/job/captain_galaxy/get_access()
	return get_all_accesses()


/datum/job/hop/galaxy
	title = "Head Of Personnel"
	selection_color = "#eeeeee"
	maptype = "galaxy"
	mapexclude = list()

	outfit = /datum/outfit/job/hop/galaxy

