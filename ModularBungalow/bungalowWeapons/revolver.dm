//Chiappa Rhino
/obj/item/gun/ballistic/revolver/rhino
	name = "Chiappa Rhino"
	desc = "A special pistol made for the captain, chambered in .38"
	icon_state = "rhino"
	icon = 'ModularBungalow/zbungalowicons/kirie_stuff/kiriepistols.dmi'
	mag_type = /obj/item/ammo_box/magazine/internal/cylinder/rev38
	initial_caliber = CALIBER_38
	fire_sound = 'sound/weapons/gun/revolver/shot_alt.ogg'
	load_sound = 'sound/weapons/gun/revolver/load_bullet.ogg'
	eject_sound = 'sound/weapons/gun/revolver/empty.ogg'
	vary_fire_sound = FALSE
	fire_sound_volume = 90
	dry_fire_sound = 'sound/weapons/gun/revolver/dry_fire.ogg'
	casing_ejector = FALSE
	internal_magazine = TRUE
	bolt_type = BOLT_TYPE_NO_BOLT
	tac_reloads = FALSE
	spin_delay = 10
	recent_spin = 0
