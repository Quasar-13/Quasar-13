//DRINKS
/datum/crafting_recipe/terremoto
	name = "Terremoto"
	result = /obj/item/reagent_containers/food/drinks/bottle/terremoto
	time = 30
	reqs = list(/datum/reagent/consumable/grenadine = 20,
	            /obj/item/food/icecream = 2,
	            /datum/reagent/consumable/ethanol/pisco = 60)
	category = CAT_DRINK

//BURGERS
/datum/crafting_recipe/food/catburger
	name = "Catperson burger"
	reqs = list(
		/obj/item/food/bun = 1,
		/obj/item/food/patty/plain = 1,
		/obj/item/organ/ears/cat = 1,
		/obj/item/organ/tail/cat = 1
	)
	result = /obj/item/food/burger/catburger
	subcategory = CAT_BURGER

//BREADS
/datum/crafting_recipe/food/sausagebread
	name = "Sausage bread"
	reqs = list(
		/obj/item/food/bread/plain = 1,
		/obj/item/food/sausage = 2
	)
	result = /obj/item/food/bread/sausage
	subcategory = CAT_BREAD

//EGGS

/datum/crafting_recipe/food/sausagedegg
	name = "Egg with sausage"
	reqs = list(
		/obj/item/food/sausage = 1,
		/obj/item/food/egg = 1
	)
	result = /obj/item/food/eggssausage
	subcategory = CAT_EGG
