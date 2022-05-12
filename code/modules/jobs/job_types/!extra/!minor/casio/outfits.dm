//Green Captain
/datum/outfit/job/captain/nt
	name = "Captain (Naval)"
	jobtype = /datum/job/ntcaptain

	ears = /obj/item/radio/headset/heads/headset_cent/commander
	gloves = /obj/item/clothing/gloves/color/black
	uniform = /obj/item/clothing/under/rank/centcom/officer/captain
	suit = /obj/item/clothing/suit/armor/captain/naval
	head = /obj/item/clothing/head/beret/centcom
	suit_store = /obj/item/gun/ballistic/revolver/mateba
	backpack = /obj/item/storage/backpack/centcom

	chameleon_extras = list(/obj/item/gun/energy/e_gun, /obj/item/stamp/captain)

//Blueshield
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
	shoes = /obj/item/clothing/shoes/laceup
	suit_store = /obj/item/gun/ballistic/automatic/laser/burst
	backpack_contents = list(/obj/item/ammo_box/magazine/recharge, /obj/item/ammo_box/magazine/recharge)

	skillchips = list(/obj/item/skillchip/disk_verifier)

	backpack = /obj/item/storage/backpack/captain
	satchel = /obj/item/storage/backpack/satchel/cap
	duffelbag = /obj/item/storage/backpack/duffelbag/captain

	implants = list(/obj/item/implant/mindshield)

//Military Police
/datum/outfit/job/ntpolice
	name = "NT Military Police"
	jobtype = /datum/job/ntpolice

	ears = /obj/item/radio/headset/headset_cent/alt
	uniform = /obj/item/clothing/under/plasmaman/centcom_intern/marine
	shoes = /obj/item/clothing/shoes/jackboots
	suit = /obj/item/clothing/suit/armor/bulletproof
	belt = /obj/item/pda/mp
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
