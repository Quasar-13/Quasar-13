//Special Subspace Headset
/obj/item/radio/headset/subspace/void
	name = "voidtech's subspace headset"
	desc = "A headset made with special tech in mind to explore deep space. A rarity around these parts"
	icon_state = "subspace_headset"
	icon = 'ModularBungalow/clothing/icons/ears.dmi'
	worn_icon = 'ModularBungalow/clothing/worn/earsw.dmi'
	keyslot = new /obj/item/encryptionkey/headset_void
	subspace_transmission = FALSE


//Encryption key
/obj/item/encryptionkey/headset_void
	name = "void technicians radio encryption key"
	icon_state = "eng_cypherkey"
	channels = list(RADIO_CHANNEL_SCIENCE = 1, RADIO_CHANNEL_ENGINEERING = 1)
