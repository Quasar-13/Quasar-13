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
