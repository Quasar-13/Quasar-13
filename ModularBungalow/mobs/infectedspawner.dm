//WORK IN PROGRESS
/obj/effect/spawner/lootdrop/infection_spawner
	name = "corpse spawner"
	desc = "if you see this then akira fucked up the spawner"
	icon = 'icons/effects/mapping_helpers.dmi'
	icon_state = "mobspawner"
	loot = list(
		/mob/living/simple_animal/hostile/eldritch/armsy = 50,
		/mob/living/simple_animal/hostile/eldritch/raw_prophet = 50,
	)

/obj/effect/spawner/lootdrop/infection_spawner/solgov
	loot = list(
		/obj/effect/mob_spawn/human/corpse/solgovgenericcorpse = 80,
		/obj/effect/gibspawner/human, /mob/living/simple_animal/hostile/solgov/infected = 20,
	)

/obj/effect/spawner/lootdrop/infection_spawner/solgov/nco
	loot = list(
		/obj/effect/mob_spawn/human/corpse/solgovcorpsenco = 80,
		/obj/effect/gibspawner/human, /mob/living/simple_animal/hostile/solgov/infected = 20,
	)

/obj/effect/spawner/lootdrop/infection_spawner/solgov/lmg
	loot = list(
		/obj/effect/mob_spawn/human/corpse/solgovcorpselmg = 80,
		/obj/effect/gibspawner/human, /mob/living/simple_animal/hostile/solgov/infected/heavy = 20,
	)

/obj/effect/spawner/lootdrop/infection_spawner/solgov/shotgunner
	loot = list(
		/obj/effect/mob_spawn/human/corpse/solgovcorpseshotgunner = 80,
		/obj/effect/gibspawner/human, /mob/living/simple_animal/hostile/solgov/infected/heavy = 20,
	)

/obj/effect/spawner/lootdrop/infection_spawner/marksman
	loot = list(
		/obj/effect/mob_spawn/human/corpse/solgovcorpsemarksman = 50,
		/obj/effect/gibspawner/human, /mob/living/simple_animal/hostile/eldritch/armsy = 50,
	)

//FOR THE ACTUAL SPAWNER MAIN EFFECT
//mob/living/simple_animal/hostile/solgov/infected/heavy
//obj/effect/gibspawner/human