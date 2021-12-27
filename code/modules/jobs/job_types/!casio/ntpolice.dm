/datum/job/ntpolice
	title = "NT Military Police"
	auto_deadmin_role_flags = DEADMIN_POSITION_SECURITY
	department_head = list("NT Squad Leader")
	faction = "Station"
	total_positions = 2
	spawn_positions = 2
	supervisors = "the NT Squad Leader"
	selection_color = "#134975"
	exp_type = EXP_TYPE_NTMARINE
	maptype = "casio"

	outfit = /datum/outfit/job/ntpolice

	access = list(ACCESS_SECURITY, ACCESS_SEC_DOORS, ACCESS_BRIG, ACCESS_ARMORY, ACCESS_COURT, ACCESS_MECH_SECURITY, ACCESS_MAINT_TUNNELS, ACCESS_MORGUE, ACCESS_WEAPONS, ACCESS_FORENSICS_LOCKERS, ACCESS_MINERAL_STOREROOM)
	minimal_access = list(ACCESS_SECURITY, ACCESS_SEC_DOORS, ACCESS_BRIG, ACCESS_ARMORY, ACCESS_MECH_SECURITY, ACCESS_COURT, ACCESS_WEAPONS, ACCESS_MINERAL_STOREROOM) // See /datum/job/warden/get_access()
	paycheck = PAYCHECK_HARD
	paycheck_department = ACCOUNT_SEC

	mind_traits = list(TRAIT_DONUT_LOVER)
	liver_traits = list(TRAIT_LAW_ENFORCEMENT_METABOLISM)

	display_order = JOB_DISPLAY_ORDER_WARDEN
	bounty_types = CIV_JOB_SEC

/datum/outfit/job/ntpolice
	name = "NT Military Police"
	jobtype = /datum/job/ntpolice

	ears = /obj/item/radio/headset/headset_cent/alt
	uniform = /obj/item/clothing/under/plasmaman/centcom_intern/marine
	shoes = /obj/item/clothing/shoes/jackboots
	suit = /obj/item/clothing/suit/armor/bulletproof
	gloves = /obj/item/clothing/gloves/color/black
	head = /obj/item/clothing/head/beret/centcom
	glasses = /obj/item/clothing/glasses/hud/security/sunglasses
	r_pocket = /obj/item/assembly/flash/handheld
	l_pocket = /obj/item/restraints/handcuffs
	suit_store = /obj/item/gun/energy/disabler
	backpack_contents = list(/obj/item/melee/baton/loaded=1)

	backpack = /obj/item/storage/backpack/security
	satchel = /obj/item/storage/backpack/satchel/sec
	duffelbag = /obj/item/storage/backpack/duffelbag/sec
	box = /obj/item/storage/box/survival/security

	implants = list(/obj/item/implant/mindshield)

/obj/effect/landmark/start/ntpolice
	name = "NT Military Police"
	icon_state = "Security Officer"

/obj/effect/landmark/start/warden/Initialize()
	. = ..()
	var/turf/T = get_turf(src)
	new /obj/effect/landmark/start/ntpolice(T)
