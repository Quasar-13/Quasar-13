//Captain's Katana
/obj/item/katana/captain
	name = "captain's katana"
	desc = "This Captain has some sort of 'class'"
	icon_state = "katana"
	inhand_icon_state = "katana"
	worn_icon_state = "katana"
	lefthand_file = 'icons/mob/inhands/weapons/swords_lefthand.dmi'
	righthand_file = 'icons/mob/inhands/weapons/swords_righthand.dmi'
	flags_1 = CONDUCT_1
	slot_flags = ITEM_SLOT_BELT | ITEM_SLOT_BACK
	force = 21
	throwforce = 10
	w_class = WEIGHT_CLASS_HUGE
	hitsound = 'sound/weapons/bladeslice.ogg'
	attack_verb_continuous = list("attacks", "slashes", "stabs", "slices", "tears", "lacerates", "rips", "dices", "cuts")
	attack_verb_simple = list("attack", "slash", "stab", "slice", "tear", "lacerate", "rip", "dice", "cut")
	block_chance = 15
	sharpness = SHARP_EDGED
	max_integrity = 200
	armor = list(MELEE = 0, BULLET = 0, LASER = 0, ENERGY = 0, BOMB = 0, BIO = 0, RAD = 0, FIRE = 100, ACID = 50)
	resistance_flags = FIRE_PROOF


var/pierce_ready = 0
var/pierce_able = 0

//Captain's Spear
/obj/item/nullrod/spear/captain
	name = "lance of longinus"
	desc = "The weapon of an angelic captain."
	icon = 'ModularTegustation/Teguicons/kirie_stuff/kirieweapons.dmi'
	icon_state = "longinus"
	inhand_icon_state = "longinus"
	lefthand_file = 'ModularTegustation/Teguicons/kirie_stuff/left.dmi'
	righthand_file = 'ModularTegustation/Teguicons/kirie_stuff/right.dmi'
	slot_flags = ITEM_SLOT_BELT
	force = 18
	throwforce = 55
	armour_penetration = 10
	throw_speed = 9
	throw_range = 7
	sharpness = SHARP_POINTY
	w_class = WEIGHT_CLASS_HUGE
	attack_verb_continuous = list("stabs", "pierces", "slashes")
	attack_verb_simple = list("stab", "pierces", "slash")
	hitsound = 'sound/weapons/bladeslice.ogg'
	max_integrity = 200





/obj/item/nullrod/spear/captain/attack_self(mob/user)
	if(!pierce_able)
		to_chat(user, "<span class='warning'>You begin gathering strength...</span>")
		playsound(get_turf(src), 'sound/magic/lightning_chargeup.ogg', 65, TRUE)
		if(do_after(user, 90, target = src))
			to_chat(user, "<span class='userdanger'>You gather power! Time to annihilate.</span>")
			pierce_ready = 1
			throwforce = 100
			return

	if(pierce_ready)
		to_chat(user, "<span class='warning'>You're already ready annihilate.</span>")
		..()
		return

/obj/item/spear/captain/throw_at(mob/living/target, mob/living/user)
	var/atom/throw_target = get_edge_target_turf(target, user.dir)
	if(pierce_ready)
		user.visible_message("<span class='userdanger'>It's a home run!</span>")
		target.throw_at(throw_target, rand(8,10), 14, user)
		SSexplosions.medturf += throw_target
		playsound(get_turf(src), 'sound/weapons/homerun.ogg', 100, TRUE)
		pierce_ready = 0
		throwforce = 55
		return
