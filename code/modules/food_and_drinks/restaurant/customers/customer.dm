/datum/customer_data
	///Name of the robot's origin
	var/nationality = "Generic"
	///The types of food this robot likes in a assoc list of venue type | weighted list. does NOT include subtypes.
	var/list/orderable_objects = list()
	///The amount a robot pays for each food he likes in an assoc list type | payment
	var/list/order_prices = list()
	///Datum AI used for the robot. Should almost never be overwritten unless theyre subtypes of ai_controller/robot_customer
	var/datum/ai_controller/ai_controller_used = /datum/ai_controller/robot_customer
	///Patience of the AI, how long they will wait for their meal.
	var/total_patience = 600 SECONDS
	///Lines the robot says when it finds a seat
	var/list/found_seat_lines = list("I found a seat")
	///Lines the robot says when it can't find a seat
	var/list/cant_find_seat_lines = list("I did not find a seat")
	///Lines the robot says when leaving without food
	var/list/leave_mad_lines = list("Leaving without food")
	///Lines the robot says when leaving with food
	var/list/leave_happy_lines = list("Leaving with food")
	///Lines the robot says when leaving waiting for food
	var/list/wait_for_food_lines = list("I'm still waiting for food")
	///Line when pulled by a friendly venue owner
	var/friendly_pull_line = "Where are we going?"
	///Line when harrased by someone for the first time
	var/first_warning_line = "Don't touch me!"
	///Line when harrased by someone for the second time
	var/second_warning_line = "This is your last warning!"
	///Line when harrased by someone for the last time
	var/self_defense_line = "Omae wa mo, shinderou."

	///Clothing sets to pick from when dressing the robot.
	var/list/clothing_sets = list("amerifat_clothes")
	///List of prefixes for our robots name
	var/list/name_prefixes
	///Prefix file to uise
	var/prefix_file = "strings/names/american_prefix.txt"
	///Base icon for the customer
	var/base_icon = "amerifat"
	///Sound to use when this robot type speaks
	var/speech_sound = 'sound/effects/tourist_talk.ogg'
	/// Is this unique once per venue?
	var/is_unique = FALSE

/datum/customer_data/New()
	. = ..()
	name_prefixes = world.file2list(prefix_file)

/// Can this customer be chosen for this venue?
/datum/customer_data/proc/can_use(datum/venue/venue)
	return TRUE

/// Gets the order of this customer.
/// You want to override this if you have dynamic orders, such as the moth tourists requesting the chef's clothes.
/// If the list of orders are static, just modify orderable_objects.
/datum/customer_data/proc/get_order(datum/venue/venue)
	return pickweight(orderable_objects[venue.type])

/datum/customer_data/proc/get_overlays(mob/living/simple_animal/robot_customer/customer)
	return

/datum/customer_data/proc/get_underlays(mob/living/simple_animal/robot_customer/customer)
	return

/datum/customer_data/american
	nationality = "Space-American"
	orderable_objects = list(
	/datum/venue/restaurant = list(/obj/item/food/burger/plain = 25, /obj/item/food/burger/cheese = 15, /obj/item/food/burger/superbite = 1, /obj/item/food/fries = 10, /obj/item/food/cheesyfries = 6, /obj/item/food/pie/applepie = 4, /obj/item/food/pie/pumpkinpie = 2, /obj/item/food/hotdog = 8, /obj/item/food/pizza/pineapple = 1, /obj/item/food/burger/baconburger = 10, /obj/item/food/pancakes = 4),
	/datum/venue/bar = list(/datum/reagent/consumable/ethanol/b52 = 6, /datum/reagent/consumable/ethanol/manhattan = 3, /datum/reagent/consumable/ethanol/atomicbomb = 1, /datum/reagent/consumable/ethanol/beer = 25))


	found_seat_lines = list("I hope there's a seat that supports my weight.", "I hope I can bring my gun in here.", "I hope they have the triple deluxe fatty burger.", "I just love the culture here.")
	cant_find_seat_lines = list("I'm so tired from standing...", "I have chronic back pain, please hurry up and get me a seat!", "I'm not going to tip if I don't get a seat.")
	leave_mad_lines = list("NO TIP FOR YOU. GOODBYE!", "At least at SpaceDonalds they serve their food FAST!", "This venue is horrendous!", "I will speak to your manager!", "I'll be sure to leave a bad Yelp review.")
	leave_happy_lines = list("An extra tip for you my friend.", "Thanks for the great food!", "Diabetes is a myth anyway!")
	wait_for_food_lines = list("Listen buddy, I'm getting real impatient over here!", "I've been waiting for ages...")
	friendly_pull_line = "Where are you taking me? Not to medbay I hope, I don't have insurance."
	first_warning_line = "Don't tread on me!"
	second_warning_line = "Last chance buddy! Don't tread on me!"
	self_defense_line = "CASTLE DOCTRINE ACTIVATED!"


/datum/customer_data/italian
	nationality = "Space-Italian"
	prefix_file = "strings/names/italian_prefix.txt"
	base_icon = "italian"
	clothing_sets = list("italian_pison")

	found_seat_lines = list("What a wonderful place to sit.", "I hope they serve it like-a my momma used to make it.")
	cant_find_seat_lines = list("Mamma mia! I just want a seat!", "Why-a you making me stand here?")
	leave_mad_lines = list("I have-a not seen-a this much disrespect in years!", "What-a horrendous establishment!")
	leave_happy_lines = list("That's amoreee!", "Just like momma used to make it!")
	wait_for_food_lines = list("I'ma so hungry...")
	friendly_pull_line = "No-a I'm a hungry! I don't want to go anywhere."
	first_warning_line = "Do not-a touch me!"
	second_warning_line = "Last warning! Do not touch my spaghet."
	self_defense_line = "I'm going to knead you like mama kneaded her delicious meatballs!"
	orderable_objects = list(
	/datum/venue/restaurant = list(/obj/item/food/spaghetti/pastatomato = 20, /obj/item/food/spaghetti/copypasta = 6, /obj/item/food/spaghetti/meatballspaghetti = 4, /obj/item/food/pizza/vegetable = 2, /obj/item/food/pizza/mushroom = 2, /obj/item/food/pizza/meat = 2, /obj/item/food/pizza/margherita = 2),
	/datum/venue/bar = list(/datum/reagent/consumable/ethanol/fanciulli = 5, /datum/reagent/consumable/ethanol/branca_menta = 3, /datum/reagent/consumable/ethanol/beer = 10, /datum/reagent/consumable/lemonade = 8, /datum/reagent/consumable/ethanol/godfather = 5))

/datum/customer_data/italian/godfather
	clothing_sets = list("italian_godfather")

/datum/customer_data/french
	nationality = "Space-French"
	prefix_file = "strings/names/french_prefix.txt"
	base_icon = "french"
	clothing_sets = list("french_fit")
	found_seat_lines = list("Hon hon hon", "It's not the Eiffel tower but it will do.", "Yuck, I guess this will make do.")
	cant_find_seat_lines = list("Making someone like me stand? How dare you.", "What a filthy lobby!")
	leave_mad_lines = list("Sacre bleu!", "Merde! This place is shittier than the Rhine!")
	leave_happy_lines = list("Hon hon hon.", "A good effort.")
	wait_for_food_lines = list("Hon hon hon")
	speech_sound = 'sound/effects/tourist_talk_french.ogg'
	friendly_pull_line = "Your filthy hands on my outfit? Yegh, fine."
	first_warning_line = "Get your hands off of me!"
	second_warning_line = "Do not touch me you filthy animal, last warning!"
	self_defense_line = "I will break you like a baguette!"
	orderable_objects = list(
	/datum/venue/restaurant = list(/obj/item/food/baguette = 20, /obj/item/food/garlicbread = 5, /obj/item/food/soup/onion = 4, /obj/item/food/pie/berryclafoutis = 2, /obj/item/food/omelette = 15),
	/datum/venue/bar = list(/datum/reagent/consumable/ethanol/champagne = 15, /datum/reagent/consumable/ethanol/mojito = 5, /datum/reagent/consumable/ethanol/sidecar = 5, /datum/reagent/consumable/ethanol/between_the_sheets = 4, /datum/reagent/consumable/ethanol/beer = 10))

/datum/customer_data/french/get_overlays(mob/living/simple_animal/robot_customer/customer)
	if(customer.ai_controller.blackboard[BB_CUSTOMER_LEAVING])
		var/mutable_appearance/flag = mutable_appearance(customer.icon, "french_flag")
		flag.appearance_flags = RESET_COLOR
		return flag

/datum/customer_data/moth
	nationality = "Mothman"
	prefix_file = "strings/names/moth_prefix.txt"
	base_icon = "mothbot"
	found_seat_lines = list("Give me your hat!", "Moth?", "Certainly an... interesting venue.")
	cant_find_seat_lines = list("If I can't find a seat, I'm flappity flapping out of here quick!", "I'm trying to flutter here!")
	leave_mad_lines = list("I'm telling all my moth friends to never come here!", "Zero star rating, even worse than that time I ate a mothball!","Closing down permanently would still be too good of a fate for this place.")
	leave_happy_lines = list("I'd tip you my hat, but I ate it!", "I hope that wasn't a collectible!", "That was the greatest thing I ever ate, even better than Guanaco!")
	wait_for_food_lines = list("How hard is it to get food here? You're even wearing food yourself!", "My fuzzy robotic tummy is rumbling!", "I don't like waiting!")
	friendly_pull_line = "Moff?"
	first_warning_line = "Go away, I'm trying to get some hats here!"
	second_warning_line = "Last warning! I'll destroy you!"
	self_defense_line = "Flap attack!"

	speech_sound = 'sound/creatures/tourist/tourist_talk_moth.ogg'

	// Always asks for the clothes that you have on, but this is a fallback.
	orderable_objects = list(
		/datum/venue/restaurant = list(
			/obj/item/clothing/head/chefhat = 3,
			/obj/item/clothing/shoes/sneakers/black = 3,
			/obj/item/clothing/gloves/color/black = 1,
		),
	)

	clothing_sets = list("mothbot_clothes")
	is_unique = TRUE

	/// The wings chosen for the moth customers.
	var/list/wings_chosen

// The whole gag is taking off your hat and giving it to the customer.
// If it takes any more effort, it loses a bit of the comedy.
// Therefore, only show up if it's reasonable for that gag to happen.
/datum/customer_data/moth/can_use(datum/venue/venue)
	return !isnull(get_dynamic_order(venue))

/datum/customer_data/moth/proc/get_dynamic_order(datum/venue/venue)
	var/mob/living/carbon/buffet = venue.restaurant_portal?.turned_on_portal?.resolve()
	if (!istype(buffet))
		return

	var/list/orderable = list()

	if (!QDELETED(buffet.head))
		orderable[buffet.head] = 5

	if (!QDELETED(buffet.gloves))
		orderable[buffet.gloves] = 5

	if (!QDELETED(buffet.shoes))
		orderable[buffet.shoes] = 1

	if (orderable.len)
		var/datum/order = pickweight(orderable)
		return order.type
/datum/customer_data/moth/proc/get_wings(mob/living/simple_animal/robot_customer/customer)
	var/customer_ref = WEAKREF(customer)
	if (!LAZYACCESS(wings_chosen, customer_ref))
		LAZYSET(wings_chosen, customer_ref, GLOB.moth_wings_list[pick(GLOB.moth_wings_list)])
	return wings_chosen[customer_ref]

/datum/customer_data/moth/get_underlays(mob/living/simple_animal/robot_customer/customer)
	var/list/underlays = list()

	var/datum/sprite_accessory/moth_wings/wings = get_wings(customer)

	var/mutable_appearance/wings_behind = mutable_appearance(icon = 'icons/mob/moth_wings.dmi', icon_state = "m_moth_wings_[wings.icon_state]_BEHIND")
	wings_behind.appearance_flags = RESET_COLOR
	underlays += wings_behind

	return underlays

/datum/customer_data/moth/get_overlays(mob/living/simple_animal/robot_customer/customer)
	var/list/overlays = list()

	var/datum/sprite_accessory/moth_wings/wings = get_wings(customer)

	var/mutable_appearance/wings_front = mutable_appearance(icon = 'icons/mob/moth_wings.dmi', icon_state = "m_moth_wings_[wings.icon_state]_FRONT")
	wings_front.appearance_flags = RESET_COLOR
	overlays += wings_front

	var/mutable_appearance/jetpack = mutable_appearance(icon = customer.icon, icon_state = "mothbot_jetpack")
	jetpack.appearance_flags = RESET_COLOR
	overlays += jetpack

	return overlays

/datum/customer_data/moth/get_order(datum/venue/venue)
	var/dynamic_order = get_dynamic_order(venue)

	// Fall back to basic clothing.
	return dynamic_order || ..()

/datum/customer_data/mexican
	nationality = "Space-Mexican"
	base_icon = "mexican"
	prefix_file = "strings/names/mexican_prefix.txt"
	speech_sound = 'sound/creatures/tourist/tourist_talk_mexican.ogg'
	clothing_sets = list("mexican_poncho")
	orderable_objects = list(
	/datum/venue/restaurant = list(/obj/item/food/taco/plain = 25, /obj/item/food/taco = 15 , /obj/item/food/burrito = 15, /obj/item/food/fuegoburrito = 1, /obj/item/food/cheesyburrito = 4, /obj/item/food/nachos = 10, /obj/item/food/cheesynachos = 6, /obj/item/food/pie/dulcedebatata = 2, /obj/item/food/cubannachos = 3, /obj/item/food/stuffedlegion = 1),
	/datum/venue/bar = list(/datum/reagent/consumable/ethanol/whiskey = 6, /datum/reagent/consumable/ethanol/tequila = 20, /datum/reagent/consumable/ethanol/tequila_sunrise = 1, /datum/reagent/consumable/ethanol/beer = 15, /datum/reagent/consumable/ethanol/patron = 5, /datum/reagent/consumable/ethanol/brave_bull = 5, /datum/reagent/consumable/ethanol/margarita = 8))


	found_seat_lines = list("¿Como te va, space station 13?", "Who's ready to party!", "Ah, muchas gracias.", "Ahhh, smells like mi abuela's cooking!")
	cant_find_seat_lines = list("¿En Serio? Seriously, no seats?", "Andele! I want a table to watch the football match!", "Ay Caramba...")
	leave_mad_lines = list("Aye dios mio, I'm out of here.", "Esto es ridículo! I'm leaving!", "I've seen better cooking at taco campana!", "I though this was a restaurant, pero es porquería!")
	leave_happy_lines = list("Amigo, era delicio. Thank you!", "Yo tuve el mono, and you friend? You hit the spot.", "Just the right amount of spicy!")
	wait_for_food_lines = list("Ay ay ay, what's taking so long...", "Are you ready yet, amigo?")
