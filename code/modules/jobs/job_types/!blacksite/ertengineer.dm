/datum/job/ertengineer
	title = "ERT Engineer"
	faction = "Station"
	total_positions = 1
	spawn_positions = 1
	supervisors = "space law and the ERT Commander"
	selection_color = "#49f2a3"
	exp_type = EXP_TYPE_NTMARINE
	maptype = "blacksite"

	outfit = /datum/outfit/job/ertengineer

	access = list()
	minimal_access = list()
	paycheck = PAYCHECK_COMMAND
	paycheck_department = ACCOUNT_SEC
	display_order = JOB_DISPLAY_ORDER_BARTENDER


/datum/outfit/job/ertengineer
	name = "ERT Engineer"
	jobtype = /datum/job/ertengineer

	mask = /obj/item/clothing/mask/gas/sechailer
	uniform = /obj/item/clothing/under/rank/centcom/officer
	shoes = /obj/item/clothing/shoes/combat/swat
	gloves = /obj/item/clothing/gloves/combat
	ears = /obj/item/radio/headset/headset_cent/alt
	id = /obj/item/card/id/ert/engineer
	suit = /obj/item/clothing/suit/space/hardsuit/ert/engi
	glasses =  /obj/item/clothing/glasses/meson/engine
	back = /obj/item/storage/backpack/ert/engineer
	belt = /obj/item/storage/belt/utility/full
	l_pocket = /obj/item/rcd_ammo/large
	accessory = /obj/item/clothing/accessory/medal/rank/nt/ltj
	backpack_contents = list(
		/obj/item/storage/box/survival/engineer = 1,
		/obj/item/choice_beacon/bungalow/combat/ert = 1,
		/obj/item/melee/baton/loaded = 1,
		/obj/item/stack/sheet/mineral/sandbags = 50,
		/obj/item/choice_beacon/bungalow/turret = 1,
		/obj/item/construction/rcd/loaded=1,
	)


//Spawn Point
/obj/effect/landmark/start/ertengineer
	name = "ERT Engineer"
	icon_state = "Assistant"
