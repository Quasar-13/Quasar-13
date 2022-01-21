/**
 * The base type of ALL Bungalow choice-beacons
 * All Bungalow choice beacons are subtypes of this one, to avoid copy-paste.
 */
/obj/item/choice_beacon/bungalow
	name = "bungalow beacon"
	desc = "A debug beacon, if you see this, welcome to Bungalow!"
	///The typesof item this choice beacon will allow you to choose from.
	var/typesof_options = /obj/item/storage/backpack/duffelbag/ert
	///The message played after selecting something with this beacon.
	var/selection_message = "<span class='hear'>Get out there!</span>"

/obj/item/choice_beacon/bungalow/generate_display_names()
	var/static/list/item_list = list()
	for(var/obj/typesof_option as anything in typesof(typesof_options))
		item_list[initial(typesof_option.name)] = typesof_option
	return item_list

/obj/item/choice_beacon/bungalow/spawn_option(obj/choice, mob/living/gifted_person)
	new choice(get_turf(gifted_person))
	to_chat(gifted_person, selection_message)

//Gun beacon
/obj/item/choice_beacon/bungalow/captain
	name = "captain's gun beacon"
	desc = "A beacon the captain uses to select his weapon of choice."
	typesof_options = /obj/item/storage/box/captain
	selection_message = "<span class='hear'>Thank you for your service. Captain.</span>"


/obj/item/storage/box/captain
	name = "Energy Gun, Standard Issue"
	desc = "The classic energy weapon used for ages by NT captains."

/obj/item/storage/box/captain/PopulateContents()
	new /obj/item/gun/energy/e_gun(src)



/obj/item/storage/box/captain/pistols
	name = "Dual Energy Pistols"
	desc = "For the action hero captain, who loves to get themselves a little gung-ho"

/obj/item/storage/box/captain/pistols/PopulateContents()
	new /obj/item/gun/energy/e_gun/mini(src)
	new /obj/item/gun/energy/e_gun/mini(src)



/obj/item/storage/box/captain/pl
	name = "PL-14"
	desc = "The gun for a captain who is reserved, sly and charming."

/obj/item/storage/box/captain/pl/PopulateContents()
	new /obj/item/gun/ballistic/automatic/pistol/PL14(src)


/obj/item/storage/box/captain/revolver
	name = "Chiappa Rhino."
	desc = "The gun for a bombastic captain that loves to shoot to kill. Captain Chiappa and his 6 commandos take no prisoners."

/obj/item/storage/box/captain/revolver/PopulateContents()
	new /obj/item/gun/ballistic/revolver/rhino(src)
	new /obj/item/ammo_box/c38(src)
	new /obj/item/ammo_box/c38(src)
	new /obj/item/ammo_box/c38(src)


/obj/item/storage/box/captain/rifle
	name = "Mosin Nagant"
	desc = "HAIL THE GLORIOUS COMMISSAR"

/obj/item/storage/box/captain/rifle/PopulateContents()
	new /obj/item/gun/ballistic/rifle/boltaction(src)
	new /obj/item/clothing/under/costume/soviet(src)
	new /obj/item/clothing/suit/armor/vest/russian_coat(src)
	new /obj/item/clothing/head/ushanka(src)
	new /obj/item/reagent_containers/food/drinks/bottle/vodka/badminka(src)
	new /obj/item/ammo_box/a762(src)
	new /obj/item/ammo_box/a762(src)
	new /obj/item/ammo_box/a762(src)



/obj/item/storage/box/captain/shotgun
	name = "Energy Shotgun"
	desc = "For the captain that wishes to be a doom marine."

/obj/item/storage/box/captain/shotgun/PopulateContents()
	new /obj/item/gun/energy/laser/scatter(src)



//Captain blade beacon
/obj/item/choice_beacon/bungalow/captain/sabre
	name = "captain's blade beacon"
	desc = "A beacon the captain uses to select his weapon of choice."
	typesof_options = /obj/item/storage/box/sabre


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
