/datum/job/ntmedical
	title = "NT Medical Officer"
	faction = "Station"
	total_positions = 1
	spawn_positions = 1
	supervisors = "NT commander"
	selection_color = "#10cc74"
	exp_type = EXP_TYPE_NTMARINE
	maptype = "blacksite"

	outfit = /datum/outfit/job/ntmedical

	access = list(ACCESS_HEADS)
	minimal_access = list(ACCESS_HEADS)
	paycheck = PAYCHECK_CENTCOM
	paycheck_department = ACCOUNT_SEC
	display_order = JOB_DISPLAY_ORDER_SECRETARY

/datum/outfit/job/ntmedical
	name = "NT Medical Officer"
	jobtype = /datum/job/ntmedical

	uniform = /obj/item/clothing/under/rank/centcom/commander
	suit = /obj/item/clothing/suit/space/hardsuit/combatmedic
	shoes = /obj/item/clothing/shoes/combat/swat
	gloves = /obj/item/clothing/gloves/combat
	ears = /obj/item/radio/headset/headset_cent/alt
	belt = /obj/item/storage/belt/medical/surgeryfilled
	back = /obj/item/storage/backpack/satchel/leather
	id = /obj/item/card/id/centcom
	accessory = /obj/item/clothing/accessory/medal/rank/nt/lt
	backpack_contents = list(/obj/item/storage/box/survival/engineer=1,\
		/obj/item/melee/baton/loaded=1,\
		/obj/item/defibrillator/compact/combat/loaded/nanotrasen=1,\
		/obj/item/reagent_containers/hypospray/combat=1,\
		/obj/item/storage/firstaid/advanced=1,\
		/obj/item/gun/medbeam=1)
