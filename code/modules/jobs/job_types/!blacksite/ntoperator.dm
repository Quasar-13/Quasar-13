/datum/job/ntoperator
	title = "NT Vehicle Operator"
	faction = "Station"
	total_positions = 1
	spawn_positions = 1
	supervisors = "the NT Squad Leader and the NT Commander"
	selection_color = "#134975"
	exp_type = EXP_TYPE_NTMARINE
	maptype = "blacksite"

	outfit = /datum/outfit/job/ntoperator

	access = list(ACCESS_CENT_SPECOPS)
	minimal_access = list(ACCESS_CENT_SPECOPS)
	paycheck = PAYCHECK_MEDIUM
	paycheck_department = ACCOUNT_SEC
	display_order = JOB_DISPLAY_ORDER_DETECTIVE


/datum/outfit/job/ntoperator
	name = "NT Vehicle Operator"
	jobtype = /datum/job/ntoperator

	uniform = /obj/item/clothing/under/costume/mech_suit/blue
	shoes = /obj/item/clothing/shoes/combat/swat
	ears = /obj/item/radio/headset/headset_cent/alt
	id = /obj/item/card/id
	head = /obj/item/clothing/head/beret/black
	belt = null
	backpack_contents = list(
		/obj/item/choice_beacon/bungalow/mech/operator_mechs = 1,
	)

