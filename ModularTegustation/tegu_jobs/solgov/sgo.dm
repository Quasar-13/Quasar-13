/datum/job/solgov
	title = "SolGov Representative"
	auto_deadmin_role_flags = DEADMIN_POSITION_HEAD
	department_head = list("Solgov")
	faction = "Station"
	total_positions = 1
	spawn_positions = 1 //test
	supervisors = "the Captain, SolGov, and Space Law"
//	special_notice = "Monitor the station and ensure the security team and command staff are abiding by space law. Report any misbehaviour to SolGov."
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
	paycheck_department = ACCOUNT_CIV

/obj/effect/landmark/start/solgov
	name = "SolGov Representative"
	icon_state = "SolGov Representative"

/obj/item/kitchen/knife/letter_opener/solgov
    icon_state = "letter_opener_solgov"

/datum/outfit/job/solgov
	name = "SolGov Representative"
	jobtype = /datum/job/solgov

	id = /obj/item/card/id/silver
	head = /obj/item/clothing/head/solgov
	uniform = /obj/item/clothing/under/solgov/formal
	accessory = /obj/item/clothing/accessory/waistcoat/solgov
	suit = /obj/item/clothing/suit/toggle/solgov
	gloves = /obj/item/clothing/gloves/color/white
	shoes = /obj/item/clothing/shoes/laceup
	ears = /obj/item/radio/headset/solgov
	glasses = /obj/item/clothing/glasses/sunglasses
	belt = /obj/item/pda/solgov

	implants = list(/obj/item/implant/mindshield)

	backpack = /obj/item/storage/backpack/captain
	satchel = /obj/item/storage/backpack/satchel/cap
	duffelbag = /obj/item/storage/backpack/duffelbag/captain

	backpack_contents = list(
		/obj/item/kitchen/knife/letter_opener/solgov = 1
	)
