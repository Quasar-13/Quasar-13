SUBSYSTEM_DEF(randomchem)
	name = "Kirie Chem V3"
	init_order = INIT_ORDER_RANDOMCHEM
	flags = SS_NO_FIRE


	var/list/effects
	var/kirium1 = "Brute Loss"
	var/kirium2 = "Brute Loss"

	var/jankium1 = "Brute Loss"
	var/jankium2 = "Brute Loss"

	var/glaucium1 = "Brute Loss"
	var/glaucium2 = "Brute Loss"

	var/sliantine1 = "Brute Loss"
	var/sliantine2 = "Brute Loss"

	var/fleucium1 = "Brute Loss"
	var/fleucium2 = "Brute Loss"

	var/hawhium1 = "Brute Loss"
	var/hawhium2 = "Brute Loss"

	var/wulfuasium1 = "Brute Loss"
	var/wulfuasium2 = "Brute Loss"

	var/ikrine1 = "Brute Loss"
	var/ikrine2 = "Brute Loss"



/datum/controller/subsystem/randomchem/Initialize()


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


	kirium1 = pick(effects)
	kirium2 = pick(effects)
