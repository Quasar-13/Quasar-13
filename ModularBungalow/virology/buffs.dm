/*
Let this be a warning to anyone that wants to try this.

/datum/symptom/fat

	name = "Blubber Armor"
	desc = "The virus hardens fat tissue, turning it into armor."
	stealth = 0
	resistance = 2
	stage_speed = -1
	transmittable = -2
	level = 5
	symptom_delay_min = 5
	symptom_delay_max = 25
	var/scratch = FALSE
	threshold_descs = list()

/datum/symptom/fat/Start(datum/disease/advance/A)
	if(!..())
		return

/datum/symptom/fat/Activate(datum/disease/advance/A)
	if(!..())
		return
	var/mob/living/carbon/M = A.affected_mob
	if(HAS_TRAIT(M,TRAIT_FAT))
		slowdown -= 0.2

	if(!HAS_TRAIT(M,TRAIT_FAT))
		M.physiology.armor.melee -= 10
		*/


datum/symptom/heart_restoration
	name = "Heart Restoration"
	desc = "The virus stimulates the production and replacement of cardiac tissues, causing the host to regenerate the heart when damaged."
	stealth = 0
	resistance = 1
	stage_speed = -2
	transmittable = 2
	level = 4
	base_message_chance = 7
	symptom_delay_min = 1
	symptom_delay_max = 1

/datum/symptom/heart_restoration/Activate(datum/disease/advance/A)
	if(!..())
		return
	var/mob/living/carbon/M = A.affected_mob
	var/obj/item/organ/heart/heart = M.getorganslot(ORGAN_SLOT_HEART)
	switch(A.stage)
		if(4, 5)
			if(heart)
				heart.applyOrganDamage(-4, -4)
			if(!heart) // only dealing with heart stuff from here on out
				return
			heart.applyOrganDamage(-2)


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



