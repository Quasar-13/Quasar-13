/datum/job/signal_tech
	title = "Signal Technician"
	department_head = list("Chief Engineer")
	faction = "Station"
	total_positions = 1
	spawn_positions = 1
	supervisors = "the chief engineer"
	selection_color = "#fff5cc"
	exp_requirements = 0
	exp_type = EXP_TYPE_CREW


	outfit = /datum/outfit/job/engineer/signaltechnician

	liver_traits = list(TRAIT_ENGINEER_METABOLISM)

	access = list(ACCESS_ENGINE, ACCESS_ENGINE_EQUIP, ACCESS_GATEWAY, ACCESS_TCOMSAT, ACCESS_MAINT_TUNNELS, ACCESS_MECH_ENGINE, ACCESS_AUX_BASE,
									ACCESS_EXTERNAL_AIRLOCKS, ACCESS_CONSTRUCTION, ACCESS_ATMOSPHERICS, ACCESS_MINERAL_STOREROOM)
	minimal_access = list(ACCESS_ENGINE, ACCESS_ENGINE_EQUIP, ACCESS_GATEWAY, ACCESS_TCOMSAT, ACCESS_MAINT_TUNNELS,ACCESS_EXTERNAL_AIRLOCKS, ACCESS_CONSTRUCTION, ACCESS_MINERAL_STOREROOM)
	paycheck = PAYCHECK_MEDIUM
	paycheck_department = ACCOUNT_ENG
	display_order = JOB_DISPLAY_ORDER_STATION_ENGINEER
	bounty_types = CIV_JOB_ENG



/datum/outfit/job/signal_tech
	name = "Signal Technician"
	jobtype = /datum/job/signal_tech

	belt = /obj/item/storage/belt/utility/full/engi
	l_pocket = /obj/item/pda/signal_tech
	ears = /obj/item/radio/headset/headset_eng
	uniform = /obj/item/clothing/under/rank/engineering/signal_tech
	suit = /obj/item/clothing/suit/hooded/wintercoat/engineering/tcomms
	gloves = /obj/item/clothing/gloves/color/black
	shoes = /obj/item/clothing/shoes/workboots

	backpack = /obj/item/storage/backpack/industrial
	satchel = /obj/item/storage/backpack/satchel/eng
	duffelbag = /obj/item/storage/backpack/duffelbag/engineering
	box = /obj/item/storage/box/survival/engineer
	pda_slot = ITEM_SLOT_LPOCKET
	backpack_contents = list()

/obj/effect/landmark/start/signal_tech
	name = "Signal Technician"
	icon_state = "Station Engineer"
