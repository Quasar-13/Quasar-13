/datum/job/space_hobo
	title = "Vagabond"
	department_head = list("the voices in your head.") // I HATE NT I HATE NT I HATE NT I HATE NT I HATE NT I HATE NT I HATE NT I HATE NT I HATE NT
	faction = "Station"
	total_positions = 2
	spawn_positions = 2
	supervisors = "nobody"
	selection_color = "#111111"
	maptype = "vagabond"

	outfit = /datum/outfit/job/space_hobo

	display_order = JOB_DISPLAY_ORDER_SNEEDCLAVEPVT

/datum/outfit/job/space_hobo
	name = "Vagabond"
	jobtype = /datum/job/space_hobo

	mask = /obj/item/clothing/mask/balaclava
	uniform = /obj/item/clothing/under/vagrant
	gloves = /obj/item/clothing/gloves/fingerless
	l_hand = /obj/item/reagent_containers/food/drinks/bottle/whiskey
	r_pocket = /obj/item/trash/can/food
	shoes = /obj/item/clothing/shoes/sandal
	backpack_contents = list(/obj/item/kitchen/knife/shiv = 1, /obj/item/trash/can/food/peaches/maint  = 1, /obj/item/storage/fancy/cigarettes = 1)

/obj/effect/landmark/start/space_hobo
	name = "Vagabond"
	icon_state = "trash" //you know what you did, you piece of trash!
