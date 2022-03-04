/obj/item/encryptionkey/headset_brigdoc
	name = "brig doctor radio encryption key"
	icon_state = "sec_cypherkey"
	channels = list(RADIO_CHANNEL_MEDICAL = 1, RADIO_CHANNEL_SECURITY = 1)

/obj/item/radio/headset/headset_sec/alt/med
	name = "brig physician's bowman headset"
	desc = "This is used by your elite security medic. Protects ears from flashbangs."
	keyslot = new /obj/item/encryptionkey/headset_brigdoc

