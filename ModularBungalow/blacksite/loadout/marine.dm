/obj/item/choice_beacon/marine
	name = "NT marine beacon"
	desc = "A beacon the marines use to choose their weapons."

/obj/item/choice_beacon/marine/generate_display_names()
	var/static/list/marine_item_list
	if(!marine_item_list)
		marine_item_list = list()
		var/list/templist = typesof(/obj/item/storage/backpack/duffelbag/marine) //we have to convert type = name to name = type, how lovely!
		for(var/V in templist)
			var/atom/A = V
			marine_item_list[initial(A.name)] = A
	return marine_item_list

/obj/item/choice_beacon/marine/spawn_option(obj/choice,mob/living/M)
	new choice(get_turf(M))
	to_chat(M, "<span class='hear'>Get out there!</span>")



/obj/item/storage/backpack/duffelbag/marine
	name = "Marine Assault Kit"
	desc = "The classic ballistic NT weapon. Fires in bursts."
s
/obj/item/storage/backpack/duffelbag/marine/PopulateContents()
	new /obj/item/clothing/suit/armor/vest/ntmarine(src)
	new /obj/item/gun/ballistic/automatic/ar/semi(src)
	new /obj/item/ammo_box/magazine/m556(src)
	new /obj/item/ammo_box/magazine/m556(src)
	new /obj/item/ammo_box/magazine/m556(src)
	new /obj/item/ammo_box/magazine/m556(src)
	new /obj/item/ammo_box/magazine/m556(src)
	new /obj/item/gun/ballistic/automatic/pistol(src)



/obj/item/storage/backpack/duffelbag/marine/medic
	name = "Marine Medic Kit"
	desc = "Contains two medical kits and a PDW."

/obj/item/storage/backpack/duffelbag/marine/medic/PopulateContents()
	new /obj/item/clothing/suit/armor/vest/ntmarine/medic(src)
	new /obj/item/clothing/head/beret/med(src)
	new /obj/item/gun/ballistic/automatic/wt550(src)
	new /obj/item/ammo_box/magazine/wt550m9(src)
	new /obj/item/ammo_box/magazine/wt550m9(src)
	new /obj/item/ammo_box/magazine/wt550m9(src)
	new /obj/item/storage/bag/chemistry/medic(src)
	new /obj/item/gun/syringe(src)
	new /obj/item/storage/firstaid/emergency(src)
	new /obj/item/storage/firstaid/brute(src)
	new /obj/item/extinguisher/mini(src)
	new /obj/item/gun/ballistic/automatic/pistol(src)


/obj/item/storage/backpack/duffelbag/marine/engi
	name = "Marine Engineering Kit"
	desc = "Contains a toolbelt, a bolt action rifle, and a turret."

/obj/item/storage/backpack/duffelbag/marine/engi/PopulateContents()
	new /obj/item/clothing/suit/armor/vest/ntmarine/engineer(src)
	new /obj/item/clothing/head/beret/eng/hazard(src)
	new /obj/item/extinguisher/mini(src)
	new /obj/item/gun/ballistic/rifle/boltaction/brand_new(src)
	new /obj/item/ammo_box/a762(src)
	new /obj/item/ammo_box/a762(src)
	new /obj/item/ammo_box/a762(src)
	new /obj/item/ammo_box/a762(src)
	new /obj/item/choice_beacon/marines/turret(src)
	new /obj/item/gun/ballistic/automatic/pistol(src)
	new /obj/item/storage/belt/utility/full/engi(src)


/obj/item/storage/backpack/duffelbag/marine/shotgun
	name = "Marine Trenchman Kit"
	desc = "This shotgun is for pointmen who are going in first with a shotgun full of buck and a shield."

/obj/item/storage/backpack/duffelbag/marine/shotgun/PopulateContents()
	new /obj/item/clothing/suit/armor/vest/ntmarine/security(src)
	new /obj/item/clothing/mask/gas/atmos(src)
	new /obj/item/gun/ballistic/shotgun/lethal(src)
	new /obj/item/shield/energy(src)
	new /obj/item/melee/transforming/energy/sword/saber(src)
	new /obj/item/clothing/under/plasmaman/robotics/marine(src)
	new /obj/item/storage/box/shotgun/lasershot(src)
	new /obj/item/storage/box/shotgun/lasershot(src)
	new /obj/item/storage/box/shotgun/lasershot(src)
	new /obj/item/storage/box/shotgun/lasershot(src)
	new /obj/item/storage/box/shotgun/lasershot(src)
	new /obj/item/storage/box/shotgun/meteor(src)
	new /obj/item/storage/box/shotgun/meteor(src)
	new /obj/item/storage/box/shotgun/frag(src)
	new /obj/item/storage/belt/bandolier/marine(src)
	new /obj/item/gun/ballistic/shotgun/doublebarrel/side(src)


/obj/item/storage/backpack/duffelbag/marine/smg
	name = "Marine SMG Kit"
	desc = "This semi-auto gun has a fast fire rate for clearing rooms."

/obj/item/storage/backpack/duffelbag/marine/smg/PopulateContents()
	new /obj/item/clothing/suit/armor/vest/ntmarine(src)
	new /obj/item/gun/ballistic/automatic/proto/unrestricted(src)
	new /obj/item/shield/energy(src)
	new /obj/item/ammo_box/magazine/smgm9mm(src)
	new /obj/item/ammo_box/magazine/smgm9mm(src)
	new /obj/item/ammo_box/magazine/smgm9mm(src)
	new /obj/item/ammo_box/magazine/smgm9mm(src)
	new /obj/item/ammo_box/magazine/smgm9mm(src)
	new /obj/item/gun/ballistic/automatic/pistol(src)


/obj/item/storage/backpack/duffelbag/marine/mosin
	name = "Marine Ranger Kit"
	desc = "This kit is perfect for scouting out areas for enemies.."

/obj/item/storage/backpack/duffelbag/marine/mosin/PopulateContents()
	new /obj/item/clothing/suit/armor/vest/ntmarine/sniper(src)
	new /obj/item/clothing/neck/cloak/ranger(src)
	new /obj/item/binoculars(src)
	new /obj/item/gun/ballistic/automatic/sniper_rifle(src)
	new /obj/item/ammo_box/magazine/sniper_rounds(src)
	new /obj/item/ammo_box/magazine/sniper_rounds(src)
	new /obj/item/ammo_box/magazine/sniper_rounds(src)
	new /obj/item/ammo_box/magazine/sniper_rounds(src)


/obj/item/storage/backpack/duffelbag/marine/samurai
	name = "Marine Blademaster Kit"
	desc = "This kit is great for frontlining, with a bullet deflecting blade."

/obj/item/storage/backpack/duffelbag/marine/samurai/PopulateContents()
	new /obj/item/clothing/suit/armor/vest/ntmarine/samurai(src)
	new /obj/item/clothing/under/plasmaman/robotics/marine(src)
	new /obj/item/clothing/glasses/eyepatch(src)
	new /obj/item/clothing/neck/cloak/samurai (src)
	new /obj/item/vibro_weapon(src)
	new /obj/item/gun/ballistic/automatic/pistol(src)


