/obj/item/borg/apparatus/beaker/medical //Medborgs can now manipulate medicines and medicine containers
	name = "medicine storage apparatus"
	desc = "A special apparatus for carrying beakers, medicines and medicine containers without spilling the contents. Alt-Z or right-click to drop its contents."
	storable = list(/obj/item/reagent_containers/glass/beaker,
				/obj/item/reagent_containers/glass/bottle,
				/obj/item/reagent_containers/pill/patch,
				/obj/item/reagent_containers/medigel,
				/obj/item/reagent_containers/pill,
				/obj/item/reagent_containers/chem_pack,
				/obj/item/reagent_containers/hypospray/medipen,
				/obj/item/reagent_containers/blood)

/obj/item/borg/apparatus/beaker/medical/extra
	name = "secondary medicine storage apparatus"
	desc = "A special apparatus for carrying beakers, medicines and medicine containers without spilling the contents. Alt-Z or right-click to drop its contents."

/mob/living/silicon/robot/proc/tegu_borg_unbuckle(mob/living/M) //Allows borgs to unbuckle people via loading them.
	if(!M.buckled)
		return
	if(M.has_buckled_mobs())
		M.unbuckle_all_mobs(force = TRUE)
	M.buckled.unbuckle_mob(M, force = TRUE)

/mob/living/silicon/robot/put_in_hands(obj/item/I, del_on_fail = FALSE, merge_stacks = TRUE, forced = FALSE) //Qualify of life; puts beaker in manipulator
	. = ..()
	var/obj/item/borg/apparatus/E = locate() in model.modules // TEGUSTATION MEDBORG CHANGES -Surrealistik Feb 2020
	if(!E)
		return
	E.pre_attack(I, src)


/obj/item/organ_storage/proc/clear_organ()
	icon_state = initial(icon_state) //We need to properly update the icon and overlays by reverting to our initial state.
	desc = initial(desc)
	cut_overlays()
