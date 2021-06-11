/datum/job/tegu/commandant
//The Commander of the Vessel.

	title = "Commandant"
	auto_deadmin_role_flags = DEADMIN_POSITION_HEAD|DEADMIN_POSITION_SECURITY
	department_head = list("Syndicate High Command")
	faction = "Syndicate"
	total_positions = 1
	spawn_positions = 1
	supervisors = "Syndicate High Command and Space Law"
	selection_color = "#8482d5"
	req_admin_notify = 1
	minimal_player_age = 14
	exp_requirements = 180
	exp_type = EXP_TYPE_CREW
	exp_type_department = EXP_TYPE_COMMAND
	maptype = "syndicate"

	outfit = /datum/outfit/job/captain

	access = list() 			//See get_access()
	minimal_access = list() 	//See get_access()
	paycheck = PAYCHECK_COMMAND
	paycheck_department = ACCOUNT_SEC

	liver_traits = list(TRAIT_ROYAL_METABOLISM)

	display_order = JOB_DISPLAY_ORDER_CAPTAIN

/datum/job/commandant/get_access()
	return get_all_accesses()


/datum/job/commandant/announce(mob/living/carbon/human/H)
	..()
//	var/displayed_rank = H.mind.assigned_role // Tegu Edit: Alt Titles
//	if(H.client && H.client.prefs && H.client.prefs.alt_titles_preferences[H.mind.assigned_role])
//		displayed_rank = H.client.prefs.alt_titles_preferences[H.mind.assigned_role]
	SSticker.OnRoundstart(CALLBACK(GLOBAL_PROC, .proc/minor_announce, "[H.real_name] is now in command of the station!")) // Tegu Edit: Alt Titles end
//	SSticker.OnRoundstart(CALLBACK(GLOBAL_PROC, .proc/minor_announce, "[displayed_rank] [H.real_name] is on deck!")) // original

/datum/outfit/job/commandant
	name = "Commandant"
	jobtype = /datum/job/tegu/commandant

	id = /obj/item/card/id/gold
	glasses = /obj/item/clothing/glasses/sunglasses
	ears = /obj/item/radio/headset/heads/captain/alt
	gloves = /obj/item/clothing/gloves/color/black
	uniform =  /obj/item/clothing/under/rank/captain
	suit = /obj/item/clothing/suit/armor/vest/capcarapace/syndicate
	shoes = /obj/item/clothing/shoes/sneakers/brown
	head = /obj/item/clothing/head/caphat
	backpack_contents = list(/obj/item/melee/classic_baton/telescopic=1, /obj/item/station_charter=1)

	accessory = /obj/item/clothing/accessory/medal/gold/captain

	chameleon_extras = list(/obj/item/gun/energy/e_gun, /obj/item/stamp/captain)

