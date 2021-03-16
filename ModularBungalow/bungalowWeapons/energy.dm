//X-02 Pulse Disabler Rifle

/obj/item/gun/energy/e_gun/hos2
	name = "\improper X-02 Disabler Beam Rifle"
	desc = "A classic, the successor to the X-01 Multiphase, this rifle trades the ion and kill modes for a concentrated, but weak disabler beam."
	cell_type = /obj/item/stock_parts/cell/hos_gun
	icon = 'ModularBungalow/zbungalowicons/kirie_stuff/kiriepistols.dmi'
	icon_state = "hosrifle"
	inhand_icon_state = "energydisable3"
	w_class = WEIGHT_CLASS_BULKY
	force = 5
	ammo_type = list(/obj/item/ammo_casing/energy/disabler/hitscan, /obj/item/ammo_casing/energy/disabler)
	ammo_x_offset = 2


//Beam casings
/obj/item/ammo_casing/energy/disabler/hitscan
	projectile_type = /obj/projectile/beam/disabler/beam
	select_name  = "disable"
	e_cost = 100
	fire_sound = 'sound/weapons/taser2.ogg'
	harmful = FALSE


//Heavy Disabler
/obj/projectile/beam/disabler/beam
	name = "heavy disabler beam"
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

