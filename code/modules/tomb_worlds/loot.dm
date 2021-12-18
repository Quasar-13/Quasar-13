// Special items that are supposed to be spawned/used in tomb worlds


// Necromancer loot
// Helmet
/obj/item/clothing/head/wizard/magus/necromancer
	name = "\improper Necromancer helm"
	desc = "A helmet that was once worn by a powerful mage that delved way too far into the dark magic techniques."
	armor = list(MELEE = 70, BULLET = 40, LASER = 40, ENERGY = 50, BOMB = 50, BIO = 100, RAD = 70, FIRE = 100, ACID = 100,  WOUND = 30)
	strip_delay = 80
	var/obj/effect/proc_holder/spell/pointed/necromancer_curse/spell

/obj/item/clothing/head/wizard/magus/necromancer/Initialize()
	. = ..()
	spell = new(src)

/obj/item/clothing/head/wizard/magus/necromancer/equipped(mob/user, slot)
	. = ..()
	if(slot & ITEM_SLOT_HEAD)
		user.mind.AddSpell(spell)
		return
	user.mind.TempRemoveSpell(spell)

/obj/item/clothing/head/wizard/magus/necromancer/dropped(mob/user)
	..()
	user.mind.TempRemoveSpell(spell)

// Suit
/obj/item/clothing/suit/wizrobe/necromancer
	name = "\improper Necromancer robe"
	desc = "A set of dark armored robes that seem to be emitting the power of its previous owner."
	icon_state = "magusdark"
	inhand_icon_state = "magusdark"
	armor = list(MELEE = 70, BULLET = 40, LASER = 40, ENERGY = 50, BOMB = 50, BIO = 100, RAD = 70, FIRE = 100, ACID = 100,  WOUND = 30)
	strip_delay = 80
	var/obj/effect/proc_holder/spell/targeted/touch/necrotic_revival/spell

/obj/item/clothing/suit/wizrobe/necromancer/Initialize()
	. = ..()
	spell = new(src)

/obj/item/clothing/suit/wizrobe/necromancer/equipped(mob/user, slot)
	. = ..()
	if(slot & ITEM_SLOT_OCLOTHING)
		user.mind.AddSpell(spell)
		return
	user.mind.RemoveSpell(spell)

/obj/item/clothing/suit/wizrobe/necromancer/dropped(mob/user)
	..()
	user.mind.RemoveSpell(spell)

/obj/item/necromancer_sword
	name = "sword of the dead"
	desc = "An ancient relic of the past brought into this realm by a powerful mage to kill once again."
	icon_state = "hfrequency0"
	lefthand_file = 'icons/mob/inhands/weapons/swords_lefthand.dmi'
	righthand_file = 'icons/mob/inhands/weapons/swords_righthand.dmi'
	armour_penetration = 20
	force = 35
	throwforce = 30
	throw_speed = 4
	sharpness = SHARP_EDGED
	attack_verb_continuous = list("cuts", "slices", "dices")
	attack_verb_simple = list("cut", "slice", "dice")
	w_class = WEIGHT_CLASS_BULKY
	slot_flags = ITEM_SLOT_BACK
	hitsound = 'sound/weapons/bladeslice.ogg'
