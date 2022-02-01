/*
/obj/item/skillchip/job/qm
	name = "Crate Lugger skillchip" // bork bork bork
	desc = "A skillchip meant to give the use the ability to haul crates."
	skill_name = "Close Quarters Crateing"
	skill_description = "A specialised form of self defence, developed by skilled sous-chef de cuisines. No man fights harder than a chef to defend his kitchen."
	skill_icon = "utensils"
	activate_message = "<span class='notice'>You can now toss crates around.</span>"
	deactivate_message = "<span class='notice'>You forget how to toss crates around.</span>"
	var/datum/martial_art/qm

/obj/item/skillchip/job/qm/Initialize()
	. = ..()
	style = new

/obj/item/skillchip/job/qm/on_activate(mob/living/carbon/user, silent = FALSE)
	. = ..()
	style.teach(user, make_temporary = TRUE)

/obj/item/skillchip/job/qm/on_deactivate(mob/living/carbon/user, silent = FALSE)
	style.remove(user)
	return ..()
*/
