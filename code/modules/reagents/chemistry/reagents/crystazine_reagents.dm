/datum/reagent/azine
	name="Azine"
	taste_description = "static TV with crystals forming in your throat"
	color = "#e2e1e1"

/datum/reagent/azine/proc/boom(datum/reagents/holder, boom_amt=0.5)
	var/power = boom_amt
	if(power > 0)
		var/turf/T = get_turf(holder.my_atom)
		var/inside_msg
		if(ismob(holder.my_atom))
			var/mob/M = holder.my_atom
			inside_msg = " inside [ADMIN_LOOKUPFLW(M)]"
		var/lastkey = holder.my_atom.fingerprintslast
		var/touch_msg = "N/A"
		if(lastkey)
			var/mob/toucher = get_mob_by_key(lastkey)
			touch_msg = "[ADMIN_LOOKUPFLW(toucher)]"
		if(!istype(holder.my_atom, /obj/machinery/plumbing)) //excludes standard plumbing equipment from spamming admins with this shit
			message_admins("Reagent explosion reaction occurred at [ADMIN_VERBOSEJMP(T)][inside_msg]. Last Fingerprint: [touch_msg].")
		log_game("Reagent explosion reaction occurred at [AREACOORD(T)]. Last Fingerprint: [lastkey ? lastkey : "N/A"]." )
		var/datum/effect_system/reagents_explosion/e = new()
		e.set_up(power , T, 0, 0)
		e.start()
	holder.clear_reagents()

/datum/reagent/azine/crystazine
	name="Crystazine"
	description = "A chemical that is the basis for Azine reagents"

/datum/reagent/azine/crystazine/stable
	//Stable crystazine

/datum/reagent/azine/crystazine/stable/on_mob_metabolize(mob/living/M)
	M.adjustToxLoss(1.5)

/datum/reagent/azine/crystazine/crystazine_noble
	taste_description = "static TV"
	//Noble crystazine is a failed reaction when the heat of the crystazine becomes too hot or cold, and basically sucks at life and can't be reverted

/datum/reagent/azine/crystazine/reactive
	taste_description = "static TV and the burning of your face"
	//Reactive crystazine can combine with welding fuel to create heat in a bottle, it can also be used to make Actizine

/datum/reagent/azine/crystazine/stable/on_mob_metabolize(mob/living/M)
	M.adjustFireLoss(0.5)
	M.adjustToxLoss(1.5)

/datum/reagent/azine/crystazine/destructive
	taste_description = "static TV and your body being broken down"
	//Breaks down blood, water, and any other biological reagent. Also a powerful toxin

/datum/reagent/azine/crystazine/destructive/on_mob_metabolize(mob/living/M)
	M.adjustCloneLoss(0.5)
	M.adjustBruteLoss(0.25)
	M.adjustToxLoss(2)

//!!!!!!
//ACTIZINE
//!!!!!!

/datum/reagent/azine/actizine
	name="Actizine"
	description = "Denser chemical than Crystazine, it is now more unstable with no known noble forms"
	taste_description = "pop rocks and small quartz"

/datum/reagent/azine/actizine/stable
	//Stable actizine, but reacts explosively with plasma

/datum/reagent/azine/actizine/stable/on_mob_metabolize(mob/living/M)
	//Deals a little oxy damage with stam damage
	M.adjustStaminaLoss(8)
	M.adjustOxyLoss(0.25)

/datum/reagent/azine/actizine/unstable
	//So unstable, it will cause an explosion as soon as it gets transferred

/datum/reagent/azine/actizine/unstable/on_transfer()
	boom(holder)

/datum/reagent/azine/actizine/unstable/on_mob_metabolize(mob/living/M)
	M.adjustStaminaLoss(16)
	M.adjustOxyLoss(1)

/datum/reagent/azine/actizine/assimilative
	//Breaks down blood and other biological stuff into actizine, made as a failure
	//Deals cell and a lil tox damage

/datum/reagent/azine/actizine/assimilative/on_mob_metabolize(mob/living/M)
	M.adjustToxLoss(0.75)
	M.adjustCloneLoss(1.5)


//TRITIZINE!!!!


/datum/reagent/azine/tritizine
	name="Tritizine"
	description = "An extremely powerful substance responsible for creating equally powerful drugs"
	color = "#943f3f"

/datum/reagent/azine/tritizine/absolute
	//Absolute tritizine is tritizine that has properties of nearly every azine

/datum/reagent/azine/tritizine/absolute/on_transfer()
	boom(holder)

/datum/reagent/azine/tritizine/absolute/on_mob_metabolize(mob/living/M)
	M.adjustToxLoss(0.75)
	M.adjustCloneLoss(1.5)

