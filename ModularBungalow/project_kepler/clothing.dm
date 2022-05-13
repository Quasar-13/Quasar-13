//Uniforms

/obj/item/clothing/under/rank/security/officer/kepler
	name = "kepler officer jumpsuit"
	desc = "A tactical security jumpsuit for officers complete with Solgov belt buckle."
	icon_state = "keplerundersec"
	armor = list(MELEE = 10, BULLET = 5, LASER = 5,ENERGY = 5, BOMB = 5, BIO = 10, RAD = 10, FIRE = 30, ACID = 30, WOUND = 15)

/obj/item/clothing/under/rank/security/officer/kepler/ranger
	name = "kepler ranger jumpsuit"
	desc = "A tactical jumpsuit for the kepler rangers, fairly durable."
	icon_state = "keplerranger"
	armor = list(MELEE = 10, BULLET = 5, LASER = 5,ENERGY = 5, BOMB = 5, BIO = 10, RAD = 10, FIRE = 30, ACID = 30, WOUND = 15)


//Solgov armor
/obj/item/clothing/suit/armor/vest/solgov
	name = "solgov combat armor"
	desc = "A standard Solgov Mk3 combat rig for the Solgov Army and Marines."
	worn_icon = 'ModularBungalow/clothing/worn/coatw.dmi'
	icon = 'ModularBungalow/clothing/icons/coat.dmi'
	icon_state = "sgvarmor"
	inhand_icon_state = "armor"
	armor = list(MELEE = 40, BULLET = 40, LASER = 25, ENERGY = 25, BOMB = 25, BIO = 0, RAD = 0, FIRE = 100, ACID = 90, WOUND = 10)

/obj/item/clothing/suit/armor/vest/solgov/snow
	desc = "A standard Solgov Mk3 combat rig for the Solgov Army in winter operations."
	icon_state = "sgsarmor"
	min_cold_protection_temperature = FIRE_SUIT_MIN_TEMP_PROTECT

/obj/item/clothing/suit/armor/vest/solgov/snow/heavy
	name = "solgov heavy combat armor"
	desc = "A heavily padded Solgov Mk4 combat rig for the Solgov Army and Marines."
	icon_state = "soldier_snow"
	slowdown = 0.16
	armor = list(MELEE = 50, BULLET = 60, LASER = 35, ENERGY = 35, BOMB = 25, BIO = 0, RAD = 0, FIRE = 100, ACID = 90, WOUND = 10)

//Solgov Helmets
/obj/item/clothing/head/helmet/solgov
	name = "solgov helmet"
	worn_icon = 'ModularBungalow/clothing/worn/helmetw.dmi'
	icon = 'ModularBungalow/clothing/icons/helmet.dmi'
	desc = "Standard Mk4 Solgov Military Helmet."
	icon_state = "sgvhelmet"
	inhand_icon_state = "helmet"
	can_flashlight = FALSE

/obj/item/clothing/head/helmet/solgov/snow
	desc = "Standard Mk4 Solgov Military Helmet. Painted white for better snow camo"
	icon_state = "sgshelmet"

/obj/item/clothing/head/helmet/solgov/snow/heavy
	name = "solgov heavy helmet"
	desc = "Standard Mk5 Solgov Military Helmet. Offers better protection."
	icon_state = "soldier_snow"
	slowdown = 0.16
	armor = list(MELEE = 50, BULLET = 60, LASER = 35, ENERGY = 35, BOMB = 25, BIO = 0, RAD = 0, FIRE = 100, ACID = 90, WOUND = 10)
	min_cold_protection_temperature = SPACE_HELM_MIN_TEMP_PROTECT
	resistance_flags = FIRE_PROOF | ACID_PROOF
	flags_inv = HIDEMASK|HIDEEARS|HIDEEYES|HIDEHAIR
	flags_cover = HEADCOVERSEYES
	flash_protect = FLASH_PROTECTION_WELDER
