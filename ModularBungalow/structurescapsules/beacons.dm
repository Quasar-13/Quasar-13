/obj/item/choice_beacon/structures
	name = "structures beacon"
	desc = "A beacon to summon a structure capsule holding a blueprint inside."

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
	to_chat(M, "<span class='hear'>You hear something crackle from the beacon for a moment before a voice speaks. \"Please stand by for a message from Andrei's Compressed Designs. Message as follows: <b>Thank you for your purchase. The capsule is one time use and may contain specific instructions on how to deploy them. Please examine them carefully before hand. We are not responsible for any damage done in case of hallways clog and their consequences.</b> Message ends.\"</span>")
