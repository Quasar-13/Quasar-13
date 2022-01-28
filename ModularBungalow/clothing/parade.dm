//Parade suit
/obj/item/clothing/under/misc/parade
	desc = "A black suit blue trim. Worn by the lowly secretary"
	name = "secretary's parade uniform"
	icon = 'ModularBungalow/clothing/icons/parade.dmi'
	worn_icon = 'ModularBungalow/clothing/worn/paradew.dmi'
	icon_state = "spaceship_sec"
	inhand_icon_state = "black_suit"
	can_adjust = FALSE
	armor = list(MELEE = 0, BULLET = 0, LASER = 0,ENERGY = 0, BOMB = 0, BIO = 0, RAD = 0, FIRE = 0, ACID = 0, WOUND = 5)

//Parade suit
/obj/item/clothing/under/misc/parade/comms
	desc = "A black suit blue trim. Worn by the cheerful Communications Officer"
	name = "communication officer's parade uniform"
	icon_state = "spaceship_comms"

//QM Parade suit
/obj/item/clothing/under/misc/parade/qm
	desc = "A black suit with bronze trim and a medal attached. The gaudy look must belong to the QM"
	name = "QM's parade uniform"
	icon_state = "spaceship_qm"


//Hop Parade suit
/obj/item/clothing/under/misc/parade/hop
	desc = "A black suit that belongs to they who will one day become the captain."
	name = "HOP's parade uniform"
	icon_state = "spaceship_hop"

//CO Parade suit
/obj/item/clothing/under/misc/parade/co
	desc = "A black suit that belongs to the militaristic captain of the station."
	name = "commanding officer's parade uniform"
	icon_state = "spaceship_co"


//Station Commander Parade suit
/obj/item/clothing/under/misc/parade/cdr
	desc = "A black suit that belongs to the station's commander."
	name = "corporate commander's parade uniform"
	icon_state = "spaceship_cdr"


//Commodore Parade suit
/obj/item/clothing/under/misc/parade/com
	can_adjust = FALSE
	desc = "A custom tailored uniform of someone who means business, and who knows a lot about running a space station."
	name = "commodore's parade uniform"
	icon_state = "spaceship_com"

//Commodore Gloves
/obj/item/clothing/gloves/color/captain/commodore
	name = "commodore's gloves"
	desc = "Green gloves from high-ranking naval personnel. Just the sight of this green strikes fear in the hearts of others."
	worn_icon = 'ModularBungalow/clothing/worn/glovesw.dmi'
	icon = 'ModularBungalow/clothing/icons/gloves.dmi'
	icon_state = "commodore_gloves"

//Marshal's Parade suit
/obj/item/clothing/under/misc/parade/mar
	can_adjust = FALSE
	desc = "A custom tailored uniform of an elite military commander."
	name = "commodore's parade uniform"
	icon_state = "spaceship_mar"



//*****************************************************
//*****************************************************
//***				JACKETS							***
//*****************************************************
//*****************************************************

/obj/item/clothing/suit/armor/captain
	name = "debug captain's armor"
	icon = 'ModularBungalow/clothing/icons/parade.dmi'
	worn_icon = 'ModularBungalow/clothing/worn/paradew.dmi'
	desc = "If you see this, call the coders!"
	icon_state = "galaxy"
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

// Casio Armor
/obj/item/clothing/suit/armor/captain/casio
	name = "NT Captain's carapace"
	desc = "The classic captain's carapace, in naval green."
	icon_state = "casio"

//CO's Jacket
/obj/item/clothing/suit/armor/captain/co
	name = "co's coat"
	desc = "The coat of a militaristic captain"
	icon_state = "commander_jacket"

//Solgov coat
/obj/item/clothing/suit/armor/captain/solgov
	name = "Solgov Commander's coat"
	desc = "The coat of a Solgov base commander"
	icon_state = "Solgov_jacket"

// Bath Robes
/obj/item/clothing/suit/armor/captain/bath
	name = "captain's bathrobes"
	desc = "Ah, Time alone."
	icon_state = "captain_robes"


//Flag Officer Jackets
/obj/item/clothing/suit/armor/captain/flag
	name = "Rear Admiral's combat jacket"
	desc = "The combat jacket of a Rear Admiral. A military job, the protection it grants is welcome."
	icon_state = "radm"
	armor = list(MELEE = 80, BULLET = 80, LASER = 90, ENERGY = 90, BOMB = 25, BIO = 0, RAD = 0, FIRE = 100, ACID = 90, WOUND = 10)

/obj/item/clothing/suit/armor/captain/flag/vadm
	name = "Vice Admiral's parade jacket"
	desc = "The coat of a Vice Admiral. Absolutely a ceremonial job. Still flashy, even flashier than the admiral's."
	icon_state = "vadm"

/obj/item/clothing/suit/armor/captain/flag/provost
	name = "The Provost's parade jacket"
	desc = "The coat of a Provost Officer. Rank FO-2, Above even the Commodores, this Flag officer is entirely ceremonial, and their sole job is to take out unruly captains."
	icon_state = "provost"

/obj/item/clothing/suit/armor/captain/flag/admiral
	name = "The Fleet Admiral's parade jacket"
	desc = "FO-4. This belongs to the sector's one and only fleet admiral. Fear them."
	icon_state = "admiral"

/obj/item/clothing/suit/armor/captain/flag/admiral/fancy
	name = "The Admiral's fancy jacket"
	desc = "The Fleet Admiral has decided to bring out their best. Be warned."
	icon_state = "admiral_fancy"

/obj/item/clothing/suit/armor/captain/flag/admiral/combat
	name = "The Admiral's combat jacket"
	desc = "The Fleet Admiral's jacket, ready for combat. Prepare yourself."
	icon_state = "admiral_combat"
