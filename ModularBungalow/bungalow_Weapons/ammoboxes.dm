//MEGAZINES
/obj/item/ammo_box/magazine/ak47
	name = "AK-47 Magazine (7.62x39mm)"
	icon = 'ModularTegustation/Teguicons/magazines.dmi'
	icon_state = "ak47_mag"
	ammo_type = /obj/item/ammo_casing/ballistic/a762_39
	caliber = "7.62x39mm"
	max_ammo = 30

/obj/item/ammo_box/magazine/ak47/update_icon()
	..()
	if (ammo_count() == 0)
		icon_state = "ak47_mag"
	else
		icon_state = "ak47_mag_full"

/obj/item/ammo_box/magazine/ak47/expanded
	name = "AK-47 Expanded Magazine (7.62x39mm)"
	icon_state = "ak47_mag_large"
	max_ammo = 50

/obj/item/ammo_box/magazine/ak47/expanded/update_icon()
	..()
	if (ammo_count() == 0)
		icon_state = "ak47_mag_large"
	else
		icon_state = "ak47_mag_large_full"

/obj/item/ammo_box/magazine/aks74u
	name = "AKS-74U Magazine (5.45x39mm)"
	icon = 'ModularTegustation/Teguicons/magazines.dmi'
	icon_state = "ak74_mag"
	ammo_type = /obj/item/ammo_casing/ballistic/a545_39
	caliber = "5.45x39mm"
	max_ammo = 30

/obj/item/ammo_box/magazine/aks74u/update_icon()
	..()
	if (ammo_count() == 0)
		icon_state = "ak74_mag"
	else
		icon_state = "ak74_mag_full"

/obj/item/ammo_box/magazine/aks74u/expanded
	name = "AKS-74U Expanded Magazine (5.45x39mm)"
	icon_state = "ak74_mag_large"
	max_ammo = 50

/obj/item/ammo_box/magazine/aks74u/expanded/update_icon()
	..()
	if (ammo_count() == 0)
		icon_state = "ak74_mag_large"
	else
		icon_state = "ak74_mag_large_full"

/obj/item/ammo_box/magazine/t12
	name = "T12 Drum (10x24mm)"
	icon = 'ModularTegustation/Teguicons/magazines.dmi'
	icon_state = "t12_mag"
	ammo_type = /obj/item/ammo_casing/ballistic/a10_24
	caliber = "10x24mm"
	max_ammo = 50

/obj/item/ammo_box/magazine/t12/update_icon()
	..()
	if (ammo_count() == 0)
		icon_state = "t12_mag"
	else
		icon_state = "t12_mag_full"

/obj/item/ammo_box/magazine/autogun
	name = "Autogun Magazine (7.62x51)"
	icon = 'ModularBungalow/bungalow_Weapons/_icon/ammo_box.dmi'
	icon_state = "a762magazine"
	ammo_type = /obj/item/ammo_casing/ballistic/a762_51
	caliber = "7.62x51"
	max_ammo = 20

/obj/item/ammo_box/magazine/autogun/update_icon()
	..()
	if (ammo_count() == 0)
		icon_state = "a762magazine_0"
	else
		icon_state = "a762magazine_20"

/obj/item/ammo_box/a762_51
	name = "7.62x51 Box"
	desc = "A box full of 7.62 SGV (Also known as x51). Standard ammo for all Vrax rifles."
	icon = 'ModularBungalow/bungalow_Weapons/_icon/ammo_box.dmi'
	icon_state = "762x51riflebox"
	ammo_type = /obj/item/ammo_casing/ballistic/a762_51
	caliber = "7.62x51"
	max_ammo = 40

/obj/item/ammo_box/magazine/glock
	name = "pistol magazine (Glock 9mm)"
	icon_state = "9x19p-8"
	ammo_type = /obj/item/ammo_casing/c9mm
	caliber = CALIBER_9MM
	max_ammo = 17

/obj/item/ammo_box/magazine/glock/update_icon()
	..()
	if (ammo_count() == 0)
		icon_state = "9x19p-0"
	else
		icon_state = "9x19p-8"

/obj/item/ammo_box/magazine/sig
	name = "pistol magazine (.38 SIG)"
	icon_state = "9x19p-8"
	ammo_type = /obj/item/ammo_casing/c38
	caliber = CALIBER_38
	max_ammo = 12

/obj/item/ammo_box/magazine/sig/update_icon()
	..()
	if (ammo_count() == 0)
		icon_state = "9x19p-0"
	else
		icon_state = "9x19p-8"

/obj/item/ammo_box/magazine/m380
	name = "PPK magazine (.380 ACP)"
	icon_state = "9x19p-8"
	ammo_type = /obj/item/ammo_casing/c380
	caliber = CALIBER_380
	max_ammo = 7

/obj/item/ammo_box/magazine/m380/update_icon()
	..()
	if (ammo_count() == 0)
		icon_state = "9x19p-0"
	else
		icon_state = "9x19p-8"

/obj/item/ammo_box/magazine/surplusrifle/acp45
	name = "rifle magazine (.45 ACP)"
	ammo_type = /obj/item/ammo_casing/c45
	max_ammo = 10

/obj/item/ammo_box/magazine/surplusrifle/acp45/update_icon()
	..()
	if(ammo_count())
		icon_state = "75-8"
	else
		icon_state = "75-0"

//Lever action
/obj/item/ammo_box/speedloader
	name = "admin shell box "
	desc = "If you see this, call a coder!"
	icon_state = "slug"
	icon = 'ModularBungalow/bungalow_Weapons/_icon/ammo_box.dmi'
	ammo_type = /obj/item/ammo_casing/a357
	w_class = WEIGHT_CLASS_NORMAL
	max_ammo = 12
	multiple_sprites = AMMO_BOX_PER_BULLET

/obj/item/ammo_box/speedloader/c38
	name = ".38 speedloader"
	desc = "A speedloader full of .38 catridges ready to be used!"
	icon_state = "slc38"
	ammo_type = /obj/item/ammo_casing/c38

/obj/item/ammo_box/speedloader/c38/dumdum
	name = ".38 dum dum speedloader"
	ammo_type = /obj/item/ammo_casing/c38/dumdum

/obj/item/ammo_box/speedloader/a357
	name = ".357 speedloader"
	desc = "A speedloader full of .357 catridges ready to be used!"
	icon_state = "slc357"
	ammo_type = /obj/item/ammo_casing/a357

/obj/item/ammo_box/speedloader/a357/match
	name = ".357 match speedloader"
	desc = "A speedloader full of .357 match catridges ready to be used!"
	icon_state = "slc357"
	ammo_type = /obj/item/ammo_casing/a357/match

/obj/item/ammo_box/speedloader/a556
	name = ".556 speedloader"
	desc = "A speedloader full of .556 catridges ready to be used!"
	icon_state = "sla556"
	ammo_type = /obj/item/ammo_casing/a556
	max_ammo = 6

/obj/item/ammo_box/speedloader/a556/sk
	name = ".556 SK speedloader"
	desc = "A speedloader full of .556 Super-Kitsune catridges ready to be used!"
	icon_state = "sla556sk"
	ammo_type = /obj/item/ammo_casing/a556/sk
	max_ammo = 6

/obj/item/ammo_box/speedloader/a556/sk/big
	max_ammo = 12
	icon_state = "slc38"
/obj/item/ammo_box/speedloader/a556/pl
	name = ".556 PL speedloader"
	desc = "A speedloader full of .556 Police Load catridges ready to be used!"
	icon_state = "sla556pl"
	ammo_type = /obj/item/ammo_casing/a556/pl
	max_ammo = 6

/obj/item/ammo_box/speedloader/a556/pl/big
	max_ammo = 12
	icon_state = "sla357"

/obj/item/ammo_box/speedloader/a556/highp
	name = ".556 High P speedloader"
	desc = "A speedloader full of .556 Heavy catridges ready to be used!"
	icon_state = "sla556highp"
	ammo_type = /obj/item/ammo_casing/a556/highp
	max_ammo = 6

/obj/item/ammo_box/speedloader/a556/highp/big
	max_ammo = 12
	icon_state = "slt556highp-12"

/obj/item/ammo_box/speedloader/a4570
	name = ".45-70 Govt speedloader"
	desc = "A speedloader full of .45-70 Govt catridges ready to be used!"
	max_ammo = 7
	icon_state = "4570-7"
	ammo_type = /obj/item/ammo_casing/a4570

/obj/item/ammo_box/speedloader/a44
	name = ".44 magnum speedloader"
	desc = "A speedloader full of .44 magnum catridges ready to be used!"
	max_ammo = 7
	icon_state = "4570-7"
	ammo_type = /obj/item/ammo_casing/a44

//SHOTGUN AMMO
/obj/item/ammo_box/shotgun
	name = "admin shell box "
	desc = "If you see this, call a coder!"
	icon_state = "slug"
	icon = 'ModularBungalow/bungalow_Weapons/_icon/ammo_box.dmi'
	ammo_type = /obj/item/ammo_casing/shotgun
	w_class = WEIGHT_CLASS_NORMAL
	max_ammo = 12

/obj/item/ammo_box/shotgun/slug
	name = "slug shell box "
	desc = "A box full of 12 shotgun slugs."
	icon_state = "slug"
	ammo_type = /obj/item/ammo_casing/shotgun

/obj/item/ammo_box/shotgun/buckshot
	name = "buckshot shell box"
	desc = "A box full of 12 buckshot shells."
	icon_state = "buckshot"
	ammo_type = /obj/item/ammo_casing/shotgun/buckshot

/obj/item/ammo_box/shotgun/rubber
	name = "rubber shell box"
	desc = "A box full of 12 rubber shells."
	icon_state = "rubber"
	ammo_type = /obj/item/ammo_casing/shotgun/rubbershot

/obj/item/ammo_box/shotgun/beanbag
	name = "beanbag shell box"
	desc = "A box full of 12 beanbag shells."
	icon_state = "beanbag"
	ammo_type = /obj/item/ammo_casing/shotgun/beanbag

/obj/item/ammo_box/shotgun/frag
	name = "frag grenade shell box"
	desc = "A box full of 12 shotgun frag grenades."
	icon_state = "frag"
	ammo_type = /obj/item/ammo_casing/shotgun/frag12

/obj/item/ammo_box/shotgun/meteor
	name = "meteor shell box"
	desc = "A box full of 12 meteor shells."
	icon_state = "meteor"
	ammo_type = /obj/item/ammo_casing/shotgun/meteorslug

/obj/item/ammo_box/shotgun/lasershot
	name = "laser shell box"
	desc = "A box full of 12 laser shells."
	icon_state = "laser"
	ammo_type = /obj/item/ammo_casing/shotgun/laserslug

/obj/item/ammo_box/shotgun/pulse
	name = "pulse slug box"
	desc = "A box full of 12 pulse slugs."
	icon_state = "pulse"
	ammo_type = /obj/item/ammo_casing/shotgun/pulseslug

/obj/item/ammo_box/shotgun/breaching
	name = "breaching slug box"
	desc = "A box full of 12 breaching slugs."
	icon_state = "breacher_box"
	ammo_type = /obj/item/ammo_casing/shotgun/breacher

//Ammoboxe for the armylathe hehe - Akira
/obj/item/ammo_box/rifle
	name = ".556 ammo box"
	desc = "A box full of .556 Cartridges ready to be used, hold 180 casing"
	icon_state = "riflebox"
	icon = 'ModularBungalow/bungalow_Weapons/_icon/ammo_box.dmi'
	ammo_type = /obj/item/ammo_casing/a556
	w_class = WEIGHT_CLASS_NORMAL
	max_ammo = 180

/obj/item/ammo_box/rifle/a762
	name = ".762 NATO ammo box"
	desc = "A box full of .762 NATO Cartridges ready to be used, hold 60 casing"
	icon_state = "762riflebox"
	icon = 'ModularBungalow/bungalow_Weapons/_icon/ammo_box.dmi'
	ammo_type = /obj/item/ammo_casing/ballistic/a762_39
	w_class = WEIGHT_CLASS_NORMAL
	max_ammo = 60

/obj/item/ammo_box/rifle/a762
	name = ".762 NATO ammo box"
	desc = "A box full of .762 NATO Cartridges ready to be used, hold 180 casing"
	icon_state = "762rifleboxheavy"
	w_class = WEIGHT_CLASS_BULKY
	max_ammo = 180

//do not make this one printable, mapping purpose and lootdrop.
/obj/item/ammo_box/rifle/big
	name = "large .556 ammo box"
	desc = "A box full of .556 Cartridges ready to be used, hold 300 casing, this one is bulky, what do you need it for exactly?"
	icon_state = "superriflebox"
	icon = 'ModularBungalow/bungalow_Weapons/_icon/ammo_box.dmi'
	ammo_type = /obj/item/ammo_casing/a556
	w_class = WEIGHT_CLASS_BULKY
	max_ammo = 300

/obj/item/ammo_box/ab357
	name = ".357 ammo packet"
	desc = "A packet full of .357 Cartridges ready to be used, hold 12 casing"
	icon_state = "357packet"
	icon = 'ModularBungalow/bungalow_Weapons/_icon/ammo_box.dmi'
	ammo_type = /obj/item/ammo_casing/a357
	w_class = WEIGHT_CLASS_SMALL
	max_ammo = 12
/obj/item/ammo_box/ab357/big
	name = ".357 ammo box"
	desc = "A box full of .357 Cartridges ready to be used, hold 24 casing"
	icon_state = "357box"
	icon = 'ModularBungalow/bungalow_Weapons/_icon/ammo_box.dmi'
	ammo_type = /obj/item/ammo_casing/a357
	w_class = WEIGHT_CLASS_NORMAL
	max_ammo = 24
//THE 10MM VARIANTS SHOULD BE KEPLER EXCLUSIVE.
/obj/item/ammo_box/c10mm_ap
	name = "10mm ammo AP box"
	desc = "A box full of armor piercing 10mm Cartridges ready to be used, hold 24 casing"
	icon_state = "10apbox"
	icon = 'ModularBungalow/bungalow_Weapons/_icon/ammo_box.dmi'
	ammo_type = /obj/item/ammo_casing/c10mm/ap
	w_class = WEIGHT_CLASS_NORMAL
	max_ammo = 24

/obj/item/ammo_box/c10mm_hp
	name = "10mm ammo HP box"
	desc = "A box full of hollow point 10mm Cartridges ready to be used, hold 24 casing"
	icon_state = "10hpbox"
	icon = 'ModularBungalow/bungalow_Weapons/_icon/ammo_box.dmi'
	ammo_type = /obj/item/ammo_casing/c10mm/hp
	w_class = WEIGHT_CLASS_NORMAL
	max_ammo = 24

/obj/item/ammo_box/ab38
	name = ".38 ammo packet"
	desc = "A disposable packet full of .38 Cartridges ready to be used, hold 12 casing"
	icon_state = "c38pack"
	icon = 'ModularBungalow/bungalow_Weapons/_icon/ammo_box.dmi'
	ammo_type = /obj/item/ammo_casing/c38
	w_class = WEIGHT_CLASS_SMALL
	max_ammo = 12

/obj/item/ammo_box/ab38/big
	name = ".38 ammo box"
	desc = "A box full of .38 Cartridges ready to be used, hold 24 casing"
	icon_state = "c38box"
	icon = 'ModularBungalow/bungalow_Weapons/_icon/ammo_box.dmi'
	ammo_type = /obj/item/ammo_casing/c38
	w_class = WEIGHT_CLASS_NORMAL
	max_ammo = 24

/obj/item/ammo_box/ab38/big/very
	name = "heavy duty .38 ammo box"
	desc = "A box full of .38 Cartridges ready to be used, hold 48. casing what do you need this for?"
	icon_state = "c38heavybox"
	icon = 'ModularBungalow/bungalow_Weapons/_icon/ammo_box.dmi'
	ammo_type = /obj/item/ammo_casing/c38
	w_class = WEIGHT_CLASS_BULKY
	max_ammo = 48

/obj/item/ammo_box/ab50bmg
	name = ".50 BMG box"
	desc = "A box full of .50 BMG Cartridges ready to be used, hold 12 casing"
	icon_state = "50bmgsmall"
	icon = 'ModularBungalow/bungalow_Weapons/_icon/ammo_box.dmi'
	ammo_type = /obj/item/ammo_casing/p50
	w_class = WEIGHT_CLASS_SMALL
	max_ammo = 12
/obj/item/ammo_box/ab50bmg/big
	name = ".50 BMG heavy box"
	desc = "An immensely bulky box full of .50 Cartridges ready to be used, hold 48 casing. for hunting armoured bears in alaska"
	icon_state = "50bmgheavy"
	icon = 'ModularBungalow/bungalow_Weapons/_icon/ammo_box.dmi'
	w_class = WEIGHT_CLASS_BULKY
	max_ammo = 48
/obj/item/ammo_box/ab50bmg/penetrator
	name = ".50 penetrator ammo box"
	desc = "A box full of .50 BMG Penetrator Cartridges ready to be used, hold 12 casing, for clearing structures "
	icon_state = "50bmgatsmall"
	icon = 'ModularBungalow/bungalow_Weapons/_icon/ammo_box.dmi'
	ammo_type = /obj/item/ammo_casing/p50/penetrator
	w_class = WEIGHT_CLASS_NORMAL
	max_ammo = 12
/obj/item/ammo_box/ab50bmg/penetrator/big
	name = ".50 bulky penetrator ammo box"
	desc = "A box full of .50 BMG penetrator Cartridges ready to be used, hold 48 casing, You might want to reconsider your life choice if you face off against this."
	icon_state = "50bmgatbox"
	icon = 'ModularBungalow/bungalow_Weapons/_icon/ammo_box.dmi'
	w_class = WEIGHT_CLASS_BULKY
	max_ammo = 48
/obj/item/ammo_box/ab50bmg/soporific
	name = ".50 sleepimg ammo box"
	desc = "A box full of sleeper agent in .50 BMG, hold 12 casing"
	icon_state = "sleeper50bmg"
	icon = 'ModularBungalow/bungalow_Weapons/_icon/ammo_box.dmi'
	ammo_type = /obj/item/ammo_casing/p50/soporific
	w_class = WEIGHT_CLASS_SMALL
	max_ammo = 12

/obj/item/ammo_box/ab20mm
	name = ".20mm HE grenade box"
	desc = "A box full of small 20mm grenades"
	icon_state = "20mmbox"
	icon = 'ModularBungalow/bungalow_Weapons/_icon/ammo_box.dmi'
	ammo_type = /obj/item/ammo_casing/a20mm
	w_class = WEIGHT_CLASS_BULKY
	max_ammo = 20

/obj/item/ammo_box/ab40mm
	name = ".40mm HE grenade box"
	desc = "A box full of small 40mm grenades"
	icon_state = "40mmbox"
	icon = 'ModularBungalow/bungalow_Weapons/_icon/ammo_box.dmi'
	ammo_type = /obj/item/ammo_casing/a40mm
	w_class = WEIGHT_CLASS_BULKY
	max_ammo = 20

/obj/item/ammo_casing/a20mm
	name = "20mm HE shell"
	desc = "A cased high explosive grenade that can only be activated once fired out of a grenade launcher."
	caliber = CALIBER_20MM
	icon_state = "20mmHE"
	projectile_type = /obj/projectile/bullet/a20mm
	icon = 'ModularBungalow/bungalow_Weapons/_icon/ammo_box.dmi'

/obj/item/ammo_box/magazine/sr25
	name = "7.62 NATO Magazine"
	desc = "Magazine for the SR25"
	max_ammo = 15
	icon = 'ModularTegustation/Teguicons/magazines.dmi'
	icon_state = "ak_mag_item"
	ammo_type = /obj/item/ammo_casing/ballistic/a762_39
	caliber = "7.62x39mm"

