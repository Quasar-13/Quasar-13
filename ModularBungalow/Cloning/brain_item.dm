/obj/item/organ/brain/transfer_identity(mob/living/L)
	. = ..()
	var/obj/item/organ/zombie_infection/ZI = L.getorganslot(ORGAN_SLOT_ZOMBIE)
	if(ZI)
		/// For if the brain is cloned
		brainmob.set_species(ZI.old_species)
