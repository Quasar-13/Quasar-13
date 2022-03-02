/datum/martial_art/samurai
	name = "Kenjitsu"
	id = MARTIALART_SAMURAI
	help_verb = /mob/living/proc/samurai_help
	display_combos = FALSE

/datum/martial_art/samurai/disarm_act(mob/living/A, mob/living/D)
	if(!can_use(A))
		return FALSE
	if(!D.stat)
		to_chat(A, "<span class='spider'>You begin to wind up an attack...</span>")
		if(!do_after(A, 4, target = D))
			to_chat(A, "<span class='spider'><b>Your attack was interrupted!</b></span>")
			return TRUE //martial art code was a mistake
		D.visible_message("<span class='danger'>[A] slams their palm into [D]!</span>", \
						"<span class='userdanger'>[A] slams their palm into you!!</span>", COMBAT_MESSAGE_RANGE, A)
		to_chat(A, "<span class='danger'>You throw all your weight into your palm striking [D]!</span>")
		playsound(get_turf(A), 'sound/weapons/cqchit1.ogg', 50, TRUE, -1)
		var/atom/throw_target = get_edge_target_turf(D, A.dir)
		D.throw_at(throw_target, 2, 1, A)
		log_combat(A, D, "attacked (CQC)")
	return TRUE

/datum/martial_art/samurai/grab_act(mob/living/A, mob/living/D)
	if(!can_use(A))
		return FALSE
	if(!D.stat)
		if(!do_after(A, 3, target = D))
			to_chat(A, "<span class='spider'><b>Your attack was interrupted!</b></span>")
			return TRUE //martial art code was a mistake
		D.visible_message("<span class='danger'>[A] slams [D] into the ground!</span>", \
						"<span class='userdanger'>You're slammed into the ground by [A]!</span>", COMBAT_MESSAGE_RANGE, A)
		to_chat(A, "<span class='danger'>You slam [D] into the ground!</span>")
		playsound(get_turf(A), 'sound/weapons/cqchit1.ogg', 50, TRUE, -1)
		D.Knockdown(20)
		log_combat(A, D, "slammed (CQC)")
	return TRUE


/mob/living/proc/samurai_help()
	set name = "Remember The Basics"
	set desc = "You try to remember some of the basics of Kenjitsu."
	set category = "Kenjitsu"
	to_chat(usr, "<b><i>You try to remember some of the basics of Kenjitsu.</i></b>")

	to_chat(usr, "<span class='notice'>Palm Strike</span>: Disarm. Slam your palm into your opponent after a windup.")
	to_chat(usr, "<span class='notice'>Slam</span>: Grab. Pick up your enemy and slam them down.")

