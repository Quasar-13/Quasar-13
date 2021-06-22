//Bungalow CMO weapon
/obj/item/gun/syringe/rifle
	name = "cmo's syringe rifle"
	desc = "The CMO personal syringe gun. It can hold 3 syringes."
	icon = 'ModularBungalow/bungalowWeapons/_icon/ballistics.dmi'
	icon_state = "syringerifle"
	max_syringes = 3

/obj/item/gun/ballistic/automatic/pistol/deltaelite
	name = "\improper NT M1911 Elite"
	desc = "A modification on the classic 1911 handgun, this gun is chambered in 9mm. Like its predecessor, it suffers from low capacity."
	icon = 'ModularBungalow/bungalowWeapons/_icon/ballistics.dmi'
	icon_state = "deltaelite"
	w_class = WEIGHT_CLASS_NORMAL
	mag_type = /obj/item/ammo_box/magazine/de9mm
	can_suppress = FALSE

/obj/item/gun/ballistic/automatic/pistol/deltaelite/no_mag
	spawnwithmagazine = FALSE

/obj/item/gun/ballistic/automatic/pistol/beretta
	name = "Beretta M9"
	desc = "An Italian 9mm handgun. For use against pineapple-on-pizza lovers."
	fire_sound = 'ModularTegustation/Tegusounds/weapons/guns/pistol.ogg'
	w_class = WEIGHT_CLASS_NORMAL
	icon_state = "beretta"
	can_suppress = FALSE

/obj/item/gun/ballistic/automatic/pistol/sig
	name = "SIG Sauer"
	desc = "A classic handgun with a larger than average magazine capacity."
	icon = 'ModularBungalow/bungalowWeapons/_icon/ballistics.dmi'
	spread = 15
	w_class = WEIGHT_CLASS_NORMAL
	icon_state = "sig"
	mag_type = /obj/item/ammo_box/magazine/m9mm_aps/sig
	can_suppress = FALSE

/obj/item/gun/ballistic/automatic/pistol/ppk
	name = "Type 64"
	desc = "The classic Chinese handgun. Chambered in .38."
	icon = 'ModularBungalow/bungalowWeapons/_icon/ballistics.dmi'
	w_class = WEIGHT_CLASS_NORMAL
	icon_state = "ppk"
	mag_type = /obj/item/ammo_box/magazine/m38
	can_suppress = FALSE

/obj/item/gun/ballistic/automatic/pistol/glock
	name = "Glock 17"
	desc = "The well known austrian pistol. Commonly used by law enforcement."
	icon = 'ModularBungalow/bungalowWeapons/_icon/ballistics.dmi'
	icon_state = "glock"
	can_suppress = FALSE

/obj/item/gun/ballistic/automatic/pistol/glock/fullauto
	name = "Glock 18"
	desc = "The well known austrian pistol. This one is fully automatic, and may break your hand."
	burst_size = 1
	spread = 30
	fire_delay = 0.5

/obj/item/gun/ballistic/automatic/pistol/glock/fullauto/ComponentInitialize()
	. = ..()
	AddComponent(/datum/component/automatic_fire, 0.1 SECONDS)

// Magazines
/obj/item/ammo_box/magazine/m9mm_aps/sig
	name = "SIG Sauer pistol magazine (9mm)"

/obj/item/ammo_box/magazine/m38
	name = "pistol magazine (.38)"
	ammo_type = /obj/item/ammo_casing/c38
	icon_state = "9x19p"
	caliber = CALIBER_38
	max_ammo = 10

/obj/item/ammo_box/magazine/m38/update_icon()
	..()
	icon_state = "9x19p-[ammo_count() ? "8" : "0"]"
/obj/item/gun/ballistic/automatic/proto/terragov
	name = "\improper TG SABR SMG"
	desc = "A three-round burst 9mm submachine gun. Used by TerraGov military personnel. Has a threaded barrel for suppressors."
	w_class = WEIGHT_CLASS_NORMAL
	pin = /obj/item/firing_pin
