/datum/species/human/beepeople
	name = "BeePerson"
	id = "beepeople"
	say_mod = "buzzes"
	limbs_id = "human"


	species_traits = list(NOEYESPRITES, TRAIT_ANTENNAE,EYECOLOR,HAIR,LIPS,HAS_FLESH,HAS_BONE)
	inherent_biotypes = MOB_ORGANIC|MOB_HUMANOID|MOB_BUG
	mutant_bodyparts = list("moth_antennae" = "Plain")
	attack_verb = "slash"
	attack_sound = 'sound/weapons/slash.ogg'
	miss_sound = 'sound/weapons/slashmiss.ogg'
	meat = /obj/item/food/meat/slab/human
	liked_food = VEGETABLES | DAIRY //|POLEN (need to add it)
	disliked_food = FRUIT | GROSS | CLOTH
	toxic_food = MEAT | RAW | SEAFOOD
	//mutanteyes = /obj/item/organ/eyes/bee //need to add it. it just going to be resprite tho.
	changesource_flags = MIRROR_BADMIN | WABBAJACK | MIRROR_MAGIC | MIRROR_PRIDE | ERT_SPAWN | RACE_SWAP | SLIME_EXTRACT
	//wings_icon = "Megamoth" need to add. resprite of moth wings, smaller tho.
	//has_innate_wings = TRUE

	// need to check this when i add bee wings.

	// /datum/species/moth/handle_fire(mob/living/carbon/human/H, no_protection = FALSE)
	//. = ..()
	//if(.) //if the mob is immune to fire, don't burn wings off.
	//	return
	//if(H.dna.features["moth_wings"] != "Burnt Off" && H.bodytemperature >= 800 && H.fire_stacks > 0) //do not go into the extremely hot light. you will not survive
	//	to_chat(H, "<span class='danger'>Your precious wings burn to a crisp!</span>")
	//	if(!H.dna.features["original_moth_wings"]) //Fire apparently destroys DNA, so let's preserve that elsewhere, checks if an original was already stored to prevent bugs
	//		H.dna.features["original_moth_wings"] = H.dna.features["moth_wings"]
	//	H.dna.features["moth_wings"] = "Burnt Off"
	//	if(!H.dna.features["original_moth_antennae"]) //Stores antennae type for if they get restored later
	//		H.dna.features["original_moth_antennae"] = H.dna.features["moth_antennae"]
	//	H.dna.features["moth_antennae"] = "Burnt Off"
	//	if(flying_species) //This is all exclusive to if the person has the effects of a potion of flight
	//		if(H.movement_type & FLYING)
	//			ToggleFlight(H)
	//			H.Knockdown(1.5 SECONDS)
	//		fly.Remove(H)
	//		QDEL_NULL(fly)
	//		H.dna.features["wings"] = "None"
	//	handle_mutant_bodyparts(H)


	// FLY NEED TO ADD WINGS.
	///datum/species/moth/space_move(mob/living/carbon/human/H)
	//. = ..()
	//if(H.loc && !isspaceturf(H.loc) && H.dna.features["moth_wings"] != "Burnt Off" && !flying_species) //"flying_species" is exclusive to the potion of flight, which has its flying mechanics. If they want to fly they can use that instead
	//	var/datum/gas_mixture/current = H.loc.return_air()
	//	if(current && (current.return_pressure() >= ONE_ATMOSPHERE*0.85)) //as long as there's reasonable pressure and no gravity, flight is possible
	//		return TRUE

	///datum/species/moth/spec_fully_heal(mob/living/carbon/human/H)
//	. = ..()
//	if(H.dna.features["original_moth_wings"] != null)
//		H.dna.features["moth_wings"] = H.dna.features["original_moth_wings"]
//
//	if(H.dna.features["original_moth_wings"] == null && H.dna.features["moth_wings"] == "Burnt Off")
//		H.dna.features["moth_wings"] = "Plain"
//
//	if(H.dna.features["original_moth_antennae"] != null)
//		H.dna.features["moth_antennae"] = H.dna.features["original_moth_antennae"]
//
//	if(H.dna.features["original_moth_antennae"] == null && H.dna.features["moth_antennae"] == "Burnt Off")
//		H.dna.features["moth_antennae"] = "Plain"
//	handle_mutant_bodyparts(H)


/datum/sprite_accessory/bee
	icon = 'icons/mob/mutant_bodyparts.dmi'

/datum/sprite_accessory/bee/eyes
//just in case

/datum/sprite_accessory/bee/eyes/mothlike
	name = "Mothlike"
	icon_state = "mothlike"



