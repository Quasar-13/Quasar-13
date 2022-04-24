// 40mm (Grenade Launcher

/obj/projectile/bullet/a40mm
	name ="40mm grenade"
	desc = "USE A WEEL GUN"
	icon_state= "bolter"
	damage = 60
	embedding = null
	shrapnel_type = null

/obj/projectile/bullet/a40mm/on_hit(atom/target, blocked = FALSE)
	..()
	explosion(target, -1, 0, 2, 1, 0, flame_range = 3)
	return BULLET_ACT_HIT

/obj/projectile/bullet/a20
	name ="20mm grenade"
	desc = "USE A WEEL GUN"
	icon_state= "bolter"
	damage = 35
	embedding = null
	shrapnel_type = null

/obj/projectile/bullet/a20mm/on_hit(atom/target, blocked = FALSE)
	..()
	explosion(target, -1, 0, 2, 1, 0, flame_range = 2)
	return BULLET_ACT_HIT
