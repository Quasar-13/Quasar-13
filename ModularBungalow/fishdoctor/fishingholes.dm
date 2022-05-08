//Water source, use the type water_source for unlimited water sources like classic sinks.


/obj/structure/sink/puddle //splishy splashy ^_^ with the fishy
	name = "puddle"
	desc = "A fresh water puddle used for washing one's hands and face."
	icon_state = "puddle"
	resistance_flags = UNACIDABLE
	/// defines what type of fish can be fished out
	var/water_type = AQUARIUM_FLUID_FRESHWATER
	/// chance of not getting a bite when fishing
	var/fishing_difficulty = 20

//ATTACK HAND IGNORING PARENT RETURN VALUE
/obj/structure/sink/puddle/attack_hand(mob/user, list/modifiers)
	icon_state = "puddle-splash"
	. = ..()
	icon_state = "puddle"

/obj/structure/sink/puddle/attackby(obj/item/O, mob/user, params)
	icon_state = "puddle-splash"
	// fishing
	if(istype(O, /obj/item/fishing_rod))
		to_chat(user, span_notice("You cast the line..."))
		if(do_after(user, 10 SECONDS, target = src))
			if(prob(100 - fishing_difficulty))
				var/fish = random_fish_type(required_fluid = water_type)
				to_chat(user, span_warning("You catch a fish!"))
				new fish(get_turf(src))
			else
				to_chat(user, span_warning("Not even a nibble."))
		else
			to_chat(user, span_notice("You reel it back in."))
	else
		. = ..()
	icon_state = "puddle"

/obj/structure/sink/puddle/deconstruct(disassembled = TRUE)
	qdel(src)

/obj/structure/sink/puddle/salt
	name = "salt water fishing hole"
	desc = "A salt water puddle."
	water_type = AQUARIUM_FLUID_SALTWATER
	fishing_difficulty = 30

/obj/structure/sink/puddle/sulfur
	name = "sulphuric fishing hole"
	desc = "A sulphuric puddle."
	water_type = AQUARIUM_FLUID_SULPHWATEVER
	fishing_difficulty = 50
