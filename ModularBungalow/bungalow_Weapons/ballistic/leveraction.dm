/obj/item/gun/ballistic/shotgun/lever_action
	name = "lever action rifle"
	desc = "A compact semi-auto shotgun designed to fire breaching slugs and create rapid entry points. Only accepts breaching slugs."
	icon = 'ModularBungalow/zbungalowicons/weapons/shotguns.dmi'
	icon_state = "breachingshotgun"
	mag_type = /obj/item/ammo_box/magazine/internal/shot/lever
	w_class = WEIGHT_CLASS_NORMAL //compact so it fits in backpacks
	can_be_sawn_off = FALSE

/obj/item/ammo_box/magazine/internal/shot/lever
	name = "breaching shotgun internal magazine"
	ammo_type = /obj/item/ammo_casing/a357
	max_ammo = 10
	caliber = "357"