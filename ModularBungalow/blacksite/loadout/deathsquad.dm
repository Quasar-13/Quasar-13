/obj/item/choice_beacon/deathsquad
	name = "NT Death Commando beacon"
	desc = "A beacon the Death Commando uses to choose their weapons."

/obj/item/choice_beacon/deathsquad/generate_display_names()
	var/static/list/deathsquad_item_list
	if(!deathsquad_item_list)
		deathsquad_item_list = list()
		var/list/templist = typesof(/obj/item/storage/backpack/duffelbag/deathsquad) //we have to convert type = name to name = type, how lovely!
		for(var/V in templist)
			var/atom/A = V
			deathsquad_item_list[initial(A.name)] = A
	return deathsquad_item_list

/obj/item/choice_beacon/deathsquad/spawn_option(obj/choice,mob/living/M)
	new choice(get_turf(M))
	to_chat(M, "<span class='hear'>Get out there!</span>")



/obj/item/storage/backpack/duffelbag/deathsquad
	name = "Pulse Rifle Kit"
	desc = "The classic deathsquad weapon. Set to Destroy"

/obj/item/storage/backpack/duffelbag/deathsquad/PopulateContents()
	new /obj/item/gun/energy/pulse/carbine(src)



/obj/item/storage/backpack/duffelbag/deathsquad/minigun
	name = "Laser Minigun Kit"
	desc = "Contains the new and improved Deathsquad minigun with a pulse pistol sidearm."

/obj/item/storage/backpack/duffelbag/deathsquad/minigun/PopulateContents()
	new /obj/item/minigunpack(src)
	new /obj/item/gun/energy/pulse/pistol(src)
