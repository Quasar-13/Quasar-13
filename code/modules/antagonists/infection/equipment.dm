/obj/item/healing_injector
	name = "portable medical injector"
	desc = "A handheld autoinjector containing a strange blue fluid."
	icon = 'icons/mob/infection/infection.dmi'
	icon_state = "injector"
	var/static/list/user_cooldown = list()
	var/personal_cooldown_time = 1 MINUTES
	var/cooldown_time = 3 MINUTES
	var/on_cooldown = FALSE

/obj/item/healing_injector/Initialize()
	. = ..()
	update_overlays()

/obj/item/healing_injector/attack(mob/living/M, mob/user)
	if(!cd_check(user))
		update_overlays(user)
		return
	user.visible_message("<span class='warning'>[user] injects [M] with [src]!</span>", "<span class='notice'>You inject [M] with [src], and it seems to draw something from the air around you!</span>")
	M.reagents.add_reagent(/datum/reagent/medicine/syndicate_nanites, 5)
	user_cooldown[user] = TRUE
	on_cooldown = TRUE
	name = "used [name]"
	desc = "An expended autoinjector, the fluid inside is rapidly regenerating..."
	addtimer(CALLBACK(src, .proc/cooldown), cooldown_time)
	addtimer(CALLBACK(src, .proc/personal_cooldown, user), personal_cooldown_time)
	update_overlays(user)

/obj/item/healing_injector/proc/cooldown()
	on_cooldown = FALSE
	name = initial(name)
	desc = initial(desc)
	update_overlays()

/obj/item/healing_injector/proc/personal_cooldown(mob/user)
	user_cooldown -= user
	update_overlays()

/obj/item/healing_injector/equipped(mob/user, slot)
	. = ..()
	update_overlays(user)

/obj/item/healing_injector/dropped(mob/user)
	. = ..()
	update_overlays() //makes it refresh based on global cooldown vs personal cooldown if it's dropped

/obj/item/healing_injector/update_overlays(mob/user)
	cut_overlays()
	if(cd_check(user, TRUE))
		add_overlay("i_active")

/obj/item/healing_injector/proc/cd_check(mob/user, silent)
	. = TRUE
	if(user && listgetindex(user_cooldown, user))
		if(!silent)
			to_chat(user, "<span class='warning'>A warning light flashes on [src], it seems whatever it drew from you to recharge hasn't replenished.</span>")
		return FALSE
	if(on_cooldown)
		if(!silent && user)
			to_chat(user, "<span class='warning'>[src] hasn't finished recharging yet!</spam>")
		return FALSE

/obj/item/targettingcomputer
	name = "\improper NT laser rifle 'SmartFire' target acquisition and fire assist"
	desc = "An advanced tactical computer attachable to a laser rifle, the computer will automatically account for any friendlies between the user and target."
	icon = 'icons/mob/infection/infection.dmi'
	icon_state = "tcomp"

/obj/item/targettingcomputer/pre_attack(atom/target, mob/living/user)
	if(istype(target, /obj/item/gun/energy) && !(target.type == /obj/item/gun/energy/laser)) //exact type match to prevent projectile shenanigans
		to_chat(user, "<span class='warning'>[target] is not compatible with [src]!</span>")
		return
	var/obj/item/gun/energy/laser/ourgun = target
	if(!istype(ourgun))
		return
	var/obj/item/ammo_casing/energy/lasergun/L = ourgun.ammo_type[1]
	if(L.projectile_type != initial(L.projectile_type))
		to_chat(user, "<span class='warning'>[target] has already been modified too heavily for [src] to be compatible!</span>")
		return
	to_chat(user, "<span class='notice'>You install [src] into [target].</span>")
	ourgun.name = "modified [L.name]"
	L.projectile_type = /obj/projectile/beam/laser/passfriendlies
	QDEL_NULL(L.BB) //goodbye, old bullet
	L.newshot() //hello, new bullet
	qdel(src)

/obj/item/crystal_shards
	name = "infected crystal shard"
	desc = "A large shard left over from an infected crystal, you should take these to a destructive analyzer."
	icon = 'icons/mob/infection/infection.dmi'
	icon_state = "crystal"
	layer = ABOVE_MOB_LAYER

/obj/item/crystal_shards/Initialize()
	. = ..()
	icon_state += "-[rand(0,15)]"
