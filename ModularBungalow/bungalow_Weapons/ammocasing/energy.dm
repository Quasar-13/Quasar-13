//Disabler sniper beam
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

//Beam casings
/obj/item/ammo_casing/energy/disabler/hitscan
	projectile_type = /obj/projectile/beam/disabler/beam
	select_name = "disable"
	e_cost = 100
	fire_sound = 'sound/weapons/taser2.ogg'
	harmful = FALSE

/obj/item/ammo_casing/energy/disabler/hitscan/heavy
	projectile_type = /obj/projectile/beam/disabler/beam/heavy

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

/obj/projectile/beam/disabler/beam/heavy
	damage = 40
