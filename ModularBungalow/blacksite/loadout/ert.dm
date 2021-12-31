/obj/item/choice_beacon/ert
	name = "ERT Officer beacon"
	desc = "A beacon the ERT officers use to choose their weapons."

/obj/item/choice_beacon/ert/generate_display_names()
	var/static/list/ert_item_list
	if(!ert_item_list)
		ert_item_list = list()
		var/list/templist = typesof(/obj/item/storage/backpack/duffelbag/ert) //we have to convert type = name to name = type, how lovely!
		for(var/V in templist)
			var/atom/A = V
			ert_item_list[initial(A.name)] = A
	return ert_item_list

/obj/item/choice_beacon/ert/spawn_option(obj/choice,mob/living/M)
	new choice(get_turf(M))
	to_chat(M, "<span class='hear'>Get out there!</span>")



/obj/item/storage/backpack/duffelbag/ert
	name = "E-000 Laser Rifle Kit and Ion Rifle"
	desc = "Usually given to NT station captains, this rifle is in your hands as well for delicate missions"

/obj/item/storage/backpack/duffelbag/ert/PopulateContents()
	new /obj/item/gun/energy/laser/captain/ntgold(src)
	new /obj/item/gun/energy/ionrifle/carbine(src)
	new /obj/item/gun/energy/e_gun/mini(src)

/obj/item/storage/backpack/duffelbag/ert/laser
	name = "Laser Sniper Kit"
	desc = "Contains one M76 Lethal laser beam rifle and a usable sidearm."

/obj/item/storage/backpack/duffelbag/ert/laser/PopulateContents()
	new /obj/item/gun/energy/sniper/pin(src)
	new /obj/item/gun/energy/e_gun/mini(src)


/obj/item/storage/backpack/duffelbag/ert/xray
	name = "Ultramaterial Rifle Kit"
	desc = "Contains one fully modified L-792 Ultramaterial laser rifle and a usable sidearm."

/obj/item/storage/backpack/duffelbag/ert/xray/PopulateContents()
	new /obj/item/gun/energy/xray(src)
	new /obj/item/gun/energy/e_gun/mini(src)


/obj/item/storage/backpack/duffelbag/ert/pkr
	name = "Particle Acceleration Rifle Kit"
	desc = "Contains one Particle Acceleration rifle and sidearm."

/obj/item/storage/backpack/duffelbag/ert/pkr/PopulateContents()
	new /obj/item/gun/energy/beam_rifle(src)
	new /obj/item/gun/energy/e_gun/mini(src)
