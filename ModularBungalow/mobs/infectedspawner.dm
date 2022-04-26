//WORK IN PROGRESS
/obj/effect/spawner/lootdrop/infection_spawner
	name = "corpse spawner"
	desc = "if you see this then akira fucked up the spawner"
	icon = 'icons/effects/mapping_helpers.dmi'
	icon_state = "mobspawner"
	loot = list(
		/obj/item/storage/firstaid/regular = 10,
		/obj/item/storage/firstaid/o2 = 10,
	)

/obj/effect/spawner/lootdrop/infection_spawner/solgov
	loot = list(
		/obj/effect/mob_spawn/human/corpse/solgovgenericcorpse = 50,
		/obj/item/storage/firstaid/o2 = 10,
	)

/obj/effect/spawner/lootdrop/infection_spawner/solgov/nco
	loot = list(
		/obj/effect/mob_spawn/human/corpse/solgovcorpsenco = 50,
		/obj/item/storage/firstaid/o2 = 10,
	)

/obj/effect/spawner/lootdrop/infection_spawner/solgov/lmg
	loot = list(
		/obj/effect/mob_spawn/human/corpse/solgovcorpselmg
		/obj/item/storage/firstaid/o2 = 10,
	)

/obj/effect/spawner/lootdrop/infection_spawner/solgov/shotgunner
	loot = list(
		/obj/effect/mob_spawn/human/corpse/solgovcorpseshotgunner
		/obj/item/storage/firstaid/fire = 10,
	)

/obj/effect/spawner/lootdrop/infection_spawner/marksman
	loot = list(
		/obj/effect/mob_spawn/human/corpse/solgovcorpsemarksman = 50,
		/obj/item/storage/firstaid/o2 = 10,
	)

//FOR THE ACTUAL SPAWNER MAIN EFFECT
//mob/living/simple_animal/hostile/solgov/infected/heavy
//obj/effect/gibspawner/human