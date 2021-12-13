//Fucking medic bag
/obj/item/storage/bag/chemistry/medic
	name = "medic's chemistry bag"
	desc = "A bag carrying everything needed."

/obj/item/storage/bag/chemistry/medic/PopulateContents()
	new /obj/item/reagent_containers/glass/bottle/epinephrine(src)
	new /obj/item/reagent_containers/glass/bottle/epinephrine(src)
	new /obj/item/reagent_containers/glass/bottle/libital(src)
	new /obj/item/reagent_containers/glass/bottle/libital(src)
	new /obj/item/reagent_containers/glass/bottle/probital(src)
	new /obj/item/reagent_containers/glass/bottle/salicyclic(src)
	new /obj/item/reagent_containers/glass/bottle/aiuri(src)
	new /obj/item/reagent_containers/glass/bottle/synaptizine(src)
	new /obj/item/reagent_containers/glass/bottle/synaptizine(src)
	new /obj/item/reagent_containers/glass/bottle(src)

	for(var/i in 1 to 30)
		new /obj/item/reagent_containers/syringe(src)



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



