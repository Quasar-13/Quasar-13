//Gun kits
/obj/item/weaponcrafting/gunkit/mark2
	name = "disabler mark II kit"
	desc = "Parts needed to make a self chargine mark II disabler."
	icon = 'ModularBungalow/bungalowWeapons/_icon/crafting.dmi'
	icon_state = "disabler"

/obj/item/weaponcrafting/gunkit/drifle
	name = "disabler rifle kit"
	desc = "Parts needed to make a disabler automatic rifle."
	icon = 'ModularBungalow/bungalowWeapons/_icon/crafting.dmi'
	icon_state = "rifle"

/obj/item/weaponcrafting/gunkit/beam
	name = "disabler beam rifle kit"
	desc = "Parts needed to make a disabler automatic beam rifle."
	icon = 'ModularBungalow/bungalowWeapons/_icon/crafting.dmi'
	icon_state = "rifle"

/obj/item/weaponcrafting/gunkit/dmr
	name = "disabler marksman rifle kit"
	desc = "Parts needed to make a disabler marksman rifle."
	icon = 'ModularBungalow/bungalowWeapons/_icon/crafting.dmi'
	icon_state = "rifle"

/obj/item/weaponcrafting/gunkit/shotgun
	name = "disabler shotgun kit"
	desc = "Parts needed to make a disabler shotgun marksman rifle."
	icon = 'ModularBungalow/bungalowWeapons/_icon/crafting.dmi'
	icon_state = "shotgun"

/obj/item/weaponcrafting/gunkit/smg
	name = "disabler smg kit"
	desc = "Parts needed to make a disabler PDW."
	icon = 'ModularBungalow/bungalowWeapons/_icon/crafting.dmi'
	icon_state = "rifle"

/obj/item/weaponcrafting/gunkit/fifth
	name = "fifth generation laser gun kit"
	desc = "Parts needed to craft an L-504 Disabler rifle."
	icon = 'ModularBungalow/bungalowWeapons/_icon/crafting.dmi'
	icon_state = "laser"

//More boring gun parts
/obj/item/weaponcrafting/laser_receiver
	name = "energy receiver"
	desc = "A prototype energy receiver and trigger assembly for an energy firearm."
	icon = 'ModularBungalow/bungalowWeapons/_icon/crafting.dmi'
	icon_state = "receiver"

/obj/item/weaponcrafting/plastic_stock
	name = "plastic stock"
	desc = "A plastic stock used for certain guns."
	icon = 'ModularBungalow/bungalowWeapons/_icon/crafting.dmi'
	icon_state = "stock"

/obj/item/weaponcrafting/barrel
	name = "disabler barrel"
	desc = "A metal barrel used for certain guns."
	icon = 'ModularBungalow/bungalowWeapons/_icon/crafting.dmi'
	icon_state = "short"

/obj/item/weaponcrafting/longbarrel
	name = "disabler rifle barrel"
	desc = "A metal barrel used for certain guns."
	icon = 'ModularBungalow/bungalowWeapons/_icon/crafting.dmi'
	icon_state = "barrel"

/obj/item/weaponcrafting/stepper
	name = "beam engine"
	desc = "A part used for crafting beam rifles."
	icon = 'ModularBungalow/bungalowWeapons/_icon/crafting.dmi'
	icon_state = "stepper"

/obj/item/weaponcrafting/override
	name = "safety override"
	desc = "A part used for crafting lethal rifles"
	icon = 'ModularBungalow/bungalowWeapons/_icon/crafting.dmi'
	icon_state = "override"

//Guncase
/obj/item/storage/guncase
	name = "gun case"
	desc = "Holds one firearm."
	icon = 'ModularBungalow/bungalowWeapons/_icon/crafting.dmi'
	icon_state = "guncase"
	inhand_icon_state = "sec-case"
	lefthand_file = 'icons/mob/inhands/equipment/briefcase_lefthand.dmi'
	righthand_file = 'icons/mob/inhands/equipment/briefcase_righthand.dmi'
	w_class = WEIGHT_CLASS_BULKY
	resistance_flags = NONE
	max_integrity = 300

/obj/item/storage/guncase/ComponentInitialize()
	. = ..()
	var/datum/component/storage/STR = GetComponent(/datum/component/storage)
	STR.max_items = 1
	STR.set_holdable(list(/obj/item/gun))
	STR.max_w_class = WEIGHT_CLASS_BULKY

