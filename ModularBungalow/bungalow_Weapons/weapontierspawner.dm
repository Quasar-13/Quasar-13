//WORK HERE
/obj/effect/spawner/lootdrop/tierweapon
	name = "weapon spawner"
	desc = "If you see this in game, akira fucked up"
	loot = list(/obj/effect/spawner/lootdrop/tierweapon/ranged/tier1 = 66,
				/obj/effect/spawner/lootdrop/tierweapon/ranged/tier2 = 25,
				/obj/effect/spawner/lootdrop/tierweapon/ranged/tier3 = 12,
				/obj/effect/spawner/lootdrop/tierweapon/ranged/tier4 = 2)

/obj/effect/spawner/lootdrop/tierweapon/ammoboxes
	loot = list(/obj/item/cigbutt = 65,
				/obj/item/cigbutt/roach = 20,
				/obj/item/cigbutt/cigarbutt = 15)

/obj/effect/spawner/lootdrop/tierweapon/ammoboxes/tier1
	loot = list(/obj/item/ammo_box/magazine/m9mm_aps = 15,
				/obj/item/ammo_box/magazine/m9mm_aps/ap = 5,
				/obj/item/ammo_box/magazine/m10mm/rifle = 9,
				/obj/item/ammo_box/a762 = 15,
				/obj/item/ammo_box/magazine/m45 = 15,
				/obj/item/ammo_box/magazine/m10mm = 15,
				/obj/item/ammo_box/magazine/m9mm = 15,
				/obj/item/ammo_box/magazine/m9mm/ap = 5,
				/obj/item/ammo_box/magazine/m9mm/hp = 5,
				/obj/item/ammo_box/magazine/m50 = 1)

/obj/effect/spawner/lootdrop/tierweapon/ammoboxes/tier2
	loot = list(/obj/item/ammo_box/magazine/m9mm_aps = 65,
				/obj/item/cigbutt/roach = 20,
				/obj/item/cigbutt/cigarbutt = 15)

/obj/effect/spawner/lootdrop/tierweapon/ammoboxes/tier3
	loot = list(/obj/item/cigbutt = 65,
				/obj/item/cigbutt/roach = 20,
				/obj/item/cigbutt/cigarbutt = 15)

/obj/effect/spawner/lootdrop/tierweapon/ammoboxes/tier4
	loot = list(/obj/item/cigbutt = 65,
				/obj/item/cigbutt/roach = 20,
				/obj/item/cigbutt/cigarbutt = 15)

/obj/effect/spawner/lootdrop/tierweapon/ammoboxes/tier5
	loot = list(/obj/item/cigbutt = 65,
				/obj/item/cigbutt/roach = 20,
				/obj/item/cigbutt/cigarbutt = 15)

//this one will also spawn some stuff but specific.
/obj/effect/spawner/lootdrop/tierweapon/ranged
	loot = list(/obj/effect/spawner/lootdrop/tierweapon/ranged/tier1 = 66,
				/obj/effect/spawner/lootdrop/tierweapon/ranged/tier2 = 25,
				/obj/effect/spawner/lootdrop/tierweapon/ranged/tier3 = 12,
				/obj/effect/spawner/lootdrop/tierweapon/ranged/tier4 = 2)

/obj/effect/spawner/lootdrop/tierweapon/ranged/tier1
	loot = list(/obj/item/gun/ballistic/automatic/pistol/aps, /obj/item/ammo_box/magazine/m9mm_aps, /obj/item/ammo_box/magazine/m9mm_aps = 10,
				/obj/item/gun/ballistic/automatic/pistol/m1911, /obj/item/ammo_box/magazine/m45, /obj/item/ammo_box/magazine/m45 = 29,
				/obj/item/gun/ballistic/automatic/pistol/mk23, /obj/item/ammo_box/magazine/m45, /obj/item/ammo_box/magazine/m45 = 10,
				/obj/item/gun/ballistic/automatic/pistol/deagle, /obj/item/ammo_box/magazine/m50, /obj/item/ammo_box/magazine/m50 = 1,
				/obj/item/gun/ballistic/automatic/pistol, /obj/item/ammo_box/magazine/m9mm, /obj/item/ammo_box/magazine/m9mm = 5,
				/obj/item/gun/ballistic/automatic/pistol/glock, /obj/item/ammo_box/magazine/glock, /obj/item/ammo_box/magazine/glock = 5,
				/obj/item/gun/ballistic/automatic/pistol/PL14, /obj/item/ammo_box/magazine/m9mm, /obj/item/ammo_box/magazine/m9mm = 5,
				/obj/item/gun/ballistic/rifle/boltaction, /obj/item/ammo_box/a762, /obj/item/ammo_box/a762 = 10,
				/obj/item/gun/ballistic/automatic/surplus, /obj/item/ammo_box/magazine/m10mm/rifle, /obj/item/ammo_box/magazine/m10mm/rifle = 10,
				/obj/item/gun/ballistic/shotgun/lever_action/med, /obj/item/ammo_box/speedloader/c38, /obj/item/ammo_box/c38 = 15,
				/obj/item/gun/ballistic/revolver/detective, /obj/item/ammo_box/c38, /obj/item/ammo_box/c38 = 15,
				/obj/item/gun/ballistic/automatic/pistol/sig, /obj/item/ammo_box/magazine/sig, /obj/item/ammo_box/magazine/sig = 15)

/obj/effect/spawner/lootdrop/tierweapon/ranged/tier2
	loot = list(/obj/item/gun/ballistic/automatic/tommygun,  /obj/item/ammo_box/magazine/tommygunm45,  /obj/item/ammo_box/magazine/tommygunm45 = 15,
				/obj/item/gun/ballistic/automatic/c20r/unrestricted, /obj/item/ammo_box/magazine/smgm45, /obj/item/ammo_box/magazine/smgm45 = 20,
				/obj/item/gun/ballistic/automatic/proto/unrestricted, /obj/item/ammo_box/magazine/smgm9mm, /obj/item/ammo_box/magazine/smgm9mm = 10,
				/obj/item/gun/ballistic/shotgun/automatic/combat, /obj/item/ammo_box/shotgun/buckshot, /obj/item/ammo_box/shotgun/slug = 1,
				/obj/item/gun/ballistic/shotgun/lever_action, /obj/item/ammo_box/speedloader/a357, /obj/item/ammo_box/speedloader/a357 = 10,
				/obj/item/gun/ballistic/shotgun/bulldog/unrestricted, /obj/item/ammo_box/magazine/m12g/slug, /obj/item/ammo_box/magazine/m12g/slug = 1,
				/obj/item/gun/ballistic/shotgun/doublebarrel/stopgap, /obj/item/ammo_box/shotgun/buckshot = 15,
				/obj/item/gun/ballistic/automatic/uzi, /obj/item/ammo_box/magazine/uzim9mm, /obj/item/ammo_box/magazine/uzim9mm = 15)

/obj/effect/spawner/lootdrop/tierweapon/ranged/tier3
	loot = list(/obj/item/gun/ballistic/automatic/m90/xm29, /obj/item/ammo_box/magazine/m556, /obj/item/ammo_box/magazine/m556 = 10,
				/obj/item/gun/ballistic/revolver/sequoia, /obj/item/ammo_box/a357/match, /obj/item/ammo_box/a357/match = 10,
				/obj/item/gun/ballistic/revolver/sw500, /obj/item/ammo_box/a357/match, /obj/item/ammo_box/a357/match = 10,
				/obj/item/gun/ballistic/revolver/mateba, /obj/item/ammo_box/a357/match, /obj/item/ammo_box/a357/match = 10,
				/obj/item/gun/ballistic/shotgun/lever_action/scope, /obj/item/ammo_box/speedloader/a357/match, /obj/item/ammo_box/speedloader/a357/match = 25,
				/obj/item/gun/grenadelauncher = 15,
				/obj/item/gun/ballistic/automatic/sniper_rifle/solgov/ranger = 10,
				/obj/item/gun/ballistic/automatic/ar/hk21, /obj/item/ammo_box/magazine/m556, /obj/item/ammo_box/magazine/m556 = 10,
				/obj/item/gun/ballistic/shotgun/automatic/combat, /obj/item/ammo_box/shotgun/slug, /obj/item/ammo_box/shotgun/slug = 10)

/obj/effect/spawner/lootdrop/tierweapon/ranged/tier4
	loot = list(/obj/item/gun/ballistic/automatic/m90/xm29,  /obj/item/ammo_box/magazine/m556,  /obj/item/ammo_box/magazine/m556 = 25,
				/obj/item/gun/ballistic/automatic/ak47,  /obj/item/ammo_box/magazine/ak47/expanded,  /obj/item/ammo_box/magazine/ak47/expanded = 10,
				/obj/item/gun/ballistic/automatic/gyropistol/xm25,  /obj/item/ammo_box/magazine/m75,  /obj/item/ammo_box/magazine/m75 = 10,
				/obj/item/gun/ballistic/rocketlauncher/unrestricted, /obj/item/ammo_casing/caseless/rocket/hedp, /obj/item/ammo_casing/caseless/rocket/hedp = 10,
				/obj/item/gun/ballistic/rocketlauncher/unrestricted/nobackblast, /obj/item/ammo_casing/caseless/rocket/hedp, /obj/item/ammo_casing/caseless/rocket/hedp = 1,
				/obj/item/gun/ballistic/automatic/mini_uzi/kepler, /obj/item/ammo_box/magazine/uzim9mm, /obj/item/ammo_box/magazine/uzim9mm = 25,
				/obj/item/gun/ballistic/automatic/l6_saw/unrestricted, /obj/item/ammo_box/magazine/mm712x82/ap, /obj/item/ammo_box/magazine/mm712x82/hollow = 10,
				/obj/item/gun/ballistic/automatic/m90/auto/unrestricted, /obj/item/ammo_box/magazine/m556, /obj/item/ammo_box/magazine/m556 = 10,
				/obj/item/gun/energy/laser/hellgun, /obj/item/reagent_containers/hypospray/medipen/gatorade = 20,
				/obj/item/gun/ballistic/automatic/sniper_rifle/solgov/ranger = 10,
				/obj/item/gun/ballistic/shotgun/bulldog/automatic/unrestricted, /obj/item/ammo_box/magazine/m12g/meteor, /obj/item/ammo_box/magazine/m12g/slug = 20,
				/obj/item/gun/energy/lasercannon, /obj/item/reagent_containers/hypospray/medipen/gatorade = 10)
//WARNING FOR ANYONE READING THIS, BELOW ARE THINGS THAT SHOULD NOT BE PLACED IN MAP
/obj/effect/spawner/lootdrop/tierweapon/ranged/tier5
	loot = list(/obj/item/gun/medbeam, /obj/item/reagent_containers/hypospray/combat/gatorade = 65,
				/obj/item/energy_katana, /obj/item/autosurgeon/organ/syndicate/xray_eyes = 20,
				/obj/item/book/granter/spell/summonitem = 15)

/obj/effect/spawner/lootdrop/tierweapon/ranged/rare_spawn
	loot = list(/obj/item/cigbutt = 65,
				/obj/item/cigbutt/roach = 20,
				/obj/item/cigbutt/cigarbutt = 15)

/obj/effect/spawner/lootdrop/tierweapon/ranged/rare/guaranteen
	loot = list(/obj/item/cigbutt = 65,
				/obj/item/cigbutt/roach = 20,
				/obj/item/cigbutt/cigarbutt = 15)
