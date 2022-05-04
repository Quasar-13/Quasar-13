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
	var/items = list("Marksman Kit", "Assault Kit", "Wildlife Extermination Kit", "Soldier Conscription Kit")

	var/selection = input(redeemer, "Pick your equipment", "Equipment Voucher Redemption") as null|anything in sortList(items)
	if(!selection || !Adjacent(redeemer) || QDELETED(voucher) || voucher.loc != redeemer)
		return
	var/drop_location = drop_location()
	switch(selection)
		if("Marksman Kit")
			new /obj/item/storage/box/soldier/marksman(drop_location)
		if("Standard Privateer Kit")
			new /obj/item/storage/box/soldier/standard(drop_location)
		if("Wildlife Extermination Kit")
			new /obj/item/storage/box/soldier/wildlifehunter(drop_location)
		if("Grenadier Kit")
			new /obj/item/storage/box/soldier/grenadier(drop_location)
		if("Search and Rescue Kit")
			new /obj/item/storage/box/soldier/sar(drop_location)
		if("Soldier Conscription Kit")
			new /obj/item/storage/backpack/duffelbag/solgov_conscription(drop_location)

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
	var/items = list("Search and Rescue Kit", "Privateer Kit", "Privateer Marksman Kit")

	var/selection = input(redeemer, "Pick your equipment", "Equipment Security Voucher Redemption") as null|anything in sortList(items)
	if(!selection || !Adjacent(redeemer) || QDELETED(voucher) || voucher.loc != redeemer)
		return
	var/drop_location = drop_location()
	switch(selection)
		if("Search and Rescue Kit")
			new /obj/item/storage/belt/mining/vendor(drop_location)
		if("Privateer Kit")
			new /obj/item/extinguisher/mini(drop_location)
			new /obj/item/resonator(drop_location)
		if("Privateer Marksman Kit")
			new /obj/item/extraction_pack(drop_location)
			new /obj/item/fulton_core(drop_location)
			new /obj/item/stack/marker_beacon/thirty(drop_location)
	SSblackbox.record_feedback("tally", "mining_voucher_redeemed", 1, selection)
	qdel(voucher)

/obj/machinery/kepler_equipment_voucher/attackby(obj/item/I, mob/user, params)
	if(istype(I, /obj/item/kepler_commander_voucher))
		RedeemVoucherCommanderKepler(I, user)
		return
	if(default_deconstruction_screwdriver(user, "keplervending-open", "keplervending", I))
		return
	if(default_deconstruction_crowbar(I))
		return
	return ..()

/obj/machinery/kepler_equipment_voucher/proc/RedeemVoucherCommanderKepler(kepler_commander_voucher/voucher, mob/redeemer)
	var/items = list("Classic Commander Kit", "Command Assault Kit", "Veteran Snow Ranger Kit")
	var/selection = input(redeemer, "Pick your equipment", "Equipment Command Voucher Redemption") as null|anything in sortList(items)
	if(!selection || !Adjacent(redeemer) || QDELETED(voucher) || voucher.loc != redeemer)
		return
	var/drop_location = drop_location()
	switch(selection)
		if("Classic Commander Kit")
			new /obj/item/storage/belt/mining/vendor(drop_location)
		if("Command Assault Kit")
			new /obj/item/extinguisher/mini(drop_location)
			new /obj/item/resonator(drop_location)
		if("Veteran Snow Ranger Kit")
			new /mob/living/simple_animal/hostile/mining_drone(drop_location)
			new /obj/item/weldingtool/hugetank(drop_location)
			new /obj/item/clothing/head/welding(drop_location)
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

/obj/item/kepler_commander_voucher
	name = "kepler commander voucher"
	desc = "A token to redeem a piece of equipment. Use it on a kepler equipment vendor.this one redeem commander equipment"
	icon = 'ModularBungalow/project_kepler/kepler_machinery.dmi'
	icon_state = "kepler_voucherc"
	w_class = WEIGHT_CLASS_TINY
