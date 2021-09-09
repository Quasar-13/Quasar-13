/obj/item/clothing/under/solgov
	icon = 'ModularBungalow/zbungalowicons/clothing/obj/under.dmi'
	worn_icon = 'ModularBungalow/zbungalowicons/clothing/mob/under.dmi'
	icon_state = "fatigues"
	name = "\improper SolGov fatigues"
	desc = "Standard combat uniform for SolGov's officers."
	armor = list("melee" = 10, "bullet" = 5, "laser" = 5,"energy" = 5, "bomb" = 5, "bio" = 0, "rad" = 0, "fire" = 30, "acid" = 30)
	strip_delay = 50
	can_adjust = FALSE

/obj/item/clothing/under/solgov/elite
	name = "\improper SolGov elite jumpsuit"
	desc = "It's a jumpsuit for SolGov's elite officers. Designed to be comfortable in heavy armor."
	icon_state = "elite"

/obj/item/clothing/under/solgov/formal
	name = "\improper SolGov formal uniform"
	desc = "A formal SolGov uniform, for special occasions."
	icon_state = "formal_solgov"
	can_adjust = TRUE

/obj/item/clothing/under/solgov/formal/terragov
	name = "\improper TerraGov formal uniform"
	desc = "A formal SolGov uniform, for special occasions. This one is still colored in original TerraGov green."
	icon_state = "formal_terragov"
	can_adjust = FALSE

/obj/item/clothing/under/plasmaman/solgov
	name = "SolGov envirosuit"
	desc = "Why the human centric government sent the science-fiction equivalent of a leper to this station is beyond me."
	icon_state = "plasma_solgov"
	can_adjust = FALSE
	icon = 'ModularBungalow/zbungalowicons/clothing/obj/under.dmi'
	worn_icon = 'ModularBungalow/zbungalowicons/clothing/mob/under.dmi'

/obj/item/clothing/accessory/waistcoat/solgov
	name = "solgov waistcoat"
	desc = "A standard issue waistcoat in solgov colors."
	icon_state = "solgov_waistcoat"
	icon = 'ModularBungalow/zbungalowicons/clothing/obj/accessories.dmi'

/obj/item/clothing/suit/toggle/solgov
	name = "\improper SolGov coat"
	desc = "An armored coat worn for special occasions. This one is dyed in SolGov blue."
	body_parts_covered = CHEST|GROIN|ARMS|HANDS
	icon_state = "coat_solgov"
	icon = 'ModularBungalow/zbungalowicons/clothing/obj/suits.dmi'
	worn_icon = 'ModularBungalow/zbungalowicons/clothing/mob/suits.dmi'
	blood_overlay_type = "coat"
	togglename = "buttons"
	armor = list("melee" = 35, "bullet" = 30, "laser" = 30, "energy" = 40, "bomb" = 25, "bio" = 0, "rad" = 0, "fire" = 50, "acid" = 50)

/obj/item/clothing/head/solgov
	name = "\improper SolGov officer's cap"
	desc = "A blue cap worn by high-ranking officers of SolGov."
	armor = list("melee" = 40, "bullet" = 30, "laser" = 30, "energy" = 40, "bomb" = 25, "bio" = 0, "rad" = 0, "fire" = 30, "acid" = 60)
	icon_state = "cap_solgov"
	strip_delay = 80
	icon = 'ModularBungalow/zbungalowicons/clothing/obj/head.dmi'
	worn_icon = 'ModularBungalow/zbungalowicons/clothing/mob/head.dmi'

/obj/item/clothing/head/helmet/space/plasmaman/solgov
	name = "SolGov envirosuit helmet"
	desc = "A generic white envirohelmet with a secondary blue."
	icon_state = "solgov_envirohelm"
	icon = 'ModularBungalow/zbungalowicons/clothing/obj/head.dmi'
	worn_icon = 'ModularBungalow/zbungalowicons/clothing/mob/head.dmi'

/obj/item/clothing/suit/toggle/solgov/terragov
	name = "\improper Terragov coat"
	desc = "An armored coat worn for special occasions. This one is still dyed in original TerraGov green."
	icon_state = "coat_terragov"

/obj/item/radio/headset/solgov
	name = "\improper SolGov Offical's headset"
	desc = "A SolGov Official's headset."
	icon = 'ModularBungalow/zbungalowicons/radio.dmi'
	worn_icon = 'ModularBungalow/zbungalowicons/clothing/mob/ears.dmi'
	icon_state = "solgov_headset"

	keyslot = new /obj/item/encryptionkey/solgov

/obj/item/radio/headset/solgov/alt
	name = "\improper SolGov Officer's bowman headset"
	desc = "A SolGov Officer's headset. Protects ears from flashbangs."
	icon_state = "solgov_headset_alt"

/obj/item/radio/headset/solgov/alt/ComponentInitialize()
	. = ..()
	AddComponent(/datum/component/wearertargeting/earprotection, list(ITEM_SLOT_EARS))

/obj/item/encryptionkey/solgov
	name = "\proper solgov encryption key"
	icon = 'ModularBungalow/zbungalowicons/radio.dmi'
	icon_state = "solgov_cypherkey"
	independent = TRUE
	channels = list(RADIO_CHANNEL_COMMAND = 1, RADIO_CHANNEL_SOLGOV = 1)

/obj/item/pda/solgov
	name = "solgov officer PDA"
	default_cartridge = /obj/item/cartridge/lawyer
	icon_state = "pda-captain"
