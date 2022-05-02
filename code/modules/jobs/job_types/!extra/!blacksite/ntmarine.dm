/datum/job/ntmarine
	title = "NT Marine"
	faction = "Station"
	total_positions = 15
	spawn_positions = 15
	supervisors = "the NT Squad Leader and the NT Commander"
	selection_color = "#134975"
	exp_type = EXP_TYPE_NTMARINE
	maptype = "blacksite"

	outfit = /datum/outfit/job/ntmarine

	access = list()
	minimal_access = list()
	paycheck = PAYCHECK_MEDIUM
	paycheck_department = ACCOUNT_SEC
	display_order = JOB_DISPLAY_ORDER_SECURITY_OFFICER

/datum/outfit/job/ntmarine
	name = "NT Marine"
	jobtype = /datum/job/ntmarine

	uniform = /obj/item/clothing/under/plasmaman/centcom_intern/marine
	shoes = /obj/item/clothing/shoes/combat/swat
	gloves = /obj/item/clothing/gloves/color/black
	ears = /obj/item/radio/headset/headset_cent/alt
	id = /obj/item/card/id
	glasses = /obj/item/clothing/glasses/sunglasses
	head = /obj/item/clothing/head/beret/black
	back = null
	belt = /obj/item/storage/belt/military/assault
	backpack_contents = list(
		/obj/item/choice_beacon/marine = 1,
	)
