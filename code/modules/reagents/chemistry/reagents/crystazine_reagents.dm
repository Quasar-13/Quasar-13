/datum/reagent/azine
	name="Azine"
	taste_description = "static TV with crystals forming in your throat"
	color = "#e2e1e1"
	harmful = TRUE

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
	color = "#e41f1f"

/datum/reagent/azine/tritizine/absolute
	//Absolute tritizine is tritizine that has properties of nearly every azine

/datum/reagent/azine/tritizine/absolute/on_transfer()
	boom(holder)

/datum/reagent/azine/tritizine/absolute/on_mob_metabolize(mob/living/M)
	M.adjustToxLoss(0.75)
	M.adjustCloneLoss(1.5)


//DRUGGGGGGGGSSSSSSSSSSS!!!!!!!

/datum/reagent/drug/azine_drug
	name = "Reactive Crystals"
	taste_description = "salt and metal foil"
	color = "#e2e2e2"
	metabolization_rate = 0.5

/datum/reagent/drug/azine_drug/overdose_process(mob/living/M)
	. = ..()

/datum/reagent/drug/azine_drug/meffameff
	name = "Meffameff"
	taste_description = "crystalized energy"
	addiction_types = list(/datum/addiction/stimulants = 20)
	overdose_threshold = 25

//stolen from meth chem because i am unoriginal AF

/datum/reagent/drug/azine_drug/meffameff/on_mob_add(mob/living/M)
	M.add_movespeed_modifier(/datum/movespeed_modifier/reagent/methamphetamine)


/datum/reagent/drug/azine_drug/meffameff/on_mob_life(mob/living/M)
	var/high_message = pick("Did your heart stop?", "Your brain pulses!", "Your heart is about to explode!", "OH GOD! YOUR VEINS LOOK RED WITH HEAT!")
	if(prob(5))
		to_chat(M, "<span class='warning'>[high_message]</span>")
	SEND_SIGNAL(M, COMSIG_ADD_MOOD_EVENT, "tweaking", /datum/mood_event/stimulant_medium, name)
	M.AdjustStun(-80)
	M.AdjustKnockdown(-70)
	M.AdjustImmobilized(-80)
	M.adjustStaminaLoss(-4, 0)
	M.Jitter(2)
	M.adjustOrganLoss(ORGAN_SLOT_BRAIN, 1)
	M.adjustOrganLoss(ORGAN_SLOT_HEART, 3)
	if(prob(5))
		M.emote(pick("twitch", "shiver", "laugh", "clap"))
	..()
	. = 1

/datum/reagent/drug/azine_drug/meffameff/overdose_process(mob/living/M)
	. = ..()
	var/od_message = pick("GOFASTGOFASTGOFAST!!!!!", "MOVEMOVEMOVEMOVE!!!!", "GOTTAGOGOTTAGOGOTTAGO!!!!!", "WHOOOOOOOSH!!!!", "IMRUNNINCIRCLESAROUNDYA!!!!!")
	if(prob(20))
		to_chat(M, "<span class='userdanger'>[od_message]</span>")
	M.adjustOrganLoss(ORGAN_SLOT_BRAIN, 2)
	M.adjustOrganLoss(ORGAN_SLOT_HEART, 6)
	M.adjustStun(-100)
	M.adjustStaminaLoss(-12, 0)
	M.adjustKnockdown(-90)

/datum/reagent/drug/azine_drug/admiral_halsey
	name = "Admiral Halsey" //ADMIRAL HALSEY NOTIFIED ME HE HAD TO HAVE A BERTH OR HE COULDNT GET TO SEA SO I HAD ANOTHER LOOK AND HAD A CUP OF TEA AND A BUTTER PIEEEEEEE
	taste_description = "your hands across the water and heads across the sky"
	addiction_types = list(/datum/addiction/maintenance_drugs = 19)
	//Exchanges brain damage for liver damage as well as causes large drugginess and shit
	//No OD but has a high addiction chance

/datum/reagent/drug/azine_drug/admiral_halsey/on_mob_add(mob/living/M)
	to_chat(M, "<span class='notice'>You feel like drinking a cup of tea and eating a butter pie...</span>")
	M.set_drugginess(25)
	SEND_SIGNAL(M, COMSIG_ADD_MOOD_EVENT, "[type]_high", /datum/mood_event/admiral_halsey)

/datum/reagent/drug/azine_drug/admiral_halsey/on_mob_metabolize(mob/living/L)
	L.adjustOrganLoss(ORGAN_SLOT_LIVER, 0.25)
	L.adjustOrganLoss(ORGAN_SLOT_BRAIN, -0.75)
	L.adjustSleeping(rand(10,20))
	if(prob(10))
		M.emote(pick("laugh"))

/datum/reagent/drug/azine_drug/admiral_halsey/on_mob_delete(mob/living/L)
	M.set_drugginess(0)
	SEND_SIGNAL(M, COMSIG_CLEAR_MOOD_EVENT, "[type]_high", /datum/mood_event/admiral_halsey)

/datum/reagent/drug/azine_drug/ruler_of_everything
	name = "Ruler of Everything"
	overdose_threshold = 15
	var/datum/brain_trauma/special/psychotic_brawling/bath_salts/rage
	//Causes extreme megalomania and upon overdose, makes you begin
	//saying overly self-important things, OD also gives you psychotic brawling

/datum/reagent/drug/azine_drug/ruler_of_everything/on_mob_add(mob/living/L)
	. = ..()
	SEND_SIGNAL(L, COMSIG_ADD_MOOD_EVENT, "[type]_high", /datum/mood_event/ruler_of_everything)

/datum/reagent/drug/azine_drug/ruler_of_everything/on_mob_delete(mob/living/L)
	. = ..()
	if(rage)
		QDEL_NULL(rage)
	SEND_SIGNAL(L, COMSIG_CLEAR_MOOD_EVENT, "[type]_high", /datum/mood_event/ruler_of_everything)

/datum/reagent/drug/azine_drug/ruler_of_everything/on_mob_metabolize(mob/living/L)
	. = ..()

/datum/reagent/drug/azine_drug/ruler_of_everything/overdose_start(mob/living/L)
	if(iscarbon(L))
		var/mob/living/carbon/C = L
		rage = new()
		C.gain_trauma(rage, TRAUMA_RESILIENCE_ABSOLUTE)
	to_chat(L,"<span class='userdanger>Hehe... AHA... AHAHHAHAHAAHAHAH!!! AHAHAHAAGAAHAHAHHAAHA!!!!!!!!</span>'")

/datum/reagent/drug/azine_drug/ruler_of_everything/overdose_process(mob/living/L)
	. = ..()
	if(prob(10) || L.can_speak)
		L.send_speech(pick("I AM THE ULTRA-POWERFUL!!", "ALL OF YOU ARE DWEEBS!!", "DO YOU LIKE HOW I DANCE?!?!!", "YOU ALL SHALL BOW DOWN TO ME!!", "AHAHAHAHAAAAAA!!", "EHEHEHEEEEHAHAAHAA!!"))
	if(prob(20))
		L.emote("laugh")
