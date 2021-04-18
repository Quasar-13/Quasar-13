//Omnizine
/datum/chemical_reaction/randomized/kiriechem
	randomize_req_temperature = FALSE

	randomize_inputs = TRUE
	min_input_reagent_amount = 1
	max_input_reagent_amount = 1
	min_input_reagents = 5
	max_input_reagents = 5
	possible_reagents = list(/datum/reagent/ammonia, /datum/reagent/ash, /datum/reagent/acetone,
						/datum/reagent/drug/space_drugs, /datum/reagent/toxin/cyanide, /datum/reagent/diethylamine, /datum/reagent/phenol,
						/datum/reagent/saltpetre, /datum/reagent/lye, /datum/reagent/medicine/granibitaluri, /datum/reagent/acetaldehyde,
						/datum/reagent/medicine/atropine, /datum/reagent/toxin/formaldehyde, /datum/reagent/toxin/fentanyl, /datum/reagent/drug/methamphetamine,
						/datum/reagent/medicine/c2/libital, /datum/reagent/medicine/c2/aiuri, /datum/reagent/medicine/c2/multiver, /datum/reagent/medicine/c2/convermol)

	max_catalysts = 0

	results = list(/datum/reagent/medicine/omnizine = 5)


//Toxin
/datum/chemical_reaction/randomized/kiriechem/toxin
	min_input_reagents = 3
	max_input_reagents = 3
	results = list(/datum/reagent/toxin = 3)


//Carpotoxin
/datum/chemical_reaction/randomized/kiriechem/carpotoxin
	min_input_reagents = 3
	max_input_reagents = 3
	results = list(/datum/reagent/toxin/carpotoxin = 3)


//Verafore
/datum/chemical_reaction/randomized/kiriechem/verafore
	min_input_reagents = 7
	max_input_reagents = 7

	results = list(/datum/reagent/medicine/verafore = 7)

//Giadone
/datum/chemical_reaction/randomized/kiriechem/giadone
	min_input_reagents = 3
	max_input_reagents = 3

	results = list(/datum/reagent/medicine/giadone = 3)

//Bicardine
/datum/chemical_reaction/randomized/kiriechem/bicardine
	min_input_reagents = 3
	max_input_reagents = 3

	results = list(/datum/reagent/medicine/bicardine = 3)

//Kelotane
/datum/chemical_reaction/randomized/kiriechem/kelotane
	min_input_reagents = 3
	max_input_reagents = 3

	results = list(/datum/reagent/medicine/kelotane = 3)

//Omnidrite
/datum/chemical_reaction/randomized/kiriechem/omnidrite
	min_input_reagents = 4
	max_input_reagents = 4

	results = list(/datum/reagent/medicine/omnidrite = 4)

//Mutation Toxin
/datum/chemical_reaction/randomized/kiriechem/mutation
	min_input_reagents = 6
	max_input_reagents = 6

	results = list(/datum/reagent/mutationtoxin = 6)

//Ventrite
/datum/chemical_reaction/randomized/kiriechem/ventrite
	min_input_reagents = 2
	max_input_reagents = 2

	results = list(/datum/reagent/medicine/ventrite = 2)

//Spirozrite
/datum/chemical_reaction/randomized/kiriechem/spirozrite
	min_input_reagents = 2
	max_input_reagents = 2

	results = list(/datum/reagent/medicine/spirozrite = 2)

//Citisrite
/datum/chemical_reaction/randomized/kiriechem/citisrite
	min_input_reagents = 2
	max_input_reagents = 2

	results = list(/datum/reagent/medicine/citisrite = 2)

//Purgrite
/datum/chemical_reaction/randomized/kiriechem/purgrite
	min_input_reagents = 2
	max_input_reagents = 2

	results = list(/datum/reagent/medicine/purgrite = 2)

//Sanguirite
/datum/chemical_reaction/randomized/kiriechem/sanguirite
	min_input_reagents = 2
	max_input_reagents = 2

	results = list(/datum/reagent/medicine/coagulant = 2)

//Mint Toxin
/datum/chemical_reaction/randomized/kiriechem/mint
	min_input_reagents = 5
	max_input_reagents = 5

	results = list(/datum/reagent/toxin/minttoxin = 5)

//Tirizine
/datum/chemical_reaction/randomized/kiriechem/tirizine
	min_input_reagents = 4
	max_input_reagents = 4

	results = list(/datum/reagent/toxin/staminatoxin = 4)

//Hellwater
/datum/chemical_reaction/randomized/kiriechem/hellwater
	min_input_reagents = 6
	max_input_reagents = 6

	results = list(/datum/reagent/hellwater = 6)

//Super Lube
/datum/chemical_reaction/randomized/kiriechem/superlube
	min_input_reagents = 5
	max_input_reagents = 5

	results = list(/datum/reagent/lube/superlube = 5)

//Determination
/datum/chemical_reaction/randomized/kiriechem/determination
	min_input_reagents = 5
	max_input_reagents = 5

	results = list(/datum/reagent/determination = 5)

