//Naval captain's hardsuit
/obj/machinery/suit_storage_unit/captain/naval
	suit_type = /obj/item/clothing/suit/space/hardsuit/swat/captain/naval
	mask_type = /obj/item/clothing/mask/gas/atmos
	storage_type = /obj/item/tank/jetpack/oxygen/captain

//ERT Cadet
/obj/machinery/suit_storage_unit/ert/cadet
	name = "cadet"
	suit_type = /obj/item/clothing/suit/space/hardsuit/ert/bni

//Pubby Hardsuits
/obj/machinery/suit_storage_unit/engine/pubby
	suit_type = /obj/item/clothing/suit/space/hardsuit/ancient
	mask_type = /obj/item/clothing/mask/breath

//Voidtech hardsuit
/obj/item/clothing/head/helmet/space/hardsuit/voidtech
	name = "voidtech hardsuit helmet"
	desc = "A special helmet designed for work in a hazardous, low-pressure environment. Trades all protection for speed."
	worn_icon = 'ModularBungalow/clothing/worn/helmetw.dmi'
	icon = 'ModularBungalow/clothing/icons/helmet.dmi'
	icon_state = "hardsuit0-voidtech"
	inhand_icon_state = "void_hardsuit"
	lefthand_file = 'ModularTegustation/Teguicons/kirie_stuff/left.dmi'
	righthand_file = 'ModularTegustation/Teguicons/kirie_stuff/right.dmi'
	armor = list(MELEE = 20, BULLET = 5, LASER = 5, ENERGY = 5, BOMB = 10, BIO = 100, RAD = 15, FIRE = 60, ACID = 30, WOUND = 10)
	hardsuit_type = "voidtech"

/obj/item/clothing/suit/space/hardsuit/voidtech
	name = "voidtech hardsuit"
	desc = "A special suit that protects against hazardous, low pressure environments. Trades all protection for speed."
	worn_icon = 'ModularBungalow/clothing/worn/coatw.dmi'
	icon = 'ModularBungalow/clothing/icons/coat.dmi'
	icon_state = "hardsuit-voidtech"
	inhand_icon_state = "void_hardsuit"
	lefthand_file = 'ModularTegustation/Teguicons/kirie_stuff/left.dmi'
	righthand_file = 'ModularTegustation/Teguicons/kirie_stuff/right.dmi'
	armor = list(MELEE = 20, BULLET = 10, LASER = 10, ENERGY = 5, BOMB = 10, BIO = 100, RAD = 15, FIRE = 60, ACID = 30, WOUND = 10)
	helmettype = /obj/item/clothing/head/helmet/space/hardsuit/voidtech
	slowdown = 0.25

//Naval Captain Hardsuit//
/obj/item/clothing/head/helmet/space/hardsuit/swat/captain/naval
	name = "\proper Naval Captain's Hardsuit Helmet"
	desc = "A hard, green armor shell used but NT captain. Space suitable, does not have the helmet however. Slightly unwieldy."
	worn_icon = 'ModularBungalow/clothing/worn/helmetw.dmi'
	icon = 'ModularBungalow/clothing/icons/helmet.dmi'
	visor_flags_cover = HEADCOVERSEYES | HEADCOVERSMOUTH | PEPPERPROOF
	icon_state = "hardsuit-capspace"

/obj/item/clothing/suit/space/hardsuit/swat/captain/naval
	name = "\proper Naval Captain's Armored Hardsuit"
	desc = "A hard, green armor shell used by naval captains. Space suitable. Slightly unwieldy."
	worn_icon = 'ModularBungalow/clothing/worn/coatw.dmi'
	icon = 'ModularBungalow/clothing/icons/coat.dmi'
	icon_state = "hardsuit-capspace"
	helmettype = /obj/item/clothing/head/helmet/space/hardsuit/swat/captain/naval

//Just for fun, Doom marine suit
/obj/item/clothing/suit/space/hardsuit/swat/captain/naval/doom
	name = "\improper Doom Marine Hardsuit"
	desc = "Rip and tear, until it is done."
	slowdown = -0.5


/obj/item/clothing/suit/space/hardsuit/mining/compact
	name = "compact mining hardsuit"
	worn_icon = 'ModularBungalow/clothing/worn/coatw.dmi'
	icon = 'ModularBungalow/clothing/icons/coat.dmi'
	icon_state = "hardsuit-miningclassic"
	desc = "A special suit that protects against hazardous, low pressure environments. Although similar to normal mining harsduit, this one seems to be a bit weaker."
	w_class = WEIGHT_CLASS_NORMAL
	armor = list(MELEE = 25, BULLET = 5, LASER = 10, ENERGY = 15, BOMB = 50, BIO = 100, RAD = 40, FIRE = 30, ACID = 75, WOUND = 5)
	helmettype = /obj/item/clothing/head/helmet/space/hardsuit/mining/compact

/obj/item/clothing/suit/space/hardsuit/mining/compact/Initialize()
	. = ..()
	UnregisterSignal(src, COMSIG_ARMOR_PLATED, .proc/upgrade_icon)

/obj/item/clothing/head/helmet/space/hardsuit/mining/compact
	name = "compact mining hardsuit helmet"
	worn_icon = 'ModularBungalow/clothing/worn/helmetw.dmi'
	icon = 'ModularBungalow/clothing/icons/helmet.dmi'
	icon_state = "hardsuit0-mineclassic"
	hardsuit_type = "mineclassic"
	armor = list(MELEE = 25, BULLET = 5, LASER = 10, ENERGY = 15, BOMB = 50, BIO = 100, RAD = 40, FIRE = 30, ACID = 75, WOUND = 5)

/obj/item/clothing/head/helmet/space/hardsuit/mining/compact/Initialize()
	. = ..()
	UnregisterSignal(src, COMSIG_ARMOR_PLATED, .proc/upgrade_icon)

//BNI hardsuit
/obj/item/clothing/suit/space/hardsuit/ert/bni
	name = "BNI Agent Hardsuiit"
	desc = "A hardsuit designed for BNI Agents looking for a more covert suit, designed with mobility yet protection in mind."
	worn_icon = 'ModularBungalow/clothing/worn/coatw.dmi'
	icon = 'ModularBungalow/clothing/icons/coat.dmi'
	icon_state = "ert_bni"
	inhand_icon_state = "hardsuit0-ert_security"
	helmettype = /obj/item/clothing/head/helmet/space/hardsuit/ert/bni
	max_heat_protection_temperature = FIRE_IMMUNITY_MAX_TEMP_PROTECT
	resistance_flags = FIRE_PROOF

/obj/item/clothing/head/helmet/space/hardsuit/ert/bni
	name = "paranormal response team helmet"
	desc = "A hlemet for a hardsuit designed for BNI Agents looking for a more covert suit, designed with mobility yet protection in mind."
	worn_icon = 'ModularBungalow/clothing/worn/helmetw.dmi'
	icon = 'ModularBungalow/clothing/icons/helmet.dmi'
	icon_state = "hardsuit0-ert_bni"
	inhand_icon_state = "ert_bni"
	hardsuit_type = "ert_bni"
	strip_delay = 130
	light_range = 7
	resistance_flags = FIRE_PROOF
	max_heat_protection_temperature = FIRE_IMMUNITY_MAX_TEMP_PROTECT


//Old Atmos hardsuit
/obj/item/clothing/head/helmet/space/hardsuit/engine/atmos/old
	icon_state = "hardsuit0-atmospherics"
	icon = 'ModularBungalow/clothing/icons/helmet.dmi'
	worn_icon = 'ModularBungalow/clothing/worn/helmetw.dmi'
	hardsuit_type = "atmospherics"

/obj/item/clothing/suit/space/hardsuit/engine/atmos/old
	name = "atmospherics hardsuit"
	desc = "A special suit that protects against hazardous, low pressure environments. Has thermal shielding."
	worn_icon = 'ModularBungalow/clothing/worn/coatw.dmi'
	icon = 'ModularBungalow/clothing/icons/coat.dmi'
	icon_state = "hardsuit-atmospherics"
	helmettype = /obj/item/clothing/head/helmet/space/hardsuit/engine/atmos/old

