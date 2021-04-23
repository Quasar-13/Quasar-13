//Home Defender pistol
/obj/item/gun/energy/e_gun/homedef
	name = "\improper E-220 Home Defender Beam Revolver"
	desc = "Nanotrasen’s experiment to re-invent portable, self-recharging batteries and combine it with their special multi-phase technology."
	icon = 'ModularBungalow/zbungalowicons/kirie_stuff/kiriepistols.dmi'
	icon_state = "homedefender"
	inhand_icon_state = "gun"
	ammo_type = list(/obj/item/ammo_casing/energy/disabler/hitscan, /obj/item/ammo_casing/energy/ion)
	w_class = WEIGHT_CLASS_SMALL
	cell_type = /obj/item/stock_parts/cell/mini_egun
	selfcharge = 1


//Rob's Special Version
/obj/item/gun/energy/e_gun/homedef/special
	name = "\improper Custom E-220 Home Defender"
	desc = "An old but well kept E-220. Someone painted a purple H on it. It looks well kept, if a little dustied."
	icon_state = "homedefender-special"
	selfcharge = 1


//Miner's Laser pistol
/obj/item/gun/energy/e_gun/miner
	name = "\improper E-224 Mining Pistol"
	desc = "Nanotrasen’s standard issue mining beam pistol."
	icon = 'ModularBungalow/zbungalowicons/kirie_stuff/kiriepistols.dmi'
	icon_state = "mining"
	inhand_icon_state = "gun"
	pin = /obj/item/firing_pin/explorer
	ammo_type = list(/obj/item/ammo_casing/energy/lasergun, /obj/item/ammo_casing/energy/kinetic)
	w_class = WEIGHT_CLASS_SMALL
	cell_type = /obj/item/stock_parts/cell/mini_egun
	selfcharge = 1


//Miner's Laser Shotgun
/obj/item/gun/energy/e_gun/miner/shotty
	name = "\improper E-244 Mining Scattershot"
	desc = "Nanotrasen’s standard issue mining scattershot."
	icon = 'ModularBungalow/zbungalowicons/kirie_stuff/kiriepistols.dmi'
	icon_state = "mining-scatter"
	lefthand_file = 'icons/mob/inhands/weapons/64x_guns_left.dmi'
	righthand_file = 'icons/mob/inhands/weapons/64x_guns_right.dmi'
	inhand_icon_state = "shotgun"
	inhand_x_dimension = 64
	inhand_y_dimension = 64
	pin = /obj/item/firing_pin/explorer
	ammo_type = list(/obj/item/ammo_casing/energy/laser/scatter, /obj/item/ammo_casing/energy/kinetic)
	w_class = WEIGHT_CLASS_BULKY
	selfcharge = 1


//"Miner" Laser Rifle
/obj/item/gun/energy/e_gun/void
	name = "\improper E-204 Void Rifle"
	desc = "Nanotrasen’s standard issue void beam rifle."
	icon = 'ModularBungalow/zbungalowicons/kirie_stuff/kiriepistols.dmi'
	icon_state = "void-rifle"
	inhand_icon_state = "gun"
	pin = /obj/item/firing_pin/explorer
	ammo_type = list(/obj/item/ammo_casing/energy/lasergun, /obj/item/ammo_casing/energy/kinetic)
	w_class = WEIGHT_CLASS_NORMAL
	selfcharge = 1


//X-02 Pulse Disabler Rifle

/obj/item/gun/energy/e_gun/hop
	name = "\improper X-02 Disabler Beam Rifle"
	desc = "A classic, the successor to the X-01 Multiphase, this rifle trades the ion and kill modes for a concentrated, but weak disabler beam and scattershot blasts."
	cell_type = /obj/item/stock_parts/cell/hos_gun
	icon = 'ModularBungalow/zbungalowicons/kirie_stuff/kiriepistols.dmi'
	icon_state = "hosrifle"
	inhand_icon_state = "energydisable3"
	w_class = WEIGHT_CLASS_BULKY
	force = 5
	ammo_type = list(/obj/item/ammo_casing/energy/disabler/hitscan, /obj/item/ammo_casing/energy/laser/scatter/disabler, /obj/item/ammo_casing/energy/laser/scatter/close)
	ammo_x_offset = 2


//Beam casings
/obj/item/ammo_casing/energy/disabler/hitscan
	projectile_type = /obj/projectile/beam/disabler/beam
	select_name  = "disable"
	e_cost = 100
	fire_sound = 'sound/weapons/taser2.ogg'
	harmful = FALSE


//Disabler Beam
/obj/projectile/beam/disabler/beam
	name = "disabler beam"
	icon_state = "omnilaser"
	hitscan = TRUE
	damage = 20
	damage_type = STAMINA
	flag = ENERGY
	hitsound = 'sound/weapons/tap.ogg'
	eyeblur = 0
	hitscan_light_intensity = 2
	hitscan_light_range = 0.75
	hitscan_light_color_override = COLOR_CYAN
	muzzle_flash_intensity = 4
	muzzle_flash_range = 2
	muzzle_flash_color_override = COLOR_CYAN
	impact_light_intensity = 6
	impact_light_range = 2.5
	impact_light_color_override = COLOR_CYAN


// Svet's Disabler
/obj/item/gun/energy/disabler/svet_disabler
	name = "Brass Ray"
	desc = "A self-defense weapon that exhausts organic targets, weakening them until they collapse. This one has a wooden vernished purple stock, assembled with a brass frame and trimed with silver linings. It also has been modified to be self rechargeable and have rays instant, at the cost of the capacity."
	icon = 'ModularBungalow/zbungalowicons/weapons/energy.dmi'
	icon_state = "svet_disabler"
	lefthand_file = 'ModularBungalow/zbungalowicons/weapons/energy_lefthand.dmi'
	righthand_file = 'ModularBungalow/zbungalowicons/weapons/energy_righthand.dmi'
	ammo_type = list(/obj/item/ammo_casing/energy/disabler/hitscan)
	ammo_x_offset = 2
	can_flashlight = TRUE
	flight_x_offset = 15
	flight_y_offset = 10
	selfcharge = 1
	w_class = WEIGHT_CLASS_SMALL


//Wetwork Energy Sniper
/obj/item/gun/energy/sniper/security
	name = "X-36 Anti-Personnel Rifle"
	desc = "An advanced piece of weaponry forged by NT to terminate troublemakers."
	ammo_type = list(/obj/item/ammo_casing/energy/sniper, /obj/item/ammo_casing/energy/sniper/disable)

/obj/item/gun/energy/sniper/security/Initialize()
	. = ..()
	fire_delay = 30

/obj/item/ammo_casing/energy/sniper/disable
	projectile_type = /obj/projectile/beam/laser/sniper/disable
	select_name = "sleep"
	fire_sound = 'sound/weapons/lasercannonfire.ogg'

/obj/projectile/beam/laser/sniper/disable
	name = "heavy disabler beam"
	icon_state = "omnilaser"
	light_color = COLOR_CYAN
	hitscan = TRUE
	damage = 80
	damage_type = STAMINA
	flag = ENERGY
	hitsound = 'sound/weapons/tap.ogg'
	eyeblur = 0
	hitscan_light_intensity = 2
	hitscan_light_range = 0.75
	hitscan_light_color_override = COLOR_CYAN
	muzzle_flash_intensity = 4
	muzzle_flash_range = 2
	muzzle_flash_color_override = COLOR_CYAN
	impact_light_intensity = 6
	impact_light_range = 2.5
	impact_light_color_override = COLOR_CYAN

