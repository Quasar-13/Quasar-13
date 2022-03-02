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
	movement_type = GROUND
	loot = list(/obj/item/clothing/accessory/medal/gold/captain/aureus)
	crusher_loot = list(/obj/item/clothing/accessory/medal/gold/captain/aureus)

	projectiletype = /obj/projectile/magic/aoe/fireball
	projectilesound = 'sound/weapons/kenetic_accel.ogg'
	ranged = TRUE


/obj/item/clothing/accessory/medal/gold/captain/aureus
	name = "Aureus"
	desc = "A gold coin attacked to a ribbon. Praetors wear this into battle."
