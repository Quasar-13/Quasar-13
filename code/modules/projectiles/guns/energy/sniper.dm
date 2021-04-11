/obj/item/gun/energy/sniper
	name = "M76 Laser Rifle"
	desc = "An advanced piece of weaponry forged on Mars in 40th Millenia."
	icon_state = "sniper"
	inhand_icon_state = "sniper"
	icon = 'ModularTegustation/Teguicons/energy_sniper.dmi'
	//lefthand_file = 'ModularTegustation/Teguicons/energy_sniper_l.dmi'
	//righthand_file = 'ModularTegustation/Teguicons/energy_sniper_r.dmi'
	fire_sound = 'sound/weapons/laser3.ogg'
	fire_sound_volume = 90
	vary_fire_sound = FALSE
	pin = /obj/item/firing_pin
	cell_type = /obj/item/stock_parts/cell/energy_sniper
	weapon_weight = WEAPON_HEAVY
	can_flashlight = FALSE
	charge_sections = 1
	w_class = WEIGHT_CLASS_NORMAL
	slot_flags = ITEM_SLOT_BACK
	zoomable = TRUE
	zoom_amt = 10
	zoom_out_amt = 13
	actions_types = list()
	ammo_type = list(/obj/item/ammo_casing/energy/sniper)

/obj/item/gun/energy/sniper/Initialize()
	. = ..()
	fire_delay = 30

/obj/item/gun/energy/sniper/pin
	name = "M76 Laser Rifle"

/obj/item/ammo_casing/energy/sniper
	projectile_type = /obj/projectile/beam/laser/sniper
	select_name = "anti-personnel"
	fire_sound = 'sound/weapons/lasercannonfire.ogg'

/obj/projectile/beam/laser/sniper
	damage = 80
	hitscan = TRUE
	name = "energy bullet"
	icon = 'ModularTegustation/Teguicons/energy_sniper.dmi'
	light_color = COLOR_RED
	armour_penetration = 25
	hitscan_light_intensity = 2
	hitscan_light_range = 0.75
	hitscan_light_color_override = COLOR_PURPLE
	muzzle_flash_intensity = 4
	muzzle_flash_range = 2
	muzzle_flash_color_override = COLOR_PURPLE
	impact_light_intensity = 6
	impact_light_range = 2.5
	impact_light_color_override = COLOR_PURPLE

/obj/item/stock_parts/cell/energy_sniper //20 shots, very slow charge rate
	name = "pulse rifle power cell"
	maxcharge = 2000
	chargerate = 50

