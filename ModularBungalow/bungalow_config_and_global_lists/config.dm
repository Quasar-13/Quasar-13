/datum/config_entry/number/senior_timelock
	config_entry_value = 3000
	min_val = 0

// A proc that reads the list of people not allowed to play
/proc/load_minors()
	GLOB.banned_kids.Cut()
	var/list/lines = world.file2list("[global.config.directory]/kids.txt")
	for(var/line in lines)
		if(!length(line))
			continue
		if(findtextEx(line, "#", 1, 2))
			continue
		GLOB.banned_kids += line

//bungalow
/datum/config_entry/string/servercaption	// caption name (goes next to server name in BYOND hub)

/datum/config_entry/string/discordurl
	config_entry_value = "https://discord.gg/mt9azWXJUq"

/datum/config_entry/number/infiltrator_objectives_amount
	config_entry_value = 3
	min_val = 1

/datum/config_entry/number/infiltrator_faction_syndicate
	config_entry_value = 70
	min_val = 1

/datum/config_entry/number/infiltrator_faction_cybersun
	config_entry_value = 18
	min_val = 0

/datum/config_entry/number/infiltrator_faction_gorlex
	config_entry_value = 8
	min_val = 0

/datum/config_entry/number/infiltrator_faction_tiger
	config_entry_value = 2
	min_val = 0

/datum/config_entry/number/infiltrator_faction_mi
	config_entry_value = 2
	min_val = 0

/datum/config_entry/number/infiltrator_faction_lufr
	config_entry_value = 18// It won't appear for human infiltrators.
	min_val = 0

/datum/config_entry/flag/infiltrator_give_codespeak//If infils should get codespeak on start

/datum/config_entry/string/infiltrator_syndicate_message
	config_entry_value = "You are a syndicate infiltrator, and you are free to complete your objectives in any way you desire, as long as it helps to finish them, of course."

/datum/config_entry/string/infiltrator_cybersun_message
	config_entry_value = "As a member of our group remember: Your actions may cause unwanted attention, attempt to stay as stealthy as possible!"

/datum/config_entry/string/infiltrator_gorlex_message
	config_entry_value = "As a member of our group remember: While stealth is optional, you still have to finish your mission even if it means going with a fight!"

/datum/config_entry/string/infiltrator_tiger_message
	config_entry_value = "You are here to seize mass destruction and terror! Everyone is your enemy, even the other infiltrators, except for those Gorlex dudes. Rip and tear until it's done, operative!"

/datum/config_entry/string/infiltrator_mi_message
	config_entry_value = "Welcome operative. Formally - you don't exist and you are not here. \
	The only people that are allowed to know about your existance is high command of Cybersun. \
	You must complete your objectives and stay undiscovered AT ALL COST. Remember - every innocent victim will be \
	deducted from your pay-check."

/datum/config_entry/string/infiltrator_lufr_message
	config_entry_value = "You are here to get rid of filthy humans and sabotage their work. Avoid attacking non-human crew and low-ranking workers. \
	If there will be a chance - Kill every TerraGov or CentCom official, they have to pay for their crimes."

/// If server population is above this number - certain gamemodes can randomly allow all jobs to be antagonists
/datum/config_entry/number/no_job_restriction_pop
	config_entry_value = 5
	min_val = 0

/// Chance for certain antagonists to get their job restrictions removed; Will only work if population is above number above
/datum/config_entry/number/no_job_restriction_chance
	config_entry_value = 5
	min_val = 0

//Tombworld enabled flag
/datum/config_entry/flag/tombworld_enabled


//BUNGALOW DYNAMIC RULESETS//
//SYNDICATE INFILTRATORS
/datum/dynamic_ruleset/roundstart/infiltrator
	name = "Infiltrators"
	persistent = TRUE
	antag_flag = ROLE_INFILTRATOR
	antag_datum = /datum/antagonist/traitor/infiltrator
	minimum_required_age = 7
	restricted_roles = list("AI", "Cyborg", "Prisoner","Security Officer", "Warden", "Detective", "Head of Security", "Head of Personnel", "Captain")
	required_candidates = 1
	weight = 4
	cost = 10
	scaling_cost = 10
	requirements = list(10,10,10,10,10,10,10,10,10,10)
	antag_cap = list(1,1,1,1,2,2,2,2,3,3)

/datum/dynamic_ruleset/roundstart/infiltrator/pre_execute()
	. = ..()
	var/num_traitors = antag_cap[indice_pop] * (scaled_times + 1)
	for (var/i = 1 to num_traitors)
		var/mob/M = pick_n_take(candidates)
		assigned += M.mind
		M.mind.special_role = ROLE_INFILTRATOR
		M.mind.restricted_roles = restricted_roles
		GLOB.pre_setup_antags += M.mind
	return TRUE
