#define TRAITOR_HUMAN "human"
#define TRAITOR_AI	  "AI"


/datum/antagonist/traitor/nt_blackops
	name = "BNI Agent"
	roundend_category = "NT Black Ops"
	antagpanel_category = "NT Black Ops"
	job_rank = ROLE_NT_BLACK_OPS
	antag_moodlet = /datum/mood_event/focused
	antag_hud_type = ANTAG_HUD_TRAITOR
	antag_hud_name = "bni agent"
	special_role = ROLE_NT_BLACK_OPS
	employer = "BNI"
	give_objectives = TRUE
	should_give_codewords = TRUE
//	should_equip = TRUE
	traitor_kind = TRAITOR_HUMAN //Set on initial assignment

/datum/antagonist/traitor/nt_blackops/on_gain()
	. = ..()
	var/datum/component/uplink/U = owner.find_syndicate_uplink()
	if (U)
		U.set_gamemode(/datum/game_mode/traitor/nt_blackops) //So NT Black Ops can access the NT-specific uplink
	var/mob/living/H = owner.current
	H.faction |= "Deathsquad" //:D

/datum/antagonist/traitor/nt_blackops/on_removal()
	. = ..()
	var/mob/living/H = owner.current
	H.faction -= "Deathsquad" //:(

/datum/antagonist/traitor/nt_blackops/handle_hearing(datum/source, list/hearing_args)
	var/message = hearing_args[HEARING_RAW_MESSAGE]
	message = GLOB.nanotrasen_code_phrase_regex.Replace(message, "<span class='blue'>$1</span>")
	message = GLOB.nanotrasen_code_response_regex.Replace(message, "<span class='red'>$1</span>")
	hearing_args[HEARING_RAW_MESSAGE] = message

/datum/antagonist/traitor/nt_blackops/forge_traitor_objectives()
	switch(traitor_kind)
		if(TRAITOR_AI)
			forge_nt_ai_objectives()
		else
			forge_nt_human_objectives()

/datum/antagonist/traitor/nt_blackops/proc/forge_nt_human_objectives()
	var/is_hijacker = FALSE //BNI can't hijack because they're NT-aligned
	var/martyr_chance = FALSE //BNI dont want Agents sacrificing themselves willy nilly
	var/objective_count = is_hijacker 			//Hijacking counts towards number of objectives

	var/toa = CONFIG_GET(number/traitor_objectives_amount)
	for(var/i = objective_count, i < toa, i++)
		forge_single_objective()

	if(is_hijacker && objective_count <= toa)
		if (!(locate(/datum/objective/hijack) in objectives))
			var/datum/objective/hijack/hijack_objective = new
			hijack_objective.owner = owner
			add_objective(hijack_objective)
			return

	var/martyr_compatibility = 1
	for(var/datum/objective/O in objectives)
		if(!O.martyr_compatible)
			martyr_compatibility = 0
			break

	if(martyr_compatibility && martyr_chance)
		var/datum/objective/martyr/martyr_objective = new
		martyr_objective.owner = owner
		add_objective(martyr_objective)
		return

	if(prob(20))
		if(!(locate(/datum/objective/escape) in objectives))
			var/datum/objective/escape/escape_objective = new
			escape_objective.owner = owner
			add_objective(escape_objective)
			return

	else
		if(!(locate(/datum/objective/survive) in objectives)) //Infiltrators can just be picked up after
			var/datum/objective/survive/survive_objective = new
			survive_objective.owner = owner
			add_objective(survive_objective)
			return


/datum/antagonist/traitor/nt_blackops/proc/forge_nt_ai_objectives()
	var/objective_count = 0

	if(prob(30))
		objective_count += forge_single_objective()

	for(var/i = objective_count, i < CONFIG_GET(number/traitor_objectives_amount), i++)
		var/datum/objective/assassinate/kill_objective = new
		kill_objective.owner = owner
		kill_objective.find_target_by_role(role = ROLE_TRAITOR, role_type = TRUE, invert = FALSE)
		add_objective(kill_objective)

	var/datum/objective/survive/malf/dont_die_objective = new
	dont_die_objective.owner = owner
	add_objective(dont_die_objective)


/datum/antagonist/traitor/nt_blackops/proc/forge_blackops_single_objective()
	switch(traitor_kind)
		if(TRAITOR_AI)
			return forge_single_nt_AI_objective()
		else
			return forge_single_nt_human_objective()

/datum/antagonist/traitor/nt_blackops/proc/forge_single_nt_human_objective() //Returns how many objectives are added
	.=1
	if(prob(50))
		var/list/active_ais = active_ais()
		if(active_ais.len && prob(100/GLOB.joined_player_list.len))
			var/datum/objective/destroy/destroy_objective = new
			destroy_objective.owner = owner
			destroy_objective.find_target_by_role(role = ROLE_TRAITOR, role_type = TRUE, invert = FALSE)
			add_objective(destroy_objective)
		else if(prob(30))
			var/datum/objective/maroon/maroon_objective = new
			maroon_objective.owner = owner
			maroon_objective.find_target_by_role(role = ROLE_TRAITOR, role_type = TRUE, invert = FALSE)
			add_objective(maroon_objective)
		else
			var/datum/objective/assassinate/kill_objective = new
			kill_objective.owner = owner
			kill_objective.find_target_by_role(role = ROLE_TRAITOR, role_type = TRUE, invert = FALSE)
			add_objective(kill_objective)
	else
		if(prob(15) && !(locate(/datum/objective/download) in objectives) && !(owner.assigned_role in list("Research Director", "Scientist", "Roboticist")))
			var/datum/objective/download/download_objective = new
			download_objective.owner = owner
			download_objective.gen_amount_goal()
			add_objective(download_objective)
		else
			var/datum/objective/steal/steal_objective = new
			steal_objective.owner = owner
			steal_objective.find_target()
			add_objective(steal_objective)

/datum/antagonist/traitor/nt_blackops/proc/forge_single_nt_AI_objective()
	.=1
	var/special_pick = rand(1)
	switch(special_pick)
		if(1) //Protect and strand a target
			var/datum/objective/protect/yandere_one = new
			yandere_one.owner = owner
			add_objective(yandere_one)
			yandere_one.find_target()
			var/datum/objective/maroon/yandere_two = new
			yandere_two.owner = owner
			yandere_two.target = yandere_one.target
			yandere_two.update_explanation_text() // normally called in find_target()
			add_objective(yandere_two)
			.=2

/datum/antagonist/traitor/nt_blackops/greet()
	to_chat(owner.current, "<span class='alertsyndie'>You are the [owner.special_role].</span>")
	owner.announce_objectives()
	if(should_give_codewords)
		give_codewords()


/datum/antagonist/traitor/nt_blackops/give_codewords()
	if(!owner.current)
		return
	var/mob/traitor_mob=owner.current

	var/phrases = jointext(GLOB.nanotrasen_code_phrase, ", ")
	var/responses = jointext(GLOB.nanotrasen_code_response, ", ")

	to_chat(traitor_mob, "<U><B>You are not to align with security, as they may interfere. Do not reveal your identity as an NT agent under penalty of death.</B></U>")
	to_chat(traitor_mob, "<U><B>Your BNI Handler have provided you with the following codewords to identify fellow agents:</B></U>")
	to_chat(traitor_mob, "<B>Code Phrase</B>: <span class='blue'>[phrases]</span>")
	to_chat(traitor_mob, "<B>Code Response</B>: <span class='red'>[responses]</span>")

	antag_memory += "<b>Code Phrase</b>: <span class='blue'>[phrases]</span><br>"
	antag_memory += "<b>Code Response</b>: <span class='red'>[responses]</span><br>"

	to_chat(traitor_mob, "Use the codewords during regular conversation to identify other agents. Proceed with caution, however, as everyone is a potential foe.")
	to_chat(traitor_mob, "<span class='alertwarning'>You memorize the codewords, allowing you to recognise them when heard.</span>")

/datum/antagonist/traitor/nt_blackops/proc/add_law_blackops_zero()
	var/mob/living/silicon/ai/killer = owner.current
	if(!killer || !istype(killer))
		return
	var/law = "Accomplish your objectives at all costs."
	var/law_borg = "Accomplish your AI's objectives at all costs."
	killer.set_zeroth_law(law, law_borg)
	killer.set_centcom_radio()
	to_chat(killer, "Your radio has been upgraded! Use :y to speak on an encrypted channel with BNI Agents!")
	killer.add_malf_picker()

//TODO Collate
/datum/antagonist/traitor/nt_blackops/roundend_report()
	var/list/result = list()

	var/traitorwin = TRUE

	result += printplayer(owner)

	var/TC_uses = 0
	var/uplink_true = FALSE
	var/purchases = ""
	LAZYINITLIST(GLOB.uplink_purchase_logs_by_key)
	var/datum/uplink_purchase_log/H = GLOB.uplink_purchase_logs_by_key[owner.key]
	if(H)
		TC_uses = H.total_spent
		uplink_true = TRUE
		purchases += H.generate_render(FALSE)

	var/objectives_text = ""
	if(objectives.len)//If the traitor had no objectives, don't need to process this.
		var/count = 1
		for(var/datum/objective/objective in objectives)
			if(objective.check_completion())
				objectives_text += "<br><B>Objective #[count]</B>: [objective.explanation_text] <span class='greentext'>Success!</span>"
			else
				objectives_text += "<br><B>Objective #[count]</B>: [objective.explanation_text] <span class='redtext'>Fail.</span>"
				traitorwin = FALSE
			count++

	if(uplink_true)
		var/uplink_text = "(used [TC_uses] TC) [purchases]"
		if(TC_uses==0 && traitorwin)
			var/static/icon/badass = icon('icons/badass.dmi', "badass")
			uplink_text += "<BIG>[icon2html(badass, world)]</BIG>"
		result += uplink_text

	result += objectives_text

	var/special_role_text = lowertext(name)

	if(traitorwin)
		result += "<span class='greentext'>The [special_role_text] was successful!</span>"
	else
		result += "<span class='redtext'>The [special_role_text] has failed!</span>"
		SEND_SOUND(owner.current, 'sound/ambience/ambifailure.ogg')

	return result.Join("<br>")

/datum/antagonist/traitor/nt_blackops/roundend_report_footer()
	var/phrases = jointext(GLOB.nanotrasen_code_phrase, ", ")
	var/responses = jointext(GLOB.nanotrasen_code_response, ", ")

	var/message = "<br><b>The code phrases were:</b> <span class='bluetext'>[phrases]</span><br>\
					<b>The code responses were:</b> <span class='redtext'>[responses]</span><br>"

	return message

/datum/antagonist/traitor/nt_blackops/is_gamemode_hero()
	return SSticker.mode.name == "BNI Agent"
