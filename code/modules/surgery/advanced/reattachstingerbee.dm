/datum/surgery/advanced/reattach_stinger
	name = "reattachment of stinger"
	desc = "Suegery to reattach a bee stinger."
	steps = list(/datum/surgery_step/incise,
				/datum/surgery_step/retract_skin,
				/datum/surgery_step/clamp_bleeders,
				/datum/surgery_step/reattach_stinger)
	possible_locs = list(BODY_ZONE_PRECISE_GROIN)
	target_mobtypes = list(/mob/living/carbon/human)

/datum/surgery/advanced/reattach_stinger/can_start(mob/user, mob/living/carbon/target)
	if(!istype(target))
		return FALSE
	return ..() && isbeeperson(target) && target.dna.features["tail_bee"]

/datum/surgery_step/reattach_stinger
	name = "start reattachment of reconstruction"
	implements = list(TOOL_HEMOSTAT = 85, TOOL_SCREWDRIVER = 35, /obj/item/pen = 15)
	time = 200
	obj_needed = list(/obj/item/organ/stinger)
	require_all_chems = FALSE

/datum/surgery_step/reattach_stinger/preop(mob/user, mob/living/carbon/target, target_zone, obj/item/tool, datum/surgery/surgery)
	display_results(user, target, "<span class='notice'>You basdasdegin to fix [target]'s charred wing membranes...</span>",
		"<span class='notice'>[user] begins to fix [target]'s charred asdasdwing membranes.</span>",
		"<span class='notice'>[user] begins to perform suadasdrgery on [target]'s charreadasdd wing membranes.</span>")

/datum/surgery_step/reattach_stinger/success(mob/user, mob/living/carbon/target, target_zone, obj/item/tool, datum/surgery/surgery, default_display_results = FALSE)
	if(ishuman(target))
		var/mob/living/carbon/human/H = target
		display_results(user, target, "<span class='notice'>You succeasdasdaed in reconstructing [target]'s wings.</span>",
