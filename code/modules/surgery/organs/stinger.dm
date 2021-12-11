/obj/item/organ/stinger
	name = "stinger"
	desc = "A bee stinger"
	icon_state = "stinger"
	zone = BODY_ZONE_PRECISE_GROIN
	slot = ORGAN_SLOT_STINGER
	var/stinger_type = "Standar"

/obj/item/hardened_stinger
	name = "hardened stinger"
	desc = "A bee stinger"
	icon_state = "stinger"
	force = 2
	throwforce = 15
	throw_speed = 4
	embedding = list("embedded_pain_multiplier" = 4, "embed_chance" = 100, "embedded_fall_chance" = 0, "embedded_ignore_throwspeed_threshold" = TRUE)
	w_class = WEIGHT_CLASS_SMALL
	sharpness = SHARP_POINTY
	var/mob/living/carbon/human/fired_by
	var/missed = TRUE

/obj/item/hardened_stinger/Initialize(mapload, firedby)
	. = ..()
	fired_by = firedby
	addtimer(CALLBACK(src, .proc/checkembedded), 5 SECONDS)

/obj/item/hardened_stinger/proc/checkembedded()
	if(missed)
		unembedded()

obj/item/hardened_stinger/embedded(atom/target)
	if(isbodypart(target))
		missed = FALSE

obj/item/hardened_stinger/unembedded()
	var/turf/T = get_turf(src)
	visible_message("<span class='warning'>[src] cracks and twists, changing shape!</span>")
	for(var/i in contents)
		var/obj/o = i
		o.forceMove(T)
	qdel(src)
