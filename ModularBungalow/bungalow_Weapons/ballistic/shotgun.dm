/obj/item/gun/ballistic/shotgun/doublebarrel/side
	name = "Short Shottie"
	desc = "A small double-barrel shotgun."
	icon_state = "dshotgun_sawn"
	w_class = WEIGHT_CLASS_SMALL
	pb_knockback = 3 // it's a super shotgun!

//svet shotgun, dont know man
/obj/item/gun/ballistic/shotgun/doublebarrel/svet_shotgun
	name = "Brass Cannon"
	desc = "A triple-barrel shotgun. This one is customized with a purple vernish paint, attached to a brass frame and trimed with silver."
	icon = 'ModularBungalow/zbungalowicons/weapons/shotguns.dmi'
	icon_state = "svet_shotgun"
	worn_icon = 'ModularBungalow/zbungalowicons/weapons/weapons_worn.dmi'
	lefthand_file = 'ModularBungalow/zbungalowicons/weapons/shotguns_lefthand.dmi'
	righthand_file = 'ModularBungalow/zbungalowicons/weapons/shotguns_righthand.dmi'
	inhand_icon_state = null
	w_class = WEIGHT_CLASS_BULKY
	weapon_weight = WEAPON_MEDIUM
	force = 10
	mag_type = /obj/item/ammo_box/magazine/internal/shot/triple
	obj_flags = UNIQUE_RENAME
	semi_auto = TRUE
	bolt_type = BOLT_TYPE_NO_BOLT
	can_be_sawn_off = FALSE
	pb_knockback = 3 // it's a super shotgun!

/obj/item/ammo_box/magazine/internal/shot/triple
	name = "triple-barrel shotgun internal magazine"
	max_ammo = 3

/obj/item/gun/ballistic/shotgun/automatic/breaching
	name = "tactical breaching shotgun"
	desc = "A compact semi-auto shotgun designed to fire breaching slugs and create rapid entry points. Only accepts breaching slugs."
	icon = 'ModularBungalow/zbungalowicons/weapons/shotguns.dmi'
	icon_state = "breachingshotgun"
	mag_type = /obj/item/ammo_box/magazine/internal/shot/breaching
	w_class = WEIGHT_CLASS_NORMAL //compact so it fits in backpacks
	can_be_sawn_off = FALSE

/obj/item/ammo_box/magazine/internal/shot/breaching
	name = "breaching shotgun internal magazine"
	ammo_type = /obj/item/ammo_casing/shotgun/breacher
	max_ammo = 7
	caliber = "breacher"

/obj/item/gun/ballistic/shotgun/bulldog/automatic
	name = "Automatic Bulldog Shotgun"

/obj/item/gun/ballistic/shotgun/bulldog/automatic/Initialize()
	. = ..()
	AddComponent(/datum/component/automatic_fire, 0.3 SECONDS)

/obj/item/gun/ballistic/shotgun/bulldog/automatic/unrestricted
	pin = /obj/item/firing_pin

/obj/item/gun/ballistic/shotgun/automatic/combat/marsoc
	name = "tactical compact shotgun"
	desc = "A compact semi-auto shotgun designed for extreme close quarter combat."
	icon = 'ModularBungalow/zbungalowicons/weapons/shotguns.dmi'
	icon_state = "breachingshotgun"
	fire_delay = 1
	w_class = WEIGHT_CLASS_NORMAL
	slot_flags = ITEM_SLOT_BELT
	worn_icon = null

/obj/item/gun/ballistic/shotgun/doublebarrel/stopgap
	name = "PS-45 'Stop Gap'"
	desc = "A small four-barrel shotgun.Normally used by medics or some other heavy assault unit rivaling the taurus judge in versatility, typically fire .357 and .44 this one is modified to fire shotgun shells"
	icon_state = "stopgap"
	w_class = WEIGHT_CLASS_SMALL
	mag_type = /obj/item/ammo_box/magazine/internal/shot/four
	icon = 'ModularBungalow/bungalow_Weapons/_icon/ballistics.dmi'
	lefthand_file = 'ModularBungalow/zbungalowicons/weapons/shotguns_lefthand.dmi'
	righthand_file = 'ModularBungalow/zbungalowicons/weapons/shotguns_righthand.dmi'
	can_be_sawn_off = FALSE

/obj/item/ammo_box/magazine/internal/shot/four
	name = "four-barrel shotgun internal magazine"
	max_ammo = 4

