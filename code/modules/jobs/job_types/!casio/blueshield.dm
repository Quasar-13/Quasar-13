/datum/job/blueshield
	title = "Blueshield"
	auto_deadmin_role_flags = DEADMIN_POSITION_SECURITY
	faction = "Station"
	total_positions = 1
	spawn_positions = 1
	supervisors = "the command staff"
	selection_color = "#bbbbee"
	exp_type = EXP_TYPE_CREW
	exp_type_department = EXP_TYPE_COMMAND
	maptype = "casio"
	trusted_only = TRUE

	outfit = /datum/outfit/job/blueshield


	access = list(ACCESS_SECURITY, ACCESS_BLUESHIELD, ACCESS_SEC_DOORS, ACCESS_BRIG, ACCESS_WEAPONS, ACCESS_MECH_SECURITY,
					ACCESS_MORGUE, ACCESS_MAINT_TUNNELS,ACCESS_AUX_BASE, ACCESS_CARGO,
					ACCESS_RESEARCH, ACCESS_ENGINE, ACCESS_MINING, ACCESS_MEDICAL, ACCESS_CONSTRUCTION, ACCESS_MAILSORTING, ACCESS_EVA, ACCESS_TELEPORTER,
					ACCESS_HEADS, ACCESS_MAINT_TUNNELS, ACCESS_MINERAL_STOREROOM)
	minimal_access = list(ACCESS_SECURITY, ACCESS_BLUESHIELD, ACCESS_SEC_DOORS, ACCESS_BRIG, ACCESS_WEAPONS, ACCESS_MECH_SECURITY,
					ACCESS_MORGUE, ACCESS_MAINT_TUNNELS,ACCESS_AUX_BASE, ACCESS_CARGO,
					ACCESS_RESEARCH, ACCESS_ENGINE, ACCESS_MINING, ACCESS_MEDICAL, ACCESS_CONSTRUCTION, ACCESS_MAILSORTING, ACCESS_EVA, ACCESS_TELEPORTER,
					ACCESS_HEADS, ACCESS_MAINT_TUNNELS, ACCESS_MINERAL_STOREROOM)
	paycheck = PAYCHECK_COMMAND
	paycheck_department = ACCOUNT_SEC

	liver_traits = list(TRAIT_PRETENDER_ROYAL_METABOLISM)
	display_order = JOB_DISPLAY_ORDER_SECRETARY


/datum/outfit/job/blueshield
	name = "Blueshield"
	jobtype = /datum/job/blueshield

	id = /obj/item/card/id/silver
	belt = /obj/item/pda/blueshield
	glasses = /obj/item/clothing/glasses/sunglasses
	ears = /obj/item/radio/headset/headset_com
	gloves = /obj/item/clothing/gloves/color/black
	uniform = /obj/item/clothing/under/misc/blueshield
	suit = /obj/item/clothing/suit/armor/blueshield
	head = /obj/item/clothing/head/beret/command
	shoes = /obj/item/clothing/shoes/sneakers/brown
	suit_store = /obj/item/gun/ballistic/automatic/laser/burst
	backpack_contents = list(/obj/item/ammo_box/magazine/recharge, /obj/item/ammo_box/magazine/recharge)

	skillchips = list(/obj/item/skillchip/disk_verifier)

	backpack = /obj/item/storage/backpack/captain
	satchel = /obj/item/storage/backpack/satchel/cap
	duffelbag = /obj/item/storage/backpack/duffelbag/captain

	implants = list(/obj/item/implant/mindshield)


/obj/effect/landmark/start/blueshield
	name = "Blueshield"
	icon_state = "Detective"

/obj/effect/landmark/start/detective/Initialize()
	. = ..()
	var/turf/T = get_turf(src)
	new /obj/effect/landmark/start/blueshield(T)
