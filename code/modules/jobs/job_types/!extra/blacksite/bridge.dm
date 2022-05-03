/datum/job/bridge
	title = "NT Bridge Officer"
	faction = "Station"
	total_positions = 2
	spawn_positions = 2
	supervisors = "centcom commander"
	selection_color = "#10cc74"
	exp_type = EXP_TYPE_NTMARINE
	maptype = "blacksite"

	outfit = /datum/outfit/job/bridge

	access = list(ACCESS_HEADS)
	minimal_access = list(ACCESS_HEADS)
	paycheck = PAYCHECK_CENTCOM
	paycheck_department = ACCOUNT_SEC
	display_order = JOB_DISPLAY_ORDER_COMMAND

/datum/outfit/job/bridge
	name = "NT Bridge Officer"
	jobtype = /datum/job/bridge

	uniform = /obj/item/clothing/under/rank/centcom/intern
	suit = /obj/item/clothing/suit/ntcommand/bridge
	shoes = /obj/item/clothing/shoes/combat/swat
	gloves = /obj/item/clothing/gloves/color/black
	ears = /obj/item/radio/headset/headset_cent/alt
	back = /obj/item/storage/backpack/satchel/leather
	accessory = /obj/item/clothing/accessory/medal/rank/nt/lt
	id = /obj/item/card/id/centcom
