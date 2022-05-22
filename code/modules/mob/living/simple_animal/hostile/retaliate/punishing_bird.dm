/mob/living/simple_animal/hostile/retaliate/punishing_bird
	name = "punishing bird"
	desc = "A white bird with tiny beak. Looks harmless."
	icon = 'icons/mob/punishing_bird.dmi'
	icon_state = "pbird"
	icon_living = "pbird"
	icon_dead = "pbird_dead"
	icon_gib = "pbird_dead"
	turns_per_move = 2
	response_help_continuous = "brushes aside"
	response_help_simple = "brush aside"
	response_disarm_continuous = "flails at"
	response_disarm_simple = "flail at"
	mob_biotypes = MOB_ORGANIC|MOB_BEAST
	speak_chance = 0
	maxHealth = 300
	health = 300
	see_in_dark = 10
	harm_intent_damage = 5
	melee_damage_lower = 1
	melee_damage_upper = 2
	rapid_melee = 2
	stat_attack = SOFTER_CRIT
	attack_verb_continuous = "bites"
	attack_verb_simple = "bite"
	pass_flags = PASSTABLE
	faction = list("hostile")
	attack_sound = 'sound/weapons/pbird_bite.ogg'
	obj_damage = 0
	environment_smash = ENVIRONMENT_SMASH_NONE
	mob_size = MOB_SIZE_TINY
	is_flying_animal = TRUE
	speak_emote = list("chirps")
	atmos_requirements = list("min_oxy" = 0, "max_oxy" = 0, "min_tox" = 0, "max_tox" = 0, "min_co2" = 0, "max_co2" = 0, "min_n2" = 0, "max_n2" = 0)
	minbodytemp = 0
	vision_range = 14
	aggro_vision_range = 28
	var/list/already_punished = list()

/mob/living/simple_animal/hostile/retaliate/punishing_bird/Initialize()
	. = ..()
	ADD_TRAIT(src, TRAIT_SPACEWALK, INNATE_TRAIT)

/mob/living/simple_animal/hostile/retaliate/punishing_bird/Retaliate()
	. = ..()
	if(enemies.len && (health < maxHealth * 0.9) && (obj_damage <= 0))
		TransformRed()

/mob/living/simple_animal/hostile/retaliate/punishing_bird/proc/TransformRed()
	visible_message("<span class='danger'>\The [src] turns its insides out as a giant bloody beak appears!</span>")
	icon_state = "pbird_red"
	icon_living = "pbird_red"
	attack_verb_continuous = "eviscerates"
	attack_verb_simple = "eviscerate"
	melee_damage_lower = 50
	melee_damage_upper = 75
	obj_damage = 100
	environment_smash = ENVIRONMENT_SMASH_STRUCTURES
	stat_attack = DEAD

/mob/living/simple_animal/hostile/retaliate/punishing_bird/proc/TransformBack()
	visible_message("<span class='notice'>\The [src] turns back into a fuzzy looking bird!</span>")
	icon_state = initial(icon_state)
	icon_living = initial(icon_living)
	attack_verb_continuous = initial(attack_verb_continuous)
	attack_verb_simple = initial(attack_verb_simple)
	melee_damage_lower = initial(melee_damage_lower)
	melee_damage_upper = initial(melee_damage_upper)
	obj_damage = initial(obj_damage)
	environment_smash = initial(environment_smash)
	stat_attack = initial(stat_attack)
	adjustHealth(-maxHealth) // Full restoration

/mob/living/simple_animal/hostile/retaliate/punishing_bird/Life()
	if(..())
		if(obj_damage > 0) // Already transformed
			return
		if(prob(4))
			var/list/around = view(src, vision_range)
			var/list/potential_mobs = list()
			for(var/mob/living/carbon/C in around)
				if(C.ckey && C.client && !faction_check_mob(C) && !(C in already_punished))
					potential_mobs += C
			if(potential_mobs.len)
				var/mob/living/carbon/le_target = pick(potential_mobs)
				enemies |= le_target

/mob/living/simple_animal/hostile/retaliate/punishing_bird/AttackingTarget()
	. = ..()
	if(isliving(target))
		var/mob/living/L = target
		if(obj_damage <= 0) // Not transformed
			if(prob(10) && (L in enemies))
				enemies -= L
				already_punished |= L
				target = null
		else if(L.health <= HEALTH_THRESHOLD_FULLCRIT)
			visible_message("<span class='danger'>\The [src] devours [L]!</span>")
			L.gib()
			TransformBack()
