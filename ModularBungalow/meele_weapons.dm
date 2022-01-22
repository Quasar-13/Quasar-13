/obj/item/melee/baseball_bat/toolbox
	name = "Baseball bat with a toolbox"
	desc = "There ain't a skull in the league that can withstand a toolbox."
	icon = 'ModularBungalow/zbungalowicons/weapons/melee.dmi'
	icon_state = "baseball_toolbox"
	inhand_icon_state = "baseball_toolbox"
	lefthand_file = 'ModularBungalow/zbungalowicons/weapons/melee_lefthand.dmi'
	righthand_file = 'ModularBungalow/zbungalowicons/weapons/melee_righthand.dmi'
	force = 11
	wound_bonus = -5
	throwforce = 12
	hitsound = 'sound/weapons/smash.ogg'
	attack_verb_continuous = list("beats", "smacks", "robusts")
	attack_verb_simple = list("beat", "smack", "robust")
	custom_materials = list(/datum/material/wood = MINERAL_MATERIAL_AMOUNT * 2.5)
	w_class = WEIGHT_CLASS_HUGE
	can_be_cricket = 0

/obj/item/melee/baseball_bat/toolbox/ComponentInitialize()
	. = ..()
	AddComponent(/datum/component/two_handed, force_unwielded=11, force_wielded=17)
