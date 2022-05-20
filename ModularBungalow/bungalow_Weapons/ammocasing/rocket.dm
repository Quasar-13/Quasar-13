/obj/item/ammo_casing/caseless/rocket/quad
	name = "PM-9HE Anti-personnel"
	desc = "An 84mm High Explosive rocket. This one is not as devastating to the invironment, but to personnel."
	projectile_type = /obj/projectile/bullet/a84mm_quad

/// PM9 Anti-personnel rocket
/obj/projectile/bullet/a84mm_quad
	name ="anti-personnel missile"
	desc = "Boom, but kills people."
	icon_state = "missile"
	damage = 200
	ricochets_max = 0 //it's a MISSILE
	embedding = null
	shrapnel_type = null

/obj/projectile/bullet/a84mm_quad/on_hit(atom/target, blocked=0)
	..()
	if(!isliving(target)) //if the target isn't alive, so is a wall or something
		explosion(target, 1, 1, 1, 6, flame_range = 6)
	else
		explosion(target, 1, 1, 1, 6, flame_range = 5)
	return BULLET_ACT_HIT

/obj/item/gun/ballistic/rocketlauncher/unrestricted/flash
	name = "SOCOM Type 79"
	desc = "A reusable rocket propelled grenade launcher. only the most heartless will use this."
	icon = 'ModularBungalow/bungalow_Weapons/_icon/ballistics.dmi'
	icon_state = "m90"
