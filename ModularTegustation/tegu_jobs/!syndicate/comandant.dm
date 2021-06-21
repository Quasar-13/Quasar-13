/datum/job/tegu/commandant
	title = "Commandant"
	department_head = list("Cybersun Command")
	faction = "Station"
	total_positions = 1
	spawn_positions = 1
	supervisors = "space law"
	selection_color = "#ab1f18"
	exp_requirements = 60
	exp_type = EXP_TYPE_SYNDICATE
	maptype = "syndicate"
	trusted_only = TRUE

	outfit = /datum/outfit/job/commandant

	access = list(ACCESS_SYNDICATE, ACCESS_SYNDICATE_LEADER, ACCESS_CAPTAIN)
	minimal_access = list(ACCESS_SYNDICATE, ACCESS_SYNDICATE_LEADER, ACCESS_CAPTAIN)
	paycheck = PAYCHECK_COMMAND
	paycheck_department = ACCOUNT_ENG

	liver_traits = list(TRAIT_ENGINEER_METABOLISM)

	display_order = JOB_DISPLAY_ORDER_CAPTAIN
	bounty_types = CIV_JOB_ENG

/datum/outfit/job/commandant
	name = "Commandant"
	jobtype = /datum/job/tegu/commandant
	belt = null

	id = /obj/item/card/id/black
	l_pocket = /obj/item/melee/transforming/energy/sword/saber/red
	r_pocket = /obj/item/melee/classic_baton/telescopic
	suit = /obj/item/clothing/suit/armor/vest/capcarapace/syndicate
	suit_store = /obj/item/gun/ballistic/revolver/mateba
	head = /obj/item/clothing/head/hos/syndicate
	gloves = /obj/item/clothing/gloves/color/black
	mask = /obj/item/clothing/mask/cigarette/cigar/havana
	glasses = /obj/item/clothing/glasses/hud/eyepatch/admiral
	uniform = /obj/item/clothing/under/syndicate


//Spawn Point
/obj/effect/landmark/start/commandant
	name = "Commandant"
	icon_state = "Commandant"
