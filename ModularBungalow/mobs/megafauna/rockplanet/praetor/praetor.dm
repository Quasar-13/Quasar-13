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

	ranged = TRUE


	crusher_loot = list(/obj/effect/decal/remains/plasma, /obj/item/crusher_trophy/ice_block_talisman, /obj/item/ice_energy_crystal)
	loot = list(/obj/effect/decal/remains/plasma, /obj/item/ice_energy_crystal)
	wander = FALSE
	del_on_death = TRUE
	blood_volume = BLOOD_VOLUME_NORMAL
	achievement_type = /datum/award/achievement/boss/demonic_miner_kill
	crusher_achievement_type = /datum/award/achievement/boss/demonic_miner_crusher
	score_achievement_type = /datum/award/score/demonic_miner_score
	deathmessage = "falls to the ground, decaying into plasma particles."
	deathsound = "bodyfall"
	footstep_type = FOOTSTEP_MOB_HEAVY
	attack_action_types = list(/datum/action/innate/megafauna_attack/frost_orbs,
							   /datum/action/innate/megafauna_attack/lightning_strike,
							   /datum/action/innate/megafauna_attack/ice_shotgun)
	/// Modifies the speed of the projectiles the demonic frost miner shoots out
	var/projectile_speed_multiplier = 1

	movement_type = GROUND
	loot = list(/obj/item/clothing/accessory/medal/gold/captain/aureus)
	crusher_loot = list(/obj/item/clothing/accessory/medal/gold/captain/aureus)

	//Stealing these from the necromancer. I want to make a fight that works right now, will change it later
	var/strike_cooldown
	var/strike_cooldown_time = 6 SECONDS
	var/strike_range = 4
	var/strike_delay = 1


/mob/living/simple_animal/hostile/megafauna/praetor/Initialize()
	. = ..()
	ADD_TRAIT(src, TRAIT_NO_FLOATING_ANIM, ROUNDSTART_TRAIT)





/mob/living/simple_animal/hostile/megafauna/praetor/OpenFire()
	projectile_speed_multiplier = 1
	SetRecoveryTime(100, 100)

	if(client)
		switch(chosen_attack)
			if(1)
				frost_orbs()
			if(2)
				lightning_strike()
			if(3)
				ice_shotgun()
		return

	chosen_attack = rand(1, 3)
	switch(chosen_attack)
		if(1)
			frost_orbs(5, 16)
		if(2)
			lightning_strike(target)
		if(3)
			ice_shotgun(5, list(list(0, 30, 60, 90, 120, 150, 180, 210, 240, 270, 300, 330), list(-30, -15, 0, 15, 30)))



/mob/living/simple_animal/hostile/megafauna/praetor/ex_act(severity, target)
	adjustBruteLoss(30 * severity - 120)
	visible_message("<span class='danger'>[src] absorbs the explosion!</span>", "<span class='userdanger'>You absorb the explosion!</span>")


/// Shoots out homing frost orbs that explode into ice blast projectiles after a couple seconds
/mob/living/simple_animal/hostile/megafauna/praetor/proc/frost_orbs(added_delay = 10, shoot_times = 8)
	for(var/i in 1 to shoot_times)
		var/turf/startloc = get_turf(src)
		var/turf/endloc = get_turf(target)
		if(!endloc)
			break
		var/obj/projectile/frost_orb/P = new(startloc)
		P.preparePixelProjectile(endloc, startloc)
		P.firer = src
		if(target)
			P.original = target
		P.set_homing_target(target)
		P.fire(rand(0, 360))
		addtimer(CALLBACK(P, /obj/projectile/frost_orb/proc/orb_explosion, projectile_speed_multiplier), 20) // make the orbs home in after a second
		SLEEP_CHECK_DEATH(added_delay)
	SetRecoveryTime(40, 60)


/// Lightning Strike from necromancer
/mob/living/simple_animal/hostile/megafauna/praetor/proc/lightning_strike(target)
	if(strike_cooldown > world.time)
		return
	strike_cooldown = world.time + strike_cooldown_time
	say("千ㄩㄥᎶㄩ尺!")
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
		if("necromancer" in L.faction)
			continue
		L.adjustFireLoss(30)
		if(ishuman(L))
			var/mob/living/carbon/human/H = L
			H.electrocution_animation(4)

/// Shoots out ice blasts in a shotgun like pattern
/mob/living/simple_animal/hostile/megafauna/praetor/proc/ice_shotgun(shots = 5, list/patterns = list(list(-40, -20, 0, 20, 40), list(-30, -10, 10, 30)))
	say("Ꮆㄥ卂匚丨ㄖ")
	for(var/i in 1 to shots)
		var/list/pattern = patterns[i % length(patterns) + 1] // alternating patterns
		for(var/spread in pattern)
			var/turf/startloc = get_turf(src)
			var/turf/endloc = get_turf(target)
			if(!endloc)
				break
			var/obj/projectile/P = new /obj/projectile/ice_blast(startloc)
			P.speed *= projectile_speed_multiplier
			P.preparePixelProjectile(endloc, startloc, null, spread)
			P.firer = src
			if(target)
				P.original = target
			P.fire()
		SLEEP_CHECK_DEATH(8)
	SetRecoveryTime(15, 20)


/mob/living/simple_animal/hostile/megafauna/praetor/death(gibbed, list/force_grant)
	if(health > 0)
		return
	var/turf/T = get_turf(src)
	var/loot = rand(1, 3)
	switch(loot)
		if(1)
			new /obj/item/resurrection_crystal(T)
		if(2)
			new /obj/item/clothing/shoes/winterboots/ice_boots/ice_trail(T)
		if(3)
			new /obj/item/pickaxe/drill/jackhammer/demonic(T)
	return ..()





/obj/item/clothing/accessory/medal/gold/captain/aureus
	name = "Aureus"
	desc = "A gold coin attacked to a ribbon. Praetors wear this into battle."
