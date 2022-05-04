//SOLGOV EQUIPMENT VOUCHER!
/obj/machinery/kepler_equipment_voucher
	name = "generic equipment vendor"
	desc = "An equipment vendor for miners, points collected at an ore redemption machine can be spent here."
	icon = 'ModularBungalow/project_kepler/kepler_machinery.dmi'
	icon_state = "keplervending"
	density = TRUE
	circuit = /obj/item/circuitboard/machine/mining_equipment_vendor

/obj/machinery/kepler_equipment_voucher/update_icon_state()
	if(powered())
		icon_state = initial(icon_state)
	else
		icon_state = "[initial(icon_state)]-off"


/obj/machinery/kepler_equipment_voucher/attackby(obj/item/I, mob/user, params)
	if(istype(I, /obj/item/solgov_soldier_voucher))
		RedeemVoucher(I, user)
		return
	if(default_deconstruction_screwdriver(user, "keplervending-open", "keplervending", I))
		return
	if(default_deconstruction_crowbar(I))
		return
	return ..()
//This took me 2 hours pls help
/obj/machinery/kepler_equipment_vendor/proc/RedeemVoucher(obj/item/kepler_voucher/voucher, mob/redeemer)
	var/items = list("Survival Capsule and Explorer's Webbing", "Resonator Kit", "Minebot Kit", "Extraction and Rescue Kit", "Crusher Kit", "Mining Conscription Kit", "Space Exploration Kit")

	var/selection = input(redeemer, "Pick your equipment", "Equipment Voucher Redemption") as null|anything in sortList(items)
	if(!selection || !Adjacent(redeemer) || QDELETED(voucher) || voucher.loc != redeemer)
		return
	var/drop_location = drop_location()
	switch(selection)
		if("Survival Capsule and Explorer's Webbing")
			new /obj/item/storage/belt/mining/vendor(drop_location)
		if("Resonator Kit")
			new /obj/item/extinguisher/mini(drop_location)
			new /obj/item/resonator(drop_location)
		if("Minebot Kit")
			new /mob/living/simple_animal/hostile/mining_drone(drop_location)
			new /obj/item/weldingtool/hugetank(drop_location)
			new /obj/item/clothing/head/welding(drop_location)
			new /obj/item/borg/upgrade/modkit/minebot_passthrough(drop_location)
		if("Extraction and Rescue Kit")
			new /obj/item/extraction_pack(drop_location)
			new /obj/item/fulton_core(drop_location)
			new /obj/item/stack/marker_beacon/thirty(drop_location)
		if("Crusher Kit")
			new /obj/item/extinguisher/mini(drop_location)
			new /obj/item/kinetic_crusher(drop_location)
		if("Mining Conscription Kit")
			new /obj/item/storage/backpack/duffelbag/mining_conscript(drop_location)
		if("Space Exploration Kit") // Tegustation Space Exploration
			new /obj/item/storage/backpack/duffelbag/space_exploration(drop_location)

	SSblackbox.record_feedback("tally", "mining_voucher_redeemed", 1, selection)
	qdel(voucher)

/obj/machinery/kepler_equipment_vendor/proc/RedeemVoucher(obj/item/kepler_sec_voucher/voucher, mob/redeemer)
	var/items = list("Survival Capsule and Explorer's Webbing", "Resonator Kit", "Minebot Kit", "Extraction and Rescue Kit", "Crusher Kit", "Mining Conscription Kit", "Space Exploration Kit")

	var/selection = input(redeemer, "Pick your equipment", "Equipment Voucher Redemption") as null|anything in sortList(items)
	if(!selection || !Adjacent(redeemer) || QDELETED(voucher) || voucher.loc != redeemer)
		return
	var/drop_location = drop_location()
	switch(selection)
		if("Survival Capsule and Explorer's Webbing")
			new /obj/item/storage/belt/mining/vendor(drop_location)
		if("Resonator Kit")
			new /obj/item/extinguisher/mini(drop_location)
			new /obj/item/resonator(drop_location)
		if("Minebot Kit")
			new /mob/living/simple_animal/hostile/mining_drone(drop_location)
			new /obj/item/weldingtool/hugetank(drop_location)
			new /obj/item/clothing/head/welding(drop_location)
			new /obj/item/borg/upgrade/modkit/minebot_passthrough(drop_location)
		if("Extraction and Rescue Kit")
			new /obj/item/extraction_pack(drop_location)
			new /obj/item/fulton_core(drop_location)
			new /obj/item/stack/marker_beacon/thirty(drop_location)
		if("Crusher Kit")
			new /obj/item/extinguisher/mini(drop_location)
			new /obj/item/kinetic_crusher(drop_location)
		if("Mining Conscription Kit")
			new /obj/item/storage/backpack/duffelbag/mining_conscript(drop_location)
		if("Space Exploration Kit") // Tegustation Space Exploration
			new /obj/item/storage/backpack/duffelbag/space_exploration(drop_location)

	SSblackbox.record_feedback("tally", "mining_voucher_redeemed", 1, selection)
	qdel(voucher)


/obj/machinery/kepler_equipment_vendor/ex_act(severity, target)
	do_sparks(5, TRUE, src)
	if(prob(50 / severity) && severity < 3)
		qdel(src)
/obj/item/kepler_voucher
	name = "kepler voucher"
	desc = "A token to redeem a piece of equipment. Use it on a kepler equipment vendor."
	icon = 'ModularBungalow/project_kepler/kepler_machinery.dmi'
	icon_state = "kepler_voucher"
	w_class = WEIGHT_CLASS_TINY

/obj/item/kepler_sec_voucher
	name = "kepler security voucher"
	desc = "A token to redeem a piece of equipment. Use it on a kepler equipment vendor.this one redeem security equipment"
	icon = 'ModularBungalow/project_kepler/kepler_machinery.dmi'
	icon_state = "kepler_vouchera"
	w_class = WEIGHT_CLASS_TINY

/obj/machinery/cryopod/elevator_exit
	name = "Elevator Door"
	desc = "for getting to the lower or upper part of the way-station when you are done with your mission"
	icon = 'ModularBungalow/project_kepler/kepler_machinery.dmi'
	icon_state = "ready"
	on_store_name = "Station Report"

/obj/machinery/cryopod/elevator_exit/open_machine()
	..()
	icon_state = "ready"
	density = TRUE
	name = initial(name)

/obj/machinery/cryopod/elevator_exit/close_machine(atom/movable/target)
	if(!control_computer)
		find_control_computer(TRUE)
	if((isnull(target) || isliving(target)) && state_open && !panel_open)
		..(target)
		var/mob/living/mob_occupant = occupant
		if(mob_occupant && mob_occupant.stat != DEAD)
			to_chat(occupant, "<span class='notice'><b>You feel the elevator starts to take you down to the lower colony. Hopefully you didn't forget anything.</b></span>")

		COOLDOWN_START(src, despawn_world_time, time_till_despawn)
	icon_state = "bolted"

/obj/machinery/cryopod/elevator_exit/container_resist_act(mob/living/user)
	visible_message("<span class='notice'>[occupant] emerges from [src]!</span>",
		"<span class='notice'>You walks out of [src]!</span>")
	open_machine()

