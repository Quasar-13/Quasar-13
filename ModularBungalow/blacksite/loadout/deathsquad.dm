/obj/item/choice_beacon/bungalow/deathsquad
	name = "NT Death Commando beacon"
	desc = "A beacon the Death Commando uses to choose their weapons."
	typesof_options = /obj/item/storage/backpack/duffelbag/deathsquad
	selection_message = "<span class='hear'>Get out there!</span>"


/**
 * # PULSE RIFLE KIT
 */
/obj/item/storage/backpack/duffelbag/deathsquad
	name = "Pulse Rifle Kit"
	desc = "The classic deathsquad weapon. Set to Destroy"

/obj/item/storage/backpack/duffelbag/deathsquad/PopulateContents()
	new /obj/item/gun/energy/pulse/carbine(src)


/**
 * # MINIGUN KIT
 */
/obj/item/storage/backpack/duffelbag/deathsquad/minigun
	name = "Laser Minigun Kit"
	desc = "Contains the new and improved Deathsquad minigun with a pulse pistol sidearm."

/obj/item/storage/backpack/duffelbag/deathsquad/minigun/PopulateContents()
	new /obj/item/minigunpack(src)
	new /obj/item/gun/energy/pulse/pistol(src)
