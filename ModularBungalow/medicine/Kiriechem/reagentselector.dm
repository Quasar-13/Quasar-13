//Omnizine
/datum/chemical_reaction/randomized/kiriechem
	randomize_req_temperature = FALSE

	randomize_inputs = TRUE
	min_input_reagent_amount = 1
	max_input_reagent_amount = 1
	min_input_reagents = 4
	max_input_reagents = 4
	possible_reagents = list(/datum/reagent/mixer, /datum/reagent/mixer/bicarbide, /datum/reagent/mixer/irimide, /datum/reagent/mixer/talcide, /datum/reagent/mixer/kelaide,
							/datum/reagent/mixer/dioxadide, /datum/reagent/mixer/pensal, /datum/reagent/mixer/etheride, /datum/reagent/mixer/peroxidide,
							/datum/reagent/mixer/meride, /datum/reagent/mixer/polyethylide, /datum/reagent/mixer/haloride, /datum/reagent/mixer/meloride,
							/datum/reagent/mixer/caemide)

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

//Mint Toxin
/datum/chemical_reaction/randomized/kiriechem/mint
	min_input_reagents = 4
	max_input_reagents = 4
	results = list(/datum/reagent/toxin/minttoxin = 5)

//Tirizine
/datum/chemical_reaction/randomized/kiriechem/tirizine
	min_input_reagents = 3
	max_input_reagents = 3
	results = list(/datum/reagent/toxin/staminatoxin = 4)

//Determination
/datum/chemical_reaction/randomized/kiriechem/determination
	min_input_reagents = 4
	max_input_reagents = 4
	results = list(/datum/reagent/determination = 5)

//Venadone
/datum/chemical_reaction/randomized/kiriechem/venadone
	min_input_reagents = 3
	max_input_reagents = 3
	results = list(/datum/reagent/medicine/venadone = 3)


//Table 2, for easier healing chems
//Ventrite
/datum/chemical_reaction/randomized/kiriechem/table2
	randomize_req_temperature = FALSE
	randomize_inputs = TRUE
	min_input_reagent_amount = 1
	max_input_reagent_amount = 1
	min_input_reagents = 2
	max_input_reagents = 2
	possible_reagents = list(/datum/reagent/mixer/paraide, /datum/reagent/mixer/sparaide, /datum/reagent/mixer/dparaide, /datum/reagent/mixer/rparaide, /datum/reagent/mixer/srparaide,
							/datum/reagent/mixer/hebitide, /datum/reagent/mixer/uhebitide, /datum/reagent/mixer/mhebitide)
	max_catalysts = 0
	results = list(/datum/reagent/medicine/ventrite = 2)

//Spirozrite
/datum/chemical_reaction/randomized/kiriechem/table2/spirozrite
	results = list(/datum/reagent/medicine/spirozrite = 2)

//Citisrite
/datum/chemical_reaction/randomized/kiriechem/table2/citisrite
	results = list(/datum/reagent/medicine/citisrite = 2)

//Purgrite
/datum/chemical_reaction/randomized/kiriechem/table2/purgrite
	results = list(/datum/reagent/medicine/purgrite = 2)

//Sanguirite
/datum/chemical_reaction/randomized/kiriechem/table2/sanguirite
	results = list(/datum/reagent/medicine/coagulant = 2)

//Giadone
/datum/chemical_reaction/randomized/kiriechem/table2/giadone
	results = list(/datum/reagent/medicine/giadone = 2)

//Bicarbital
/datum/chemical_reaction/randomized/kiriechem/table2/bicarbital
	min_input_reagents = 3
	max_input_reagents = 3
	results = list(/datum/reagent/medicine/bicarbital = 3)

//Keluri
/datum/chemical_reaction/randomized/kiriechem/table2/keluri
	min_input_reagents = 3
	max_input_reagents = 3
	results = list(/datum/reagent/medicine/keluri = 3)

//Table 3
//This is WAY harder to make but also very much worth it.

//Omnizine
/datum/chemical_reaction/randomized/kiriechem/table3
	randomize_req_temperature = FALSE
	randomize_inputs = TRUE
	min_input_reagent_amount = 1
	max_input_reagent_amount = 1
	min_input_reagents = 2
	max_input_reagents = 2
	possible_reagents = list(/datum/reagent/mixer/selenide, /datum/reagent/mixer/helioside, /datum/reagent/mixer/kelaide, /datum/reagent/mixer/proteoside, /datum/reagent/mixer/meteoside,
							/datum/reagent/mixer/hadronide, /datum/reagent/mixer/etheride, /datum/reagent/mixer/etherideii, /datum/reagent/mixer/etherideiii, /datum/reagent/mixer/etherideiv, /datum/reagent/mixer/etheridev)
	max_catalysts = 0
	results = list(/datum/reagent/medicine/omnizine = 2)

//Omnidrite
/datum/chemical_reaction/randomized/kiriechem/table3/omnidrite
	results = list(/datum/reagent/medicine/omnidrite = 2)

//Super Lube
/datum/chemical_reaction/randomized/kiriechem/table3/superlube
	results = list(/datum/reagent/lube/superlube = 2)

//Bicaridine
/datum/chemical_reaction/randomized/kiriechem/table3/bicaridine
	results = list(/datum/reagent/medicine/bicaridine = 2)

//Kelotane
/datum/chemical_reaction/randomized/kiriechem/table3/kelotane
	results = list(/datum/reagent/medicine/kelotane = 2)

//Mutation Toxin
/datum/chemical_reaction/randomized/kiriechem/table3/mutation
	min_input_reagents = 3
	max_input_reagents = 3
	results = list(/datum/reagent/mutationtoxin = 3)

//Verafore
/datum/chemical_reaction/randomized/kiriechem/table3/verafore
	min_input_reagents = 3
	max_input_reagents = 3
	results = list(/datum/reagent/medicine/verafore = 3)

//Hellwater
/datum/chemical_reaction/randomized/kiriechem/table3/hellwater
	min_input_reagents = 3
	max_input_reagents = 3
	results = list(/datum/reagent/hellwater = 3)
