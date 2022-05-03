//Brig Doctor
/datum/outfit/job/brigdoc
	name = "Brig Physician"
	jobtype = /datum/job/brigdoc

	belt = /obj/item/pda/brigdoc
	ears = /obj/item/radio/headset/headset_sec/alt/med
	uniform = /obj/item/clothing/under/brigdoc
	shoes = /obj/item/clothing/shoes/jackboots
	suit = /obj/item/clothing/suit/neocoat/brigdoc
	gloves = /obj/item/clothing/gloves/color/black
	head = /obj/item/clothing/head/beret/sec/brigphys
	glasses = /obj/item/clothing/glasses/hud/health/sunglasses
	r_pocket = /obj/item/assembly/flash/handheld
	backpack_contents = list(/obj/item/melee/baton/loaded=1)

	backpack = /obj/item/storage/backpack/security
	satchel = /obj/item/storage/backpack/satchel/sec
	duffelbag = /obj/item/storage/backpack/duffelbag/sec
	box = /obj/item/storage/box/survival/security

	implants = list(/obj/item/implant/mindshield)

//Vagabond
/datum/outfit/job/space_hobo
	name = "Vagabond"
	jobtype = /datum/job/space_hobo

	ears = null
	id = null
	uniform = /obj/item/clothing/under/vagrant
	gloves = /obj/item/clothing/gloves/fingerless
	l_hand = /obj/item/paper/crumpled/thehoborules
	r_pocket = /obj/item/trash/can/food
	shoes = /obj/item/clothing/shoes/sandal
	backpack_contents = list(/obj/item/kitchen/knife/shiv = 1, /obj/item/trash/can/food/peaches/maint  = 1, /obj/item/storage/fancy/cigarettes = 1, /obj/item/clothing/mask/balaclava, /obj/item/coin/iron = 1, /obj/item/storage/box/matches = 1, /obj/item/reagent_containers/food/drinks/bottle/whiskey = 1)
