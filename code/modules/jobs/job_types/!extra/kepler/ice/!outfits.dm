//Outpost Outfits
/datum/outfit/job/outpostagent
	name = "Syndicate Outpost Agent"
	id = /obj/item/card/id/black
	uniform = /obj/item/clothing/under/syndicate/coldres
	ears = /obj/item/radio/headset/headset_sci
	belt = null

//Solgov outfits
/datum/outfit/job/solgov
	name = "Solgov Colonist"
	id = /obj/item/card/id/solgov
	ears = /obj/item/radio/headset/headset_srv
	belt = null
	backpack_contents = list(/obj/item/kitchen/knife/combat/survival=1, /obj/item/flashlight/seclite=1)
	box = /obj/item/storage/box/survival/mining
/datum/outfit/job/solgov/sec
	name = "Solgov Kepler Private Security"
	id = /obj/item/card/id/solgov
	ears = /obj/item/radio/headset/headset_srv
	belt = /obj/item/melee/classic_baton
	uniform = /obj/item/clothing/under/syndicate/camo
	backpack_contents = list(/obj/item/kitchen/knife/combat/survival=1, /obj/item/kepler_sec_voucher=1, /obj/item/weldingtool/mini=1, /obj/item/flashlight/seclite=1, /obj/item/clothing/mask/gas/sechailer=1)
	glasses = /obj/item/clothing/glasses/sunglasses
	box = /obj/item/storage/box/survival/security/improved
/datum/outfit/job/solgov/soldier
	name = "Solgov Kepler Expedition Soldier"
	id = /obj/item/card/id/solgov
	ears = /obj/item/radio/headset/headset_srv
	belt = /obj/item/melee/classic_baton
	suit = /obj/item/clothing/suit/armor/vest
	uniform = /obj/item/clothing/under/syndicate/camo
	backpack_contents = list(/obj/item/kitchen/knife/combat/survival=1, /obj/item/kepler_voucher=1, /obj/item/weldingtool/mini=1, /obj/item/flashlight/seclite=1, /obj/item/clothing/mask/gas/sechailer=1)
	glasses = /obj/item/clothing/glasses/sunglasses
	box = /obj/item/storage/box/survival/security/radio
/datum/outfit/job/solgov/commander
	name = "Solgov Kepler Site Commander"
	id = /obj/item/card/id/solgov
	ears = /obj/item/radio/headset/headset_srv
	belt = /obj/item/melee/classic_baton
	uniform = /obj/item/clothing/under/misc/durathread/kepler
	suit = /obj/item/clothing/suit/armor/vest
	gloves = /obj/item/clothing/gloves/color/captain/admiral/solgov
	head = /obj/item/clothing/head/ushanka
	backpack_contents = list(/obj/item/kitchen/knife/combat/survival=1, /obj/item/kepler_commander_voucher=1, /obj/item/weldingtool/mini=1, /obj/item/flashlight/seclite=1, /obj/item/clothing/mask/gas/sechailer=1)
	box = /obj/item/storage/box/survival/site_command
/datum/outfit/job/solgov/administrator
	name = "Solgov Kepler Administrator"
	id = /obj/item/card/id/solgov
	ears = /obj/item/radio/headset/headset_srv
	belt = /obj/item/melee/classic_baton
	uniform = /obj/item/clothing/under/misc/durathread/kepler
	suit = /obj/item/clothing/suit/armor/hopcoat
	gloves = /obj/item/clothing/gloves/color/latex/engineering
	head = /obj/item/clothing/head/ushanka
	backpack_contents = list(/obj/item/kitchen/knife/combat/survival=1, /obj/item/weldingtool/hugetank=1, /obj/item/storage/firstaid/tactical/solgov=1, /obj/item/flashlight/seclite=1, /obj/item/clothing/mask/gas/sechailer=1)
	box = /obj/item/storage/box/survival/site_command

//PRE EQUIPPED
/datum/outfit/job/solgov/sec_equipped
	name = "Solgov Kepler Private Security (Equipped)"
	id = /obj/item/card/id/solgov
	ears = /obj/item/radio/headset/headset_srv
	belt = /obj/item/storage/belt/military/assault
	suit = /obj/item/clothing/suit/armor/vest/solgov
	uniform = /obj/item/clothing/under/syndicate/camo
	mask = /obj/item/clothing/mask/gas/sechailer
	head = /obj/item/clothing/head/helmet/solgov
	l_hand = /obj/item/gun/ballistic/automatic/ar/hk21
	l_pocket = /obj/item/flashlight/seclite
	r_pocket = /obj/item/tank/internals/emergency_oxygen/engi
	backpack_contents = list(/obj/item/kitchen/knife/combat/survival=1,/obj/item/melee/classic_baton=1, /obj/item/kepler_sec_voucher=1, /obj/item/weldingtool/hugetank=1, /obj/item/flashlight/seclite=1, /obj/item/storage/box/grenadier_grenades/lethal=1, /obj/item/ammo_box/magazine/m556=5)
	gloves = /obj/item/clothing/gloves/tackler/combat/insulated
	glasses = /obj/item/clothing/glasses/welding
	box = /obj/item/storage/box/survival/security/radio
/datum/outfit/job/solgov/soldier_equipped
	name = "Solgov Kepler Assault Soldier (Equipped)"
	id = /obj/item/card/id/solgov
	ears = /obj/item/radio/headset/headset_srv
	belt = /obj/item/storage/belt/military/assault
	suit = /obj/item/clothing/suit/armor/vest/solgov/snow
	uniform = /obj/item/clothing/under/syndicate/camo
	mask = /obj/item/clothing/mask/gas/sechailer
	head = /obj/item/clothing/head/helmet/solgov/snow
	l_hand = /obj/item/gun/ballistic/automatic/ar/hk21
	l_pocket = /obj/item/flashlight/seclite
	r_pocket = /obj/item/tank/internals/emergency_oxygen/engi
	backpack_contents = list(/obj/item/kitchen/knife/combat/survival=1,/obj/item/melee/classic_baton=1, /obj/item/kepler_voucher=1, /obj/item/weldingtool/hugetank=1, /obj/item/flashlight/seclite=1, /obj/item/storage/box/grenadier_grenades/lethal=1, /obj/item/ammo_box/magazine/m556=5)
	gloves = /obj/item/clothing/gloves/tackler/combat/insulated
	glasses = /obj/item/clothing/glasses/welding
	box = /obj/item/storage/box/survival/security/radio

/datum/outfit/job/solgov/marsoc
	name = "Solgov Kepler MARSOC"
	id = /obj/item/card/id/solgov
	ears = /obj/item/radio/headset/heads/hos/alt
	belt = /obj/item/gun/ballistic/shotgun/automatic/combat/marsoc
	suit = /obj/item/clothing/suit/armor/vest/solgov/snow/heavy/marsoc
	uniform = /obj/item/clothing/under/solgov/snow
	mask = /obj/item/clothing/mask/nobreath/marsoc
	head = /obj/item/clothing/head/helmet/solgov/snow/heavy/marsoc
	l_hand = /obj/item/gun/ballistic/automatic/ar/hk21/marsoc
	l_pocket = /obj/item/storage/pouch/marsoc_tools
	r_pocket = /obj/item/storage/pouch/marsoc_ifak
	backpack_contents = list(/obj/item/kitchen/knife/combat/survival=1, /obj/item/kepler_voucher=1,/obj/item/storage/box/grenadier_grenades/lethal=1,/obj/item/gun/grenadelauncher/marsoc=1, /obj/item/ammo_box/magazine/m556/big=5, /obj/item/ammo_box/shotgun/buckshot=3)
	gloves = /obj/item/clothing/gloves/tackler/combat/insulated
	glasses = /obj/item/clothing/glasses/meson/night
	box = /obj/item/storage/box/survival/engineer/radio
	back = /obj/item/storage/backpack/marsoc
	suit_store = /obj/item/gun/ballistic/automatic/ar/hk21/marsoc
	implants = list(/obj/item/implant/mindshield, /obj/item/implant/krav_maga)

//NT outfits
//Private
/datum/outfit/job/remnant
	name = "NT Remnant (Cadet)"
	id = /obj/item/card/id
	uniform = /obj/item/clothing/under/bni
	ears = /obj/item/radio/headset/headset_ntrem
	belt = null

//Lieutenant
/datum/outfit/job/remnant/lt
	name = "NT Remnant (Lieutenant)"
	jobtype = /datum/job/remnant/lt

	id = /obj/item/card/id/gold
	uniform = /obj/item/clothing/under/bni/senior
	ears = /obj/item/radio/headset/headset_ntrem
	belt = null

//Misc
//Vagabond
/datum/outfit/job/ice_hobo
	name = "Nomad"
	jobtype = /datum/job/nomad

	ears = null
	id = null
	uniform = /obj/item/clothing/under/vagrant
	gloves = /obj/item/clothing/gloves/fingerless
