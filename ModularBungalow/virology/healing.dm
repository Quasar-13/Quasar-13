//Diurnal Regeneration

/datum/symptom/heal/light
	name = "Diurnal Regeneration"
	desc = "The virus is able to mend the host's flesh when in conditions of high light, but skin begins to break down in low light"
	stealth = 0
	resistance = 1
	stage_speed = -3
	transmittable = 1
	level = 6
	passive_message = "<span class='notice'>You feel tingling on your skin as light passes over it.</span>"
	var/heal_amt = 0
	threshold_descs = list(
		"Stage Speed 8" = "Doubles healing speed.",
	)

/datum/symptom/heal/light/Start(datum/disease/advance/A)
	if(!..())
		return
	if(A.properties["stage_rate"] >= 8)
		power = 2

/datum/symptom/heal/light/CanHeal(datum/disease/advance/A)
	var/mob/living/M = A.affected_mob
	var/light_amount = 0
	if(isturf(M.loc)) //else, there's considered to be no light
		var/turf/T = M.loc
		light_amount = min(1,T.get_lumcount()) - 0.5
		if(light_amount > SHADOW_SPECIES_LIGHT_THRESHOLD)
			heal_amt = 0.6
			return power

/datum/symptom/heal/light/Heal(mob/living/carbon/M, datum/disease/advance/A, actual_power)
	var/list/parts = M.get_damaged_bodyparts(1,1, null, BODYPART_ORGANIC)

	if(!parts.len)
		return

	if(prob(5))
		to_chat(M, "<span class='notice'>The light soothes and mends your wounds.</span>")

	for(var/obj/item/bodypart/L in parts)
		if(L.heal_damage(heal_amt/parts.len, heal_amt/parts.len * 0.5, null, BODYPART_ORGANIC)) //more effective on brute
			M.update_damage_overlays()
	return 1

/datum/symptom/heal/light/passive_message_condition(mob/living/M)
	if(M.getBruteLoss() || M.getFireLoss())
		return TRUE
	return FALSE



/datum/symptom/heal/food
	name = "Photosynthesis"
	desc = "The virus is able to convert light into food"
	stealth = 1
	resistance = 0
	stage_speed = 1
	transmittable = 0
	level = 3
	passive_message = "<span class='notice'>You feel rather leafy.</span>"
	var/canheal = FALSE

/datum/symptom/heal/food/Start(datum/disease/advance/A)
	if(!..())
		return

/datum/symptom/heal/food/CanHeal(datum/disease/advance/A)
	var/mob/living/M = A.affected_mob
	var/light_amount = 0

	if(isturf(M.loc)) //else, there's considered to be no light
		var/turf/T = M.loc
		light_amount = min(1,T.get_lumcount()) - 0.5
		if(light_amount > SHADOW_SPECIES_LIGHT_THRESHOLD)
			canheal = TRUE
			return power

/datum/symptom/heal/food/Heal(mob/living/carbon/M, datum/disease/advance/A, actual_power)
	if(canheal == TRUE)
		M.adjust_nutrition(0.3)
	if(prob(5))
		to_chat(M, "<span class='notice'>You feel a little fuller.</span>")
	return 1

/datum/symptom/heal/light/passive_message_condition(mob/living/M)
	return TRUE




/datum/symptom/heal/booze
	name = "Craft Beer Affinity"
	desc = "This virus takes space beer, and uses it to mend your wounds."
	stealth = 0
	resistance = -1
	stage_speed = 0
	transmittable = 1
	level = 6
	passive_message = "<span class='notice'>You are really craving a drink...</span>"
	var/absorption_coeff = 1
	threshold_descs = list(
		"Resistance 5" = "Alcohol is consumed at a much slower rate.",
		"Stage Speed 7" = "Increases healing speed.",
	)

/datum/symptom/heal/booze/Start(datum/disease/advance/A)
	if(!..())
		return
	if(A.properties["stage_rate"] >= 7)
		power = 2
	if(A.properties["resistance"] >= 5)
		absorption_coeff = 0.25

/datum/symptom/heal/booze/CanHeal(datum/disease/advance/A)
	. = 0
	var/mob/living/M = A.affected_mob
	if(M.fire_stacks < 0)
		M.set_fire_stacks(min(M.fire_stacks + 1 * absorption_coeff, 0))
		. += power
	else if(M.reagents.has_reagent(/datum/reagent/consumable/ethanol/beer, needs_metabolizing = FALSE))
		M.reagents.remove_reagent(/datum/reagent/consumable/ethanol/beer, 0.5 * absorption_coeff)
		. += power * 0.5

/datum/symptom/heal/booze/Heal(mob/living/carbon/M, datum/disease/advance/A, actual_power)
	var/heal_amt = 3 * actual_power

	var/list/parts = M.get_damaged_bodyparts(1,1, null, BODYPART_ORGANIC) //more effective on burns

	if(!parts.len)
		return

	if(prob(5))
		to_chat(M, "<span class='notice'>You feel your wounds mending.</span>")

	for(var/obj/item/bodypart/L in parts)
		if(L.heal_damage(heal_amt/parts.len * 0.5, heal_amt/parts.len, null, BODYPART_ORGANIC))
			M.update_damage_overlays()

	return 1

/datum/symptom/heal/booze/passive_message_condition(mob/living/M)
	if(M.getBruteLoss() || M.getFireLoss())
		return TRUE
	return FALSE




/datum/symptom/heal/watercoag
	name = "Automatic Saline Production"
	desc = "The virus automatically produces saline glucose out of water."
	stealth = 0
	resistance = 1
	stage_speed = 1
	transmittable = -1
	level = 6
	var/absorption_coeff = 1
	threshold_descs = list(
		"Resistance 5" = "Water is consumed at a much slower rate.",
	)

/datum/symptom/heal/watercoag/Start(datum/disease/advance/A)
	if(!..())
		return
	if(A.properties["resistance"] >= 5)
		absorption_coeff = 0.25

/datum/symptom/heal/watercoag/CanHeal(datum/disease/advance/A)
	. = 0
	var/mob/living/M = A.affected_mob
	if(M.fire_stacks < 0)
		M.set_fire_stacks(min(M.fire_stacks + 1 * absorption_coeff, 0))
		. += power
	if(M.reagents.has_reagent(/datum/reagent/water/holywater, needs_metabolizing = FALSE))
		M.reagents.remove_reagent(/datum/reagent/water/holywater, 0.5 * absorption_coeff)
		. += power * 0.75
	else if(M.reagents.has_reagent(/datum/reagent/water, needs_metabolizing = FALSE))
		M.reagents.remove_reagent(/datum/reagent/water, 0.5 * absorption_coeff)
		. += power * 0.5

/datum/symptom/heal/water/Heal(mob/living/carbon/M, datum/disease/advance/A, actual_power)
	var/heal_amt = 2 * actual_power
	M.reagents.add_reagent(/datum/reagent/medicine/salglu_solution, 0.5 * heal_amt)
	return 1






