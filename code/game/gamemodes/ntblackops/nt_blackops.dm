
//Currently broken. Fixing next update

/datum/game_mode/traitor/nt_blackops
	name = "NT Black Ops"
	config_tag = "nt_blackops"
	report_type = "nt_blackops"
	false_report_weight = 0
	required_players = 10
	required_enemies = 3
	recommended_enemies = 8
	reroll_friendly = 0
	traitor_name = "Nanotrasen BNI Operative"
	antag_flag = ROLE_NT_BLACK_OPS

	traitors_possible = 5 //hard limit on traitors if scaling is turned off
	num_modifier = 4 // Four additional traitors
	antag_datum = /datum/antagonist/traitor/nt_blackops
/*
	announce_text = "There are Nanotrasen Internal Affairs Agents trying to kill each other!\n\
	<span class='danger'>IAA</span>: Eliminate your targets and protect yourself!\n\
	<span class='notice'>Crew</span>: Stop the IAA agents before they can cause too much mayhem."
*/

/datum/game_mode/traitor/nt_blackops/pre_setup()
	var/num_traitors = 1

	var/tsc = CONFIG_GET(number/traitor_scaling_coeff)
	if(tsc)
		num_traitors = max(1, min(round(num_players() / (tsc * 2)) + 2 + num_modifier, round(num_players() / tsc) + num_modifier))
	else
		num_traitors = max(1, min(num_players(), traitors_possible))

	for(var/ntop = 0, ntop < num_traitors, ntop++)
		if (!antag_candidates.len)
			break
		var/datum/mind/traitor = antag_pick(antag_candidates)
		pre_traitors += traitor
		traitor.special_role = traitor_name
		traitor.assigned_role = traitor_name
		log_game("[key_name(traitor)] has been selected as a [traitor_name]")
		antag_candidates.Remove(traitor)

	var/enough_tators = !traitors_required || pre_traitors.len > 0

	if(!enough_tators)
		setup_error = "Not enough [traitor_name] candidates"
		return FALSE
	else
		for(var/antag in pre_traitors)
			GLOB.pre_setup_antags += antag
		return TRUE

/datum/game_mode/traitor/nt_blackops/post_setup()
	for(var/datum/mind/traitor in pre_traitors)
		var/datum/antagonist/traitor/nt_blackops/new_antag = new antag_datum()
		traitor.add_antag_datum(new_antag)
		GLOB.pre_setup_antags -= traitor
	..()
	//We're not actually ready until all traitors are assigned.
	gamemode_ready = FALSE
	addtimer(VARSET_CALLBACK(src, gamemode_ready, TRUE), 101)
	return TRUE

//LATE JOIN
/datum/game_mode/traitor/nt_blackops/add_latejoin_traitor(datum/mind/character)
	var/datum/antagonist/traitor/nt_blackops/new_antag = new /datum/antagonist/traitor()
	character.add_antag_datum(new_antag)


/datum/game_mode/traitor/nt_blackops/generate_report()
	return "Nanotrasen denies any accusations of placing BNI agents onboard your station to eliminate inconvenient employees and conduct off-grid operations.  Any further accusations against CentCom for such \
			actions will be met with a conversation with an official internal affairs agent."

