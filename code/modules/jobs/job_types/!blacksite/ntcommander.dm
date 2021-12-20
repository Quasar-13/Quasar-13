/datum/job/ntcommander
	title = "NT Commander"
	faction = "Station"
	total_positions = 1
	spawn_positions = 1
	supervisors = "no one"
	selection_color = "#006928"
	exp_type = EXP_TYPE_NTMARINE
	maptype = "blacksite"

	outfit = /datum/outfit/job/ntcommander

	access = list(ACCESS_HEADS, ACCESS_CAPTAIN)
	minimal_access = list(ACCESS_HEADS, ACCESS_CAPTAIN)
	paycheck = PAYCHECK_CENTCOMCOMMAND
	paycheck_department = ACCOUNT_SEC
	display_order = JOB_DISPLAY_ORDER_CAPTAIN

/datum/outfit/job/ntcommander
	name = "NT Commander"
	jobtype = /datum/job/ntcommander

	uniform = /obj/item/clothing/under/rank/centcom/commander
	suit = /obj/item/clothing/suit/ntcommand
	shoes = /obj/item/clothing/shoes/combat/swat
	gloves = /obj/item/clothing/gloves/tackler/combat/insulated
	ears = /obj/item/radio/headset/heads/headset_cent/commander
	glasses = /obj/item/clothing/glasses/eyepatch
	belt = /obj/item/gun/ballistic/revolver/mateba
	r_pocket = /obj/item/lighter
	l_pocket = /obj/item/ammo_box/a357
	back = /obj/item/storage/backpack/satchel/leather
	id = /obj/item/card/id/centcom
