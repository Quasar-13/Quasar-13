/datum/job/ntmarine
	title = "NT Marine"
	faction = "Station"
	total_positions = 15
	spawn_positions = 15
	supervisors = "space law and the ERT Commander"
	selection_color = "#134975"
	exp_type = EXP_TYPE_MEDIUM
	maptype = "blacksite"

	outfit = /datum/outfit/job/ntmarine

	access = list()
	minimal_access = list()
	paycheck = PAYCHECK_CENTCOM
	paycheck_department = ACCOUNT_SEC
	display_order = JOB_DISPLAY_ORDER_WARDEN


/datum/outfit/job/ntmarine
	name = "NT Marine"
	jobtype = /datum/job/ntmarine

	mask = /obj/item/clothing/mask/gas
	uniform = /obj/item/clothing/under/plasmaman/centcom_intern
	shoes = /obj/item/clothing/shoes/combat/swat
	gloves = /obj/item/clothing/gloves/black
	ears = /obj/item/radio/headset/headset_cent/alt
	id = /obj/item/card/id
	suit = /obj/item/clothing/suit/armor/vest
	belt = /obj/item/storage/belt/military/assault
	backpack_contents = list(/obj/item/choice_beacon/marine=1)

