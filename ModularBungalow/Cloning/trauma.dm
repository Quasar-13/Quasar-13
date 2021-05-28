/obj/machinery/clonepod/proc/traumatize(mob/living/carbon/human/H)
	var/resistance = pick(
		50;TRAUMA_RESILIENCE_BASIC,
		30;TRAUMA_RESILIENCE_SURGERY)

	var/trauma_type = pickweight(list(
		BRAIN_TRAUMA_MILD = 60,
		BRAIN_TRAUMA_SEVERE = 30
	))

	H.gain_trauma_type(trauma_type, resistance)
