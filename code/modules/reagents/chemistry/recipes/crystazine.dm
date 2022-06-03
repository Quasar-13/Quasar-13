/datum/chemical_reaction/azine/crystazine/stable
	results = list(/datum/reagent/azine/crystazine/stable = 6)
	required_reagents = list(/datum/reagent/consumable/ethanol = 1, /datum/reagent/oxygen = 1, /datum/reagent/ammonia = 2, /datum/reagent/plantnutriment/left4zednutriment = 2, /datum/reagent/fuel/oil = 3, /datum/reagent/ash = 3)
	required_catalysts = list(/datum/reagent/stabilizing_agent = 1)
	mix_message = "The solution begins swirling around!"
	//Crystazine stable is a living organism now. Making other stuff is killing it... you monster
	//This includes making it noble... you monster!

/datum/chemical_reaction/azine/crystazine/noble
	//https://youtu.be/6LavEptIHs8
	mix_message = "The solution begins to stop all motion!"
	results = list(/datum/reagent/azine/crystazine/crystazine_noble = 1)
	required_reagents = list(/datum/reagent/stabilizing_agent = 2, /datum/reagent/azine/crystazine/stable = 1)

/datum/chemical_reaction/azine/crystazine/noble/troll
	mix_message = "The solution begins to stop all motion!"
	results = list(/datum/reagent/azine/crystazine/crystazine_noble = 2)
	required_reagents = list(/datum/reagent/azine/crystazine/crystazine_noble = 1, /datum/reagent/azine/crystazine/stable = 1)
