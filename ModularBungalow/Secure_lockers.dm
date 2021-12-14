//lockers

/obj/structure/closet/secure_closet/captains_galaxy
	icon = 'ModularBungalow/legacy_icons/closet.dmi'
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
	new /obj/item/clothing/suit/armor/vest/capcarapace(src)
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
	new /obj/item/choice_beacon/captain(src)
	new /obj/item/door_remote/captain(src)

/obj/structure/closet/secure_closet/hop_galaxy
	icon = 'ModularBungalow/legacy_icons/closet.dmi'
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
	new /obj/item/circuitboard/machine/techfab/department/service(src)
	new /obj/item/storage/lockbox/medal/hop(src)
	new /obj/item/card/id/departmental_budget/srv(src)

