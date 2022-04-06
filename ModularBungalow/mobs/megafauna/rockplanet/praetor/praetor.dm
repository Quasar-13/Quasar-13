//I want to do a magic-based megafauna.
//This is my first megafauna so I want it to be simple

/mob/living/simple_animal/hostile/megafauna/praetor
	name = "\proper The Praetor"
	desc = "She who walks in death. She who commands the Centurions. The right hand of the Consul."
	icon = 'ModularBungalow/mobs/megafauna/rockplanet/praetor/mob.dmi'
	mob_biotypes = MOB_HUMANOID
	health = 4000
	maxHealth = 4000
	icon_state = "norn"
	attack_verb_simple = "rends"
	attack_verb_continuous = "rends"
	attack_sound = 'sound/weapons/bladeslice.ogg'
	deathmessage = "bursts into a shower of blood."
	del_on_death = TRUE
	gps_name = "August Signal"
	speak_emote = list("hisses")
	vision_range = 9
	aggro_vision_range = 9
	rapid_melee = 1
	melee_queue_distance = 2
	armour_penetration = 80 // High as FUCK AP. This is a HARD fight and while she is slow, the platinum angel exists here.
	melee_damage_lower = 40 //Everyone is equal.
	melee_damage_upper = 40
	speed = 2
	move_to_delay = 5
	wander = FALSE
	ranged_cooldown_time = 30
	minimum_distance = 1

	attack_action_types = list(/datum/action/innate/megafauna_attack/ice_shotgun,
							   /datum/action/innate/megafauna_attack/lightning_strike)
	movement_type = GROUND
	loot = list(/obj/item/clothing/accessory/medal/gold/captain/aureus)
	crusher_loot = list(/obj/item/clothing/accessory/medal/gold/captain/aureus)

	//Stealing these from the necromancer. I want to make a fight that works right now
	var/strike_cooldown
	var/strike_cooldown_time = 6 SECONDS
	var/strike_range = 4
	var/strike_delay = 1


/mob/living/simple_animal/hostile/megafauna/praetor/OpenFire()
	SetRecoveryTime(100, 100)

	if(client)
		switch(chosen_attack)
			if(1)
//				fire_cone()
			if(2)
				lightning_strike(target)
			if(3)
				ice_shotgun(5, list(list(0, 30, 60, 90, 120, 150, 180, 210, 240, 270, 300, 330), list(-30, -15, 0, 15, 30)))
		return

	chosen_attack = rand(1, 3)
	switch(chosen_attack)
		if(1)
//			fire_cone()
			ice_shotgun(5, list(list(0, 30, 60, 90, 120, 150, 180, 210, 240, 270, 300, 330), list(-30, -15, 0, 15, 30)))
		if(2)
			lightning_strike(target)
		if(3)
			ice_shotgun(5, list(list(0, 30, 60, 90, 120, 150, 180, 210, 240, 270, 300, 330), list(-30, -15, 0, 15, 30)))

//Lightning strike from the necromancer
/mob/living/simple_animal/hostile/megafauna/praetor/proc/lightning_strike(target)
	if(strike_cooldown > world.time)
		return
	strike_cooldown = world.time + strike_cooldown_time
	say("千ㄩㄥᎶㄩ尺!")//I wanted it to say Fulgur in Zalgo text but I'm going to settle for EXTRA THICC Text
	playsound(src, 'sound/magic/lightningshock.ogg', 60, 1)
	var/list/target_turfs = list()
	for(var/turf/open/T in range(strike_range, target))
		if(prob(40))
			target_turfs += T
			new /obj/effect/temp_visual/cult/turf/floor(T)
			addtimer(CALLBACK(src, .proc/lightning_bolt, T), 5)
			SLEEP_CHECK_DEATH(strike_delay)

/mob/living/simple_animal/hostile/megafauna/praetor/proc/lightning_bolt(turf/open/T)
	if(!T)
		return // No turf? Do nothing.
	var/turf/lightning_source = get_step(get_step(T, NORTH), NORTH)
	if(lightning_source)
		lightning_source.Beam(T, icon_state="lightning[rand(1,12)]", time = 3)
	playsound(T, 'sound/magic/lightningbolt.ogg', 30, TRUE)
	for(var/mob/living/L in T)
		L.adjustFireLoss(30)
		if(ishuman(L))
			var/mob/living/carbon/human/H = L
			H.electrocution_animation(4)



/// The Ice shotgun from the frost miner
/mob/living/simple_animal/hostile/megafauna/praetor/proc/ice_shotgun(shots = 5, list/patterns = list(list(-40, -20, 0, 20, 40), list(-30, -10, 10, 30)))
	say("Ꮆㄥ卂匚丨ㄖ") //I wanted it to say Glacio in Zalgo text but I'm going to settle for EXTRA THICC Text
	for(var/i in 1 to shots)
		var/list/pattern = patterns[i % length(patterns) + 1] // alternating patterns
		for(var/spread in pattern)
			var/turf/startloc = get_turf(src)
			var/turf/endloc = get_turf(target)
			if(!endloc)
				break
			var/obj/projectile/P = new /obj/projectile/ice_blast(startloc)
			P.speed *= 2
			P.preparePixelProjectile(endloc, startloc, null, spread)
			P.firer = src
			if(target)
				P.original = target
			P.fire()
		SLEEP_CHECK_DEATH(8)



/obj/item/clothing/accessory/medal/gold/captain/aureus
	name = "Aureus"
	desc = "A gold coin attacked to a ribbon. Praetors wear this into battle."
