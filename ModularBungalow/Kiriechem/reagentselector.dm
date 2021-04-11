/datum/chemical_reaction/chemre
	var/part1 = pick(
		/datum/reagent/acetone,
		/datum/reagent/ammonia,
		/datum/reagent/ash,
		/datum/reagent/diethylamine,
		/datum/reagent/fuel/oil,
		/datum/reagent/silver,
		/datum/reagent/saltpetre)

	var/part2 = pick(
		/datum/reagent/acetone,
		/datum/reagent/ammonia,
		/datum/reagent/ash,
		/datum/reagent/diethylamine,
		/datum/reagent/fuel/oil,
		/datum/reagent/silver,
		/datum/reagent/saltpetre)


/datum/chemical_reaction/chemre/omnizine
	results = list(/datum/reagent/medicine/omnizine = 2)
	required_reagents = list(part1 = 1, part2 = 1)

