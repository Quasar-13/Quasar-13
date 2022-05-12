/datum/species/beepeople
	name = "Beepeople"
	id = "beepeople"
	say_mod = "buzzes"
	limbs_id = "bee"

	species_traits = list( LIPS, NOEYESPRITES, HAS_FLESH, HAS_BONE, TRAIT_ANTENNAE, HAIR)
	inherent_biotypes = MOB_ORGANIC|MOB_HUMANOID|MOB_BUG
	mutant_bodyparts = list("bee_wings" = "Simple", "tail_bee" = "Simple", "bee_antennae" = "Simple")
	attack_verb = "sting"
	attack_sound = 'sound/weapons/beeattack.ogg'
	miss_sound = 'sound/weapons/beemissattack.ogg'
	meat = /obj/item/food/meat/slab/human
	liked_food = VEGETABLES | POLLEN
	disliked_food = FRUIT | DAIRY | CLOTH
	toxic_food = MEAT | RAW | SEAFOOD | GROSS
	changesource_flags = MIRROR_BADMIN | WABBAJACK | MIRROR_MAGIC | MIRROR_PRIDE | ERT_SPAWN | RACE_SWAP | SLIME_EXTRACT
	mutanteyes = /obj/item/organ/eyes/bee //same as moths, just diferrent name
	mutant_organs = list(/obj/item/organ/stinger)
	payday_modifier = 0.9
	var/datum/action/innate/stinger_attack/stinger_attack //ability
	species_language_holder = /datum/language_holder/beepeople


	//NERF THEM THEY CAN THROW THEY ASSES!
	brutemod = 1.1 //they are a lil more fragile than normal humans
	burnmod = 1.2  // they burn faster
	coldmod = 1.1 //cold
	//sorry
	ass_image = 'icons/ass/assbee.png'

/datum/species/beepeople/regenerate_organs(mob/living/carbon/C,datum/species/old_species,replace_current=TRUE,list/excluded_zones)
	. = ..()
	if(ishuman(C))
		var/mob/living/carbon/human/H = C
		handle_mutant_bodyparts(H)

//name stuff
/datum/species/beepeople/random_name(gender,unique,lastname)
	if(unique)
		return random_unique_beepeople_name()

	var/randname = beepeople_name()

	if (lastname)
		randname += " [lastname]"

	return randname

//tail stuff
/datum/species/beepeople/on_species_gain(mob/living/carbon/C, datum/species/old_species, pref_load)
	var/real_tail_type = C.dna.features["tail_bee"]

	. = ..()

	if(pref_load)
		C.dna.features["tail_bee"] = real_tail_type

		var/obj/item/organ/tail/bee/new_tail = new /obj/item/organ/tail/bee()

		new_tail.tail_type = C.dna.features["tail_bee"]

		new_tail.Insert(C, TRUE, FALSE)

// wings stuff
/datum/species/beepeople/handle_fire(mob/living/carbon/human/H, no_protection = FALSE)
	. = ..()
	if(.)
		return
	if(H.dna.features["bee_wings"] != "Burnt Off" && H.bodytemperature >= 800 && H.fire_stacks > 0)
		to_chat(H, "<span class='danger'>Your precious wings burn to a crisp!</span>")
		if(!H.dna.features["original_bee_wings"])
			H.dna.features["original_bee_wings"] = H.dna.features["bee_wings"]
		H.dna.features["bee_wings"] = "Burnt Off"
		if(!H.dna.features["original_bee_antennae"])
			H.dna.features["original_bee_antennae"] = H.dna.features["bee_antennae"]
		H.dna.features["bee_antennae"] = "Burnt Off"
		if(flying_species)
			if(H.movement_type & FLYING)
				ToggleFlight(H)
				H.Knockdown(1.5 SECONDS)
			fly.Remove(H)
			QDEL_NULL(fly)
			H.dna.features["wings"] = "None"
		handle_mutant_bodyparts(H)

/datum/species/beepeople/space_move(mob/living/carbon/human/H)
	. = ..()
	if(H.loc && !isspaceturf(H.loc) && H.dna.features["bee_wings"] != "Burnt Off" && !flying_species)
		var/datum/gas_mixture/current = H.loc.return_air()
		if(current && (current.return_pressure() >= ONE_ATMOSPHERE*0.85))
			return TRUE

/datum/species/beepeople/spec_fully_heal(mob/living/carbon/human/H)
	. = ..()
	if(H.dna.features["original_bee_wings"] != null)
		H.dna.features["bee_wings"] = H.dna.features["original_bee_wings"]

	if(H.dna.features["original_bee_wings"] == null && H.dna.features["bee_wings"] == "Burnt Off")
		H.dna.features["bee_wings"] = "Simple"

	if(H.dna.features["original_bee_antennae"] != null)
		H.dna.features["bee_antennae"] = H.dna.features["original_bee_antennae"]

	if(H.dna.features["original_bee_antennae"] == null && H.dna.features["bee_antennae"] == "Burnt Off")
		H.dna.features["bee_antennae"] = "Simple"
	handle_mutant_bodyparts(H)


// get retk insect
/datum/species/beepeople/handle_chemicals(datum/reagent/chem, mob/living/carbon/human/H)
	. = ..()
	if(chem.type == /datum/reagent/toxin/pestkiller)
		H.adjustToxLoss(3)
		H.reagents.remove_reagent(chem.type, REAGENTS_METABOLISM)

/datum/species/beepeople/check_species_weakness(obj/item/weapon, mob/living/attacker)
	if(istype(weapon, /obj/item/melee/flyswatter))
		return 10
	return 1

//removes ability
/datum/species/beepeople/on_species_loss(mob/living/carbon/C)
	..()

	if(stinger_attack)
		stinger_attack.Remove(C)

//gives ability
/datum/species/beepeople/on_species_gain(mob/living/carbon/C, datum/species/old_species)
	..()
	stinger_attack = new(src)
	stinger_attack.Grant(C)

//stinger attack ability
/datum/action/innate/stinger_attack
	name = "stingerattack"
	desc = "launch your stinger"
	icon_icon = 'icons/mob/actions/actions_bee.dmi'
	button_icon_state = "stinger_attack"
	background_icon_state = "bg_spell"
	var/stinger_path = /obj/item/hardened_stinger

//using the ability
/datum/action/innate/stinger_attack/Activate(mob/user = usr)
	var/mob/living/carbon/C = user
	if(!iscarbon(user))
		return

	if(HAS_TRAIT(C, TRAIT_NODISMEMBER))
		return

	var/obj/item/organ/stinger
	for(var/org in C.internal_organs)
		if(istype(org, /obj/item/organ/stinger))
			stinger = org
			break

	if(!stinger)
		to_chat(C, "<span class='notice'>You don't have a stinger to shoot!</span>")
		return

	stinger.Remove(C, special = TRUE)
	var/obj/item/hardened_stinger/stingers = new stinger_path(get_turf(C), C)
	stinger.forceMove(stingers)
	stingers.throw_at(get_edge_target_turf(C,C.dir), 14, 4, C)
