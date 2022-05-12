//Command
/datum/outfit/job/hop/goon
	name = "Head of Personnel (Goon)"
	jobtype = /datum/job/hop/goon

	uniform = /obj/item/clothing/under/rank/civilian/head_of_personnel/suit
	head = null
	chameleon_extras = list(/obj/item/gun/energy/e_gun, /obj/item/stamp/hop)

/datum/outfit/job/hos/goonlite
	name = "Head of Security (Goon)"
	jobtype = /datum/job/hos/goon

	uniform = /obj/item/clothing/under/rank/security/head_of_security/alt
	suit = /obj/item/clothing/suit/armor/hos
	head = /obj/item/clothing/head/hos
	neck = /obj/item/clothing/neck/cloak/trenchcloak
	chameleon_extras = list(/obj/item/gun/energy/e_gun/hos, /obj/item/stamp/hos)

/datum/outfit/job/commsofficer
	name = "Communications Officer"
	jobtype = /datum/job/commsofficer

	id = /obj/item/card/id/silver
	belt = /obj/item/pda/secretary
	ears = /obj/item/radio/headset/heads/headset_comms
	uniform = /obj/item/clothing/under/rank/civilian/communications_officer
	shoes = /obj/item/clothing/shoes/laceup
	backpack_contents = list(/obj/item/melee/classic_baton/telescopic=1, /obj/item/modular_computer/tablet/preset/advanced/command = 1)




//Engineering
/datum/outfit/job/cargo_tech/goon
	name = "Cargo Technician (Goon)"
	jobtype = /datum/job/cargo_goon
	ears = /obj/item/radio/headset/headset_eng


/datum/outfit/job/miner/goon
	name = "Miner (Goon)"
	jobtype = /datum/job/mining/goon

	ears = /obj/item/radio/headset/headset_eng
	uniform = /obj/item/clothing/under/rank/cargo/miner
	backpack_contents = list(
		/obj/item/flashlight/seclite=1,\
		/obj/item/kitchen/knife/combat/survival=1,\
		/obj/item/stack/marker_beacon/ten=1)


/datum/outfit/job/goonmechanic
	name = "Mechanic (Goon)"
	jobtype = /datum/job/goonmechanic

	belt = /obj/item/storage/belt/utility/full/engi
	l_pocket = /obj/item/pda/engineering
	ears = /obj/item/radio/headset/headset_eng
	uniform = /obj/item/clothing/under/rank/engineering/mech
	shoes = /obj/item/clothing/shoes/workboots
	head = /obj/item/clothing/head/soft/red
	r_pocket = /obj/item/t_scanner

	backpack = /obj/item/storage/backpack/industrial
	satchel = /obj/item/storage/backpack/satchel/eng
	duffelbag = /obj/item/storage/backpack/duffelbag/engineering
	box = /obj/item/storage/box/survival/engineer
	pda_slot = ITEM_SLOT_LPOCKET
	backpack_contents = list(/obj/item/modular_computer/tablet/preset/advanced=1)

	skillchips = list(/obj/item/skillchip/job/engineer)




//Security
/datum/outfit/job/elitesec
	name = "Nanotrasen Security Operative"
	jobtype = /datum/job/elitesec

	uniform = /obj/item/clothing/under/suit/black
	shoes = /obj/item/clothing/shoes/combat/swat
	id = /obj/item/card/id/silver
	belt = /obj/item/pda/blueshield
	ears = /obj/item/radio/headset/heads/hos/alt
	glasses = /obj/item/clothing/glasses/hud/security/sunglasses
	suit = /obj/item/clothing/suit/armor/bulletproof
	head = /obj/item/clothing/head/beret/sec/navyhos/black/nso
	gloves = /obj/item/clothing/gloves/color/black
	backpack_contents = list(
		/obj/item/storage/box/handcuffs = 1,
		/obj/item/melee/baton/loaded = 1)

	backpack = /obj/item/storage/backpack/security
	satchel = /obj/item/storage/backpack/satchel/sec
	duffelbag = /obj/item/storage/backpack/duffelbag/sec
	box = /obj/item/storage/box/survival/security

	implants = list(/obj/item/implant/mindshield)



