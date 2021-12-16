/datum/job/ntoperator
	title = "NT Vehicle Operator"
	faction = "Station"
	total_positions = 1
	spawn_positions = 1
	supervisors = "the NT Squad Leader and the NT Commander"
	selection_color = "#134975"
	exp_type = EXP_TYPE_NTMARINE
	maptype = "blacksite"

	outfit = /datum/outfit/job/ntoperator

	access = list()
	minimal_access = list()
	paycheck = PAYCHECK_MEDIUM
	paycheck_department = ACCOUNT_SEC
	display_order = JOB_DISPLAY_ORDER_DETECTIVE


/datum/outfit/job/ntoperator
	name = "NT Vehicle Operator"
	jobtype = /datum/job/ntoperator

	uniform = /obj/item/clothing/under/costume/mech_suit/blue
	shoes = /obj/item/clothing/shoes/combat/swat
	ears = /obj/item/radio/headset/headset_cent/alt
	id = /obj/item/card/id
	head = /obj/item/clothing/head/beret/black
	belt = null
	backpack_contents = list(/obj/item/choice_beacon/mech=1,
		/obj/item/storage/box/mechapilot =1)



/obj/item/storage/box/mechapilot
	name = "mech pilot kit"
	desc = "A large duffel bag containing all you need for armored support."

/obj/item/storage/box/mechapilot/PopulateContents()
		new /obj/item/mecha_parts/mecha_equipment/weapon/ballistic/lmg(src)
		new /obj/item/mecha_parts/mecha_equipment/weapon/energy/laser/heavy(src)
		new /obj/item/mecha_parts/mecha_equipment/weapon/ballistic/scattershot(src)
