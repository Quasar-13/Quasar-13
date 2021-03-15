/obj/item/choice_beacon/mech
	name = "mecha pilot beacon"
	desc = "A beacon to be used to call down a mecha."

/obj/item/choice_beacon/mech/generate_display_names()
	var/static/list/mech_item_list
	if(!mech_item_list)
		mech_item_list = list()
		var/list/templist = typesof(/obj/vehicle/sealed/mecha/combat/pilot) //we have to convert type = name to name = type, how lovely!
		for(var/V in templist)
			var/atom/A = V
			mech_item_list[initial(A.name)] = A
	return mech_item_list

/obj/item/choice_beacon/spec/spawn_option(obj/choice,mob/living/M)
	new choice(get_turf(M))
	to_chat(M, "<span class='hear'>Please Stand by for titanfall.</span>")



/obj/vehicle/sealed/mecha/combat/pilot
	desc = "A lightweight, security exosuit. Popular among private and corporate security."
	name = "\improper Pilot Gygax"
	icon_state = "gygax"
	base_icon_state = "gygax"
	allow_diagonal_movement = TRUE
	movedelay = 2.6
	dir_in = 1 //Facing North.
	max_integrity = 150
	deflect_chance = 5
	armor = list(MELEE = 25, BULLET = 20, LASER = 30, ENERGY = 15, BOMB = 0, BIO = 0, RAD = 0, FIRE = 100, ACID = 100)
	max_temperature = 25000
	leg_overload_coeff = 80
	force = 25
	wreckage = /obj/structure/mecha_wreckage/gygax
	internal_damage_threshold = 35
	max_equip = 2
	step_energy_drain = 3


/obj/vehicle/sealed/mecha/combat/pilot/clarke
	desc = "Combining man and machine for a better, stronger engineer. Can even resist lava!"
	name = "\improper Pilot Clarke"
	icon_state = "clarke"
	base_icon_state = "clarke"
	max_temperature = 65000
	max_integrity = 100
	movedelay = 1.20
	resistance_flags = LAVA_PROOF | FIRE_PROOF | ACID_PROOF
	lights_power = 7
	deflect_chance = 10
	step_energy_drain = 15 //slightly higher energy drain since you movin those wheels FAST
	armor = list(MELEE = 20, BULLET = 10, LASER = 20, ENERGY = 10, BOMB = 0, BIO = 0, RAD = 0, FIRE = 100, ACID = 100) //low armor to compensate for fire protection and speed
	max_equip = 3
	wreckage = /obj/structure/mecha_wreckage/clarke
	enter_delay = 40
	mecha_flags = ADDING_ACCESS_POSSIBLE | IS_ENCLOSED | HAS_LIGHTS

