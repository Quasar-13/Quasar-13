//PL-14
/obj/item/gun/ballistic/automatic/pistol/PL14
	name = "PL-14"
	desc = "A Russian semi-automatic pistol chambered in 9x19 Parabellum."
	icon_state = "pl14"
	icon = 'ModularTegustation/Teguicons/kirie_stuff/kiriepistols.dmi'
	w_class = WEIGHT_CLASS_NORMAL
	mag_type = /obj/item/ammo_box/magazine/m9mm
	can_suppress = FALSE
	fire_sound = 'sound/weapons/gun/pistol/shot_alt.ogg'
	rack_sound = 'sound/weapons/gun/pistol/rack.ogg'
	lock_back_sound = 'sound/weapons/gun/pistol/slide_lock.ogg'
	bolt_drop_sound = 'sound/weapons/gun/pistol/slide_drop.ogg'


//Special lore variant
/obj/item/gun/ballistic/automatic/pistol/PL14_nicole
	name = "bloody PL-14"
	desc = "A Russian semi-automatic pistol chambered in 9x19 Parabellum. The name 'Nicole' is scribed in gold leaf into the side, and there is centuries old, caked on blood coating the handle. You get a feeling the owner is long dead."
	icon_state = "pl14_nicole"
	icon = 'ModularTegustation/Teguicons/kirie_stuff/kiriepistols.dmi'


//S&W 500 Revolver
/obj/item/gun/ballistic/revolver/sw500
	name = "S&W 500 Revolver"
	desc = "The classic high-powered revolver to rival the Mateba. This one is loaded in .357 with a custom 7 bullet cylinder."
	icon_state = "sw500"
	icon = 'ModularTegustation/Teguicons/kirie_stuff/kiriepistols.dmi'
	mag_type = /obj/item/ammo_box/magazine/internal/cylinder
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