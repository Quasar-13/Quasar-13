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


//Casio Captain Hardsuit
/obj/item/clothing/head/helmet/space/hardsuit/captain/casio
	name = "\proper NT Captain's Hardsuit Helmet"
	desc = "A hard, green armor shell used but NT captain. Space suitable, does not have the helmet however. Slightly unwieldy."
	worn_icon = 'ModularBungalow/clothing/worn/helmetw.dmi'
	icon = 'ModularBungalow/clothing/icons/helmet.dmi'
	visor_flags_cover = HEADCOVERSEYES | HEADCOVERSMOUTH | PEPPERPROOF
	icon_state = "hardsuit0-capspace"

/obj/item/clothing/suit/space/hardsuit/swat/captain/casio
	name = "\proper NT Captain's Armored Hardsuit"
	desc = "A hard, green armor shell used but NT captain. Space suitable. Slightly unwieldy."
	worn_icon = 'ModularBungalow/clothing/worn/coatw.dmi'
	icon = 'ModularBungalow/clothing/icons/coat.dmi'
	icon_state = "hardsuit-capspace"
	helmettype = /obj/item/clothing/head/helmet/space/hardsuit/captain/casio



//Just for fun, Doom marine suit
/obj/item/clothing/suit/space/hardsuit/swat/captain/casio/doom
	name = "\improper Doom Marine Hardsuit"
	desc = "Rip and tear, until it is done."
	slowdown = -0.5

