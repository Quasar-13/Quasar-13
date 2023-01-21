/mob/living/simple_animal/hostile/platinum
	name = "platinum angel"
	desc = "An invincible being."
	health = 65335
	maxHealth = 65335
	icon = 'ModularBungalow/mobs/megafauna/rockplanet/platinumangel/mob.dmi'
	icon_state = "angel_wings"
	icon_living = "angel_wings"
	icon_dead = "angel_dead"
	mob_biotypes = MOB_ORGANIC|MOB_HUMANOID
	sentience_type = SENTIENCE_BOSS
	environment_smash = ENVIRONMENT_SMASH_RWALLS
	gender = FEMALE
	speak_chance = 0
	turns_per_move = 5
	pixel_x = -8
	response_help_continuous = "desparately grasps at"
	response_help_simple = "desperately grasps at"
	emote_taunt = list("points")
	taunt_chance = 25
	speed = 1
	is_flying_animal = TRUE
	gold_core_spawnable = FALSE
	stat_attack = HARD_CRIT
	robust_searching = 1
	loot = list(/obj/item/clothing/suit/space/hardsuit/platinum)
	deathmessage = "disintegrates."
	del_on_death = 1
	var/intro = 0

	harm_intent_damage = 25
	obj_damage = 50
	melee_damage_lower = 25
	melee_damage_upper = 25
	attack_verb_continuous = "slices"
	attack_verb_simple = "cuts"

	atmos_requirements = list("min_oxy" = 0, "max_oxy" = 0, "min_tox" = 0, "max_tox" = 0, "min_co2" = 0, "max_co2" = 0, "min_n2" = 0, "max_n2" = 0)
	minbodytemp = 0

	faction = list("platinum")

	footstep_type = FOOTSTEP_MOB_SHOE

/mob/living/simple_animal/hostile/platinum/Initialize()
	. = ..()
	ADD_TRAIT(src, TRAIT_SPACEWALK, INNATE_TRAIT)
	AddComponent(/datum/component/gps, "Platinum Signal")

/mob/living/simple_animal/hostile/platinum/AttackingTarget()
	. = ..()
	if(. && prob(12) && iscarbon(target))
		var/mob/living/carbon/C = target
		C.Paralyze(60)
		C.visible_message("<span class='danger'>\The [src] knocks down \the [C]!</span>", \
				"<span class='userdanger'>\The [src] knocks you down!</span>")


/mob/living/simple_animal/hostile/platinum/Aggro()
	..()
	if(intro == 0)
		say("I am thoust")
		sleep(5)
		say("And thoust art mine.")
		sleep(5)
		say("Mine life is unending.")
		sleep(5)
		say("Thoust is fleeting.")
		sleep(5)
		say("Let us fight unto death.")
		intro = 1
