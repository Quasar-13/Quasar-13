/**
 * The base type of ALL Bungalow choice-beacons
 * All Bungalow choice beacons are subtypes of this one, to avoid copy-paste.


 That was the plan, but this does not work. I am manually going back in to fix
 */

//Captain blade beacon
/obj/item/choice_beacon/gun
	name = "captain's gun beacon"
	desc = "A beacon the captain uses to select his weapon of choice."

/obj/item/choice_beacon/gun/generate_display_names()
	var/static/list/sord_item_list
	if(!sord_item_list)
		sord_item_list = list()
		var/list/templist = typesof(/obj/item/storage/box/captain/gun) //we have to convert type = name to name = type, how lovely!
		for(var/V in templist)
			var/atom/A = V
			sord_item_list[initial(A.name)] = A
	return sord_item_list

/obj/item/choice_beacon/sabre/spawn_option(obj/choice,mob/living/M)
	new choice(get_turf(M))
	to_chat(M, "<span class='hear'>Thank you for your service. Captain.</span>")

/obj/item/storage/box/captain/gun
	name = "Energy Gun, Standard Issue"
	desc = "The classic energy weapon used for ages by NT captains."

/obj/item/storage/box/captain/gun/PopulateContents()
	new /obj/item/gun/energy/e_gun(src)

/obj/item/storage/box/captain/gun/pistols
	name = "Dual Energy Pistols"
	desc = "For the action hero captain, who loves to get themselves a little gung-ho"

/obj/item/storage/box/captain/gun/pistols/PopulateContents()
	new /obj/item/gun/energy/e_gun/mini(src)
	new /obj/item/gun/energy/e_gun/mini(src)

/obj/item/storage/box/captain/gun/pl
	name = "PL-14"
	desc = "The gun for a captain who is reserved, sly and charming."

/obj/item/storage/box/captain/gun/pl/PopulateContents()
	new /obj/item/gun/ballistic/automatic/pistol/PL14(src)

/obj/item/storage/box/captain/gun/revolver
	name = "Chiappa Rhino"
	desc = "The gun for a bombastic captain that loves to shoot to kill. Captain Chiappa and his 6 commandos take no prisoners."

/obj/item/storage/box/captain/gun/revolver/PopulateContents()
	new /obj/item/gun/ballistic/revolver/rhino(src)
	new /obj/item/ammo_box/c38(src)
	new /obj/item/ammo_box/c38(src)
	new /obj/item/ammo_box/c38(src)

/obj/item/storage/box/captain/gun/rifle
	name = "Mosin Nagant"
	desc = "HAIL THE GLORIOUS COMMISSAR"

/obj/item/storage/box/captain/gun/rifle/PopulateContents()
	new /obj/item/gun/ballistic/rifle/boltaction(src)
	new /obj/item/clothing/under/costume/soviet(src)
	new /obj/item/clothing/suit/armor/vest/russian_coat(src)
	new /obj/item/clothing/head/ushanka(src)
	new /obj/item/reagent_containers/food/drinks/bottle/vodka/badminka(src)
	new /obj/item/ammo_box/a762(src)
	new /obj/item/ammo_box/a762(src)
	new /obj/item/ammo_box/a762(src)


/obj/item/storage/box/captain/gun/shotgun
	name = "Energy Shotgun"
	desc = "For the captain that wishes to be a doom marine."

/obj/item/storage/box/captain/gun/shotgun/PopulateContents()
	new /obj/item/gun/energy/laser/scatter(src)


/obj/item/storage/box/captain/gun/melter
	name = "Melter Rifle"
	desc = "For the captain that hates others."

/obj/item/storage/box/captain/gun/melter/PopulateContents()
	new /obj/item/gun/energy/laser/hellgun(src)




//captain sabre
/obj/item/choice_beacon/sabre
	name = "captain's blade beacon"
	desc = "A beacon the captain uses to select his weapon of choice."

/obj/item/choice_beacon/sabre/generate_display_names()
	var/static/list/cap_item_list
	if(!cap_item_list)
		cap_item_list = list()
		var/list/templist = typesof(/obj/item/storage/box/sabre) //we have to convert type = name to name = type, how lovely!
		for(var/V in templist)
			var/atom/A = V
			cap_item_list[initial(A.name)] = A
	return cap_item_list

/obj/item/storage/box/sabre
	name = "Sabre, Standard Issues"
	desc = "The classic sabre used for ages by NT captains."

/obj/item/storage/box/sabre/PopulateContents()
	new /obj/item/storage/belt/sabre(src)

/obj/item/storage/box/sabre/rapier
	name = "Rapier"
	desc = "For the elegant captain"

/obj/item/storage/box/sabre/rapier/PopulateContents()
	new /obj/item/storage/belt/rapier(src)

/obj/item/storage/box/sabre/lance
	name = "Lance of Longinus"
	desc = "The holy lance is actually a special nullrod. Throw it to annihilate any evildoers."

/obj/item/storage/box/sabre/lance/PopulateContents()
	new /obj/item/nullrod/spear/captain(src)

/obj/item/storage/box/sabre/katana
	name = "Captain's Katana"
	desc = "The blade of the captain who prefers something a little extra."

/obj/item/storage/box/sabre/katana/PopulateContents()
	new /obj/item/katana/captain(src)

/obj/item/storage/box/sabre/dagger
	name = "Meteoric Iron Dagger"
	desc = "A dagger made from ancient iron."

/obj/item/storage/box/sabre/dagger/PopulateContents()
	new /obj/item/kitchen/knife/meteorknife(src)

/obj/item/storage/box/sabre/halberd
	name = "Gae Bolg"
	desc = "A halberd with long reach."

/obj/item/storage/box/sabre/bamboo/PopulateContents()
	new /obj/item/storage/belt/bamboo(src)

/obj/item/storage/box/sabre/bamboo
	name = "Bamboo Sword Bag"
	desc = "A bag of bamboo swords."

/obj/item/storage/box/sabre/whip/PopulateContents()
	new /obj/item/melee/chainofcommand/upgraded(src)

/obj/item/storage/box/sabre/whip
	name = "Chain of Captaincy"
	desc = "An upgraded chainwhip."

/obj/item/storage/box/sabre/halberd/PopulateContents()
	new /obj/item/melee/halberd(src)

/obj/item/storage/box/sabre/drill
	name = "Galaxy Breaker Spear"
	desc = "A spear with a drill tip."

/obj/item/storage/box/sabre/drill/PopulateContents()
	new /obj/item/melee/drillspear(src)
	new /obj/item/clothing/neck/cloak/simone(src)
	new /obj/item/clothing/glasses/sunglasses/gar(src)


/*
 * # Marine ERT beacon BLACKSITE
 */
/obj/item/choice_beacon/combat/marine
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


//ERT
/obj/item/choice_beacon/ert
	name = "ERT beacon"
	desc = "A beacon the ert officers use to choose their weapons."

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

//Deathsquad
/obj/item/choice_beacon/deathsquad
	name = "Deathsquad beacon"
	desc = "A beacon the deathsquad troopers use to choose their weapons."

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

