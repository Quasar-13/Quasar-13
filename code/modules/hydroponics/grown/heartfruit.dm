/obj/item/seeds/heartfruit
	name = "pack of heart-fruit seeds"
	desc = "These seeds grow into heart-fruit plants."
	icon_state = "seed-heartfruit"
	species = "heartfruit"
	plantname = "Heart-fruit"
	product = /obj/item/food/grown/heartfruit
	maturation = 8
	instability = 10
	potency = 6
	growthstages = 5
	growing_icon = 'icons/obj/hydroponics/growing_fruits.dmi'
	icon_grow = "heartfruit-grow"
	icon_dead = "heartfruit-dead"
	genes = list(/datum/plant_gene/trait/repeated_harvest)
	reagents_add = list(/datum/reagent/consumable/nutriment/vitamin = 0.03, /datum/reagent/consumable/nutriment = 0.1)

/obj/item/food/grown/heartfruit
	seed = /obj/item/seeds/heartfruit
	name = "heart-fruit"
	desc = "a fruit that have a very similar shape of a heart	."
	icon_state = "heartfruit"
	bite_consumption_mod = 2
	foodtypes = FRUIT
	tastes = list ( "heartfruit" = 1, "love" = 1)
