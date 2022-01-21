//weapons recipe
/datum/crafting_recipe/baseballtoolbox
	name = "Baseball toolbox"
	result = /obj/item/melee/baseball_bat/toolbox
	reqs = list(/obj/item/restraints/handcuffs/cable = 1,
				/obj/item/melee/baseball_bat = 1,
				/obj/item/storage/toolbox = 1)
	parts = list(/obj/item/shard = 1)
	time = 45
	category = CAT_WEAPONRY
	subcategory = CAT_WEAPON
