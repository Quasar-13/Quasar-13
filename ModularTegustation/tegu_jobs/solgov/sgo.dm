/datum/job/solgov
	title = "SolGov Representative"
	auto_deadmin_role_flags = DEADMIN_POSITION_HEAD
	department_head = list("Solgov")
	faction = "Station"
	total_positions = 1
	spawn_positions = 0
	supervisors = "the Captain, SolGov, and Space Law"
	special_notice = "Monitor the station and ensure the security team and command staff are abiding by space law. Report any misbehaviour to SolGov."
	selection_color = "#8482d5"
	minimal_player_age = 7
	exp_requirements = 180
	exp_type = EXP_TYPE_CREW
	exp_type_department = EXP_TYPE_SECURITY
	id_icon = 'ModularTegustation/Teguicons/cards.dmi'
	hud_icon = 'ModularTegustation/Teguicons/teguhud.dmi'

	outfit = /datum/outfit/job/solgov

	access = list(ACCESS_LAWYER, ACCESS_COURT, ACCESS_SECURITY, ACCESS_BRIG, ACCESS_SEC_DOORS, ACCESS_WEAPONS,
				ACCESS_HEADS, ACCESS_MAINT_TUNNELS, ACCESS_RC_ANNOUNCE, ACCESS_KEYCARD_AUTH, ACCESS_SOLGOV)


	minimal_access = list(ACCESS_LAWYER, ACCESS_COURT, ACCESS_SECURITY, ACCESS_BRIG, ACCESS_SEC_DOORS, ACCESS_WEAPONS,
						ACCESS_HEADS, ACCESS_MAINT_TUNNELS, ACCESS_RC_ANNOUNCE, ACCESS_KEYCARD_AUTH, ACCESS_SOLGOV)

	display_order = JOB_DISPLAY_ORDER_SOLGOV

	paycheck = PAYCHECK_COMMAND
	paycheck_department = ACCOUNT_COMMAND

/obj/effect/landmark/start/deputy
	name = "SolGov Representative"
	icon_state = "SolGov Representative"

/obj/item/kitchen/knife/letter_opener/solgov
    icon_state = "letter_opener_solgov"
    embedding = list("pain_mult" = 4, "embed_chance" = 65, "fall_chance" = 10, "ignore_throwspeed_threshold" = TRUE)
