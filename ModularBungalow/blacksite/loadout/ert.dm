/obj/item/choice_beacon/bungalow/deathsquad/ert
	name = "ERT Officer beacon"
	desc = "A beacon the ERT officers use to choose their weapons."
	typesof_options = /obj/item/storage/backpack/duffelbag/ert


/**
 * # RIFLE AND ION KIT
 */
/obj/item/storage/backpack/duffelbag/ert
	name = "E-000 Laser Rifle Kit and Ion Rifle"
	desc = "Usually given to NT station captains, this rifle is in your hands as well for delicate missions"

/obj/item/storage/backpack/duffelbag/ert/PopulateContents()
	new /obj/item/gun/energy/laser/captain/ntgold(src)
	new /obj/item/gun/energy/ionrifle/carbine(src)
	new /obj/item/gun/energy/e_gun/mini(src)


/**
 * # LASER SNIPER KIT
 */
/obj/item/storage/backpack/duffelbag/ert/laser
	name = "Laser Sniper Kit"
	desc = "Contains one M76 Lethal laser beam rifle and a usable sidearm."

/obj/item/storage/backpack/duffelbag/ert/laser/PopulateContents()
	new /obj/item/gun/energy/sniper/pin(src)
	new /obj/item/gun/energy/e_gun/mini(src)


/**
 * # X-RAY KIT
 */
/obj/item/storage/backpack/duffelbag/ert/xray
	name = "Ultramaterial Rifle Kit"
	desc = "Contains one fully modified L-792 Ultramaterial laser rifle and a usable sidearm."

/obj/item/storage/backpack/duffelbag/ert/xray/PopulateContents()
	new /obj/item/gun/energy/xray(src)
	new /obj/item/gun/energy/e_gun/mini(src)


/**
 * # ACCELERATION RIFLE KIT
 */
/obj/item/storage/backpack/duffelbag/ert/pkr
	name = "Particle Acceleration Rifle Kit"
	desc = "Contains one Particle Acceleration rifle and sidearm."

/obj/item/storage/backpack/duffelbag/ert/pkr/PopulateContents()
	new /obj/item/gun/energy/beam_rifle(src)
	new /obj/item/gun/energy/e_gun/mini(src)
