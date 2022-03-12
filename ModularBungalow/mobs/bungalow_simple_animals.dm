/**
 * TG LRP players are leaking in, it seems.
 */
/mob/living/simple_animal/hostile/retaliate/goose/terry
	name = "Terry"
	desc = "Security's loyal... Duck? Something seems off about this duck. The words FATAL FURY is sewn into his hat."
	icon = 'goon/icons/mob/misc/birdterry.dmi'
	icon_state = "terry"
	icon_living = "terry"
	icon_dead = "terry_dead"
	gold_core_spawnable = NO_SPAWN
	gender = MALE

/mob/living/simple_animal/hostile/retaliate/pet_warden
	name = "slimy"
	desc = "Security's loyal slime."

	icon = 'ModularBungalow/zbungalowicons/mobs.dmi'
	icon_state = "warden_slime"
	icon_living = "warden_slime"
	icon_dead = "warden_slime_dead"

	pass_flags = PASSTABLE | PASSGRILLE
	ventcrawler = VENTCRAWLER_ALWAYS
	gender = NEUTER
	gold_core_spawnable = NO_SPAWN

	harm_intent_damage = 5
	response_help_continuous = "pets"
	response_help_simple = "pet"
	response_disarm_continuous = "shoos"
	response_disarm_simple = "shoo"
	response_harm_continuous = "stomps on"
	response_harm_simple = "stomp on"
	emote_see = list("jiggles", "bounces in place")
	speak_emote = list("blorbles")
	bubble_icon = "slime"
	initial_language_holder = /datum/language_holder/slime

	atmos_requirements = list("min_oxy" = 0, "max_oxy" = 0, "min_tox" = 0, "max_tox" = 0, "min_co2" = 0, "max_co2" = 0, "min_n2" = 0, "max_n2" = 0)

	maxHealth = 150
	health = 150
	healable = 0
	melee_damage_lower = 5
	melee_damage_upper = 25
	see_in_dark = 8

	verb_say = "blorbles"
	verb_ask = "inquisitively blorbles"
	verb_exclaim = "loudly blorbles"
	verb_yell = "loudly blorbles"
