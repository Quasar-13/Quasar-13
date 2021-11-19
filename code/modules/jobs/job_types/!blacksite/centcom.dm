/datum/job/centcom
	title = "NT Commander"
	faction = "Station"
	total_positions = 1
	spawn_positions = 1
	supervisors = "no one"
	selection_color = "#10cc74"
	exp_type = EXP_TYPE_ERT
	maptype = "blacksite"

	outfit = /datum/outfit/job/centcom

	access = list()
	minimal_access = list()
	paycheck = PAYCHECK_CENTCOM
	paycheck_department = ACCOUNT_SEC
	display_order = JOB_DISPLAY_ORDER_CAPTAIN

/datum/outfit/job/centcom
	name = "NT Commander"
	jobtype = /datum/job/centcom

	uniform = /obj/item/clothing/under/rank/centcom/commander
	suit = /obj/item/clothing/suit/armor/bulletproof
	shoes = /obj/item/clothing/shoes/combat/swat
	gloves = /obj/item/clothing/gloves/tackler/combat/insulated
	ears = /obj/item/radio/headset/heads/headset_cent/commander
	glasses = /obj/item/clothing/glasses/eyepatch
	head = /obj/item/clothing/head/centhat
	belt = /obj/item/gun/ballistic/revolver/mateba
	r_pocket = /obj/item/lighter
	l_pocket = /obj/item/ammo_box/a357
	back = /obj/item/storage/backpack/satchel/leather
	id = /obj/item/card/id/centcom
