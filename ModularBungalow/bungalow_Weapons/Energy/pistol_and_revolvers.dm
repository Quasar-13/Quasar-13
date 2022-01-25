//LASER REVOLVER
//Home Defender pistol
/obj/item/gun/energy/e_gun/homedef
	name = "\improper E-220 Home Defender Beam Revolver"
	desc = "Nanotrasen’s experiment to re-invent portable, self-recharging batteries and combine it with their special multi-phase technology."
	icon = 'ModularBungalow/bungalowWeapons/_icon/energy.dmi'
	icon_state = "homedefender"
	inhand_icon_state = "gun"
	ammo_type = list(/obj/item/ammo_casing/energy/disabler/hitscan/heavy, /obj/item/ammo_casing/energy/ion)
	w_class = WEIGHT_CLASS_SMALL
	cell_type = /obj/item/stock_parts/cell/mini_egun
	selfcharge = 1
	ammo_x_offset = 2
	charge_sections = 6

/obj/item/gun/energy/laser/captain/ntgold/pistol
	name = "E-420 NT GOLD Laser Pistol"
	icon_state = "cappistol"
	desc = "The second gun ever made in the NT GOLD series guns. Compact, and stylish."
	w_class = WEIGHT_CLASS_SMALL
	cell_type = /obj/item/stock_parts/cell/mini_egun
