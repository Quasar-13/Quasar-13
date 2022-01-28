/datum/job/gooncaptain
	title = "Captain"
	auto_deadmin_role_flags = DEADMIN_POSITION_HEAD|DEADMIN_POSITION_SECURITY
	department_head = list("CentCom")
	faction = "Station"
	total_positions = 1
	spawn_positions = 1
	supervisors = "no one"
	selection_color = "#006928"
	req_admin_notify = 1
	minimal_player_age = 14
	exp_requirements = 180
	exp_type = EXP_TYPE_CREW
	exp_type_department = EXP_TYPE_COMMAND
	maptype = "goonlite"

	//Uses NT Captain outfit, this is a good idea I swear
	outfit = /datum/outfit/job/captain/nt


	access = list() 			//See get_access()
	minimal_access = list() 	//See get_access()
	paycheck = PAYCHECK_COMMAND
	paycheck_department = ACCOUNT_SEC

	liver_traits = list(TRAIT_ROYAL_METABOLISM)

	display_order = JOB_DISPLAY_ORDER_CAPTAIN

/datum/job/gooncaptain/get_access()
	return get_all_accesses()

/datum/job/gooncaptain/announce(mob/living/carbon/human/H)
	..()
//	var/displayed_rank = H.mind.assigned_role // Tegu Edit: Alt Titles
//	if(H.client && H.client.prefs && H.client.prefs.alt_titles_preferences[H.mind.assigned_role])
//		displayed_rank = H.client.prefs.alt_titles_preferences[H.mind.assigned_role]
	SSticker.OnRoundstart(CALLBACK(GLOBAL_PROC, .proc/minor_announce, "[H.real_name] is now in command of the station!")) // Tegu Edit: Alt Titles end
//	SSticker.OnRoundstart(CALLBACK(GLOBAL_PROC, .proc/minor_announce, "[displayed_rank] [H.real_name] is on deck!")) // original
