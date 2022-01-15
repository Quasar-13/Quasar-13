//VT winter coat
/obj/item/clothing/suit/hooded/wintercoat/engineer/void
	name = "\improper Void Technician's winter coat"
	desc = "This is a void technician's winter coat, not suitable for the vacuum of space."
	worn_icon = 'ModularBungalow/clothing/worn/coatw.dmi'
	icon = 'ModularBungalow/clothing/icons/coat.dmi'
	icon_state = "coatvoid"
	inhand_icon_state = "coatvoid"
	allowed = list(
		/obj/item/radio,
		/obj/item/analyzer,
		/obj/item/multitool,
		/obj/item/assembly/signaler,
	)
	armor = list(MELEE = 0, BULLET = 0, LASER = 0, ENERGY = 0, BOMB = 0, BIO = 0, RAD = 10, FIRE = 20, ACID = 0)
	hoodtype = /obj/item/clothing/head/hooded/winterhood/engineer/void

/obj/item/clothing/head/hooded/winterhood/engineer/void
	worn_icon = 'ModularBungalow/clothing/worn/headw.dmi'
	icon = 'ModularBungalow/clothing/icons/head.dmi'
	icon_state = "winterhood_void"
