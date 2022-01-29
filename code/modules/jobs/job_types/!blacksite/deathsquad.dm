/datum/job/deathcommando
	title = "Death Commando"
	faction = "Station"
	total_positions = 1
	spawn_positions = 1
	supervisors = "space law and the NT Commander"
	selection_color = "#091a3d"
	exp_type = EXP_TYPE_NTMARINE
	maptype = "blacksite"

	outfit = /datum/outfit/job/deathcommando

	access = list(ACCESS_HEADS)
	minimal_access = list(ACCESS_HEADS)
	paycheck = PAYCHECK_COMMAND
	paycheck_department = ACCOUNT_SEC
	display_order = JOB_DISPLAY_ORDER_HEAD_OF_SECURITY

/datum/outfit/job/deathcommando
	name = "Death Commando"

	jobtype = /datum/job/deathcommando

	uniform = /obj/item/clothing/under/rank/centcom/commander
	suit = /obj/item/clothing/suit/space/hardsuit/deathsquad
	shoes = /obj/item/clothing/shoes/combat/swat
	gloves = /obj/item/clothing/gloves/tackler/combat/insulated
	mask = /obj/item/clothing/mask/gas/sechailer/swat
	glasses = /obj/item/clothing/glasses/hud/toggle/thermal
	back = /obj/item/storage/backpack/security
	l_pocket = /obj/item/melee/transforming/energy/sword/saber
	r_pocket = /obj/item/shield/energy
	ears = /obj/item/radio/headset/headset_cent/alt
	belt = /obj/item/gun/ballistic/revolver/mateba
	id = /obj/item/card/id/ert/deathsquad

	skillchips = list(/obj/item/skillchip/disk_verifier)
	accessory = /obj/item/clothing/accessory/medal/rank/nt/lcdr

	backpack_contents = list(
		/obj/item/storage/box/survival/engineer = 1,
		/obj/item/ammo_box/a357 = 1,
		/obj/item/choice_beacon/bungalow/combat/deathsquad = 1,
		/obj/item/flashlight = 1,
		/obj/item/tank/internals/emergency_oxygen/double = 1,
	)

/datum/outfit/centcom/death_commando/post_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	if(visualsOnly)
		return

	var/obj/item/radio/R = H.ears
	R.set_frequency(FREQ_CENTCOM)
	R.freqlock = TRUE
	var/obj/item/card/id/W = H.wear_id
	W.access = get_all_accesses()//They get full station access.
	W.access += get_centcom_access("Death Commando")//Let's add their alloted CentCom access.
	W.assignment = "Death Commando"
	W.registered_name = H.real_name
	W.update_label()
	..()

