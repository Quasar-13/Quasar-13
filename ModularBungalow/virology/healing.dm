/datum/symptom/heal/light
	name = "Diurnal Regeneration"
	desc = "The virus is able to mend the host's flesh when in conditions of high light, but skin begins to break down in low light"
	stealth = 0
	resistance = 1
	stage_speed = -3
	transmittable = 1
	level = 6
	passive_message = "<span class='notice'>You feel tingling on your skin as light passes over it.</span>"
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
			return power

/datum/symptom/heal/light/Heal(mob/living/carbon/M, datum/disease/advance/A, actual_power)
	var/heal_amt = 2 * actual_power

	var/list/parts = M.get_damaged_bodyparts(1,1, null, BODYPART_ORGANIC)

	if(!parts.len)
		return

	if(prob(5))
		to_chat(M, "<span class='notice'>The light soothes and mends your wounds.</span>")

	for(var/obj/item/bodypart/L in parts)
		if(L.heal_damage(heal_amt/parts.len, heal_amt/parts.len * 0.1, null, BODYPART_ORGANIC)) //more effective on brute
			M.update_damage_overlays()
	return 1

/datum/symptom/heal/light/passive_message_condition(mob/living/M)
	if(M.getBruteLoss() || M.getFireLoss())
		return TRUE
	return FALSE



/datum/symptom/heal/cold
	name = "Freezing Grace"
	desc = "The virus repairs cells while it's in your body."
	stealth = -2
	resistance = 0
	stage_speed = -3
	transmittable = -1
	level = 6
	passive_message = "<span class='notice'>Your skin feels a little too hot.</span>"
	var/absorption_coeff = 1
	threshold_descs = list(
	)



/datum/symptom/heal/cold/CanHeal(datum/disease/advance/A)
	. = 0
	var/mob/living/M = A.affected_mob
		power = -0.00003 * (M.bodytemperature ** 2)
		. += power

/datum/symptom/heal/cold/Heal(mob/living/carbon/M, datum/disease/advance/A, actual_power)
	var/heal_amt = 1 * actual_power

	var/list/parts = M.get_damaged_bodyparts(1,1, null, BODYPART_ORGANIC) //more effective on burns

	if(!parts.len)
		return

	if(prob(5))
		to_chat(M, "<span class='notice'>The cold air soothes your skin.</span>")

	for(var/obj/item/bodypart/L in parts)
		if(L.heal_damage(heal_amt/parts.len * 0.5, heal_amt/parts.len, null, BODYPART_ORGANIC))
			M.update_damage_overlays()

	return 1

/datum/symptom/heal/cold/passive_message_condition(mob/living/M)
	if(M.getBruteLoss() || M.getFireLoss())
		return TRUE


