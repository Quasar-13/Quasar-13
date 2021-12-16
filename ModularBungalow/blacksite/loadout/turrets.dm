/obj/item/choice_beacon/marines/turret
	name = "turret beacon"
	desc = "A beacon to be used to call down a turret for engineering use."

/obj/item/choice_beacon/marines/turret/generate_display_names()
	var/static/list/turra_item_list
	if(!turra_item_list)
		turra_item_list = list()
		var/list/templist = typesof(/obj/machinery/manned_turret/scatter) //we have to convert type = name to name = type, how lovely!
		for(var/V in templist)
			var/atom/A = V
			turra_item_list[initial(A.name)] = A
	return turra_item_list

/obj/item/choice_beacon/marines/turret/spawn_option(obj/choice,mob/living/M)
	new choice(get_turf(M))
	to_chat(M, "<span class='hear'>Stand by for titanfall.</span>")

//Heavy Turret.
//I hate using these beacons, especially without shit. but a capsule is arguably more shit
/obj/item/choice_beacon/marines/turret/heavy
	name = "heavy turret beacon"
	desc = "A beacon to be used to call down a turret for heavy use."

/obj/item/choice_beacon/marines/turret/heavy/generate_display_names()
	var/static/list/turrb_item_list
	if(!turrb_item_list)
		turrb_item_list = list()
		var/list/templist = typesof(/obj/machinery/manned_turret/laser) //we have to convert type = name to name = type, how lovely!
		for(var/V in templist)
			var/atom/A = V
			turrb_item_list[initial(A.name)] = A
	return turrb_item_list

/obj/item/choice_beacon/marines/turret/heavy/spawn_option(obj/choice,mob/living/M)
	new choice(get_turf(M))
	to_chat(M, "<span class='hear'>Stand by for titanfall.</span>")



