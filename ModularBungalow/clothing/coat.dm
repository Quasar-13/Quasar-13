//VT winter coat
/obj/item/clothing/suit/hooded/wintercoat/engineering/void
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
	hoodtype = /obj/item/clothing/head/hooded/winterhood/engineering/void

/obj/item/clothing/head/hooded/winterhood/engineering/void
	worn_icon = 'ModularBungalow/clothing/worn/headw.dmi'
	icon = 'ModularBungalow/clothing/icons/head.dmi'
	icon_state = "winterhood_void"

/obj/item/clothing/suit/armor/ranger
	name = "Ranger's Duster"
	icon = 'ModularBungalow/clothing/icons/coat.dmi'
	worn_icon = 'ModularBungalow/clothing/worn/coatw.dmi'
	desc = "A duster used by the rangers."
	icon_state = "duster_recon"
	inhand_icon_state = "armor"
	body_parts_covered = CHEST|GROIN
	armor = list(MELEE = 40, BULLET = 30, LASER = 20, ENERGY = 20, BOMB = 25, BIO = 0, RAD = 0, FIRE = 100, ACID = 90, WOUND = 10)
	dog_fashion = null
	resistance_flags = FIRE_PROOF

/obj/item/clothing/suit/armor/ranger/vet
	name = "Veteran Ranger's Duster"
	icon = 'ModularBungalow/clothing/icons/coat.dmi'
	worn_icon = 'ModularBungalow/clothing/worn/coatw.dmi'
	desc = "A duster used by the Veteran Ranger."
	icon_state = "foxranger"
	inhand_icon_state = "armor"
	body_parts_covered = CHEST|GROIN
	armor = list(MELEE = 50, BULLET = 50, LASER = 20, ENERGY = 20, BOMB = 25, BIO = 0, RAD = 0, FIRE = 100, ACID = 90, WOUND = 10)
	dog_fashion = null
	resistance_flags = FIRE_PROOF

/obj/item/clothing/suit/armor/nso
	name = "Nanotrasen Security Operative's Coat"
	icon = 'ModularBungalow/clothing/icons/coat.dmi'
	worn_icon = 'ModularBungalow/clothing/worn/coatw.dmi'
	desc = "A coat worn by the Nanotrasen Security operative."
	icon_state = "nso_jacket"
	armor = list(MELEE = 40, BULLET = 30, LASER = 20, ENERGY = 20, BOMB = 25, BIO = 0, RAD = 0, FIRE = 100, ACID = 90, WOUND = 10)
	dog_fashion = null
	resistance_flags = FIRE_PROOF
