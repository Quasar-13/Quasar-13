/datum/job/captain_green/naval
	maptype = "naval"
	outfit = /datum/outfit/job/captain/nt

/datum/outfit/job/captain/nt
	name = "Captain (Naval)"
	jobtype = /datum/job/ntcaptain

	ears = /obj/item/radio/headset/heads/headset_cent/commander
	gloves = /obj/item/clothing/gloves/color/black
	uniform = /obj/item/clothing/under/rank/centcom/officer/captain
	suit = /obj/item/clothing/suit/armor/captain/naval
	head = /obj/item/clothing/head/beret/centcom
	suit_store = /obj/item/gun/ballistic/revolver/mateba
	backpack = /obj/item/storage/backpack/centcom

	chameleon_extras = list(/obj/item/gun/energy/e_gun, /obj/item/stamp/captain)

/obj/effect/landmark/start/ntcaptain
	name = "NT Captain"
	icon_state = "Security Officer"

/obj/effect/landmark/start/captain/Initialize()
	. = ..()
	var/turf/T = get_turf(src)
	new /obj/effect/landmark/start/ntcaptain(T)

