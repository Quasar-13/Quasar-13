/obj/item/choice_beacon/workplace
	name = "workplaces beacon"
	desc = "A beacon to summon a structure capsule holding a blueprint inside. This version contains workplaces ready to deploy."

/obj/item/choice_beacon/workplaces/generate_display_names()
	var/static/list/workplaces_item_list
	if(!workplaces_item_list)
		workplaces_item_list = list()
		var/list/templist = typesof(/obj/item/workplacecapsule) //we have to convert type = name to name = type, how lovely!
		for(var/V in templist)
			var/atom/A = V
			workplaces_item_list[initial(A.name)] = A
	return workplaces_item_list

/obj/item/choice_beacon/workplaces/spawn_option(obj/choice,mob/living/M)
	new choice(get_turf(M))
	to_chat(M, "<span class='hear'>Get out there!</span>")



/obj/item/choice_beacon/structure
	name = "structures beacon"
	desc = "A beacon to summon a structure capsule holding a blueprint inside. This version contains workplaces ready to deploy."

/obj/item/choice_beacon/structures/generate_display_names()
	var/static/list/structures_item_list
	if(!structures_item_list)
		structures_item_list = list()
		var/list/templist = typesof(/obj/item/structurecapsule) //we have to convert type = name to name = type, how lovely!
		for(var/V in templist)
			var/atom/A = V
			structures_item_list[initial(A.name)] = A
	return structures_item_list

/obj/item/choice_beacon/structures/spawn_option(obj/choice,mob/living/M)
	new choice(get_turf(M))
	to_chat(M, "<span class='hear'>Get out there!</span>")
