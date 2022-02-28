/obj/item/kitchen/spoon/big
	name = "Silver spoon"
	desc = "I ain't no senator's son."
	icon = 'ModularBungalow/spoon/spoon_icon/icons.dmi'
	icon_state = "big_spoon"
	inhand_icon_state = "big_spoon"
	lefthand_file = 'ModularBungalow/spoon/spoon_icon/lefthand.dmi'
	righthand_file = 'ModularBungalow/spoon/spoon_icon/righthand.dmi'
	inhand_x_dimension = 64
	inhand_y_dimension = 32
	transform = matrix(1.9, 0, 0, 0, 1.9, 0)
	w_class = WEIGHT_CLASS_NORMAL
	force = 4
	throw_speed = 2
	throw_range = 4
	attack_verb_simple = list("whack", "spoon", "tap")
	attack_verb_continuous = list("whacks", "spoons", "taps")
	armor = list(MELEE = 0, BULLET = 0, LASER = 0, ENERGY = 0, BOMB = 0, BIO = 0, RAD = 0, FIRE = 70, ACID = 50)
	custom_materials = list(/datum/material/iron=220)
	custom_price = PAYCHECK_PRISONER * 9
	tool_behaviour = TOOL_SHOVEL
	toolspeed = 5 // Literally 5 times worse

/obj/item/kitchen/spoon/big/gold
	name = "Mida's spoon"
	desc = "The last thing Midas touched before his final death."
	icon_state = "gold_spoon"
	inhand_icon_state = "gold_spoon"
	force = 80 //BEGONE!
	throw_speed = 10
	throw_range = 12
	armor = list(MELEE = 0, BULLET = 0, LASER = 0, ENERGY = 0, BOMB = 0, BIO = 0, RAD = 0, FIRE = 100, ACID = 70)
	custom_materials = list(/datum/material/iron=500)
	custom_price = PAYCHECK_PRISONER * 50
	toolspeed = 2
