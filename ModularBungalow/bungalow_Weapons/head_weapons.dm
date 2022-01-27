//CMO SYRINGE RIFLE
/obj/item/gun/syringe/rifle
	name = "cmo's syringe rifle"
	desc = "The CMO is known for doing a little bit of sports shooting, and this is their gun of choice"
	icon = 'ModularBungalow/bungalow_Weapons/_icon/ballistics.dmi'
	icon_state = "syringerifle"
	max_syringes = 3

//CE SHORT SHOTTIE
/obj/item/gun/ballistic/shotgun/riot/shortie
	name = "Serbu Super Shorty"
	desc = "The CE's short shottie. Holds 3+1 bullets, loaded in "
	icon_state = "shortie"
	icon = 'ModularBungalow/zbungalowicons/weapons/shotguns.dmi'
	fire_delay = 8
	mag_type = /obj/item/ammo_box/magazine/internal/shot/four
	can_be_sawn_off = FALSE
	w_class = WEIGHT_CLASS_NORMAL

//HOP X-41 Pulse Disabler Rifle
/obj/item/gun/energy/e_gun/hop
	name = "\improper X-41 Disabler Beam Rifle"
	desc = "A classic, the shotgun variant of the X-01 Multiphase, this rifle trades the ion and kill modes for a concentrated, but weak disabler beam and scattershot blasts."
	cell_type = /obj/item/stock_parts/cell/hos_gun
	icon = 'ModularBungalow/bungalow_Weapons/_icon/energy.dmi'
	icon_state = "hoprifle"
	inhand_icon_state = "energydisable3"
	shaded_charge = TRUE
	w_class = WEIGHT_CLASS_BULKY
	force = 5
	ammo_type = list(/obj/item/ammo_casing/energy/disabler/hitscan, /obj/item/ammo_casing/energy/laser/scatter/disabler, /obj/item/ammo_casing/energy/laser/scatter/close)
	ammo_x_offset = 2

/obj/item/ammo_box/magazine/internal/shot/four
	name = "shotgun internal magazine"
	ammo_type = /obj/item/ammo_casing/shotgun/beanbag
	caliber = CALIBER_SHOTGUN
	max_ammo = 3
	multiload = FALSE

//Rob's Special Version
/obj/item/gun/energy/e_gun/homedef/special
	name = "\improper Custom E-220 Home Defender"
	desc = "An old but well kept E-220. Someone painted a purple H on it. It looks well kept, if a little dustied."
	icon_state = "homedefender-special"
	selfcharge = 1
