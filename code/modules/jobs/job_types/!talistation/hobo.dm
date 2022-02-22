/datum/job/space_hobo
	title = "Vagabond"
	department_head = list("the voices in your head") // I HATE NT I HATE NT I HATE NT I HATE NT I HATE NT I HATE NT I HATE NT I HATE NT I HATE NT
	faction = "Station"
	total_positions = 2
	spawn_positions = 2
	supervisors = "the voices in your head" // I HATE JILL NESS I HATE JILL NESS I HATE JILL NESS I HATE JILL NESS I HATE JILL NESS
	selection_color = "#666666"
	maptype = "vagabond"

	outfit = /datum/outfit/job/space_hobo
	display_order = JOB_DISPLAY_ORDER_SNEEDCLAVEPVT

	access = list(ACCESS_MAINT_TUNNELS)
	minimal_access = list(ACCESS_MAINT_TUNNELS)
	bounty_types = CIV_JOB_RANDOM

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

/obj/effect/landmark/start/space_hobo
	name = "Vagabond"
	icon_state = "trash" //you know what you did, you piece of trash!

/obj/item/paper/crumpled/thehoborules
	name = "The hobo ettiquete"
	icon_state = "scrap_mud"
	info = {"<h4>The hobo Ettiquete</h4><h4>rule 1: YOU DO YOU.</h4> Decide your own life, don't let another person run or rule you.<br><h4>rule 2: BE A SELF-STARTER.</h4> When no employment is available, make your own work by using your added talents at crafts.<br><h4> rule 3: HELP OTHER HOBOS.</h4> Help your fellow hobos whenever and wherever needed, you may need their help someday<br>"}
