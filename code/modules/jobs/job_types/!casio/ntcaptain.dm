/datum/job/ntcaptain
	title = "NT Captain"
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
	maptype = "casio"

	outfit = /datum/outfit/job/ntcaptain


	access = list() 			//See get_access()
	minimal_access = list() 	//See get_access()
	paycheck = PAYCHECK_COMMAND
	paycheck_department = ACCOUNT_SEC

	liver_traits = list(TRAIT_ROYAL_METABOLISM)

	display_order = JOB_DISPLAY_ORDER_CAPTAIN

/datum/job/ntcaptain/get_access()
	return get_all_accesses()

/datum/job/ntcaptain/announce(mob/living/carbon/human/H)
	..()
//	var/displayed_rank = H.mind.assigned_role // Tegu Edit: Alt Titles
//	if(H.client && H.client.prefs && H.client.prefs.alt_titles_preferences[H.mind.assigned_role])
//		displayed_rank = H.client.prefs.alt_titles_preferences[H.mind.assigned_role]
	SSticker.OnRoundstart(CALLBACK(GLOBAL_PROC, .proc/minor_announce, "[H.real_name] is now in command of the station!")) // Tegu Edit: Alt Titles end
//	SSticker.OnRoundstart(CALLBACK(GLOBAL_PROC, .proc/minor_announce, "[displayed_rank] [H.real_name] is on deck!")) // original

/datum/outfit/job/ntcaptain
	name = "NT Captain"
	jobtype = /datum/job/ntcaptain

	id = /obj/item/card/id/gold
	belt = /obj/item/pda/captain
	glasses = /obj/item/clothing/glasses/sunglasses
	ears = /obj/item/radio/headset/heads/headset_cent/commander
	gloves = /obj/item/clothing/gloves/color/black
	uniform = /obj/item/clothing/under/rank/centcom/officer/captain
	suit = /obj/item/clothing/suit/armor/captain/casio
	head = /obj/item/clothing/head/beret/centcom
	shoes = /obj/item/clothing/shoes/sneakers/brown
	suit_store = /obj/item/gun/ballistic/revolver/mateba
	backpack_contents = list(/obj/item/melee/classic_baton/telescopic=1, /obj/item/station_charter=1)

	skillchips = list(/obj/item/skillchip/disk_verifier)

	backpack = /obj/item/storage/backpack/captain
	satchel = /obj/item/storage/backpack/satchel/cap
	duffelbag = /obj/item/storage/backpack/duffelbag/captain

	implants = list(/obj/item/implant/mindshield)
	accessory = /obj/item/clothing/accessory/medal/gold/captain

	chameleon_extras = list(/obj/item/gun/energy/e_gun, /obj/item/stamp/captain)

/obj/effect/landmark/start/ntcaptain
	name = "NT Captain"
	icon_state = "Security Officer"

/obj/effect/landmark/start/captain/Initialize()
	. = ..()
	var/turf/T = get_turf(src)
	new /obj/effect/landmark/start/ntcaptain(T)

