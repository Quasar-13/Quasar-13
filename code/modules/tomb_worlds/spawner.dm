GLOBAL_LIST_EMPTY(tomb_spawn_list)			// All tomb spawners

/obj/effect/mob_spawn/human/tomb_spawn
	name = "Tomb Spawner"
	desc = "Default spawner. You shouldn't see this."
	icon = 'icons/obj/device.dmi'
	icon_state = "syndbeacon"
	max_integrity = 1000
	density = TRUE
	roundstart = FALSE
	death = FALSE
	faction = "tomb_player"
	mob_name = "Monster"
	assignedrole = "Tomb Inhabitant"
	random = FALSE
	outfit = /datum/outfit
	mob_species = /datum/species/human
	uses = -1
	permanent = TRUE
	mob_gender = MALE
	var/enabled = FALSE //If tomb is open - allow players to spawn
	var/cooldown = 1 MINUTES //The time to pass after spawning to make it available again
	var/current_cooldown = 0

/obj/effect/mob_spawn/human/tomb_spawn/ex_act()
	return

/obj/effect/mob_spawn/human/tomb_spawn/Initialize()
	. = ..()
	GLOB.tomb_spawn_list |= src

/obj/effect/mob_spawn/human/tomb_spawn/special(mob/user)
	. = ..()
	current_cooldown = world.time + cooldown

/obj/effect/mob_spawn/human/tomb_spawn/allow_spawn(mob/user)
	if(!enabled)
		to_chat(user, "<span class='warning'><b>The [src] is not enabled yet.</b>.</span>")
		return FALSE
	if(current_cooldown > world.time)
		to_chat(user, "<span class='warning'><b>The [src] is currently on cooldown. [(current_cooldown - world.time)/10] second left.</b>.</span>")
		return FALSE
	return TRUE

/obj/effect/mob_spawn/human/tomb_spawn/necromancer_skeletons
	name = "skeleton lair"
	desc = "A deep cave where the failed experiments reside."
	icon = 'icons/mob/nest.dmi'
	icon_state = "hole"
	mob_name = "ashen skeleton"
	mob_color = "#959595" // Similar to charred skeletons from tendril legions
	mob_species = /datum/species/skeleton/necromancer
	assignedrole = "Rogue Skeleton"
	cooldown = 2 MINUTES
	short_desc = "You are a failed experiment of a powerful Necromancer."
	flavour_text = "Many ages ago you were nothing more than a pile of bones and it remained that way until you \
	were discovered by a young wizard who was searching for a way to resurrect dead people. \
	You and the others have been their first attempt at that, but your creation was imperfect and so you were \
	banished to the caves to suffer for eternity and terrorize those who dare disturb your slumber."
	important_info = "Do not attempt to leave tomb as long as there are living humans around. Once they are gone - unleash the chaos."
