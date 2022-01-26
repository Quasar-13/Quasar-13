/**
 * # Turret ERT beacon
 *
 * This is a subtype of the ERT beacon, to avoid needless copypaste.
 */
/obj/item/choice_beacon/bungalow/turret
	name = "turret beacon"
	desc = "A beacon to be used to call down a turret for engineering use."
	typesof_options = /obj/machinery/manned_turret/scatter
	selection_message = "<span class='hear'>Stand by for titanfall.</span>"


/**
 * # HEAVY Turret ERT beacon
 *
 * Kirie Note - I hate using these beacons, especially without shit. but a capsule is arguably more shit
 */
/obj/item/choice_beacon/bungalow/turret/heavy
	name = "heavy turret beacon"
	desc = "A beacon to be used to call down a turret for heavy use."
	typesof_options = /obj/machinery/manned_turret/laser
