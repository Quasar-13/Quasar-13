/datum/job/ntsquadleader
	title = "NT Squad Leader"
	faction = "Station"
	total_positions = 1
	spawn_positions = 1
	supervisors = "space law and the NT Commander"
	selection_color = "#073052"
	exp_type = EXP_TYPE_NTMARINE
	maptype = "blacksite"

	outfit = /datum/outfit/job/ntsquadleader

	access = list(ACCESS_HEADS, ACCESS_CENT_GENERAL, ACCESS_CENT_SPECOPS)
	minimal_access = list(ACCESS_HEADS, ACCESS_CENT_GENERAL, ACCESS_CENT_SPECOPS)
	paycheck = PAYCHECK_COMMAND
	paycheck_department = ACCOUNT_SEC
	display_order = JOB_DISPLAY_ORDER_WARDEN

/datum/outfit/job/ntsquadleader
	name = "NT Squad Leader"
	jobtype = /datum/job/ntsquadleader

	uniform = /obj/item/clothing/under/plasmaman/centcom_intern/marine
	shoes = /obj/item/clothing/shoes/combat/swat
	gloves = /obj/item/clothing/gloves/color/black
	ears = /obj/item/radio/headset/heads/headset_cent/commander
	id = /obj/item/card/id
	head = /obj/item/clothing/head/beret/command
	suit = /obj/item/clothing/suit/armor/vest/ntmarine/command
	belt = /obj/item/storage/belt/military/assault
	backpack_contents = list(/obj/item/choice_beacon/marine=1)

