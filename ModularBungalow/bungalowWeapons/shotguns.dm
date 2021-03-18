/obj/item/ammo_box/magazine/internal/shot/triple
	name = "triple-barrel shotgun internal magazine"
	max_ammo = 3



/obj/item/gun/ballistic/shotgun/doublebarrel/svet_shotgun
	name = "Brass Cannon"
	desc = "A triple-barrel shotgun. This one is customized with a purple vernish paint, attached to a brass frame and trimed with silver."
	icon = 'ModularBungalow/zbungalowicons/weapons/shotguns.dmi'
	icon_state = "svet_shotgun"
	worn_icon = 'ModularBungalow/zbungalowicons/clothing/back/shotguns.dmi'
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
	can_be_sawn_off  = FALSE
	pb_knockback = 3 // it's a super shotgun!