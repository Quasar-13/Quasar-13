/mob/living/simple_animal/hostile/megafauna/necromancer
	name = "necromancer"
	desc = "A powerful mage in a dark armor. Legends say that he has sold his and countless souls of other mages for this power."
	health = 2500
	maxHealth = 2500
	icon_state = "necromancer_winged"
	icon_living = "necromancer_winged"
	icon = 'ModularTegustation/Teguicons/megafauna.dmi'
	faction = list("necromancer")
	mob_biotypes = MOB_ORGANIC|MOB_HUMANOID
	light_color = "#0F0F0F"
	light_range = 6
	light_power = 10
	movement_type = GROUND
	speak_emote = list("says")
	speed = 6
	move_to_delay = 4
	vision_range = 10
	ranged = TRUE
	damage_coeff = list(BRUTE = 1, BURN = 0.5, TOX = 0.5, CLONE = 0.5, STAMINA = 0, OXY = 0.5)
	loot = list()
	crusher_loot = list()
	wander = FALSE
	del_on_death = TRUE
	blood_volume = BLOOD_VOLUME_NORMAL
	achievement_type = /datum/award/achievement/boss/marine_kill
	crusher_achievement_type = /datum/award/achievement/boss/marine_crusher
	score_achievement_type = /datum/award/score/marine_score
	deathmessage = "falls to the ground, decaying into glowing particles."
	deathsound = "sound/magic/curse.ogg"
	attack_action_types = list(/datum/action/innate/megafauna_attack/necrotic_revival,
							/datum/action/innate/megafauna_attack/lightning_strike
							)
	move_force = MOVE_FORCE_NORMAL
	var/revival_cooldown
	var/revival_cooldown_time = 20 SECONDS
	var/strike_cooldown
	var/strike_cooldown_time = 10 SECONDS

/datum/action/innate/megafauna_attack/necrotic_revival
	name = "Necrotic Revival"
	icon_icon = 'icons/mob/actions/actions_spells.dmi'
	button_icon_state = "skeleton"
	chosen_message = "<span class='colossus'>You will now force skeletons to rise once more.</span>"
	chosen_attack_num = 1

/datum/action/innate/megafauna_attack/lightning_strike
	name = "Lightning Strike"
	icon_icon = 'icons/mob/actions/actions_spells.dmi'
	button_icon_state = "lightning"
	chosen_message = "<span class='colossus'>You will now strike with a force of lightning all around your target.</span>"
	chosen_attack_num = 2

/mob/living/simple_animal/hostile/megafauna/necromancer/OpenFire()
	if(client)
		switch(chosen_attack)
			if(1)
				necrotic_revival()
			if(2)
				lightning_strike(target)
		return
	Goto(target, move_to_delay, minimum_distance)
	if(revival_cooldown <= world.time)
		necrotic_revival()
	if(strike_cooldown <= world.time && (get_dist(src, target) > 3))
		lightning_strike()

/mob/living/simple_animal/hostile/megafauna/necromancer/devour(mob/living/L)
	for(var/obj/item/W in L)
		if(!L.dropItemToGround(W))
			qdel(W)
	visible_message("<span class='danger'>[src] turns [L] to dust!</span>","<span class='userdanger'>You annihilate [L], restoring your health!</span>")
	adjustHealth(-L.maxHealth*0.5)
	L.dust() // More remains to make skeletons from

/mob/living/simple_animal/hostile/megafauna/necromancer/proc/necrotic_revival()
	if(revival_cooldown > world.time)
		return
	revival_cooldown = world.time + revival_cooldown_time
	say("Rise my servants!")
	playsound(src, 'sound/magic/voidblink.ogg', 100, 1)
	for(var/turf/open/T in view(5, src))
		var/successful_revival = FALSE
		for(var/obj/effect/decal/remains/R in T)
			new /mob/living/simple_animal/hostile/skeleton/necromancer(T)
			qdel(R)
			successful_revival = TRUE
		if(successful_revival)
			new /obj/effect/temp_visual/cult/blood/out(T)

/mob/living/simple_animal/hostile/skeleton/necromancer
	faction = list("necromancer")

/mob/living/simple_animal/hostile/megafauna/necromancer/proc/lightning_strike(target)
	if(strike_cooldown > world.time)
		return
	strike_cooldown = world.time + strike_cooldown_time
	say("Lini Azam!")
	playsound(src, 'sound/magic/lightningshock.ogg', 100, 1)
	var/list/target_turfs = list()
	for(var/turf/open/T in range(3, target))
		if(prob(40))
			target_turfs += T
			new /obj/effect/temp_visual/cult/turf/floor(T)
			addtimer(CALLBACK(src, .proc/lightning_bolt, T), 4)
			SLEEP_CHECK_DEATH(2)

/mob/living/simple_animal/hostile/megafauna/necromancer/proc/lightning_bolt(turf/open/T)
	var/turf/lightning_source = get_step(get_step(T, NORTH), NORTH)
	lightning_source.Beam(T, icon_state="lightning[rand(1,12)]", time = 3)
	playsound(get_turf(T), 'sound/magic/lightningbolt.ogg', 50, TRUE)
	for(var/mob/living/L in T)
		if("necromancer" in L.faction)
			continue
		L.adjustFireLoss(35)
		if(ishuman(L))
			var/mob/living/carbon/human/H = L
			H.electrocution_animation(4)
