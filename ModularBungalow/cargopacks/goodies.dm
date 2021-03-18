/datum/supply_pack/goody/structurebeacon
	name = "Bluespace structure beacon"
	desc = "A beacon that orders a bluespace structure capsule, holding a schematic for a functional building. Contains shelters and small houses."
	cost = PAYCHECK_MEDIUM * 6
	contains = list(/obj/item/choice_beacon/structures)

/datum/supply_pack/goody/revolver_detective
	name = ".38 Revolver Single-Pack"
	desc = "Contains one .38 Revolver. Ammunitions not included and must be bought separetely."
	cost = PAYCHECK_HARD * 10
	access_view = ACCESS_ARMORY
	contains = list(/obj/item/gun/ballistic/revolver/detective)
