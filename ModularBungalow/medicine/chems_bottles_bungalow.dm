//Chems
/obj/item/reagent_containers/glass/bottle/libital
	name = "libital bottle"
	desc = "A small bottle. Contains libital - used to heal brute damage."
	list_reagents = list(/datum/reagent/medicine/c2/libital = 30)

/obj/item/reagent_containers/glass/bottle/probital
	name = "probital bottle"
	desc = "A small bottle. Contains probital - used to heal brute damage."
	list_reagents = list(/datum/reagent/medicine/c2/probital = 30)

/obj/item/reagent_containers/glass/bottle/salicyclic
	name = "salicyclic acid bottle"
	desc = "A small bottle. Contains salicyclic acid - used to heal brute damage."
	list_reagents = list(/datum/reagent/medicine/sal_acid = 30)

/obj/item/reagent_containers/glass/bottle/aiuri
	name = "aiuri bottle"
	desc = "A small bottle. Contains aiuri - used to heal burn damage."
	list_reagents = list(/datum/reagent/medicine/c2/aiuri = 30)

/obj/item/storage/pill_bottle/mannitol/small
	name = "bottle of mannitol pills"
	desc = "Contains pills used to treat brain damage."

/obj/item/storage/pill_bottle/mannitol/small/PopulateContents()
	for(var/i in 1 to 5)
		new /obj/item/reagent_containers/pill/mannitol/small(src)

/obj/item/storage/pill_bottle/morphine/small
	name = "bottle of morphine pills"
	desc = "Commonly used to treat insomnia, can be used to treat morphine addiction."

/obj/item/storage/pill_bottle/morphine/small/PopulateContents()
	for(var/i in 1 to 5)
		new /obj/item/reagent_containers/pill/morphine/small(src)

/obj/item/storage/pill_bottle/neurine/small
	name = "bottle of neurine pills"
	desc = "Used to treat brain traumas"

/obj/item/storage/pill_bottle/neurine/small/PopulateContents()
	for(var/i in 1 to 5)
		new /obj/item/reagent_containers/pill/neurine/small(src)

/obj/item/storage/pill_bottle/synaptazine
	name = "bottle of synaptazine pills"
	desc = "Used to treat drowsiness and hallucinations."

/obj/item/storage/pill_bottle/synaptazine/PopulateContents()
	for(var/i in 1 to 5)
		new /obj/item/reagent_containers/pill/synaptazine(src)

/obj/item/storage/pill_bottle/haloperidol
	name = "bottle of haloperidol pills"
	desc = "Used to fight addictions, causes drowsiness."

/obj/item/storage/pill_bottle/haloperidol/small/PopulateContents()
	for(var/i in 1 to 5)
		new /obj/item/reagent_containers/pill/haloperidol(src)
