/obj/item/melee/bamboo
	name = "bamboo sword"
	desc = "One of the captain's many bamboo swords"
	w_class = WEIGHT_CLASS_BULKY
	icon = 'ModularBungalow/zbungalowicons/weapons/melee.dmi'
	icon_state = "bamboo"
	inhand_icon_state = "bamboo"
	lefthand_file = 'ModularBungalow/zbungalowicons/weapons/melee_lefthand.dmi'
	righthand_file = 'ModularBungalow/zbungalowicons/weapons/melee_righthand.dmi'
	force = 10
	block_chance = 12


/obj/item/storage/belt/bamboo
	name = "bamboo sword bag"
	desc = "Holds all your bamboo swords. Doesn't support quickdraw like the sabres do."
	icon_state = "bamboobag"
	inhand_icon_state = "utility"
	worn_icon_state = "bamboobag"
	var/datum/martial_art/samurai/style = new

/obj/item/storage/belt/bamboo/equipped(mob/user, slot)
	. = ..()
	if(slot == ITEM_SLOT_BELT)
		style.teach(user, TRUE)

/obj/item/storage/belt/bamboo/dropped(mob/user)
	. = ..()
	if(user.get_item_by_slot(ITEM_SLOT_BELT) == src)
		style.remove(user)


/obj/item/storage/belt/bamboo/ComponentInitialize()
	. = ..()
	var/datum/component/storage/STR = GetComponent(/datum/component/storage)
	STR.max_w_class = WEIGHT_CLASS_BULKY
	STR.max_combined_w_class = 40 //I THINK 28 lets you hold 7 bulky items. Honestly this number doesn't matter. There should only ever be 7 bamboo sword in existence
	STR.set_holdable(list(/obj/item/melee/bamboo))//JUST bamboo swords. You will be an amazing samurai

/obj/item/storage/belt/bamboo/PopulateContents()
	new /obj/item/melee/bamboo(src)
	new /obj/item/melee/bamboo(src)
	new /obj/item/melee/bamboo(src)
	new /obj/item/melee/bamboo(src)
	new /obj/item/melee/bamboo(src)
	new /obj/item/melee/bamboo(src)
	new /obj/item/melee/bamboo(src)	//Fuck it, 7 bamboo swords.

