//Breacher Shotgun Shells
//What this does is that they're basically used to fuck up doors and windows to create entry points in heavily locked down places,very effective and fun stuff to use
/obj/item/ammo_casing/shotgun/breacher
	name = "breaching slug"
	desc = "A 12 gauge anti-material slug. Great for breaching airlocks and windows with minimal shots. Only fits in tactical breaching shotguns."
	icon = 'ModularBungalow/bungalowWeapons/_icon/shotgunshell.dmi'
	icon_state = "breacher"
	projectile_type = /obj/projectile/bullet/shotgun_breaching
	custom_materials = list(/datum/material/iron=4000)
	caliber = "breacher"


/obj/projectile/bullet/shotgun_breaching
	name = "12g breaching round"
	desc = "A breaching round designed to destroy airlocks and windows with only a few shots, but is ineffective against other targets."
	hitsound = 'sound/weapons/sonic_jackhammer.ogg'
	damage = 10 //does shit damage to everything except doors and windows

/obj/projectile/bullet/shotgun_breaching/on_hit(atom/target)
	if(istype(target, /obj/structure/window) || istype(target, /obj/machinery/door) || istype(target, /obj/structure/door_assembly))
		damage = 500 //one shot to break a window or 3 shots to breach an airlock door
	..()


/obj/item/storage/box/breachingshells
	name = "box of breaching shotgun shells"
	desc = "A box full of breaching shells. designed for tactical breaching shotguns"
	icon = 'ModularBungalow/bungalowWeapons/_icon/shotgunshell.dmi'
	icon_state = "breacher_box"
	illustration = null

/obj/item/storage/box/breachingshells/PopulateContents()
	for(var/i in 1 to 7)
		new /obj/item/ammo_casing/shotgun/breacher(src)


