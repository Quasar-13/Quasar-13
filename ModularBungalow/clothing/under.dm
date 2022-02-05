//Syndicate Suit. Formalwear for Syndiecorp Officers
/obj/item/clothing/under/syndicate/suit
	name = "syndicate formal suit"
	desc = "A jet-black suit with a black overcoat"
	icon_state = "syndicate_suit"
	worn_icon = 'ModularBungalow/clothing/worn/underw.dmi'
	icon = 'ModularBungalow/clothing/icons/under.dmi'
	inhand_icon_state = "syndicate_suit"
	can_adjust = FALSE

//Solgov Suit. Formalwear for Solgov Officers
/obj/item/clothing/under/solgov/suit
	name = "solgov formal suit"
	desc = "A muted blue suit with a black overcoat"
	icon_state = "solgov_suit"
	worn_icon = 'ModularBungalow/clothing/worn/underw.dmi'
	icon = 'ModularBungalow/clothing/icons/under.dmi'
	inhand_icon_state = "syndicate_suit"
	can_adjust = FALSE

//Samurai outfit. I think it looks really cool, maybe it will?
/obj/item/clothing/under/syndicate/samurai
	name = "syndicate samurai outfit"
	desc = "bandages and hakama. katana not included"
	icon_state = "samurai"
	worn_icon = 'ModularBungalow/clothing/worn/underw.dmi'
	icon = 'ModularBungalow/clothing/icons/under.dmi'
	inhand_icon_state = "syndicate_suit"
	can_adjust = FALSE

//BNI Suit for BNI people
/obj/item/clothing/under/bni
	name = "BNI outfit"
	desc = "An outfit for NT's BNI division"
	icon_state = "bni"
	worn_icon = 'ModularBungalow/clothing/worn/underw.dmi'
	icon = 'ModularBungalow/clothing/icons/under.dmi'
	inhand_icon_state = "suit"
	can_adjust = FALSE

/obj/item/clothing/under/bni/senior
	name = "Senior BNI outfit"
	desc = "An outfit for NT's Senior BNI operatives"
	icon_state = "bni_senior"

/obj/item/clothing/under/bni/officer
	name = "BNI officer outfit"
	desc = "An outfit for NT's BNI officers"
	icon_state = "bni_officer"

//Chemical Researcher Jumpsuit
/obj/item/clothing/under/rank/research/chem
	desc = "A tacky pick jumpsuit worn by the station's chemists."
	name = "Chemist's jumpsuit"
	icon = 'ModularBungalow/clothing/icons/under.dmi'
	worn_icon = 'ModularBungalow/clothing/worn/underw.dmi'
	icon_state = "chemre"
	inhand_icon_state = "chemre"
	armor = list(MELEE = 0, BULLET = 0, LASER = 0,ENERGY = 0, BOMB = 0, BIO = 0, RAD = 0, FIRE = 0, ACID = 10)
	resistance_flags = NONE

//Voidtech Jumpsuit
/obj/item/clothing/under/rank/engineering/void
	desc = "It's a grey jumpsuit worn by those that love the void."
	name = "void technician's jumpsuit"
	worn_icon = 'ModularBungalow/clothing/worn/underw.dmi'
	icon = 'ModularBungalow/clothing/icons/under.dmi'
	icon_state = "voidtech"
	inhand_icon_state = "void_suit"
	lefthand_file = 'ModularTegustation/Teguicons/kirie_stuff/left.dmi'
	righthand_file = 'ModularTegustation/Teguicons/kirie_stuff/right.dmi'
	armor = list(MELEE = 0, BULLET = 0, LASER = 0,ENERGY = 0, BOMB = 0, BIO = 0, RAD = 0, FIRE = 30, ACID = 10)
	resistance_flags = NONE

//Mechanic Jumpsuit
/obj/item/clothing/under/rank/engineering/mech
	desc = "It's a red jumpsuit worn by those that build the mining ship."
	name = "mechanic's jumpsuit"
	worn_icon = 'ModularBungalow/clothing/worn/underw.dmi'
	icon = 'ModularBungalow/clothing/icons/under.dmi'
	icon_state = "mech"
	inhand_icon_state = "void_suit"
	lefthand_file = 'ModularTegustation/Teguicons/kirie_stuff/left.dmi'
	righthand_file = 'ModularTegustation/Teguicons/kirie_stuff/right.dmi'
	armor = list(MELEE = 0, BULLET = 0, LASER = 0,ENERGY = 0, BOMB = 0, BIO = 0, RAD = 0, FIRE = 30, ACID = 10)
	resistance_flags = NONE

//Femcap (Don't tell anyone I added this)
/obj/item/clothing/under/captainf
	name = "Female Captain's Pyjamas"
	desc = "An outfit for bedtime."
	icon_state = "cap_f"
	worn_icon = 'ModularBungalow/clothing/worn/underw.dmi'
	icon = 'ModularBungalow/clothing/icons/under.dmi'
	inhand_icon_state = "suit"
	can_adjust = FALSE

//Chief Atmos (Nicole wanted this so I guess I'm doing it
/obj/item/clothing/under/rank/engineering/chief_engineer/atmos
	name = "Chief Atmos Technician's Jumpsuit"
	desc = "An outfit for an Atmos-Inclined Head of Engineering."
	icon_state = "chief_atmos"
	worn_icon = 'ModularBungalow/clothing/worn/underw.dmi'
	icon = 'ModularBungalow/clothing/icons/under.dmi'
	can_adjust = FALSE

//Goon HOP.
/obj/item/clothing/under/rank/civilian/head_of_personnel/goon
	icon_state = "hop_goon"
	worn_icon = 'ModularBungalow/clothing/worn/underw.dmi'
	icon = 'ModularBungalow/clothing/icons/under.dmi'
	can_adjust = FALSE

/obj/item/clothing/under/rank/medical/chief_medical_officer/turtleneck
	name = "Chief Medical Officer's turtleneck"
	desc = "Surprisingly comfortable, and stain resistant."
	icon_state = "cmoturtle"
	worn_icon = 'ModularBungalow/clothing/worn/underw.dmi'
	icon = 'ModularBungalow/clothing/icons/under.dmi'
	can_adjust = FALSE
