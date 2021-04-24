//This is to create new instances of current items in the code, like having stacks of 20 silver directly.


//MINERALS

/obj/item/stack/sheet/mineral/silver/twenty
	amount = 20

/obj/item/stack/sheet/mineral/gold/twenty
	amount = 20

/obj/item/stack/sheet/mineral/uranium/twenty
	amount = 20

/obj/item/stack/sheet/mineral/titanium/twenty
	amount = 20

//BOXES

/obj/item/storage/box/glowsticks
	name = "glowsticks box"
	desc = "A box filled with different colorfull glowsticks. Either for emergency or for partying hard."
	icon_state = "box"

/obj/item/storage/box/glowsticks/PopulateContents()
		new /obj/item/flashlight/glowstick/red (src)
		new /obj/item/flashlight/glowstick/orange (src)
		new /obj/item/flashlight/glowstick/yellow(src)
		new /obj/item/flashlight/glowstick (src)
		new /obj/item/flashlight/glowstick/cyan (src)
		new /obj/item/flashlight/glowstick/blue (src)
		new /obj/item/flashlight/glowstick/pink (src)

/obj/item/storage/box/flares
	name = "flares box"
	desc = "A box filled with seven flares. Either for emergency or for other questionnable recipes."
	icon_state = "box"

/obj/item/storage/box/flares/PopulateContents()
	for(var/i in 1 to 7)
		new /obj/item/flashlight/flare(src)