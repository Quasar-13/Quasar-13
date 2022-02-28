/obj/item/mantis/blade
	name = "mantis blade"
	desc = "A blade designed to be hidden just beneath the skin. The brain is directly linked to this bad boy, allowing it to spring into action."
	icon = 'ModularBungalow/zbungalowicons/weapons/melee.dmi'
	icon_state = "mantis"
	lefthand_file = 'ModularBungalow/zbungalowicons/weapons/melee_lefthand.dmi'
	righthand_file = 'ModularBungalow/zbungalowicons/weapons/melee_righthand.dmi'
	hitsound = 'sound/weapons/bladeslice.ogg'
	flags_1 = CONDUCT_1
	force = 20
	w_class = WEIGHT_CLASS_NORMAL
	attack_verb_continuous = list("attacks", "slashes", "stabs", "slices", "tears", "lacerates", "rips", "dices", "cuts")
	attack_verb_simple = list("attack", "slash", "stab", "slice", "tear", "lacerate", "rip", "dice", "cut")

/obj/item/mantis/blade/equipped(mob/user, slot, initial)
	. = ..()
	if(slot != ITEM_SLOT_HANDS)
		return
	var/side = user.get_held_index_of_item(src)

	if(side == LEFT_HANDS)
		transform = null
	else
		transform = matrix(-1, 0, 0, 0, 1, 0)

/obj/item/mantis/blade/attack(mob/living/M, mob/living/user, secondattack = FALSE)
	. = ..()
	var/obj/item/mantis/blade/secondsword = user.get_inactive_held_item()
	if(istype(secondsword, /obj/item/mantis/blade) && !secondattack)
		sleep(2)
		secondsword.attack(M, user, TRUE)
	return

/obj/item/mantis/blade/syndicate
	name = "G.O.R.L.E.X. mantis blade"
	icon_state = "syndie_mantis"
	force = 20
	block_chance = 20
	armour_penetration = 20
	wound_bonus = 15
	sharpness = SHARP_EDGED

/obj/item/mantis/blade/NT
	name = "H.E.P.H.A.E.S.T.U.S. mantis blade"
	icon_state = "mantis"
	force = 18
	block_chance = 60
	wound_bonus = 15
	bare_wound_bonus = 32
	armour_penetration = 35
	sharpness = SHARP_EDGED

/obj/item/organ/cyberimp/arm/syndie_mantis
	name = "G.O.R.L.E.X. mantis blade implants"
	desc = "Modernized mantis blades coined by Tiger operatives after the raid on H.E.P.H.A.E.S.T.U.S.Industires core factory by the Gorlex Marauders and designed from H.E.P.H.A.E.S.T.U.S.stolen blueprints. Energy actuators makes the blade a much deadlier weapon."
	contents = newlist(/obj/item/mantis/blade/syndicate)
	syndicate_implant = TRUE

/obj/item/organ/cyberimp/arm/syndie_mantis/l
	zone = BODY_ZONE_L_ARM
	syndicate_implant = TRUE

/obj/item/organ/cyberimp/arm/nano_mantis
	name = "H.E.P.H.A.E.S.T.U.S. mantis blade implants"
	desc = "Moddernized Mantis blades made by the remnants of H.E.P.H.A.E.S.T.U.S. Industries after being absorbed by Nanotrasen, focusing more on defense than offense."
	contents = newlist(/obj/item/mantis/blade/NT)
	syndicate_implant = FALSE

/obj/item/organ/cyberimp/arm/nano_mantis/l
	zone = BODY_ZONE_L_ARM
	syndicate_implant = FALSE
