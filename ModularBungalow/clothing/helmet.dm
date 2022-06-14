//NSO helmet
/obj/item/clothing/head/helmet/nso
	name = "Nanotrasen Security Operative helmet"
	desc = "A special helmet designed for hard protection."
	worn_icon = 'ModularBungalow/clothing/worn/helmetw.dmi'
	icon = 'ModularBungalow/clothing/icons/helmet.dmi'
	visor_flags_cover = HEADCOVERSEYES | HEADCOVERSMOUTH | PEPPERPROOF
	icon_state = "nso"
	armor = list(MELEE = 40, BULLET = 30, LASER = 25, ENERGY = 35, BOMB = 25, BIO = 0, RAD = 0, FIRE = 100, ACID = 60, WOUND = 10)

//Ranger helmet
/obj/item/clothing/head/helmet/ranger
	name = "ranger helmet"
	desc = "Double plated."
	worn_icon = 'ModularBungalow/clothing/worn/helmetw.dmi'
	icon = 'ModularBungalow/clothing/icons/helmet.dmi'
	visor_flags_cover = HEADCOVERSEYES | HEADCOVERSMOUTH | PEPPERPROOF
	icon_state = "vet"
	armor = list(MELEE = 40, BULLET = 30, LASER = 25, ENERGY = 35, BOMB = 25, BIO = 0, RAD = 0, FIRE = 100, ACID = 60, WOUND = 10)
	resistance_flags = FIRE_PROOF
	flags_inv = HIDEMASK|HIDEEARS|HIDEHAIR

//Ranger helmet
/obj/item/clothing/head/helmet/ranger/snow
	name = "kepler ranger helmet"
	desc = "Durable helmet intended for long range expedition in the snow, Originally used by the kepler security force, now used by kepler rangers"
	worn_icon = 'ModularBungalow/clothing/worn/helmetw.dmi'
	icon = 'ModularBungalow/clothing/icons/helmet.dmi'
	visor_flags_cover = HEADCOVERSEYES | HEADCOVERSMOUTH | PEPPERPROOF
	icon_state = "snowvet"
	armor = list(MELEE = 40, BULLET = 30, LASER = 25, ENERGY = 35, BOMB = 25, BIO = 25, RAD = 10, FIRE = 100, ACID = 60, WOUND = 10)

/obj/item/clothing/head/helmet/ranger/keplersnow
	name = "kepler mercenary ranger helmet"
	desc = "Durable helmet survivalist, Originally used by the kepler security force but occasionally finding its way elsewhere"
	worn_icon = 'ModularBungalow/clothing/worn/helmetw.dmi'
	icon = 'ModularBungalow/clothing/icons/helmet.dmi'
	icon_state = "keplermarksman"
	armor = list(MELEE = 15, BULLET = 25, LASER = 45, ENERGY = 65, BOMB = 15, BIO = 100, RAD = 60, FIRE = 100, ACID = 10, WOUND = 5)

/obj/item/clothing/head/helmet/ranger/akira
	name = "kitsune's ranger helmet"
	desc = "Durable helmet intended for long range expedition in the snow, Originally used by a kitsune, now nowhere to be seen."
	worn_icon = 'ModularBungalow/clothing/worn/helmetw.dmi'
	icon = 'ModularBungalow/clothing/icons/helmet.dmi'
	visor_flags_cover = HEADCOVERSEYES | HEADCOVERSMOUTH | PEPPERPROOF
	icon_state = "snowvetakira"
	armor = list(MELEE = 35, BULLET = 35, LASER = 15, ENERGY = 35, BOMB = 25, BIO = 35, RAD = 100, FIRE = 100, ACID = 80, WOUND = 60)
	flash_protect = FLASH_PROTECTION_WELDER

/obj/item/clothing/head/helmet/ranger/hos
	name = "head of security's ranger helmet"
	resistance_flags = FIRE_PROOF
	flash_protect = FLASH_PROTECTION_WELDER

/obj/item/clothing/head/helmet/ranger/hos/snow
	name = "expedition leader's ranger helmet"
	desc = "Double plated."
	icon_state = "snowvethos"
	armor = list(MELEE = 45, BULLET = 35, LASER = 35, ENERGY = 35, BOMB = 25, BIO = 45, RAD = 60, FIRE = 100, ACID = 60, WOUND = 25)

//Provost Hat
/obj/item/clothing/head/caphat/provost
	name = "provost hat."
	desc = "A hat for a provost."
	worn_icon = 'ModularBungalow/clothing/worn/headw.dmi'
	icon = 'ModularBungalow/clothing/icons/head.dmi'
	icon_state = "provost_hat"

//Vice Admiral Hat
/obj/item/clothing/head/caphat/vadm
	name = "vice admiral hat."
	desc = "A hat for a vice admiral."
	worn_icon = 'ModularBungalow/clothing/worn/headw.dmi'
	icon = 'ModularBungalow/clothing/icons/head.dmi'
	icon_state = "viceadmiral_hat"

/obj/item/clothing/head/helmet/kepler
	name = "kepler mercenary helmet."
	desc = "A helmet for some sort of mercenaries."
	worn_icon = 'ModularBungalow/clothing/worn/helmetw.dmi'
	icon = 'ModularBungalow/clothing/icons/helmet.dmi'
	icon_state = "kepler"
	armor = list(MELEE = 10, BULLET = 35, LASER = 25, ENERGY = 15, BOMB = 15, BIO = 100, RAD = 70, FIRE = 100, ACID = 60, WOUND = 25)

/obj/item/clothing/head/helmet/kepler/nco
	icon_state = "keplernco"

/obj/item/clothing/head/helmet/kepler/assault
	icon_state = "keplerassault"
	armor = list(MELEE = 40, BULLET = 45, LASER = 45, ENERGY = 45, BOMB = 45, BIO = 100, RAD = 70, FIRE = 100, ACID = 60, WOUND = 25)

/obj/item/clothing/head/helmet/kepler/pilot
	icon_state = "keplerpilot"

/obj/item/clothing/head/helmet/kepler/cloaker
	icon_state = "keplercloaker"

/obj/item/clothing/head/helmet/kepler/heavy
	icon_state = "keplerassault"
	armor = list(MELEE = 35, BULLET = 35, LASER = 35, ENERGY = 45, BOMB = 65, BIO = 100, RAD = 100, FIRE = 100, ACID = 60, WOUND = 25)

/obj/item/clothing/head/helmet/kepler/heavy/shotgunner
	icon_state = "keplershotgunner"
	armor = list(MELEE = 45, BULLET = 45, LASER = 35, ENERGY = 45, BOMB = 65, BIO = 100, RAD = 100, FIRE = 100, ACID = 60, WOUND = 25)
