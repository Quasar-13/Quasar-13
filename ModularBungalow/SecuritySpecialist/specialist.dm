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

/obj/item/storage/backpack/duffelbag/sec/spec
	name = "wetwork kit"
	desc = "A large duffel bag containing a sniper rifle loaded in 50 cal and a magazine of sleeping shots. Comes with thermal goggles"

/obj/item/storage/backpack/duffelbag/sec/spec/PopulateContents()
	new /obj/item/gun/ballistic/automatic/sniper_rifle(src)
	new /obj/item/ammo_box/magazine/sniper_rounds/soporific(src)
	new /obj/item/clothing/glasses/thermal(src)



/obj/item/storage/backpack/duffelbag/sec/spec/intel
	name = "intelligence kit"
	desc = "A large duffel bag containing stolen syndicate gear for going undercover."

//encryption key
/obj/item/encryptionkey/intel
	name = "\proper intelligence officer's encryption key"
	icon_state = "cap_cypherkey"
	channels = list(RADIO_CHANNEL_ENGINEERING = 0, RADIO_CHANNEL_SCIENCE = 0, RADIO_CHANNEL_MEDICAL = 0, RADIO_CHANNEL_SUPPLY = 0, RADIO_CHANNEL_SERVICE = 0)


/obj/item/storage/backpack/duffelbag/sec/spec/intel/PopulateContents()
	new /obj/item/clothing/under/chameleon(src)
	new /obj/item/clothing/head/chameleon(src)
	new /obj/item/clothing/mask/chameleon(src)
	new /obj/item/clothing/suit/chameleon(src)
	new /obj/item/encryptionkey/intel(src)

/obj/item/storage/backpack/duffelbag/sec/spec/blueshield
	name = "blueshield kit"
	desc = "A large duffel bag containing all you need to keep an important individual alive."

/obj/item/storage/backpack/duffelbag/sec/spec/blueshield/PopulateContents()
	new /obj/item/clothing/suit/armor/heavy(src)
	new /obj/item/clothing/head/helmet/space/syndicate/blue(src)
	new /obj/item/gun/energy/e_gun/old(src)
	new /obj/item/pinpointer/crew(src)
	new /obj/item/sensor_device(src)


