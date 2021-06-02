/obj/item/seeds/strawberry
	name = "pack of strawberry seeds"
	desc = "These seeds grow into strawberry plants."
	icon_state = "seed-strawberry"
	species = "berry"
	plantname = "strawberry"
	product = /obj/item/food/grown/strawberry
	maturation = 8
	instability = 10
	potency = 6
	growing_icon = 'icons/obj/hydroponics/growing_fruits.dmi'
	icon_grow = "berry-grow"
	icon_harvest = "strawberry-harvest"
	icon_dead = "berry-dead"
	genes = list(/datum/plant_gene/trait/repeated_harvest)
	reagents_add = list(/datum/reagent/consumable/nutriment/vitamin = 0.03, /datum/reagent/consumable/nutriment = 0.2)

/obj/item/food/grown/strawberry
	seed = /obj/item/seeds/strawberry
	name = "strawberry"
	desc = "desc"
	icon_state = "strawberry"
	bite_consumption_mod = 2
	foodtypes = FRUIT
	tastes = list ( "strawberry" = 1, "sweetness" = 1)
