// "RAW" WEAPONS//
/obj/item/melee/baseball_bat/toolbox
	name = "toolbox bat"
	desc = "There ain't a skull in the league that can withstand a toolbox."
	icon = 'ModularBungalow/zbungalowicons/weapons/melee.dmi'
	icon_state = "baseball_toolbox"
	inhand_icon_state = "baseball_toolbox"
	lefthand_file = 'ModularBungalow/zbungalowicons/weapons/melee_lefthand.dmi'
	righthand_file = 'ModularBungalow/zbungalowicons/weapons/melee_righthand.dmi'
	force = 11
	wound_bonus = -12
	hitsound = 'sound/weapons/smash.ogg'
	attack_verb_continuous = list("beats", "smacks", "robusts")
	attack_verb_simple = list("beat", "smack", "robust")
	custom_materials = list(/datum/material/wood = MINERAL_MATERIAL_AMOUNT * 2.5)
	can_be_cricket = FALSE

/obj/item/melee/baseball_bat/toolbox/ComponentInitialize()
	. = ..()
	AddComponent(/datum/component/two_handed, force_unwielded=11, force_wielded=17)


//BATONS//
/obj/item/melee/classic_baton/telescopic/svet_baton
	name = "Brass Stinger"
	desc = "A compact and foldable electrical baton. Applies light electrical shocks to targets. It has been customized with a vernished and painted food stock, next to a brass frame and silver trim. "
	icon = 'ModularBungalow/zbungalowicons/weapons/melee.dmi'
	icon_state = "svetbaton_0"
	lefthand_file = 'ModularBungalow/zbungalowicons/weapons/melee_lefthand.dmi'
	righthand_file = 'ModularBungalow/zbungalowicons/weapons/melee_righthand.dmi'
	inhand_icon_state = null
	slot_flags = ITEM_SLOT_BELT
	w_class = WEIGHT_CLASS_SMALL
	item_flags = NONE
	force = 5

	cooldown = 25
	stamina_damage = 85
	affect_silicon = TRUE
	on_sound = 'sound/weapons/contractorbatonextend.ogg'
	on_stun_sound = 'sound/effects/contractorbatonhit.ogg'

	on_icon_state = "svetbaton_1"
	off_icon_state = "svetbaton_0"
	on_inhand_icon_state = "svetbaton"
	force_on = 16
	force_off = 5
	block_chance = 10
	weight_class_on = WEIGHT_CLASS_NORMAL

/obj/item/melee/classic_baton/telescopic/contractor_baton/get_wait_description()
	return "<span class='danger'>The baton is still charging!</span>"

/obj/item/melee/classic_baton/telescopic/contractor_baton/additional_effects_carbon(mob/living/target, mob/living/user)
	target.Jitter(20)
	target.stuttering += 20
