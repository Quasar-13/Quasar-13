<<<<<<< HEAD
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
	if(!isliving(target))
		explosion(target, 1, 1, 1, 6, flame_range = 6)
	else
		explosion(target, 1, 1, 1, 6, flame_range = 5)
	return BULLET_ACT_HIT

=======
>>>>>>> master
/obj/item/ammo_casing/caseless/rocket/hps
	name = "PM-9HE Anti-personnel"
	desc = "An 84mm High Explosive rocket. This one is not as devastating to the invironment, but to personnel."
	projectile_type = /obj/projectile/bullet/a84mm_hp

<<<<<<< HEAD
=======
/// PM9 Anti-personnel rocket
>>>>>>> master
/obj/projectile/bullet/a84mm_hp
	name ="anti-personnel missile"
	desc = "Boom, but kills people."
	icon_state = "missile"
	damage = 100
	ricochets_max = 0 //it's a MISSILE
	embedding = null
	shrapnel_type = null

/obj/projectile/bullet/a84mm_hp/on_hit(atom/target, blocked=0)
	..()
	if(!isliving(target)) //if the target isn't alive, so is a wall or something
		explosion(target, 0, 0, 0, 6, flame_range = 3)
	else
		explosion(target, 0, 0, 0, 6, flame_range = 3)
<<<<<<< HEAD

/obj/item/gun/ballistic/rocketlauncher/unrestricted/nobackblast
	name = "SGRL-49 Rocoiless Rifle"
	desc = "An 84mm High Explosive rocket launcher, this one does not create backblast by utilising all of its propellent forward."
	pin = /obj/item/firing_pin
=======
	return BULLET_ACT_HIT

/obj/item/gun/ballistic/rocketlauncher/unrestricted/nobackblast
	name = "flameless PML-11"
	desc = "A reusable rocket propelled grenade launcher. This one has been fitted with a special coolant loop to avoid embarassing teamkill 'accidents' from backblast."
>>>>>>> master
	backblast = FALSE
