/obj/structure/necropolis_gate/tomb_gate
	name = "tomb gate"
	desc = "A large gate intended to block whatever or whoever is on the other side."
	sight_blocker_distance = 2

/obj/structure/necropolis_gate/tomb_gate/attack_hand(mob/user)
	if(!open && !changing_openness)
		var/safety = alert(user, "You think this might be a bad idea...", "Open the door?", "Proceed", "Abort")
		if(safety == "Abort" || !in_range(src, user) || !src || open || changing_openness || user.incapacitated())
			return
		if(faction_check(list("tomb", "tomb_player"), user.faction, FALSE))
			user.visible_message("<span class='warning'>[user] attempts to open the [src], but seal of damnation is too strong for them to handle!</span>", "<span class='boldannounce'>You are incapable of opening the [src].</span>")
			return
		user.visible_message("<span class='warning'>[user] opens the [src]...</span>", "<span class='boldannounce'>You tentatively knock on [src]...</span>")
	return ..()

/obj/structure/necropolis_gate/tomb_gate/toggle_the_gate(mob/user)
	if(open)
		return
	. = ..()
	if(.)
		locked = TRUE
		desc += " It is stuck open."
		var/turf/T = get_turf(src)
		message_admins("[user ? ADMIN_LOOKUPFLW(user):"Unknown"] has opened the tomb gate.")
		log_game("[user ? key_name(user) : "Unknown"] opened the tomb gate.")

		var/sound/alarm_sound = sound('sound/creatures/legion_death_far.ogg')
		for(var/mob/M in GLOB.player_list) // EVERYONE gets alerted.
			to_chat(M, "<span class='userdanger'>The seal of damnation has been removed! The curse that inhabits those lands is now free!</span>")
			M.playsound_local(T, null, 40, FALSE, 0, FALSE, pressure_affected = FALSE, S = alarm_sound)
			flash_color(M, flash_color = "#FF0000", flash_time = 100)
		for(var/obj/effect/mob_spawn/human/tomb_spawn/spawner in GLOB.tomb_spawn_list)
			spawner.enabled = TRUE
			notify_ghosts("The [spawner.name] is enabled!", source = spawner, action=NOTIFY_ATTACK, flashwindow = TRUE)
