/obj/vehicle/sealed/car/jet
	engine_sound = 'sound/machines/airlock.ogg'
	engine_sound_length = 0.5 SECONDS
	escape_time = 5 SECONDS
	max_integrity = 300
	/// How long it takes to move, cars don't use the riding component similar to mechs so we handle it ourselves
	vehicle_move_delay = 0.8
	pixel_y = -16
	pixel_x = -16
	name = "Jet"
	desc = "NT's Fastest most well-rounded ship."
	icon_state = "jet"
	icon = 'ModularBungalow/Spaceships/ship.dmi'


/obj/vehicle/sealed/car/jet/Move(newloc,move_dir)
	if(has_buckled_mobs())
		new /obj/effect/temp_visual/dir_setting/speedbike_trail(loc,move_dir)
	return ..()

/obj/vehicle/sealed/car/jet/Bump(atom/A)
	. = ..()
	if(!A.density || !has_buckled_mobs())
		return

	var/atom/throw_target = get_edge_target_turf(A, dir)
	if(ishuman(A))
		var/mob/living/carbon/human/H = A
		H.Paralyze(100)
		H.adjustStaminaLoss(30)
		H.apply_damage(rand(20,35), BRUTE)
		H.throw_at(throw_target, 4, 3)
		visible_message("<span class='danger'>[src] crashes into [H]!</span>")
		playsound(src, 'sound/effects/bang.ogg', 50, TRUE)



/obj/vehicle/sealed/car/jet/interceptor
	escape_time = 10 SECONDS
	/// How long it takes to move, cars don't use the riding component similar to mechs so we handle it ourselves
	vehicle_move_delay = 0.4
	name = "Interceptor"
	desc = "NT's Fastest ship in the west."
	icon_state = "int"

