/* Add in later when it ACTUALLY FUCKING WORKS
/datum/chemical_reaction/kirium
	results = list(/datum/reagent/randomreagent = 22)
	required_reagents = list(/datum/reagent/drug/space_drugs = 1, /datum/reagent/medicine/c2/probital = 1)
	mix_message = "The mixture turns hot."

/datum/reagent/randomreagent
	name = "Kirium"
	description = "An expermental chemical."
	color = "#252525"
	taste_description = "light poison"
	var/kirium1 = "Brute Loss"
	var/kirium2 = "Brute Loss"
	var/list/effects
	effects = list(
		"Nothing",			//does nothing lmao
		"Brute mini",		//Small Bruteloss
		"Burn mini",		//Small Burnloss
		"Tox mini",			//Small toxloss
		"Brute Loss",		//Large Bruteloss
		"Burn Loss",		//Large Burnloss
		"Burn Heal",		//Burn Heal
		"Brute Heal",		//Brute Heal
		"Tox Heal large",	//Large toxheal
		"Burn Heal large",	//Large Burn Heal
		"Brute Heal large",	//Large Brute Heal
		"staminaup",		//Stamina heal
		"epi",				//Oxy heal
		"Stun",				//Stuns
		"Knockout",			//Knocks out
		"High",				//Drugs you
		"vomit",			//Disgusts
		"Hallucination",	//Hallucinations
		"hot",				//Heats you up
		"cold",				//Cools you down
		"staminadown",		//Stamina Loss
		"knockdown",		//Reduces knockdown
		"Dizzy",			//Dizziness
		"losebreath",		//losebreath

//Wacky shit
		"Omni",				//heal all
		"Fire"				//sets you on fucking fire
		)

/datum/reagent/randomreagent/Initialize()
	kirium1 = pick(effects)
	kirium2 = pick(effects)

/datum/reagent/randomreagent/on_mob_life(mob/living/M)
//THIS IS A FUCKING MESS BUT OK, THIS IS FINE
	if(kirium1 || kirium2 == "Brute mini")
		M.adjustBruteLoss(1*REM)

	if(kirium1 || kirium2 == "Burn mini")
		M.adjustFireLoss(1*REM)

	if(kirium1 || kirium2 == "Tox mini")
		M.adjustToxLoss(1*REM)

	if(kirium1 || kirium2 == "Brute Loss")
		M.adjustBruteLoss(2*REM)

	if(kirium1 || kirium2 == "Burn Loss")
		M.adjustFireLoss(2*REM)

	if(kirium1 || kirium2 == "Brute Heal")
		M.adjustBruteLoss(-2*REM)

	if(kirium1 || kirium2 == "Burn Heal")
		M.adjustFireLoss(-2*REM)

	if(kirium1 || kirium2 == "Brute Heal large")
		M.adjustBruteLoss(-3*REM)

	if(kirium1 || kirium2 == "Burn Heal large")
		M.adjustFireLoss(-3*REM)

	if(kirium1 || kirium2 == "staminaup")
		M.adjustStaminaLoss(-5*REM)

	if(kirium1 || kirium2 == "epi")
		M.adjustOxyLoss(-6*REM)

	if(kirium1 || kirium2 == "Stun")
		M.AdjustStun(20)

	if(kirium1 || kirium2 == "Knockout")
		M.Sleeping(40)

	if(kirium1 || kirium2 == "High")
		M.set_drugginess(15)

	if(kirium1 || kirium2 == "disgust")
		M.adjust_disgust(10)

	if(kirium1 || kirium2 == "Hallucinations")
		M.hallucination += 5

	if(kirium1 || kirium2 == "hot")
		M.adjust_bodytemperature(10 * TEMPERATURE_DAMAGE_COEFFICIENT*REM,50)

	if(kirium1 || kirium2 == "cold")
		M.adjust_bodytemperature(-10 * TEMPERATURE_DAMAGE_COEFFICIENT*REM,50)

	if(kirium1 || kirium2 == "staminadown")
		M.adjustStaminaLoss(7*REM)

	if(kirium1 || kirium2 == "knockdown")
		M.AdjustKnockdown(5)

	if(kirium1 || kirium2 == "knockdown")
		M.AdjustKnockdown(5)

	if(kirium1 || kirium2 == "Dizzy")
		M.Dizzy(25)

	if(kirium1 || kirium2 == "Omni")
		M.adjustBruteLoss(-0.8*REM)
		M.adjustFireLoss(-0.8*REM)
		M.adjustToxLoss(-0.8*REM)
		M.adjustOxyLoss(-0.8*REM)

	if(kirium1 || kirium2 == "Fire")
		M.set_fire_stacks(min(5, M.fire_stacks + 3))
		M.IgniteMob()

	..()
	return TRUE


*/
