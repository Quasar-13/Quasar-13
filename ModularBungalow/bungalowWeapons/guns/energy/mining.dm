//Miner's Laser pistol
/obj/item/gun/energy/e_gun/miner
	name = "\improper E-324 Mining Pistol"
	desc = "Nanotrasen’s standard issue mining beam pistol."
	icon = 'ModularBungalow/bungalowWeapons/_icon/miningguns.dmi'
	icon_state = "mining"
	inhand_icon_state = "gun"
	pin = /obj/item/firing_pin/explorer
	ammo_type = list(/obj/item/ammo_casing/energy/lasergun, /obj/item/ammo_casing/energy/kinetic)
	w_class = WEIGHT_CLASS_SMALL
	cell_type = /obj/item/stock_parts/cell/mini_egun
	selfcharge = 1


//Miner's Laser Revolver
/obj/item/gun/energy/e_gun/miner/revolver
	name = "\improper E-326 Mining Revolve"
	desc = "A refined, powerful hitscan pistol."
	icon = 'ModularBungalow/bungalowWeapons/_icon/miningguns.dmi'
	icon_state = "mining-revolver"
	ammo_type = list(/obj/item/ammo_casing/energy/laser/hellfire, /obj/item/ammo_casing/energy/kinetic)

//Miner's Laser Shotgun
/obj/item/gun/energy/e_gun/miner/shotty
	name = "\improper E-344 Mining Scattershot"
	desc = "Nanotrasen’s standard issue mining scattershot."
	icon_state = "mining-scatter"
	lefthand_file = 'icons/mob/inhands/weapons/64x_guns_left.dmi'
	righthand_file = 'icons/mob/inhands/weapons/64x_guns_right.dmi'
	inhand_icon_state = "shotgun"
	inhand_x_dimension = 64
	inhand_y_dimension = 64
	ammo_type = list(/obj/item/ammo_casing/energy/laser/scatter, /obj/item/ammo_casing/energy/kinetic)
	w_class = WEIGHT_CLASS_BULKY
	cell_type = /obj/item/stock_parts/cell


//Miner's AutoShotgun
/obj/item/gun/energy/e_gun/miner/autoshotty
	name = "\improper E-346 Mining Autoshotgun"
	desc = "Nanotrasen’s 2nd generation laser shotgun."
	icon_state = "mining-autoscatter"
	inhand_icon_state = "arg"
	ammo_type = list(/obj/item/ammo_casing/energy/laser/scatter/close, /obj/item/ammo_casing/energy/kinetic)
	w_class = WEIGHT_CLASS_BULKY
	cell_type = /obj/item/stock_parts/cell

/obj/item/gun/energy/e_gun/miner/autoshotty/ComponentInitialize()
	. = ..()
	AddComponent(/datum/component/automatic_fire, 0.32 SECONDS)


//"Miner" Laser Rifle
/obj/item/gun/energy/e_gun/miner/rifle
	name = "\improper E-304 Mining Assault Rifle"
	desc = "Nanotrasen’s standard issue mining rifle."
	icon = 'ModularBungalow/bungalowWeapons/_icon/miningguns.dmi'
	icon_state = "mining-rifle"
	ammo_type = list(/obj/item/ammo_casing/energy/laser/scatter/rapid, /obj/item/ammo_casing/energy/kinetic)
	w_class = WEIGHT_CLASS_BULKY
	cell_type = /obj/item/stock_parts/cell

/obj/item/gun/energy/e_gun/miner/rifle/ComponentInitialize()
	. = ..()
	AddComponent(/datum/component/automatic_fire, 0.23 SECONDS)


//"Miner" Heavy Rifle
/obj/item/gun/energy/e_gun/miner/heavyrifle
	name = "\improper E-307 Mining Heavy Rifle"
	desc = "Nanotrasen’s standard issue mining rifle that fires heavy bolts."
	icon = 'ModularBungalow/bungalowWeapons/_icon/miningguns.dmi'
	icon_state = "mining-heavyrifle"
	ammo_type = list(/obj/item/ammo_casing/energy/lasergun, /obj/item/ammo_casing/energy/kinetic)
	w_class = WEIGHT_CLASS_BULKY
	cell_type = /obj/item/stock_parts/cell

/obj/item/gun/energy/e_gun/miner/heavyrifle/ComponentInitialize()
	. = ..()
	AddComponent(/datum/component/automatic_fire, 0.30 SECONDS)


//Miner Superheavy Rifle
/obj/item/gun/energy/e_gun/miner/superheavyrifle
	name = "\improper E-308 Mining Superheavy Rifle"
	desc = "Nanotrasen’s standard issue mining rifle that fires heavy bolts."
	icon = 'ModularBungalow/bungalowWeapons/_icon/miningguns.dmi'
	icon_state = "mining-superheavy"
	ammo_type = list(/obj/item/ammo_casing/energy/laser/heavy, /obj/item/ammo_casing/energy/kinetic)
	w_class = WEIGHT_CLASS_BULKY
	cell_type = /obj/item/stock_parts/cell

/obj/item/gun/energy/e_gun/miner/superheavyrifle/ComponentInitialize()
	. = ..()
	AddComponent(/datum/component/automatic_fire, 0.36 SECONDS)


//Mining Bolter
/obj/item/gun/energy/e_gun/miner/bolter
	name = "\improper E-325 Mining Bolt Pistol"
	desc = "Nanotrasen’s standard issue mining bolter. Fires mini bullets at insane speeds, but has a low capacity"
	icon = 'ModularBungalow/bungalowWeapons/_icon/miningguns.dmi'
	icon_state = "mining-bolter"
	ammo_type = list(/obj/item/ammo_casing/energy/laser/scatter/rapid, /obj/item/ammo_casing/energy/kinetic)

/obj/item/gun/energy/e_gun/miner/bolter/ComponentInitialize()
	. = ..()
	AddComponent(/datum/component/automatic_fire, 0.15 SECONDS)

