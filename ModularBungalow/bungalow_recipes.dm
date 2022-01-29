//WEAPONS RECIPE
/datum/crafting_recipe/baseballtoolbox
	name = "Toolbox Bat"
	result = /obj/item/melee/baseball_bat/toolbox
	reqs = list(/obj/item/restraints/handcuffs/cable = 1,
				/obj/item/melee/baseball_bat = 1,
				/obj/item/storage/toolbox = 1)
	parts = list(/obj/item/shard = 1)
	time = 45
	category = CAT_WEAPONRY
	subcategory = CAT_WEAPON

//DRINKS RECIPE
/datum/crafting_recipe/terremoto
	name = "Terremoto"
	result = /obj/item/reagent_containers/food/drinks/bottle/terremoto
	time = 30
	reqs = list(
		/datum/reagent/consumable/grenadine = 20,
		/obj/item/food/icecream = 2,
		/datum/reagent/consumable/ethanol/pisco = 60)
	category = CAT_DRINK

//BURGERS RECIPE
/datum/crafting_recipe/food/catburger
	name = "Catperson burger"
	reqs = list(/obj/item/food/bun = 1,
		/obj/item/food/patty/plain = 1,
		/obj/item/organ/ears/cat = 1,
		/obj/item/organ/tail/cat = 1)
	result = /obj/item/food/burger/catburger
	subcategory = CAT_BURGER

//BREADS RECIPE
/datum/crafting_recipe/food/sausagebread
	name = "Sausage bread"
	reqs = list(/obj/item/food/bread/plain = 1,
		/obj/item/food/sausage = 2)
	result = /obj/item/food/bread/sausage
	subcategory = CAT_BREAD

//EGGS RECIPE
/datum/crafting_recipe/food/eggsausage
	name = "Egg with sausage"
	reqs = list(/obj/item/food/sausage = 1,
		/obj/item/food/egg = 1)
	result = /obj/item/food/eggssausage
	subcategory = CAT_EGG
