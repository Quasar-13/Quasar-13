/datum/job/space_hobo
	title = "Vagabond"
	department_head = list("the voices in your head.") // I HATE NT I HATE NT I HATE NT I HATE NT I HATE NT I HATE NT I HATE NT I HATE NT I HATE NT
	faction = "Station"
	total_positions = 2
	spawn_positions = 2
	supervisors = "the voices in your head." // I HATE JILL NESS I HATE JILL NESS I HATE JILL NESS I HATE JILL NESS I HATE JILL NESS
	selection_color = "#666666"
	maptype = "vagabond"

	outfit = /datum/outfit/job/space_hobo
	display_order = JOB_DISPLAY_ORDER_SNEEDCLAVEPVT

	access = list(ACCESS_MAINT_TUNNELS)
	minimal_access = list(ACCESS_MAINT_TUNNELS)
	bounty_types = CIV_JOB_RANDOM

/datum/job/space_hobo/after_spawn(mob/living/H, mob/M)
	to_chat(H, "I HATE JILL NESS")

/datum/outfit/job/space_hobo
	name = "Vagabond"
	jobtype = /datum/job/space_hobo

	ears = null
	uniform = /obj/item/clothing/under/vagrant
	gloves = /obj/item/clothing/gloves/fingerless
	l_hand = /obj/item/reagent_containers/food/drinks/bottle/whiskey
	r_pocket = /obj/item/trash/can/food
	shoes = /obj/item/clothing/shoes/sandal
	backpack_contents = list(/obj/item/kitchen/knife/shiv = 1, /obj/item/trash/can/food/peaches/maint  = 1, /obj/item/storage/fancy/cigarettes = 1, /obj/item/clothing/mask/balaclava, /obj/item/coin/iron = 1, /obj/item/storage/box/matches = 1 )

/obj/effect/landmark/start/space_hobo
	name = "Vagabond"
	icon_state = "trash" //you know what you did, you piece of trash!
