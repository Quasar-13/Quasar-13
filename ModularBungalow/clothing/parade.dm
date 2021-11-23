//Secretary Parade suit
/obj/item/clothing/under/misc/secparade
	desc = "A black suit blue trim. Worn by the lowly secretary"
	name = "secretary's parade uniform"
	icon = 'ModularBungalow/clothing/icons/parade.dmi'
	worn_icon = 'ModularBungalow/clothing/worn/paradew.dmi'
	icon_state = "spaceship_sec"
	inhand_icon_state = "black_suit"
	can_adjust = FALSE
	armor = list(MELEE = 0, BULLET = 0, LASER = 0,ENERGY = 0, BOMB = 0, BIO = 0, RAD = 0, FIRE = 0, ACID = 0, WOUND = 5)


//QM Parade suit

/obj/item/clothing/under/misc/qmparade
	desc = "A black suit with bronze trim and a medal attached. The gaudy look must belong to the QM"
	name = "qm's parade uniform"
	worn_icon = 'ModularBungalow/clothing/worn/paradew.dmi'
	icon = 'ModularBungalow/clothing/icons/parade.dmi'
	icon_state = "spaceship_qm"
	inhand_icon_state = "black_suit"
	can_adjust = FALSE
	armor = list(MELEE = 0, BULLET = 0, LASER = 0,ENERGY = 0, BOMB = 0, BIO = 0, RAD = 0, FIRE = 0, ACID = 0, WOUND = 5)


//Hop Parade suit

/obj/item/clothing/under/misc/hopparade
	desc = "A black suit that belongs to they who will one day become the captain."
	name = "hop's parade uniform"
	icon = 'ModularBungalow/clothing/icons/parade.dmi'
	worn_icon = 'ModularBungalow/clothing/worn/paradew.dmi'
	icon_state = "spaceship_hop"
	inhand_icon_state = "black_suit"
	can_adjust = FALSE
	armor = list(MELEE = 0, BULLET = 0, LASER = 0,ENERGY = 0, BOMB = 0, BIO = 0, RAD = 0, FIRE = 0, ACID = 0, WOUND = 5)

//CO Parade suit

/obj/item/clothing/under/misc/coparade
	desc = "A black suit that belongs to the militaristic captain of the station."
	name = "commanding officer's parade uniform"
	icon = 'ModularBungalow/clothing/icons/parade.dmi'
	worn_icon = 'ModularBungalow/clothing/worn/paradew.dmi'
	icon_state = "spaceship_co"
	inhand_icon_state = "black_suit"
	can_adjust = FALSE
	armor = list(MELEE = 0, BULLET = 0, LASER = 0,ENERGY = 0, BOMB = 0, BIO = 0, RAD = 0, FIRE = 0, ACID = 0, WOUND = 5)


//Station Commander Parade suit

/obj/item/clothing/under/misc/cdrparade
	desc = "A black suit that belongs to the station's commander."
	name = "corporate commander's parade uniform"
	icon = 'ModularBungalow/clothing/icons/parade.dmi'
	worn_icon = 'ModularBungalow/clothing/worn/paradew.dmi'
	icon_state = "spaceship_cdr"
	inhand_icon_state = "black_suit"
	can_adjust = FALSE
	armor = list(MELEE = 0, BULLET = 0, LASER = 0,ENERGY = 0, BOMB = 0, BIO = 0, RAD = 0, FIRE = 0, ACID = 0, WOUND = 5)


//Commodore Parade suit

/obj/item/clothing/under/misc/comparade
	can_adjust = FALSE
	desc = "A custom tailored uniform of someone who means business, and who knows a lot about running a space station."
	name = "commodore's parade uniform"
	icon = 'ModularBungalow/clothing/icons/parade.dmi'
	icon_state = "spaceship_com"
	inhand_icon_state = "black_suit"
	worn_icon = 'ModularBungalow/clothing/worn/paradew.dmi'
	can_adjust = FALSE
	armor = list(MELEE = 0, BULLET = 0, LASER = 0,ENERGY = 0, BOMB = 0, BIO = 0, RAD = 0, FIRE = 0, ACID = 0, WOUND = 5)


//Marshal's Parade suit

/obj/item/clothing/under/misc/marparade
	can_adjust = FALSE
	desc = "A custom tailored uniform of an elite military commander."
	name = "commodore's parade uniform"
	icon = 'ModularBungalow/clothing/icons/parade.dmi'
	icon_state = "spaceship_mar"
	inhand_icon_state = "black_suit"
	worn_icon = 'ModularBungalow/clothing/worn/paradew.dmi'
	can_adjust = FALSE
	armor = list(MELEE = 0, BULLET = 0, LASER = 0,ENERGY = 0, BOMB = 0, BIO = 0, RAD = 0, FIRE = 0, ACID = 0, WOUND = 5)

//This just initializes the captain armors.
/obj/item/clothing/suit/armor/captain
	name = "debug captain's armor"
	desc = "If you see this, contact the coders."
	icon = 'ModularBungalow/clothing/icons/parade.dmi'
	worn_icon = 'ModularBungalow/clothing/worn/paradew.dmi'
	icon_state = "commander_jacket"
	inhand_icon_state = "armor"
	body_parts_covered = CHEST|GROIN
	armor = list(MELEE = 50, BULLET = 40, LASER = 50, ENERGY = 50, BOMB = 25, BIO = 0, RAD = 0, FIRE = 100, ACID = 90, WOUND = 10)
	dog_fashion = null
	resistance_flags = FIRE_PROOF


// Marshal's jacket
/obj/item/clothing/suit/armor/captain/marshal
	name = "marshal's warcoat"
	desc = "Only a distinctive captain has the experience to get this coat. Many stations lost, many battles won."
	icon_state = "marshal_jacket"


// Station Commander's jacket
/obj/item/clothing/suit/armor/captain/cdr_jacket
	name = "station commander's armor"
	desc = "The coat of the station's commander. Lovely, personable and everpresent."
	icon_state = "cdr_jacket"


//Galaxy's Jacket
/obj/item/clothing/suit/armor/captain/galaxy
	name = "captain's parade coat"
	desc = "The white carapace of the NTRV Galaxy's Captain"
	icon_state = "galaxy"


//CO's Jacket
/obj/item/clothing/suit/armor/captain/co
	name = "co's coat"
	desc = "The coat of a militaristic captain."
	icon_state = "commander_jacket"

/obj/item/clothing/suit/armor/captain/solgov
	name = "Solgov Commander's coat"
	desc = "The coat of a Solgov base commander."
	icon_state = "Solgov_jacket"
