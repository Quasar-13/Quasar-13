/datum/surgery/healing/prosthetic
	steps = list(
		/datum/surgery_step/mechanic_open,
		/datum/surgery_step/open_hatch,
		/datum/surgery_step/mechanic_unwrench,
		/datum/surgery_step/prepare_electronics,
		/datum/surgery_step/heal,
		/datum/surgery_step/mechanic_wrench,
		/datum/surgery_step/mechanic_close)
	lying_required = FALSE
	self_operable = TRUE
	possible_locs = list(BODY_ZONE_CHEST, BODY_ZONE_HEAD)
	requires_bodypart_type = BODYPART_ROBOTIC

//brute
/datum/surgery/healing/brute/prosthetic
	name = "Prosthetic Chassis Repair"
	healing_step_type = /datum/surgery_step/heal/brute/prosthetic

//brute step
/datum/surgery_step/heal/brute/prosthetic
	name = "repair chassis"
	implements = list(TOOL_WELDER = 100)
	missinghpbonus = 15
	brutehealing = 5

//burn
/datum/surgery/healing/burn/prosthetic
	name = "Prosthetic Electronic Repair"
	healing_step_type = /datum/surgery_step/heal/burn/prosthetic

//burn step
/datum/surgery_step/heal/burn/prosthetic
	name = "repair electronics"
	implements = list(/obj/item/stack/cable_coil = 100)
	missinghpbonus = 15
	brutehealing = 5


//soft variants because fuck me
/datum/surgery/healing/prosthetic/soft
	possible_locs = list(BODY_ZONE_L_ARM, BODY_ZONE_R_ARM, BODY_ZONE_L_LEG, BODY_ZONE_R_LEG)
	steps = list(
		/datum/surgery_step/mechanic_open,
		/datum/surgery_step/open_hatch,
		/datum/surgery_step/prepare_electronics,
		/datum/surgery_step/heal,
		/datum/surgery_step/mechanic_close)

