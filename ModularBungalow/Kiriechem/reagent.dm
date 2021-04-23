//Kiriechem Medicines
/datum/reagent/medicine/bicardine //brings it back kinda
	name = "Bicardine"
	description = "A bruise reliever with a low overdose"
	color = "#A1240B" // rgb: 236	236	141
	taste_description = "spicy"
	overdose_threshold = 6
	reagent_state = LIQUID

/datum/reagent/medicine/bicardine/on_mob_life(mob/living/M)
	M.adjustBruteLoss(-3*REM)
	..()
	return TRUE

/datum/reagent/medicine/bicardine/overdose_process(mob/living/M)
	M.adjustFireLoss(2*REM)
	..()


/datum/reagent/medicine/kelotane //brings it back kinda
	name = "Kelotane"
	description = "A burn reliever with a low overdose."
	color = "#F3F772" // rgb: 236	236	141
	taste_description = "burning"
	overdose_threshold = 6
	reagent_state = LIQUID

/datum/reagent/medicine/kelotane/on_mob_life(mob/living/M)
	M.adjustFireLoss(-3*REM)
	..()
	return TRUE

/datum/reagent/medicine/kelotane/overdose_process(mob/living/M)
	M.adjustBruteLoss(2*REM)
	..()


/datum/reagent/medicine/tricordizine //brings it back kinda
	name = "Tricordizine"
	description = "A good all-round medicine.."
	color = "#92A6F7" // rgb: 236	236	141
	taste_description = "chalk"
	overdose_threshold = 10
	reagent_state = LIQUID

/datum/reagent/medicine/tricordizine/on_mob_life(mob/living/M)
	M.adjustFireLoss(-2*REM)
	M.adjustBruteLoss(-2*REM)
	M.adjustToxLoss(-2*REM)
	M.adjustCloneLoss(2*REM)
	..()
	return TRUE

/datum/reagent/medicine/tricordizine/overdose_process(mob/living/M)
	M.adjustCloneLoss(4*REM)
	..()



/datum/reagent/medicine/giadone //heals all cellular damage
	name = "Giadone"
	description = "like some sort of mistake"
	color = "#ADDBD4" // rgb: 236	236	141
	taste_description = "bitter with a hint of alcohol"
	reagent_state = LIQUID

/datum/reagent/medicine/giadone/on_mob_life(mob/living/M)
	M.adjustCloneLoss(-6*REM)
	..()
	return TRUE


/datum/reagent/medicine/omnidrite
	name = "Omnidrite"
	description = "Heals all organ damage."
	color = "#DFF0ED" // rgb: 236	236	141
	taste_description = "heaven."
	reagent_state = LIQUID

/datum/reagent/medicine/omnidrite/on_mob_life(mob/living/M)
	M.adjustOrganLoss(ORGAN_SLOT_LIVER, -0.3*REM)
	M.adjustOrganLoss(ORGAN_SLOT_LUNGS, -0.3*REM)
	M.adjustOrganLoss(ORGAN_SLOT_HEART, -0.3*REM)
	M.adjustOrganLoss(ORGAN_SLOT_STOMACH, -0.3*REM)
	M.adjustOrganLoss(ORGAN_SLOT_EARS, -0.3*REM)
	M.adjustOrganLoss(ORGAN_SLOT_EYES, -0.3*REM)
	..()
	return TRUE


/datum/reagent/medicine/omnizidrite
	name = "Omnizidrite"
	description = "Heals everything, really slowly."
	color = "#DFF0ED" // rgb: 236	236	141
	taste_description = "hell."
	overdose_threshold = 10
	metabolization_rate = 0.25 * REAGENTS_METABOLISM
	reagent_state = LIQUID

/datum/reagent/medicine/omnizidrite/on_mob_life(mob/living/M)
	M.adjustOrganLoss(ORGAN_SLOT_LIVER, -0.2*REM)
	M.adjustOrganLoss(ORGAN_SLOT_LUNGS, -0.2*REM)
	M.adjustOrganLoss(ORGAN_SLOT_HEART, -0.2*REM)
	M.adjustOrganLoss(ORGAN_SLOT_STOMACH, -0.2*REM)
	M.adjustOrganLoss(ORGAN_SLOT_EARS, -0.2*REM)
	M.adjustOrganLoss(ORGAN_SLOT_EYES, -0.2*REM)
	M.adjustFireLoss(-0.3*REM)
	M.adjustBruteLoss(-0.3*REM)
	M.adjustOxyLoss(-0.3*REM)
	M.adjustToxLoss(-0.3*REM)
	M.adjustCloneLoss(-0.3*REM)
	..()
	return TRUE

/datum/reagent/medicine/omnizidrite/overdose_process(mob/living/M)
	M.adjustCloneLoss(12*REM)
	M.adjustOrganLoss(ORGAN_SLOT_HEART, 4*REM)
	..()


//Kiriechem Explosives
/datum/reagent/kl6
	name = "KL-6"
	description = "A new experimental explosive."
	color = "#262626" // rgb: 236	236	141
	taste_description = "death."
	reagent_state = LIQUID


//Kiriechem Mixers
/datum/reagent/protofore
	name = "Protofore"
	description = "A strange, probably harmful chemical"
	color = "#262626" // rgb: 236	236	141
	taste_description = "rot."
	reagent_state = LIQUID

/datum/reagent/protofore/on_mob_life(mob/living/M)
	M.adjustOrganLoss(ORGAN_SLOT_LIVER, 0.3*REM)
	M.adjustOrganLoss(ORGAN_SLOT_LUNGS, 0.3*REM)
	M.adjustOrganLoss(ORGAN_SLOT_HEART, 0.3*REM)
	M.adjustOrganLoss(ORGAN_SLOT_STOMACH, 0.3*REM)
	M.adjustOrganLoss(ORGAN_SLOT_EARS, 0.3*REM)
	M.adjustOrganLoss(ORGAN_SLOT_EYES, 0.3*REM)
	M.adjustCloneLoss(4*REM)

