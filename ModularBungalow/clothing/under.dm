//Syndicate Suit. Formalwear for Syndiecorp Officers
/obj/item/clothing/under/syndicate/suit
	name = "syndicate formal suit"
	desc = "A jet-black suit with a black overcoat"
	icon_state = "syndicate_suit"
	worn_icon = 'ModularBungalow/clothing/worn/underw.dmi'
	icon = 'ModularBungalow/clothing/icons/under.dmi'
	inhand_icon_state = "syndicate_suit"
	can_adjust = FALSE

//Helltaker Suit. I like Helltaker, Fuck you.
/obj/item/clothing/under/suit/helltaker
	name = "Demon's Suit"
	desc = "A bloodred suit with white pants."
	icon_state = "helltaker"
	worn_icon = 'ModularBungalow/clothing/worn/underw.dmi'
	icon = 'ModularBungalow/clothing/icons/under.dmi'
	inhand_icon_state = "suit"

/obj/item/clothing/under/suit/helltaker/justice
	name = "special demon's suit"
	desc = "A bloodred suit with black pants."
	icon_state = "justice"

//Solgov Suit. Formalwear for Solgov Officers
/obj/item/clothing/under/solgov
	name = "solgov uniform"
	desc = "A standard white suit for sol gov officers"
	icon_state = "solgov"
	worn_icon = 'ModularBungalow/clothing/worn/underw.dmi'
	icon = 'ModularBungalow/clothing/icons/under.dmi'
	inhand_icon_state = "syndicate_suit"
	can_adjust = FALSE

/obj/item/clothing/under/solgov/suit
	name = "solgov formal suit"
	desc = "A muted blue suit with a black overcoat"
	icon_state = "solgov_suit"

/obj/item/clothing/under/solgov/snow
	name = "utility snow uniform"
	desc = "A snow camouflage uniform, what more could you want to know"
	icon_state = "solgovmerc"

//Samurai outfit. I think it looks really cool, maybe it will?
/obj/item/clothing/under/syndicate/samurai
	name = "syndicate samurai outfit"
	desc = "bandages and hakama. katana not included"
	icon_state = "samurai"
	worn_icon = 'ModularBungalow/clothing/worn/underw.dmi'
	icon = 'ModularBungalow/clothing/icons/under.dmi'
	inhand_icon_state = "syndicate_suit"
	can_adjust = FALSE

//Kimonos
/obj/item/clothing/under/dress/kimono
	name = "kimono"
	desc = "A traditional japanese garb."
	icon_state = "kimono"
	worn_icon = 'ModularBungalow/clothing/worn/underw.dmi'
	icon = 'ModularBungalow/clothing/icons/under.dmi'

/obj/item/clothing/under/dress/kimono/fancy
	name = "fancy kimono"
	icon_state = "fancy_kimono"

//Dresses
/obj/item/clothing/under/dress/evildress
	name = "fiend's dress"
	desc = "A black dress with red undertones."
	icon_state = "fienddress_s"
	worn_icon = 'ModularBungalow/clothing/worn/underw.dmi'
	icon = 'ModularBungalow/clothing/icons/under.dmi'

/obj/item/clothing/under/dress/reddress
	name = "red dress"
	desc = "A beautiful blood-red dress."
	icon_state = "formalred_s"
	worn_icon = 'ModularBungalow/clothing/worn/underw.dmi'
	icon = 'ModularBungalow/clothing/icons/under.dmi'

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
	desc = "A tacky pink jumpsuit worn by the station's chemists."
	name = "Chemical Researcher's jumpsuit"
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
/obj/item/clothing/under/rank/captain/female
	name = "Female Captain's Pyjamas"
	desc = "An outfit for bedtime."
	icon_state = "cap_f"
	worn_icon = 'ModularBungalow/clothing/worn/underw.dmi'
	icon = 'ModularBungalow/clothing/icons/under.dmi'
	inhand_icon_state = "suit"
	can_adjust = FALSE

/obj/item/clothing/under/rank/captain/dress
	name = "Captain's dress"
	desc = "An outfit for female captains."
	icon_state = "capdress"
	worn_icon = 'ModularBungalow/clothing/worn/underw.dmi'
	icon = 'ModularBungalow/clothing/icons/under.dmi'
	inhand_icon_state = "suit"
	can_adjust = FALSE

//Chief Atmos (Nicole wanted this so I guess I'm doing it)
/obj/item/clothing/under/rank/engineering/chief_engineer/atmos
	name = "Chief Atmos Technician's Jumpsuit"
	desc = "An outfit for an Atmos-Inclined Head of Engineering."
	icon_state = "chief_atmos"
	worn_icon = 'ModularBungalow/clothing/worn/underw.dmi'
	icon = 'ModularBungalow/clothing/icons/under.dmi'
	can_adjust = FALSE

//CE Hazard
/obj/item/clothing/under/rank/engineering/chief_engineer/hazard
	name = "Chief Engineer's Hazard Jumpsuit"
	desc = "An outfit for the Head of Engineering."
	icon_state = "chief_engi"
	worn_icon = 'ModularBungalow/clothing/worn/underw.dmi'
	icon = 'ModularBungalow/clothing/icons/under.dmi'
	can_adjust = FALSE

//Atmos white
/obj/item/clothing/under/rank/engineering/atmospheric_technician/hazard
	name = "white hazard jumpsuit"
	desc = "An outfit for people mixing deadly gasses."
	icon_state = "hazard_white"
	worn_icon = 'ModularBungalow/clothing/worn/underw.dmi'
	icon = 'ModularBungalow/clothing/icons/under.dmi'
	can_adjust = FALSE

//Atmos Green
/obj/item/clothing/under/rank/engineering/atmospheric_technician/green
	name = "green hazard jumpsuit"
	desc = "An outfit for people mixing deadly gasses."
	icon_state = "hazard_green"
	worn_icon = 'ModularBungalow/clothing/worn/underw.dmi'
	icon = 'ModularBungalow/clothing/icons/under.dmi'
	can_adjust = FALSE

//Atmos old
/obj/item/clothing/under/rank/engineering/atmospheric_technician/old
	name = "atmos hazard jumpsuit"
	desc = "An old outfit for helping people breathe."
	icon_state = "atmos"
	worn_icon = 'ModularBungalow/clothing/worn/underw.dmi'
	icon = 'ModularBungalow/clothing/icons/under.dmi'
	can_adjust = FALSE

//Atmos turtleneck
/obj/item/clothing/under/rank/engineering/atmospheric_technician/turtle
	name = "atmospherics turtleneck"
	desc = "An yellow and blue turtleneck."
	icon_state = "atmos_turtle"
	worn_icon = 'ModularBungalow/clothing/worn/underw.dmi'
	icon = 'ModularBungalow/clothing/icons/under.dmi'
	can_adjust = FALSE

//Atmos suit
/obj/item/clothing/under/rank/engineering/atmospheric_technician/suit
	name = "atmospherics suit"
	desc = "An yellow and blue suit."
	icon_state = "atmos_suit"
	worn_icon = 'ModularBungalow/clothing/worn/underw.dmi'
	icon = 'ModularBungalow/clothing/icons/under.dmi'
	can_adjust = FALSE

//QM stuff
/obj/item/clothing/under/rank/cargo/qm/dark
	name = "quartermaster's dark jumpsuit"
	desc = "It's a jumpsuit worn by the quartermaster. It's got darker tones than usual"
	icon_state = "qmsynd"
	worn_icon = 'ModularBungalow/clothing/worn/underw.dmi'
	icon = 'ModularBungalow/clothing/icons/under.dmi'

/obj/item/clothing/under/rank/cargo/qm/turtle
	name = "quartermaster's turtleneck"
	desc = "It's a turtleneck worn by the quartermaster. Alleviates neck pain"
	icon_state = "turtleneck_qm"
	worn_icon = 'ModularBungalow/clothing/worn/underw.dmi'
	icon = 'ModularBungalow/clothing/icons/under.dmi'

//HOP stuff.
/obj/item/clothing/under/rank/civilian/head_of_personnel/goon
	icon_state = "hop_goon"
	worn_icon = 'ModularBungalow/clothing/worn/underw.dmi'
	icon = 'ModularBungalow/clothing/icons/under.dmi'
	can_adjust = FALSE

/obj/item/clothing/under/rank/civilian/head_of_personnel/formal
	name = "Head Of Personnel's formal jumpsuit"
	desc = "A formal coat worn by the head of personnel."
	icon_state = "hop"
	worn_icon = 'ModularBungalow/clothing/worn/underw.dmi'
	icon = 'ModularBungalow/clothing/icons/under.dmi'
	can_adjust = FALSE

//CMO
/obj/item/clothing/under/rank/medical/chief_medical_officer/triage
	name = "Chief Medical Officer's Triage Jumpsuit"
	desc = "For combat purposes."
	icon_state = "cmo"
	worn_icon = 'ModularBungalow/clothing/worn/underw.dmi'
	icon = 'ModularBungalow/clothing/icons/under.dmi'
	can_adjust = FALSE

/obj/item/clothing/under/rank/medical/chief_medical_officer/turtleneck
	name = "Medical Professor's turtleneck"
	desc = "Surprisingly comfortable, and stain resistant."
	icon_state = "cmoturtle"
	worn_icon = 'ModularBungalow/clothing/worn/underw.dmi'
	icon = 'ModularBungalow/clothing/icons/under.dmi'
	can_adjust = FALSE

/obj/item/clothing/under/rank/medical/chief_medical_officer/suit
	name = "Senior Medical Officer's turtleneck"
	desc = "The suit of an extremely Senior CMO."
	icon_state = "cmosuit"
	worn_icon = 'ModularBungalow/clothing/worn/underw.dmi'
	icon = 'ModularBungalow/clothing/icons/under.dmi'
	can_adjust = FALSE

/obj/item/clothing/under/rank/centcom/fadm/xan
	name = "The Fleet Admiral Caelumbyrn Crux's Uniform"
	desc = "The Uniform for Fleet Admiral Caelumbyrn Crux"
	icon_state = "xadm"
	worn_icon = 'ModularBungalow/clothing/worn/underw.dmi'
	icon = 'ModularBungalow/clothing/icons/under.dmi'

/obj/item/clothing/under/coc
	name = "CoC uniform"
	desc = "For serious janitorial business"
	icon = 'ModularBungalow/clothing/icons/under.dmi'
	icon_state = "pjani"
	worn_icon = 'ModularBungalow/clothing/worn/underw.dmi'

//Prot-cust stuff
/obj/item/clothing/under/rank/prisoner/custody
	name = "protected custody jumpsuit"
	desc = "It's a standard uniform for informationally important persons. Its suit sensors are stuck in the \"Fully On\" position."
	icon = 'ModularBungalow/clothing/icons/under.dmi'
	icon_state = "protected_custody"
	worn_icon = 'ModularBungalow/clothing/worn/underw.dmi'

/obj/item/clothing/under/rank/prisoner/custody/skirt
	name = "protected custody jumpskirt"
	desc = "It's standardised skirt for informationally important persons. Its suit sensors are stuck in the \"Fully On\" position."
	icon = 'ModularBungalow/clothing/icons/under.dmi'
	icon_state = "protected_custody_skirt"
	worn_icon = 'ModularBungalow/clothing/worn/underw.dmi'

//Vagrant clothing
/obj/item/clothing/under/vagrant
	name = "disheveled clothing"
	desc = "Worn out clothing for worn out people"
	icon_state = "vagrant"
	worn_icon = 'ModularBungalow/clothing/worn/underw.dmi'
	icon = 'ModularBungalow/clothing/icons/under.dmi'
	can_adjust = FALSE
	sensor_mode = SENSOR_OFF
	random_sensor = FALSE

//Vetranger clothes
/obj/item/clothing/under/veteran
	name = "veteran ranger flannel"
	desc = "Clothing for the best bounty hunter"
	icon_state = "vetranger"
	worn_icon = 'ModularBungalow/clothing/worn/underw.dmi'
	icon = 'ModularBungalow/clothing/icons/under.dmi'
	can_adjust = FALSE

/obj/item/clothing/under/veteran/hos
	name = "scrap ranger flannel"
	desc = "Clothing made from scrap. Patched together from the clothes of the vagrants you slaughtered."

//Brig Doc clothing
/obj/item/clothing/under/brigdoc
	name = "brig doctor's jumpsuit"
	desc = "Clothing for the security doctor"
	icon_state = "utilmed"
	worn_icon = 'ModularBungalow/clothing/worn/underw.dmi'
	icon = 'ModularBungalow/clothing/icons/under.dmi'
	can_adjust = FALSE

//Comms Officer
/obj/item/clothing/under/rank/civilian/communications_officer
	name = "communication officer's jumpsuit"
	desc = "The suit of the communications officer."
	icon_state = "comms"
	worn_icon = 'ModularBungalow/clothing/worn/underw.dmi'
	icon = 'ModularBungalow/clothing/icons/under.dmi'
	can_adjust = FALSE
