/datum/job/tegu/pilot_officer
	title = "Pilot Officer"
	department_head = list("Wing Commander")
	faction = "Station"
	total_positions = 1
	spawn_positions = 1
	supervisors = "the wing commander"
	selection_color = "#884488"
	exp_requirements = 60
	exp_type = EXP_TYPE_CREW
	maptype = "syndicate"

	outfit = /datum/outfit/job/pilot_officer

	access = list(ACCESS_ENGINE)
	minimal_access = list(ACCESS_ENGINE)
	paycheck = PAYCHECK_MEDIUM
	paycheck_department = ACCOUNT_ENG
	liver_traits = list(TRAIT_ENGINEER_METABOLISM)
	display_order = JOB_DISPLAY_ORDER_SCIENTIST
	bounty_types = CIV_JOB_ENG

/datum/outfit/job/pilot_officer
	name = "Pilot Officer"
	jobtype = /datum/job/tegu/pilot_officer

	id = /obj/item/card/id/black
	belt = /obj/item/storage/belt/utility/syndicate/sbc
	l_pocket = /obj/item/pda/engineering
	ears = /obj/item/radio/headset/subspace/void
	uniform = /obj/item/clothing/under/rank/engineering/void
	shoes = /obj/item/clothing/shoes/workboots
	l_hand = /obj/item/clothing/suit/space/hardsuit/voidtech

	backpack = /obj/item/storage/backpack/industrial
	satchel = /obj/item/storage/backpack/satchel/eng
	duffelbag = /obj/item/storage/backpack/duffelbag/engineering
	box = /obj/item/storage/box/survival/engineer
	pda_slot = ITEM_SLOT_LPOCKET
	backpack_contents = list(/obj/item/stack/rods/fifty)

	skillchips = list(/obj/item/skillchip/job/engineer)


//Spawn Point
/obj/effect/landmark/start/pilot_officer
	name = "Pilot Officer"
	icon_state = "pilot_officer"
