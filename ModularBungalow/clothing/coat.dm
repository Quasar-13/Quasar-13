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

//RD Labcoat
/obj/item/clothing/suit/toggle/labcoat/rd
	name = "research director's labcoat"
	desc = "Purpler than the standard model."
	worn_icon = 'ModularBungalow/clothing/worn/coatw.dmi'
	icon = 'ModularBungalow/clothing/icons/coat.dmi'
	icon_state = "labcoat_rd"


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
	desc = "A duster used by the Veteran Ranger."
	icon_state = "foxranger"
	armor = list(MELEE = 50, BULLET = 50, LASER = 20, ENERGY = 20, BOMB = 25, BIO = 0, RAD = 0, FIRE = 100, ACID = 90, WOUND = 10)

/obj/item/clothing/suit/armor/nso
	name = "Nanotrasen Security Operative's Coat"
	icon = 'ModularBungalow/clothing/icons/coat.dmi'
	worn_icon = 'ModularBungalow/clothing/worn/coatw.dmi'
	desc = "A coat worn by the Nanotrasen Security operative."
	icon_state = "nso_jacket"
	armor = list(MELEE = 40, BULLET = 30, LASER = 20, ENERGY = 20, BOMB = 25, BIO = 0, RAD = 0, FIRE = 100, ACID = 90, WOUND = 10)
	dog_fashion = null
	resistance_flags = FIRE_PROOF

/obj/item/clothing/suit/armor/hopcoat
	name = "head of personnel's uniform"
	icon = 'ModularBungalow/clothing/icons/coat.dmi'
	worn_icon = 'ModularBungalow/clothing/worn/coatw.dmi'
	desc = "A formal but simple coat worn by the Head of Personnel."
	icon_state = "coathop"
	min_cold_protection_temperature = FIRE_SUIT_MIN_TEMP_PROTECT

/obj/item/clothing/suit/armor/hopjacket
	name = "head of personnel's jacket"
	icon = 'ModularBungalow/clothing/icons/coat.dmi'
	worn_icon = 'ModularBungalow/clothing/worn/coatw.dmi'
	desc = "A rather fancy coat worn by the Head of Personnel."
	icon_state = "hopjacket"

/obj/item/clothing/suit/armor/hopjacket/commjacket
	name = "communications officer's jacket"
	desc = "A rather fancy coat worn by the communications officer."

/obj/item/clothing/suit/armor/hos/peacoat
	name = "head of security's Peacoat"
	icon = 'ModularBungalow/clothing/icons/coat.dmi'
	worn_icon = 'ModularBungalow/clothing/worn/coatw.dmi'
	desc = "A coat popular among the female Head of Securities.."
	icon_state = "hos"

/obj/item/clothing/suit/armor/hos/ranger
	name = "head of security's ranger duster"
	icon = 'ModularBungalow/clothing/icons/coat.dmi'
	worn_icon = 'ModularBungalow/clothing/worn/coatw.dmi'
	desc = "Made from all the miners you ruthlessly slaughtered."
	icon_state = "hosranger"

/obj/item/clothing/suit/qm
	name = "quartermaster's coat"
	desc = "A button-up jacket used by the quartermaster."
	icon = 'ModularBungalow/clothing/icons/coat.dmi'
	worn_icon = 'ModularBungalow/clothing/worn/coatw.dmi'
	icon_state = "qmjacket"
	inhand_icon_state = "armor"
	dog_fashion = null

/obj/item/clothing/suit/firejacket
	name = "fireman's jacket"
	icon = 'ModularBungalow/clothing/icons/coat.dmi'
	worn_icon = 'ModularBungalow/clothing/worn/coatw.dmi'
	desc = "A black jacket with reflective strips. Offers fire protection up to 500K"
	icon_state = "firejacket"
	inhand_icon_state = "armor"
	body_parts_covered = CHEST
	armor = list(MELEE = 0, BULLET = 0, LASER = 0, ENERGY = 0, BOMB = 0, BIO = 0, RAD = 0, FIRE = 100, ACID = 0, WOUND = 5)
	resistance_flags = FIRE_PROOF
	max_heat_protection_temperature = 500

/obj/item/clothing/suit/firecoat
	name = "fireman's coat"
	icon = 'ModularBungalow/clothing/icons/coat.dmi'
	worn_icon = 'ModularBungalow/clothing/worn/coatw.dmi'
	desc = "A long black coat with reflective strips. Offers fire protection up to 500K"
	icon_state = "fireman"
	inhand_icon_state = "armor"
	body_parts_covered = CHEST|GROIN
	armor = list(MELEE = 0, BULLET = 0, LASER = 0, ENERGY = 0, BOMB = 0, BIO = 0, RAD = 0, FIRE = 100, ACID = 0, WOUND = 5)
	resistance_flags = FIRE_PROOF
	max_heat_protection_temperature = 500
