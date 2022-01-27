//The SX- Series Guns
/obj/item/gun/energy/disabler/advanced
	name = "SX Series gun"
	icon = 'ModularBungalow/bungalow_Weapons/_icon/energy.dmi'
	desc = "If you see this: Call a coder!."
	icon_state = "disabler"
	inhand_icon_state = "arg"
	ammo_type = list(/obj/item/ammo_casing/energy/disabler)
	shaded_charge = TRUE

//Autorifle
/obj/item/gun/energy/disabler/advanced/rifle
	name = "SX-0 Disabler Autorifle"
	desc = "A fully automatic disabler rifle for security use."
	icon_state = "autorifle"
	weapon_weight = WEAPON_HEAVY

/obj/item/gun/energy/disabler/advanced/rifle/ComponentInitialize()
	. = ..()
	AddComponent(/datum/component/automatic_fire, 0.20 SECONDS)

//Beam Rifle
/obj/item/gun/energy/disabler/advanced/beam
	name = "SX-1 Disabler Beam Rifle"
	desc = "A fully automatic disabler beam rifle for security use."
	icon_state = "beamrifle"
	ammo_type = list(/obj/item/ammo_casing/energy/disabler/hitscan)
	weapon_weight = WEAPON_HEAVY

/obj/item/gun/energy/disabler/advanced/beam/ComponentInitialize()
	. = ..()
	AddComponent(/datum/component/automatic_fire, 0.25 SECONDS)

//Mark II pistol
/obj/item/gun/energy/disabler/advanced/markii
	name = "SX-2 Disabler Magnum MK II"
	desc = "A self-charging disabler magnum. Better than the original in every way."
	icon_state = "disabler"
	selfcharge = 1

//DMR
/obj/item/gun/energy/disabler/advanced/dmr
	name = "SX-3 Disabler Marksman rifle"
	desc = "A semi-auto disabler rifle with zoom settings."
	icon_state = "dmr"
	ammo_type = list(/obj/item/ammo_casing/energy/disabler/hitscan/heavy)
	weapon_weight = WEAPON_HEAVY
	zoomable = TRUE
	zoom_amt = 5
	zoom_out_amt = 0

/obj/item/gun/energy/disabler/advanced/dmr/Initialize()
	. = ..()
	fire_delay = 10

//Shottie
/obj/item/gun/energy/disabler/advanced/scatter
	name = "SX-4 Disabler Scattergun"
	desc = "A semi-auto disabler shotgun."
	icon_state = "scattergun"
	ammo_type = list(/obj/item/ammo_casing/energy/laser/scatter/disabler)
	weapon_weight = WEAPON_HEAVY

//SMG
/obj/item/gun/energy/disabler/advanced/pdw
	name = "SX-5 Disabler PDW"
	desc = "A fully auto PDW for security use."
	icon_state = "pdw"
	weapon_weight = WEAPON_HEAVY
	ammo_type = list(/obj/item/ammo_casing/energy/disabler/rapid)

/obj/item/gun/energy/disabler/advanced/pdw/ComponentInitialize()
	. = ..()
	AddComponent(/datum/component/automatic_fire, 0.14 SECONDS)
