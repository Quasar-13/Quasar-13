//Gun beacon
/obj/item/choice_beacon/captain
	name = "captain's gun beacon"
	desc = "A beacon the captain uses to select his weapon of choice."

/obj/item/choice_beacon/captain/generate_display_names()
	var/static/list/cap_item_list
	if(!cap_item_list)
		cap_item_list = list()
		var/list/templist = typesof(/obj/item/storage/box/captain) //we have to convert type = name to name = type, how lovely!
		for(var/V in templist)
			var/atom/A = V
			cap_item_list[initial(A.name)] = A
	return cap_item_list

/obj/item/choice_beacon/captain/spawn_option(obj/choice,mob/living/M)
	new choice(get_turf(M))
	to_chat(M, "<span class='hear'>Thank you for your service. Captain.</span>")


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
