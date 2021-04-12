/datum/quirk/cyberorgan
	name = "Cybernetic Organ"
	desc = "Some sort of incident caused you to lose an organ, and the doctors replaced it with a tin can."
	value = 0
	var/organ
	var/slot_string

/datum/quirk/cyberorgan/on_spawn()
	if(!organ)
		organ = pick(ORGAN_SLOT_HEART, ORGAN_SLOT_LIVER, ORGAN_SLOT_LUNGS, ORGAN_SLOT_STOMACH, ORGAN_SLOT_TONGUE, ORGAN_SLOT_EARS, ORGAN_SLOT_EYES)
	var/mob/living/carbon/human/H = quirk_holder
	var/obj/item/bodypart/old_part = H.get_bodypart(organ)
	var/obj/item/bodypart/prosthetic
	switch(organ)
		if(ORGAN_SLOT_HEART)
			prosthetic = new/obj/item/organ/heart/cybernetic(quirk_holder)
			slot_string = "heart"
		if(ORGAN_SLOT_LUNGS)
			prosthetic = new/obj/item/organ/lungs/cybernetic(quirk_holder)
			slot_string = "lungs"
		if(ORGAN_SLOT_STOMACH)
			prosthetic = new/obj/item/organ/stomach/cybernetic(quirk_holder)
			slot_string = "stomach"
		if(ORGAN_SLOT_LIVER)
			prosthetic = new/obj/item/organ/liver/cybernetic(quirk_holder)
			slot_string = "liver"
		if(ORGAN_SLOT_TONGUE)
			prosthetic = new/obj/item/organ/tongue/robot(quirk_holder)
			slot_string = "tongue"
		if(ORGAN_SLOT_EARS)
			prosthetic = new/obj/item/organ/ears/cybernetic(quirk_holder)
			slot_string = "ears"
		if(ORGAN_SLOT_EYES)
			prosthetic = new/obj/item/organ/eyes/robotic/basic(quirk_holder)
			slot_string = "eyes"
	prosthetic.replace_limb(H)
	qdel(old_part)
	H.regenerate_icons()

/datum/quirk/prosthetic_limb/post_add()
	to_chat(quirk_holder, "<span class='boldannounce'>Your [slot_string] has been replaced with a cybernetic replacement. It cannot heal over time, and will not be healed by chemicals.</span>")
	if(slot_string == "eyes")
		to_chat(quirk_holder, "<span class='boldannounce'>Additionally, your eyes are weak to flashes, and will not be protected by sunglasses or welding visors.</span>")

/datum/quirk/cyberorgan/heart
	name = "Cybernetic Heart"
	desc = "Some sort of incident caused you to lose your heart, and the doctors replaced it with a tin can."
	organ = ORGAN_SLOT_HEART

/datum/quirk/cyberorgan/lungs
	name = "Cybernetic Lungs"
	desc = "Some sort of incident caused you to lose your lungs, and the doctors replaced them with a tin can."
	organ = ORGAN_SLOT_LUNGS

/datum/quirk/cyberorgan/stomach
	name = "Cybernetic Stomach"
	desc = "Some sort of incident caused you to lose your stomach, and the doctors replaced it with a tin can."
	organ = ORGAN_SLOT_STOMACH

/datum/quirk/cyberorgan/liver
	name = "Cybernetic Liver"
	desc = "Some sort of incident caused you to lose your liver, and the doctors replaced it with a tin can."
	organ = ORGAN_SLOT_LIVER

/datum/quirk/cyberorgan/tongue
	name = "Cybernetic Tongue"
	desc = "Some sort of incident caused you to lose your tongue, and the doctors replaced it with a tin can."
	organ = ORGAN_SLOT_TONGUE

/datum/quirk/cyberorgan/eyes
	name = "Cybernetic Eyes"
	desc = "Some sort of incident caused you to lose your eyes, and the doctors replaced them with tin cans."
	organ = ORGAN_SLOT_EYES

/datum/quirk/cyberorgan/ears
	name = "Cybernetic Ears"
	desc = "Some sort of incident caused you to lose your ears, and the doctors replaced them with tin cans."
	organ = ORGAN_SLOT_EARS
