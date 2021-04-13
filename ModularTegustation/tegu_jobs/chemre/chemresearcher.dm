/datum/job/tegu/chemre
	title = "Chemical Researcher"
	department_head = list("Research Director")
	faction = "Station"
	total_positions = 2
	spawn_positions = 2
	supervisors = "the research director, or the Chief medical officer, depending on which department you reside in."
	selection_color = "#fff5cc"
	exp_requirements = 60
	exp_type = EXP_TYPE_CREW

	outfit = /datum/outfit/job/chemre

	access = list(ACCESS_MEDICAL, ACCESS_CHEMISTRY, ACCESS_RESEARCH, ACCESS_MINERAL_STOREROOM, ACCESS_RND)
	minimal_access = list(ACCESS_MEDICAL, ACCESS_CHEMISTRY, ACCESS_RESEARCH, ACCESS_MINERAL_STOREROOM, ACCESS_RND)
	paycheck = PAYCHECK_MEDIUM
	paycheck_department = ACCOUNT_MED

	liver_traits = list(TRAIT_MEDICAL_METABOLISM)

	display_order = JOB_DISPLAY_ORDER_GENETICIST
	bounty_types = CIV_JOB_CHEM

/datum/outfit/job/chemre
	name = "Chemical Researcher"
	jobtype = /datum/job/tegu/chemre

	l_pocket = /obj/item/pda/geneticist
	ears = /obj/item/radio/headset/medsci
	uniform = /obj/item/clothing/under/rank/research/chem
	shoes = /obj/item/clothing/shoes/workboots
	suit = /obj/item/clothing/suit/space/hardsuit/voidtech

	backpack = /obj/item/storage/backpack/industrial
	satchel = /obj/item/storage/backpack/satchel/eng
	duffelbag = /obj/item/storage/backpack/duffelbag/engineering
	box = /obj/item/storage/box/survival/engineer
	pda_slot = ITEM_SLOT_LPOCKET
	backpack_contents = list(/obj/item/stack/rods/fifty)


//Spawn Point
/obj/effect/landmark/start/chemre
	name = "Chemical Researcher"
	icon_state = "Chemist"
