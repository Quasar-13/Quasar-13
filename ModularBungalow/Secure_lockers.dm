//Galaxy Lockers
/obj/structure/closet/secure_closet/captains_galaxy
	icon = 'ModularBungalow/zbungalowicons/secure_locker.dmi'
	name = "\proper captain's locker"
	req_access = list(ACCESS_CAPTAIN)
	icon_state = "cap"

/obj/structure/closet/secure_closet/captains_galaxy/PopulateContents()
	..()
	new /obj/item/clothing/suit/hooded/wintercoat/captain(src)
	new /obj/item/storage/backpack/captain(src)
	new /obj/item/storage/backpack/satchel/cap(src)
	new /obj/item/storage/backpack/duffelbag/captain(src)
	new /obj/item/clothing/neck/cloak/cap(src)
	new /obj/item/clothing/under/rank/captain/galaxy(src)
	new /obj/item/clothing/under/rank/captain/skirt/galaxy(src)
	new /obj/item/clothing/suit/armor/captain/galaxy(src)
	new /obj/item/clothing/head/caphat/galaxy(src)
	new /obj/item/clothing/under/rank/captain/parade(src)
	new /obj/item/clothing/suit/armor/vest/capcarapace/alt(src)
	new /obj/item/clothing/head/caphat/parade(src)
	new /obj/item/clothing/suit/captunic(src)
	new /obj/item/cartridge/captain(src)
	new /obj/item/storage/box/silver_ids(src)
	new /obj/item/radio/headset/heads/captain/alt(src)
	new /obj/item/radio/headset/heads/captain(src)
	new /obj/item/clothing/gloves/color/captain/galaxy(src)
	new /obj/item/choice_beacon/sabre(src)
	new /obj/item/choice_beacon/gun(src)
	new /obj/item/door_remote/captain(src)

/obj/structure/closet/secure_closet/hop_galaxy
	icon = 'ModularBungalow/zbungalowicons/secure_locker.dmi'
	name = "\proper head of personnel's locker"
	req_access = list(ACCESS_HOP)
	icon_state = "hop"

/obj/structure/closet/secure_closet/hop_galaxy/PopulateContents()
	..()
	new /obj/item/clothing/neck/cloak/hop(src)
	new /obj/item/storage/lockbox/medal/service(src)
	new /obj/item/clothing/under/rank/civilian/head_of_personnel/galaxy(src)
	new /obj/item/clothing/under/rank/civilian/head_of_personnel/skirt/galaxy(src)
	new /obj/item/clothing/head/hopcap/galaxy(src)
	new /obj/item/cartridge/hop(src)
	new /obj/item/radio/headset/heads/hop(src)
	new /obj/item/storage/box/ids(src)
	new /obj/item/storage/box/ids(src)
	new /obj/item/clothing/suit/armor/vest/alt(src)
	new /obj/item/clothing/glasses/sunglasses(src)
	new /obj/item/door_remote/civilian(src)
	new /obj/item/gun/energy/e_gun/hop(src)
	new /obj/item/circuitboard/machine/techfab/department/service(src)
	new /obj/item/storage/lockbox/medal/hop(src)
	new /obj/item/card/id/departmental_budget/srv(src)

//Casio lockers
/obj/structure/closet/secure_closet/centcom
	icon = 'ModularBungalow/zbungalowicons/secure_locker.dmi'
	name = "\proper centcom locker"
	req_access = list(ACCESS_CENT_CAPTAIN)
	icon_state = "capnaval"

/obj/structure/closet/secure_closet/captains_casio
	icon = 'ModularBungalow/zbungalowicons/secure_locker.dmi'
	name = "\proper captain's locker"
	req_access = list(ACCESS_CAPTAIN)
	icon_state = "capnaval"

/obj/structure/closet/secure_closet/captains_casio/PopulateContents()
	..()
	new /obj/item/clothing/suit/hooded/wintercoat/captain(src)
	new /obj/item/storage/backpack/captain(src)
	new /obj/item/storage/backpack/satchel/cap(src)
	new /obj/item/storage/backpack/duffelbag/captain(src)
	new /obj/item/clothing/neck/cloak/cap(src)
	new /obj/item/clothing/under/rank/centcom/officer/captain(src)
	new /obj/item/clothing/suit/armor/bulletproof(src)
	new /obj/item/clothing/suit/captunic(src)
	new /obj/item/clothing/suit/armor/captain/casio(src)
	new /obj/item/cartridge/captain(src)
	new /obj/item/storage/box/silver_ids(src)
	new /obj/item/radio/headset/heads/headset_cent/commander(src)
	new /obj/item/door_remote/captain(src)
	new /obj/item/clothing/head/beret/centcom(src)

/obj/structure/closet/secure_closet/nt_squadleader
	icon = 'ModularBungalow/zbungalowicons/secure_locker.dmi'
	name = "\proper Squad Leader's locker"
	req_access = list(ACCESS_HOS)
	icon_state = "ntsl"

/obj/structure/closet/secure_closet/nt_squadleader/PopulateContents()
	..()
	new /obj/item/cartridge/hos(src)
	new /obj/item/radio/headset/heads/headset_cent/commander(src)
	new /obj/item/clothing/under/plasmaman/centcom_intern/marine(src)
	new /obj/item/storage/belt/military/assault(src)
	new /obj/item/clothing/suit/armor/vest/ntmarine/command(src)
	new /obj/item/clothing/head/beret/command(src)
	new /obj/item/clothing/head/beret/centcom(src)
	new /obj/item/clothing/glasses/hud/security/sunglasses/eyepatch(src)
	new /obj/item/clothing/suit/armor/bulletproof(src)
	new /obj/item/storage/lockbox/medal/sec(src)
	new /obj/item/holosign_creator/security(src)
	new /obj/item/storage/lockbox/loyalty(src)
	new /obj/item/clothing/mask/gas/sechailer/swat(src)
	new /obj/item/storage/box/flashbangs(src)
	new /obj/item/shield/riot/tele(src)
	new /obj/item/storage/belt/security/full(src)
	new /obj/item/gun/energy/e_gun/advtaser(src)
	new /obj/item/pinpointer/nuke(src)
	new /obj/item/circuitboard/machine/techfab/department/security(src)
	new /obj/item/storage/photo_album/hos(src)
	new /obj/item/card/id/departmental_budget/sec(src)

/obj/structure/closet/secure_closet/nt_mp
	icon = 'ModularBungalow/zbungalowicons/secure_locker.dmi'
	name = "\proper Marine Military Police's locker"
	req_access = list(ACCESS_ARMORY)
	icon_state = "ntmp"

/obj/structure/closet/secure_closet/nt_mp/PopulateContents()
	..()
	new /obj/item/radio/headset/heads/headset_cent(src)
	new /obj/item/clothing/head/beret/centcom(src)
	new /obj/item/clothing/under/plasmaman/centcom_intern/marine(src)
	new /obj/item/clothing/suit/armor/bulletproof(src)
	new /obj/item/holosign_creator/security(src)
	new /obj/item/clothing/mask/gas/sechailer(src)
	new /obj/item/storage/box/zipties(src)
	new /obj/item/storage/box/flashbangs(src)
	new /obj/item/storage/belt/security/full(src)
	new /obj/item/flashlight/seclite(src)
	new /obj/item/door_remote/head_of_security(src)
