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


//Miner's Laser Shotgun
/obj/item/gun/energy/e_gun/miner/shotty
	name = "\improper E-344 Mining Scattershot"
	desc = "Nanotrasen’s standard issue mining scattershot."
	icon = 'ModularBungalow/bungalowWeapons/_icon/miningguns.dmi'
	icon_state = "mining-scatter"
	lefthand_file = 'icons/mob/inhands/weapons/64x_guns_left.dmi'
	righthand_file = 'icons/mob/inhands/weapons/64x_guns_right.dmi'
	inhand_icon_state = "shotgun"
	inhand_x_dimension = 64
	inhand_y_dimension = 64
	pin = /obj/item/firing_pin/explorer
	ammo_type = list(/obj/item/ammo_casing/energy/laser/scatter, /obj/item/ammo_casing/energy/kinetic)
	w_class = WEIGHT_CLASS_BULKY
	cell_type = /obj/item/stock_parts/cell
	selfcharge = 1


//"Miner" Laser Rifle
/obj/item/gun/energy/e_gun/miner/rifle
	name = "\improper E-304 Mining Assault Rifle"
	desc = "Nanotrasen’s standard issue mining rifle."
	icon = 'ModularBungalow/bungalowWeapons/_icon/miningguns.dmi'
	icon_state = "mining-rifle"
	inhand_icon_state = "gun"
	pin = /obj/item/firing_pin/explorer
	ammo_type = list(/obj/item/ammo_casing/energy/laser/scatter/rapid, /obj/item/ammo_casing/energy/kinetic)
	w_class = WEIGHT_CLASS_BULKY
	cell_type = /obj/item/stock_parts/cell
	selfcharge = 1

/obj/item/gun/energy/e_gun/miner/rifle/ComponentInitialize()
	. = ..()
	AddComponent(/datum/component/automatic_fire, 0.23 SECONDS)


//"Miner" Heavy Rifle
/obj/item/gun/energy/e_gun/miner/heavyrifle
	name = "\improper E-307 Mining Heavy Rifle"
	desc = "Nanotrasen’s standard issue mining rifle that fires heavy bolts."
	icon = 'ModularBungalow/bungalowWeapons/_icon/miningguns.dmi'
	icon_state = "mining-rifle"
	inhand_icon_state = "gun"
	pin = /obj/item/firing_pin/explorer
	ammo_type = list(/obj/item/ammo_casing/energy/lasergun, /obj/item/ammo_casing/energy/kinetic)
	w_class = WEIGHT_CLASS_BULKY
	cell_type = /obj/item/stock_parts/cell
	selfcharge = 1

/obj/item/gun/energy/e_gun/miner/rifle/ComponentInitialize()
	. = ..()
	AddComponent(/datum/component/automatic_fire, 0.30 SECONDS)


//Mining Bolter
/obj/item/gun/energy/e_gun/miner/bolter
	name = "\improper E-325 Mining Bolt Pistol"
	desc = "Nanotrasen’s standard issue mining bolter. Fires mini bullets at insane speeds, but has a low capacity"
	icon = 'ModularBungalow/bungalowWeapons/_icon/miningguns.dmi'
	icon_state = "mining-bolter"
	inhand_icon_state = "gun"
	pin = /obj/item/firing_pin/explorer
	ammo_type = list(/obj/item/ammo_casing/energy/laser/scatter/rapid, /obj/item/ammo_casing/energy/kinetic)
	selfcharge = 1
	cell_type = /obj/item/stock_parts/cell/mini_egun

/obj/item/gun/energy/e_gun/miner/bolter/ComponentInitialize()
	. = ..()
	AddComponent(/datum/component/automatic_fire, 0.15 SECONDS)

