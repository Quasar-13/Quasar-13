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

//Ranger helmet
/obj/item/clothing/head/helmet/ranger/snow
	name = "kepler ranger helmet"
	desc = "Durable helmet intended for long range expedition in the snow, Originally used by the kepler security force, now used by kepler rangers"
	worn_icon = 'ModularBungalow/clothing/worn/helmetw.dmi'
	icon = 'ModularBungalow/clothing/icons/helmet.dmi'
	visor_flags_cover = HEADCOVERSEYES | HEADCOVERSMOUTH | PEPPERPROOF
	icon_state = "snowvet"
	armor = list(MELEE = 40, BULLET = 30, LASER = 25, ENERGY = 35, BOMB = 25, BIO = 25, RAD = 10, FIRE = 100, ACID = 60, WOUND = 10)

/obj/item/clothing/head/helmet/ranger/hos
	name = "head of security's ranger helmet"
	resistance_flags = FIRE_PROOF

/obj/item/clothing/head/helmet/ranger/hos/snow
	name = "expedition leader's ranger helmet"
	desc = "Double plated."
	icon_state = "snowvethos"
	armor = list(MELEE = 45, BULLET = 35, LASER = 35, ENERGY = 35, BOMB = 25, BIO = 45, RAD = 60, FIRE = 100, ACID = 60, WOUND = 10)

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
	worn_icon = 'ModularBungalow/clothing/worn/headw.dmi'
	icon = 'ModularBungalow/clothing/icons/head.dmi'
	icon_state = "kepler"

/obj/item/clothing/head/helmet/kepler/nco
	icon_state = "keplernco"

/obj/item/clothing/head/helmet/kepler/assault
	icon_state = "keplerassault"

/obj/item/clothing/head/helmet/kepler/pilot
	icon_state = "keplerpilot"

/obj/item/clothing/head/helmet/kepler/cloaker
	icon_state = "keplercloaker"

/obj/item/clothing/head/helmet/kepler/heavy
	icon_state = "keplerlmg"

/obj/item/clothing/head/helmet/kepler/heavy/shotgunner
	icon_state = "keplershotgunner"
