//CONTACT ME BEFORE CHANGING ANYTHING PLEASE. -AKIRA
/obj/effect/spawner/lootdrop/infection_spawner
	name = "corpse spawner"
	desc = "if you see this then akira fucked up the spawner"
	icon = 'icons/effects/mapping_helpers.dmi'
	icon_state = "mobspawner"
	loot = list(
		/mob/living/simple_animal/hostile/eldritch/stalker = 50,
		/mob/living/simple_animal/hostile/eldritch/raw_prophet = 50,
	)
//what this do is that upon death, it roll a dice for what to spawn. read above for how it should be like
//I will add more variants if more solgov mob tyep are added in the future
/obj/effect/spawner/lootdrop/infection_spawner/solgov
	loot = list(
		/obj/effect/mob_spawn/human/corpse/solgovgenericcorpse = 80,
		/mob/living/simple_animal/hostile/solgov/infected = 20,
	)

/obj/effect/spawner/lootdrop/infection_spawner/solgov/nco
	loot = list(
		/obj/effect/mob_spawn/human/corpse/solgovcorpsenco = 80,
		/mob/living/simple_animal/hostile/solgov/infected = 20,
	)

/obj/effect/spawner/lootdrop/infection_spawner/solgov/lmg
	loot = list(
		/obj/effect/mob_spawn/human/corpse/solgovcorpselmg = 80,
		/mob/living/simple_animal/hostile/solgov/infected/heavy = 20,
	)

/obj/effect/spawner/lootdrop/infection_spawner/solgov/shotgunner
	loot = list(
		/obj/effect/mob_spawn/human/corpse/solgovcorpseshotgunner = 80,
		/mob/living/simple_animal/hostile/solgov/infected/heavy = 20,
	)

/obj/effect/spawner/lootdrop/infection_spawner/marksman
	loot = list(
		/obj/effect/mob_spawn/human/corpse/solgovcorpsemarksman = 80,
		/mob/living/simple_animal/hostile/solgov/infected/marksman = 20,
	)

/obj/effect/spawner/lootdrop/infection_spawner/cloaker
	loot = list(
		/obj/effect/mob_spawn/human/corpse/solgovcorpsecloaker = 95,
		/mob/living/simple_animal/hostile/solgov/ranged/cloaker/ark_guardian = 5,
	)

/obj/effect/spawner/lootdrop/infection_spawner/assault
	loot = list(
		/obj/effect/mob_spawn/human/corpse/solgovcorpseassault = 80,
		/mob/living/simple_animal/hostile/solgov/infected/assault = 20,
	)
