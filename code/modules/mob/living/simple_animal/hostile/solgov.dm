//don't spawn this one
/mob/living/simple_animal/hostile/solgov
	name = "Solgov Standard"
	desc = "For the Motherland!"
	icon = 'icons/mob/simple_human.dmi'
	icon_state = "solgovgeneric"
	icon_living = "solgovgeneric"
	icon_dead = "russianmelee_dead"
	icon_gib = "syndicate_gib"
	mob_biotypes = MOB_ORGANIC|MOB_HUMANOID
	speak_chance = 1
	turns_per_move = 5
	speed = 1
	maxHealth = 170
	health = 170
	harm_intent_damage = 5
	melee_damage_lower = 15
	melee_damage_upper = 15
	attack_verb_continuous = "punches"
	attack_verb_simple = "punch"
	attack_sound = 'sound/weapons/punch1.ogg'
	a_intent = INTENT_HARM
	loot = list(/obj/effect/mob_spawn/human/corpse/russian,
				/obj/effect/spawner/lootdrop/medical/firstaid_rare)
	atmos_requirements = list("min_oxy" = 0, "max_oxy" = 0, "min_tox" = 0, "max_tox" = 0, "min_co2" = 0, "max_co2" = 0, "min_n2" = 0, "max_n2" = 0)
	minbodytemp = 0
	faction = list("russian")
	status_flags = CANPUSH
	del_on_death = 1
//them being russian is a place holder for now.

	footstep_type = FOOTSTEP_MOB_SHOE
/mob/living/simple_animal/hostile/russian/ranged
	icon_state = "solgovranged"
	icon_living = "solgovranged"
	loot = list(/obj/effect/mob_spawn/human/corpse/russian/ranged,
				/obj/item/gun/ballistic/revolver/nagant)
	ranged = 1
	retreat_distance = 5
	minimum_distance = 5
	projectilesound = 'sound/weapons/gun/revolver/shot.ogg'
	casingtype = /obj/item/ammo_casing/n762

/mob/living/simple_animal/hostile/solgov/ranged/shotgun
/mob/living/simple_animal/hostile/solgov/ranged/assaulter