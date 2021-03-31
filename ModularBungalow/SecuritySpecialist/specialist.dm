/obj/item/choice_beacon/spec
	name = "security specialist beacon"
	desc = "A beacon security can use to give one of it's officers extra utility or firepower."

/obj/item/choice_beacon/spec/generate_display_names()
	var/static/list/spec_item_list
	if(!spec_item_list)
		spec_item_list = list()
		var/list/templist = typesof(/obj/item/storage/backpack/duffelbag/sec/spec) //we have to convert type = name to name = type, how lovely!
		for(var/V in templist)
			var/atom/A = V
			spec_item_list[initial(A.name)] = A
	return spec_item_list

/obj/item/choice_beacon/spec/spawn_option(obj/choice,mob/living/M)
	new choice(get_turf(M))
	to_chat(M, "<span class='hear'>Good luck, Soldier.</span>")



//Wetwork
/obj/item/storage/backpack/duffelbag/sec/spec
	name = "wetwork kit"
	desc = "A large duffel bag containing a special energy sniper with lethal and disable modes. Comes with thermal goggles"

/obj/item/storage/backpack/duffelbag/sec/spec/PopulateContents()
	new /obj/item/gun/energy/sniper/security(src)
	new /obj/item/clothing/glasses/thermal(src)



//Intelligence
//encryption key
/obj/item/encryptionkey/intel
	name = "\proper intelligence officer's encryption key"
	icon_state = "cap_cypherkey"
	channels = list(RADIO_CHANNEL_ENGINEERING = 0, RADIO_CHANNEL_SCIENCE = 0, RADIO_CHANNEL_MEDICAL = 0, RADIO_CHANNEL_SUPPLY = 0, RADIO_CHANNEL_SERVICE = 0)

//Actual duffel
/obj/item/storage/backpack/duffelbag/sec/spec/intel
	name = "intelligence kit"
	desc = "A large duffel bag containing stolen syndicate gear for going undercover."

/obj/item/storage/backpack/duffelbag/sec/spec/intel/PopulateContents()
	new /obj/item/clothing/under/chameleon(src)
	new /obj/item/clothing/head/chameleon(src)
	new /obj/item/clothing/mask/chameleon(src)
	new /obj/item/clothing/suit/chameleon(src)
	new /obj/item/encryptionkey/intel(src)



//Blueshield
/obj/item/storage/backpack/duffelbag/sec/spec/blueshield
	name = "blueshield kit"
	desc = "A large duffel bag containing all you need to keep an important individual alive."

/obj/item/storage/backpack/duffelbag/sec/spec/blueshield/PopulateContents()
	new /obj/item/clothing/suit/armor/heavy(src)
	new /obj/item/clothing/head/helmet/space/syndicate/blue(src)
	new /obj/item/gun/energy/e_gun/old(src)
	new /obj/item/pinpointer/crew(src)
	new /obj/item/sensor_device(src)



//Mech Pilot
/obj/item/storage/backpack/duffelbag/sec/spec/pilot
	name = "mech pilot kit"
	desc = "A large duffel bag containing all you need for armored support."

/obj/item/storage/backpack/duffelbag/sec/spec/pilot/PopulateContents()
	new /obj/item/choice_beacon/mech(src)
	new /obj/item/mecha_parts/mecha_equipment/weapon/energy/disabler(src)
	new /obj/item/mecha_parts/mecha_equipment/weapon/ballistic/launcher/flashbang(src)
	new /obj/item/clothing/under/costume/mech_suit(src)
	new /obj/item/clothing/under/costume/mech_suit/white(src)
	new /obj/item/clothing/under/costume/mech_suit/blue(src)
	new /obj/item/clothing/suit/jacket/miljacket(src)



//Combat Medic

//Revival first aid
/obj/item/storage/firstaid/tactical/spec
	name = "revival first aid kit"
	desc = "A first aid kit with the ability to quickly revive people in an emergency"

obj/item/storage/firstaid/tactical/spec/PopulateContents()
	if(empty)
		return
	var/static/items_inside = list(
		/obj/item/clothing/glasses/healthsec = 1,
		/obj/item/reagent_containers/pill/patch/synthflesh = 5,
		/obj/item/reagent_containers/syringe/syriniver = 2)
	generate_items_inside(items_inside,src)

//Actual duffel
/obj/item/storage/backpack/duffelbag/sec/spec/medic
	name = "combat medic kit"
	desc = "A large duffel bag containing all you need for healing support."

/obj/item/storage/backpack/duffelbag/sec/spec/medic/PopulateContents()
	new /obj/item/gun/medbeam(src)
	new /obj/item/defibrillator/compact(src)
	new /obj/item/storage/firstaid/tactical/spec(src)
	new /obj/item/clothing/suit/armor/labcoat(src)
	new /obj/item/clothing/head/beret/sec/medical(src)



//Paranormal
/obj/item/storage/backpack/duffelbag/sec/spec/paranormal
	name = "paranormal kit"
	desc = "A large duffel bag containing all you need all anti-magic needs."

/obj/item/storage/backpack/duffelbag/sec/spec/paranormal/PopulateContents()
	new /obj/item/nullrod/claymore/chainsaw_sword(src)
	new /obj/item/reagent_containers/food/drinks/bottle/holywater(src)
	new /obj/item/storage/book/bible(src)


