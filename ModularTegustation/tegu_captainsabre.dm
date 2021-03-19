/obj/item/choice_beacon/sabre
	name = "captain's blade beacon"
	desc = "A beacon the captain uses to select his weapon of choice."

/obj/item/choice_beacon/sabre/generate_display_names()
	var/static/list/sord_item_list
	if(!sord_item_list)
		sord_item_list = list()
		var/list/templist = typesof(/obj/item/storage/box/sabre) //we have to convert type = name to name = type, how lovely!
		for(var/V in templist)
			var/atom/A = V
			sord_item_list[initial(A.name)] = A
	return sord_item_list

/obj/item/choice_beacon/sabre/spawn_option(obj/choice,mob/living/M)
	new choice(get_turf(M))
	to_chat(M, "<span class='hear'>Thank you for your service. Captain.</span>")


/obj/item/storage/box/sabre
	name = "Sabre, Standard Issues"
	desc = "The classic sabre used for ages by NT captains."

/obj/item/storage/box/sabre/PopulateContents()
	new /obj/item/storage/belt/sabre(src)



/obj/item/storage/box/sabre/rapier
	name = "Rapier"
	desc = "For the action hero captain, who loves to get themselves a little gung-ho"

/obj/item/storage/box/sabre/rapier/PopulateContents()
	new /obj/item/storage/belt/rapier(src)



/obj/item/storage/box/sabre/lance
	name = "Lance of Longinus"
	desc = "The holy lance is actually a special nullrod"

/obj/item/storage/box/sabre/lance/PopulateContents()
	new /obj/item/nullrod/spear/captain(src)



/obj/item/storage/box/sabre/katana
	name = "Captain's Katana"
	desc = "The blade of the heroic captain"

/obj/item/storage/box/sabre/katana/PopulateContents()
	new /obj/item/katana/captain(src)
