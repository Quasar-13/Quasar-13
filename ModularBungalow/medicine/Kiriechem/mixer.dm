/datum/reagent/mixer
	name = "Mixide"
	description = "one of many experimental mixers used."
	color = "#252525"
	taste_description = "light poison"

/datum/reagent/mixer/on_mob_life(mob/living/M)
	M.adjustToxLoss(0.5*REM)
	..()
	return TRUE


/datum/chemical_reaction/mixer
	results = list(/datum/reagent/mixer = 3)
	required_reagents = list(/datum/reagent/consumable/salt = 1, /datum/reagent/fuel/oil = 2)



/datum/reagent/mixer/bicarbide
	name = "Salt of Bicarbide"

/datum/chemical_reaction/bicarbide
	results = list(/datum/reagent/mixer/bicarbide = 3)
	required_reagents = list(/datum/reagent/consumable/salt = 1, /datum/reagent/silicon = 2)



/datum/reagent/mixer/irimide
	name = "Irimide"

/datum/chemical_reaction/irimide
	results = list(/datum/reagent/mixer/irimide = 3)
	required_reagents = list(/datum/reagent/acetaldehyde = 1, /datum/reagent/ammonia = 1, /datum/reagent/acetone = 1)



/datum/reagent/mixer/talcide
	name = "Organic Talcide"

/datum/chemical_reaction/talcide
	results = list(/datum/reagent/mixer/talcide = 3)
	required_reagents = list(/datum/reagent/blood = 1, /datum/reagent/medicine/atropine = 1, /datum/reagent/toxin/formaldehyde = 1)



/datum/reagent/mixer/helioside
	name = "Helioside"

/datum/chemical_reaction/helioside
	results = list(/datum/reagent/mixer/helioside = 2)
	required_reagents = list(/datum/reagent/medicine/c2/aiuri = 1, /datum/reagent/acetone = 1)



/datum/reagent/mixer/selenide
	name = "Selenide"

/datum/chemical_reaction/selenide
	results = list(/datum/reagent/mixer/selenide = 2)
	required_reagents = list(/datum/reagent/toxin/cyanide = 1, /datum/reagent/ash = 1)



/datum/reagent/mixer/kelaide
	name = "Kelaide"

/datum/chemical_reaction/kelaide
	results = list(/datum/reagent/mixer/kelaide = 3)
	required_reagents = list(/datum/reagent/ash = 1, /datum/reagent/drug/methamphetamine = 1, /datum/reagent/phenol = 1)




/datum/reagent/mixer/dioxadide
	name = "Dioxadide"

/datum/chemical_reaction/dioxadide
	results = list(/datum/reagent/mixer/dioxadide = 2)
	required_reagents = list(/datum/reagent/cryptobiolin = 1, /datum/reagent/impedrezene = 1)



/datum/reagent/mixer/pensal
	name = "Pentetic Salicide"

/datum/chemical_reaction/pensal
	results = list(/datum/reagent/mixer/pensal = 2)
	required_reagents = list(/datum/reagent/pentaerythritol = 1, /datum/reagent/consumable/salt = 1)



/datum/reagent/mixer/etheride
	name = "Etheride"

/datum/chemical_reaction/etheride
	results = list(/datum/reagent/mixer/etheride = 2)
	required_reagents = list(/datum/reagent/medicine/higadrite = 1, /datum/reagent/pentaerythritol = 1)



/datum/reagent/mixer/peroxidide
	name = "Peroxidide"

/datum/chemical_reaction/peroxidide
	results = list(/datum/reagent/mixer/peroxidide = 2)
	required_reagents = list(/datum/reagent/medicine/haloperidol = 1, /datum/reagent/hydrogen_peroxide = 1)



/datum/reagent/mixer/meride
	name = "Meride"

/datum/chemical_reaction/meride
	results = list(/datum/reagent/mixer/meride = 2)
	required_reagents = list(/datum/reagent/toxin/cyanide = 1, /datum/reagent/fluorosurfactant = 1)



/datum/reagent/mixer/polyethylide
	name = "Polyethylide"

/datum/chemical_reaction/polyethylide
	results = list(/datum/reagent/mixer/polyethylide = 3)
	required_reagents = list(/datum/reagent/diethylamine = 1, /datum/reagent/consumable/ethanol = 1, /datum/reagent/copper = 1)



/datum/reagent/mixer/haloride
	name = "Haloride"

/datum/chemical_reaction/haloride
	results = list(/datum/reagent/mixer/haloride = 2)
	required_reagents = list(/datum/reagent/acetaldehyde = 1, /datum/reagent/acetone_oxide = 1)



/datum/reagent/mixer/meloride
	name = "Meloride"

/datum/chemical_reaction/meloride
	results = list(/datum/reagent/mixer/meloride = 3)
	required_reagents = list(/datum/reagent/carbon = 1, /datum/reagent/acetone_oxide = 1, /datum/reagent/mercury = 1)



/datum/reagent/mixer/caemide
	name = "Caemide"

/datum/chemical_reaction/caemide
	results = list(/datum/reagent/mixer/caemide = 3)
	required_reagents = list(/datum/reagent/copper = 1, /datum/reagent/acetone_oxide = 1, /datum/reagent/cryptobiolin = 1)


//Table 2 chems


/datum/reagent/mixer/paraide
	name = "Paraide"

/datum/chemical_reaction/paraide
	results = list(/datum/reagent/mixer/paraide = 3)
	required_reagents = list(/datum/reagent/lye = 1, /datum/reagent/drug/space_drugs = 1, /datum/reagent/saltpetre = 1)



/datum/reagent/mixer/sparaide
	name = "Stable Paraide"

/datum/chemical_reaction/sparaide
	results = list(/datum/reagent/mixer/sparaide = 2)
	required_reagents = list(/datum/reagent/mixer/paraide = 1, /datum/reagent/stable_plasma = 1)



/datum/reagent/mixer/dparaide
	name = "Distilled Paraide"

/datum/chemical_reaction/dparaide
	results = list(/datum/reagent/mixer/dparaide = 2)
	required_reagents = list(/datum/reagent/mixer/paraide = 1, /datum/reagent/drug/space_drugs = 1)



/datum/reagent/mixer/rparaide
	name = "Reactive Paraide"

/datum/chemical_reaction/rparaide
	results = list(/datum/reagent/mixer/rparaide = 2)
	required_reagents = list(/datum/reagent/mixer/paraide = 1, /datum/reagent/sodium = 1)



/datum/reagent/mixer/srparaide
	name = "Semi-Reactive Paraide"

/datum/chemical_reaction/srparaide
	results = list(/datum/reagent/mixer/srparaide = 2)
	required_reagents = list(/datum/reagent/mixer/sparaide = 1, /datum/reagent/sodium = 1)




/datum/reagent/mixer/hebitide
	name = "Hebitide"

/datum/chemical_reaction/hebitide
	results = list(/datum/reagent/mixer/hebitide = 5)
	required_reagents = list(/datum/reagent/toxin/formaldehyde = 1, /datum/reagent/diethylamine = 1, /datum/reagent/lye = 1, /datum/reagent/drug/aranesp = 1, /datum/reagent/acetone = 1)



/datum/reagent/mixer/uhebitide
	name = "Unstable Hebitide"

/datum/chemical_reaction/uhebitide
	results = list(/datum/reagent/mixer/uhebitide = 2)
	required_reagents = list(/datum/reagent/mixer/hebitide = 1, /datum/reagent/impedrezene = 1)



/datum/reagent/mixer/mhebitide
	name = "Mutated Hebitide"

/datum/chemical_reaction/mhebitide
	results = list(/datum/reagent/mixer/mhebitide = 2)
	required_reagents = list(/datum/reagent/mixer/hebitide = 1, /datum/reagent/blood = 1)


