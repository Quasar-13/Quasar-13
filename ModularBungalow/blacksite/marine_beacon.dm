/obj/item/choice_beacon/marine
	name = "NT marine beacon"
	desc = "A beacon the marines use to choose their weapons."

/obj/item/choice_beacon/marine/generate_display_names()
	var/static/list/marine_item_list
	if(!marine_item_list)
		marine_item_list = list()
		var/list/templist = typesof(/obj/item/storage/backpack/duffelbag/marine) //we have to convert type = name to name = type, how lovely!
		for(var/V in templist)
			var/atom/A = V
			marine_item_list[initial(A.name)] = A
	return marine_item_list

/obj/item/choice_beacon/marine/spawn_option(obj/choice,mob/living/M)
	new choice(get_turf(M))
	to_chat(M, "<span class='hear'>Get out there!</span>")



/obj/item/storage/backpack/duffelbag/marine
	name = "Marine Assault Kit"
	desc = "The classic ballistic NT weapon. Fires in bursts."

/obj/item/storage/backpack/duffelbag/marine/PopulateContents()
	new /obj/item/gun/ballistic/automatic/ar(src)
	new /obj/item/ammo_box/magazine/m556(src)
	new /obj/item/ammo_box/magazine/m556(src)
	new /obj/item/ammo_box/magazine/m556(src)
	new /obj/item/ammo_box/magazine/m556(src)
	new /obj/item/ammo_box/magazine/m556(src)
	new /obj/item/gun/ballistic/automatic/pistol(src)



/obj/item/storage/backpack/duffelbag/marine/medic
	name = "Marine Medic Kit"
	desc = "Contains two medical kits and a PDW."

/obj/item/storage/backpack/duffelbag/marine/medic/PopulateContents()
	new /obj/item/gun/ballistic/automatic/wt550(src)
	new /obj/item/ammo_box/magazine/wt550m9(src)
	new /obj/item/ammo_box/magazine/wt550m9(src)
	new /obj/item/ammo_box/magazine/wt550m9(src)
	new /obj/item/storage/firstaid/emergency(src)
	new /obj/item/storage/firstaid/brute(src)
	new /obj/item/gun/ballistic/automatic/pistol(src)



/obj/item/storage/backpack/duffelbag/marine/shotgun
	name = "Marine Trenchman Kit"
	desc = "This shotgun is for pointmen who are going in first with a shotgun full of buck."

/obj/item/storage/backpack/duffelbag/marine/shotgun/PopulateContents()
	new /obj/item/gun/ballistic/shotgun/lethal(src)
	new /obj/item/storage/box/lethalshot(src)
	new /obj/item/storage/box/lethalshot(src)
	new /obj/item/storage/box/lethalshot(src)
	new /obj/item/storage/box/lethalshot(src)
	new /obj/item/storage/belt/bandolier(src)
	new /obj/item/gun/ballistic/automatic/pistol(src)


/obj/item/storage/backpack/duffelbag/marine/smg
	name = "Marine SMG Kit"
	desc = "This semi-auto gun has a fast fire rate for clearing rooms."

/obj/item/storage/backpack/duffelbag/marine/smg/PopulateContents()
	new /obj/item/gun/ballistic/automatic/proto/unrestricted(src)
	new /obj/item/ammo_box/magazine/smgm9mm(src)
	new /obj/item/ammo_box/magazine/smgm9mm(src)
	new /obj/item/ammo_box/magazine/smgm9mm(src)
	new /obj/item/ammo_box/magazine/smgm9mm(src)
	new /obj/item/ammo_box/magazine/smgm9mm(src)
	new /obj/item/gun/ballistic/automatic/pistol(src)


/obj/item/storage/backpack/duffelbag/marine/mosin
	name = "Marine Marksman Kit"
	desc = "This bolt action rifle is good for dealing massive amounts of damage in a single shot."
/obj/item/storage/backpack/duffelbag/marine/mosin/PopulateContents()
	new /obj/item/gun/ballistic/rifle/boltaction(src)
	new /obj/item/ammo_box/a762(src)
	new /obj/item/ammo_box/a762(src)
	new /obj/item/ammo_box/a762(src)
	new /obj/item/ammo_box/a762(src)

