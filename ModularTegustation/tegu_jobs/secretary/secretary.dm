/datum/job/tegu/secretary
	title = "Secretary"
	department_head = list("Captain")
	faction = "Station"
	total_positions = 1
	spawn_positions = 1
	supervisors = "the captain"
	selection_color = "#bbeeff"
	exp_requirements = 60
	exp_type = EXP_TYPE_CREW

	outfit = /datum/outfit/job/secretary

	access = list(ACCESS_HEADS, ACCESS_RC_ANNOUNCE, ACCESS_KEYCARD_AUTH)
	minimal_access = list(ACCESS_HEADS, ACCESS_RC_ANNOUNCE, ACCESS_KEYCARD_AUTH)
	paycheck = PAYCHECK_MEDIUM
	paycheck_department = ACCOUNT_SEC

	display_order = JOB_DISPLAY_ORDER_SECRETARY
	bounty_types = CIV_JOB_CIV

/datum/outfit/job/secretary
	name = "Secretary"
	jobtype = /datum/job/tegu/secretary

	id = /obj/item/card/id/silver
	l_pocket = /obj/item/pda/captain
	ears = /obj/item/radio/headset/headset_sct
	uniform = /obj/item/clothing/under/suit/black_really
	shoes = /obj/item/clothing/shoes/sneakers/black
	skillchips = list(/obj/item/skillchip/disk_verifier)
	pda_slot = ITEM_SLOT_LPOCKET
	backpack_contents = list(/obj/item/modular_computer/tablet/preset/advanced/command = 1)


//Comms beacon
/obj/item/choice_beacon/secretary
	name = "comms beacon"
	desc = "A beacon the secretary uses to send down a comms relay"

/obj/item/choice_beacon/secretary/generate_display_names()
	var/static/list/sec_item_list
	if(!sec_item_list)
		sec_item_list = list()
		var/list/templist = typesof(/obj/machinery/telecomms/relay/preset/telecomms) //we have to convert type = name to name = type, how lovely!
		for(var/V in templist)
			var/atom/A = V
			sec_item_list[initial(A.name)] = A
	return sec_item_list

/obj/item/choice_beacon/secretary/spawn_option(obj/choice,mob/living/M)
	new choice(get_turf(M))
	to_chat(M, "<span class='hear'>Thank you for your service. Captain.</span>")
