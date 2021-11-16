/datum/species/beepeople
	name = "BeePerson"
	id = "beepeople"
	say_mod = "buzzes"
	limbs_id = "bee"

	species_traits = list( LIPS, NOEYESPRITES, HAS_FLESH, HAS_BONE, TRAIT_ANTENNAE, HAIR)
	inherent_biotypes = MOB_ORGANIC|MOB_HUMANOID|MOB_BUG

	mutant_bodyparts = list("bee_wings" = "simple", "tail_bee" = "simple", "bee_antennae" = "simple")

	attack_verb = "sting"
	attack_sound = 'sound/weapons/beeattack.ogg'
	miss_sound = 'sound/weapons/beemissattack.ogg'
	meat = /obj/item/food/meat/slab/human
	liked_food = VEGETABLES | DAIRY //|POLEN (need to add it)
	disliked_food = FRUIT | GROSS | CLOTH
	toxic_food = MEAT | RAW | SEAFOOD
	changesource_flags = MIRROR_BADMIN | WABBAJACK | MIRROR_MAGIC | MIRROR_PRIDE | ERT_SPAWN | RACE_SWAP | SLIME_EXTRACT
	mutanteyes = /obj/item/organ/eyes/moth //for now
	payday_modifier = 1

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
		if(flying_species) //This is all exclusive to if the person has the effects of a potion of flight
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
		H.dna.features["bee_wings"] = "Plain"

	if(H.dna.features["original_bee_antennae"] != null)
		H.dna.features["bee_antennae"] = H.dna.features["original_bee_antennae"]

	if(H.dna.features["original_bee_antennae"] == null && H.dna.features["bee_antennae"] == "Burnt Off")
		H.dna.features["bee_antennae"] = "Plain"
	handle_mutant_bodyparts(H)


// insect damage
/datum/species/beepeople/handle_chemicals(datum/reagent/chem, mob/living/carbon/human/H)
	. = ..()
	if(chem.type == /datum/reagent/toxin/pestkiller)
		H.adjustToxLoss(3)
		H.reagents.remove_reagent(chem.type, REAGENTS_METABOLISM)

/datum/species/beepeople/check_species_weakness(obj/item/weapon, mob/living/attacker)
	if(istype(weapon, /obj/item/melee/flyswatter))
		return 10
	return 1
