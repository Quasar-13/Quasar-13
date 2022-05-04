//SOLGOV EQUIPMENT VOUCHER!
/obj/machinery/kepler_equipment_voucher
	name = "kepler equipment vendor"
	desc = "An equipment vendor for kepler technician, accept vouchers."
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
	if(istype(I, /obj/item/kepler_voucher))
		RedeemVoucherKepler(I, user)
		return
	if(default_deconstruction_screwdriver(user, "keplervending-open", "keplervending", I))
		return
	if(default_deconstruction_crowbar(I))
		return
	return ..()
//holy fucking sex!! redeem my voucher please!
//This took me 2 hours pls help
/obj/machinery/kepler_equipment_voucher/proc/RedeemVoucherKepler(obj/item/kepler_voucher/voucher, mob/redeemer)
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

/obj/machinery/kepler_equipment_voucher/attackby(obj/item/I, mob/user, params)
	if(istype(I, /obj/item/kepler_sec_voucher))
		RedeemVoucherSecKepler(I, user)
		return
	if(default_deconstruction_screwdriver(user, "keplervending-open", "keplervending", I))
		return
	if(default_deconstruction_crowbar(I))
		return
	return ..()

/obj/machinery/kepler_equipment_voucher/proc/RedeemVoucherSecKepler(obj/item/kepler_sec_voucher/voucher, mob/redeemer)
	var/items = list("Survival Capsule and Explorer's Webbing", "Resonator Kit", "Minebot Kit", "Extraction and Rescue Kit", "Crusher Kit", "Mining Conscription Kit", "Space Exploration Kit")

	var/selection = input(redeemer, "Pick your equipment", "Equipment Security Voucher Redemption") as null|anything in sortList(items)
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


/obj/machinery/kepler_equipment_voucher/ex_act(severity, target)
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
