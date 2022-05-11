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
/datum/outfit/job/solgov/sec
	name = "Solgov Kepler Security"
	id = /obj/item/card/id/solgov
	ears = /obj/item/radio/headset/headset_srv
	belt = /obj/item/melee/classic_baton
	uniform = /obj/item/clothing/under/syndicate/camo
	backpack_contents = list(/obj/item/kitchen/knife/combat/survival=1, /obj/item/kepler_sec_voucher=1, /obj/item/kitchen/knife/combat/survival=1, /obj/item/flashlight/seclite=1, /obj/item/clothing/mask/gas/sechailer=1)
/datum/outfit/job/solgov/soldier
	name = "Solgov Kepler Soldier"
	id = /obj/item/card/id/solgov
	ears = /obj/item/radio/headset/headset_srv
	belt = /obj/item/melee/classic_baton
	uniform = /obj/item/clothing/under/syndicate/camo
	backpack_contents = list(/obj/item/kitchen/knife/combat/survival=1, /obj/item/kepler_voucher=1, /obj/item/kitchen/knife/combat/survival=1, /obj/item/flashlight/seclite=1, /obj/item/clothing/mask/gas/sechailer=1)
/datum/outfit/job/solgov/commander
	name = "Solgov Kepler Commander"
	id = /obj/item/card/id/solgov
	ears = /obj/item/radio/headset/headset_srv
	belt = /obj/item/melee/classic_baton
	uniform = /obj/item/clothing/under/misc/durathread/kepler
	suit = /obj/item/clothing/suit/armor/captain/solgov
	gloves = /obj/item/clothing/gloves/color/captain/admiral/solgov
	head = /obj/item/clothing/head/ushanka
	backpack_contents = list(/obj/item/kitchen/knife/combat/survival=1, /obj/item/kepler_commander_voucher=1, /obj/item/kitchen/knife/combat/survival=1, /obj/item/flashlight/seclite=1, /obj/item/clothing/mask/gas/sechailer=1)

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
