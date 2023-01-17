//357 Lever action
/obj/item/gun/ballistic/shotgun/lever_action
	name = "K&H Adjudicator"
	desc = "A lever-action rifle that fires .357. Has to be pumped with every shot."
	icon = 'ModularBungalow/bungalow_Weapons/_icon/leveraction.dmi'
	icon_state = "leveraction"
	inhand_icon_state = "leveraction"
	mag_type = /obj/item/ammo_box/magazine/internal/shot/lever
	w_class = WEIGHT_CLASS_BULKY
	can_be_sawn_off = FALSE

/obj/item/ammo_box/magazine/internal/shot/lever
	name = "lever action internal magazine"
	ammo_type = /obj/item/ammo_casing/a357
	max_ammo = 12
	caliber = CALIBER_357

/obj/item/gun/ballistic/shotgun/lever_action/scope
	name = "K&H Reconciler"
	desc = "A scoped lever-action rifle that fires .357. Has to be pumped with every shot."
	icon_state = "leveraction_scope"
	zoomable = TRUE
	zoom_amt = 10 //Long range, enough to see in front of you, but no tiles behind you.
	zoom_out_amt = 5


//38 Lever action
/obj/item/gun/ballistic/shotgun/lever_action/med
	name = "K&H Mediator"
	desc = "A lever-action rifle that fires .38. Has to be pumped with every shot."
	icon_state = "leveraction_med"
	mag_type = /obj/item/ammo_box/magazine/internal/shot/lever/med

/obj/item/ammo_box/magazine/internal/shot/lever/med
	name = "lever action internal magazine"
	ammo_type = /obj/item/ammo_casing/c38
	max_ammo = 12
	caliber = CALIBER_38


/obj/item/gun/ballistic/shotgun/lever_action/med/scope
	name = "K&H Judiciary"
	desc = "A scoped lever-action rifle that fires .38. Has to be pumped with every shot."
	icon_state = "leveraction_medscope"
	zoomable = TRUE
	zoom_amt = 10 //Long range, enough to see in front of you, but no tiles behind you.
	zoom_out_amt = 5

/obj/item/gun/ballistic/shotgun/lever_action/magnum
	name = "K&H Justice"
	desc = "A lever-action rifle, fires powerful .44 magnum"
	icon_state = "leveraction_magnum"
	inhand_icon_state = "leveraction_magnum"
	mag_type = /obj/item/ammo_box/magazine/internal/shot/lever/magnum

/obj/item/ammo_box/magazine/internal/shot/lever/magnum
	name = "lever action internal magazine"
	desc = "IF YOU SEE THIS CALL A CODER"
	ammo_type = /obj/item/ammo_casing/a44
	max_ammo = 12
	caliber = CALIBER_44

/obj/item/gun/ballistic/shotgun/lever_action/brushgun
	name = "K&H Avalon"
	desc = "A rediculously powerful lever-action rifle, fires powerful .45-70 Government. Utilised by the Ranger when in absent of heavy weaponry"
	icon_state = "brushgun"
	inhand_icon_state = "brushgun"
	mag_type = /obj/item/ammo_box/magazine/internal/shot/lever/brushgun

/obj/item/ammo_box/magazine/internal/shot/lever/brushgun
	name = "lever action internal magazine"
	desc = "IF YOU SEE THIS CALL A CODER"
	ammo_type = /obj/item/ammo_casing/a4570
	max_ammo = 10
	caliber = CALIBER_A4570
