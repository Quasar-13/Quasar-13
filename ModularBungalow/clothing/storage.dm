/obj/item/storage/backpack/centcom
	name = "centcom backpack"
	desc = "It's a special backpack made exclusively for Nanotrasen officers. Green for Navy baby."
	icon =	'ModularBungalow/clothing/icons/storage.dmi'
	icon_state = "gcaptainpack"
	worn_icon = 'ModularBungalow/clothing/worn/backw.dmi'
	lefthand_file = 'ModularBungalow/zbungalowicons/items_lefthand.dmi'
	righthand_file = 'ModularBungalow/zbungalowicons/items_righthand.dmi'
	inhand_icon_state = "gcaptainpack"


/obj/item/storage/briefcase/secretary
	folder_path = /obj/item/folder/blue
	icon = 'ModularBungalow/clothing/icons/storage.dmi'
	icon_state = "briefcase_secretary"
	lefthand_file = 'ModularBungalow/zbungalowicons/items_lefthand.dmi'
	righthand_file = 'ModularBungalow/zbungalowicons/items_righthand.dmi'

/obj/item/storage/briefcase/secretary/PopulateContents()

	new /obj/item/reagent_containers/food/drinks/bottle/whiskey(src)
	new /obj/item/paper_bin(src)
	new /obj/item/reagent_containers/food/drinks/drinkingglass/shotglass (src)
	..()

