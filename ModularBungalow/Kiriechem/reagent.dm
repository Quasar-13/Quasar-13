//Kiriechem Chemicals
/datum/reagent/medicine/bicardine //brings it back kinda
	name = "Bicardine"
	description = "A bruise reliever with a low overdose"
	color = "#ECEC8D" // rgb: 236	236	141
	taste_description = "spicy"
	overdose_threshold = 6
	reagent_state = SOLID

/datum/reagent/medicine/bicardine/on_mob_life(mob/living/M)
	M.adjustBruteLoss(-2*REM)
	..()
	return TRUE

/datum/reagent/medicine/bicardine/overdose_process(mob/living/M)
	M.adjustFireLoss(3*REM)
	..()


/datum/reagent/medicine/kelotane //brings it back kinda
	name = "Kelotane"
	description = "A burn reliever with a low overdose."
	color = "#ECEC8D" // rgb: 236	236	141
	taste_description = "burning"
	overdose_threshold = 6
	reagent_state = SOLID

/datum/reagent/medicine/kelotane/on_mob_life(mob/living/M)
	M.adjustFireLoss(-2*REM)
	..()
	return TRUE

/datum/reagent/medicine/kelotane/overdose_process(mob/living/M)
	M.adjustBruteLoss(3*REM)
	..()


/datum/reagent/medicine/giadone //heals all cellular damage
	name = "Giadone"
	description = "like some sort of mistake"
	color = "#ECEC8D" // rgb: 236	236	141
	taste_description = "bitter with a hint of alcohol"
	reagent_state = SOLID

/datum/reagent/medicine/giadone/on_mob_life(mob/living/M)
	M.adjustCloneLoss(-6*REM)
	..()
	return TRUE

/datum/reagent/medicine/omnidrite
	name = "Omnidrite"
	description = "Heals all organ damage."
	color = "#ECEC8D" // rgb: 236	236	141
	taste_description = "like heaven."
	reagent_state = SOLID

/datum/reagent/medicine/omnidrite/on_mob_life(mob/living/M)
	M.adjustOrganLoss(ORGAN_SLOT_LIVER, -0.3*REM)
	M.adjustOrganLoss(ORGAN_SLOT_LUNGS, -0.3*REM)
	M.adjustOrganLoss(ORGAN_SLOT_HEART, -0.3*REM)
	M.adjustOrganLoss(ORGAN_SLOT_STOMACH, -0.3*REM)
	M.adjustOrganLoss(ORGAN_SLOT_EARS, -0.3*REM)
	M.adjustOrganLoss(ORGAN_SLOT_EYES, -0.3*REM)
	..()
	return TRUE


