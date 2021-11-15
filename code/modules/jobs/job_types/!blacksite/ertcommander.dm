/datum/job/ertcommander
	title = "ERT Commander"
	faction = "Station"
	total_positions = 1
	spawn_positions = 1
	supervisors = "space law and the Centcom Commander"
	selection_color = "#3d719c"
	exp_type = EXP_TYPE_CENTCOM
	maptype = "blacksite"

	outfit = /datum/outfit/job/ertcommander

	access = list()
	minimal_access = list()
	paycheck = PAYCHECK_CENTCOM
	paycheck_department = ACCOUNT_SEC
	display_order = JOB_DISPLAY_ORDER_HEAD_OF_PERSONNEL


/datum/outfit/job/ertcommander
	name = "ERT Commander"
	jobtype = /datum/job/ertcommander

	mask = /obj/item/clothing/mask/gas/sechailer
	uniform = /obj/item/clothing/under/rank/centcom/officer
	shoes = /obj/item/clothing/shoes/combat/swat
	gloves = /obj/item/clothing/gloves/combat
	ears = /obj/item/radio/headset/headset_cent/alt
	id = /obj/item/card/id/ert
	suit = /obj/item/clothing/suit/space/hardsuit/ert
	suit_store = /obj/item/gun/energy/laser/captain
	glasses = /obj/item/clothing/glasses/hud/security/sunglasses
	back = /obj/item/storage/backpack/ert
	belt = /obj/item/storage/belt/security/full
	backpack_contents = list(/obj/item/storage/box/survival/engineer=1,\
		/obj/item/melee/baton/loaded=1)
	l_pocket = /obj/item/switchblade


//Spawn Point
/obj/effect/landmark/start/ertcommander
	name = "ERT Commander"
	icon_state = "Assistant"

