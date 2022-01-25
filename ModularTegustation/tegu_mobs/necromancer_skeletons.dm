/mob/living/simple_animal/hostile/skeleton/necromancer
	desc = "The creation of a powerful necromancer."
	faction = list("necromancer")

/mob/living/simple_animal/hostile/skeleton/necromancer/strong
	desc = "The creation of a powerful necromancer. This one looks a bit tougher."
	maxHealth = 75
	health = 75
	melee_damage_lower = 25
	melee_damage_upper = 25

/mob/living/simple_animal/hostile/skeleton/necromancer/mage
	name = "mage skeleton"
	desc = "A skeleton with a tiny bit more magic put into its revival."
	icon_state = "skeleton_mage"
	icon_living = "skeleton_mage"
	icon_dead = "skeleton_mage"
	light_color = LIGHT_COLOR_BLOOD_MAGIC
	maxHealth = 100
	health = 100
	ranged = 1
	ranged_cooldown_time = 40
	melee_damage_lower = 12
	melee_damage_upper = 12
	retreat_distance = 2
	minimum_distance = 1

/mob/living/simple_animal/hostile/skeleton/necromancer/mage/Initialize()
	. = ..()
	set_light(2)

/mob/living/simple_animal/hostile/skeleton/necromancer/mage/OpenFire()
	var/T = get_turf(target)
	if(!isturf(T))
		return
	if(get_dist(src, T) <= 8)
		visible_message("<span class='warning'>[src] raises its hand in the air as red light appears under [target]!</span>")
		ranged_cooldown = world.time + ranged_cooldown_time
		var/list/fire_zone = list()
		for(var/i = 1 to 2)
			playsound(T, 'sound/machines/clockcult/stargazer_activate.ogg', 50, 1)
			fire_zone = spiral_range_turfs(i, T) - spiral_range_turfs(i-1, T)
			for(var/turf/open/TC in fire_zone)
				new /obj/effect/temp_visual/cult/turf/floor(TC)
			SLEEP_CHECK_DEATH(2)
		SLEEP_CHECK_DEATH(4)
		for(var/i = 1 to 2)
			fire_zone = spiral_range_turfs(i, T) - spiral_range_turfs(i-1, T)
			playsound(T, 'sound/machines/clockcult/ark_damage.ogg', 50, TRUE)
			for(var/turf/open/TC in fire_zone)
				new /obj/effect/temp_visual/cult/sparks(TC)
				for(var/mob/living/L in TC)
					if("necromancer" in L.faction)
						continue
					L.adjustFireLoss(15)
					to_chat(L, "<span class='userdanger'>You're hit by a death field!</span>")
			SLEEP_CHECK_DEATH(2)
