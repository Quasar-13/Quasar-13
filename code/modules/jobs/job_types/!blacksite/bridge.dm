/datum/job/bridge
	title = "NT Bridge Officer"
	faction = "Station"
	total_positions = 1
	spawn_positions = 1
	supervisors = "no one"
	selection_color = "#10cc74"
	exp_type = EXP_TYPE_CENTCOM
	maptype = "blacksite"

	outfit = /datum/outfit/job/bridge

	access = list()
	minimal_access = list()
	paycheck = PAYCHECK_CENTCOM
	paycheck_department = ACCOUNT_SEC
	display_order = JOB_DISPLAY_ORDER_SECRETARY

/datum/outfit/job/bridge
	name = "NT Bridge Officer"
	jobtype = /datum/job/bridge

	uniform = /obj/item/clothing/under/rank/centcom/intern
	suit = /obj/item/clothing/suit/ntcommand/bridge
	shoes = /obj/item/clothing/shoes/combat/swat
	gloves = /obj/item/clothing/gloves/color/black
	ears = /obj/item/radio/headset/heads/headset_cent
	back = /obj/item/storage/backpack/satchel/leather
	id = /obj/item/card/id/centcom