/obj/machinery/manned_turret/laser
	name = "laser auto turret"
	desc = "While the trigger is held down, this gun will redistribute recoil to allow its user to easily shift targets."
	icon = 'icons/obj/turrets.dmi'
	icon_state = "machinegun"
	view_range = 1
	projectile_type = /obj/projectile/beam/weak

/obj/machinery/manned_turret/scatter
	name = "weak laser auto turret"
	desc = "While the trigger is held down, this gun will redistribute recoil to allow its user to easily shift targets."
	icon = 'icons/obj/turrets.dmi'
	icon_state = "machinegun"
	view_range = 1
	projectile_type = /obj/projectile/beam/scatter

//Created out of a necessity to get these dumb chems out of the psyche's pocket
/obj/machinery/vending/psych
	name = "\improper NanoMind Plus"
	desc = "psychologist drugs dispenser."
	icon_state = "mind"
	icon_deny = "mind-deny"
	icon = 'ModularBungalow/zbungalowicons/vending.dmi'
	product_ads = "Take some time, help your patients."
	req_access = list(ACCESS_PSYCHOLOGY)
	products = list(/obj/item/storage/pill_bottle/mannitol/small = 2,
					/obj/item/storage/pill_bottle/lsdpsych = 2,
					/obj/item/storage/pill_bottle/happinesspsych = 2,
					/obj/item/storage/pill_bottle/paxpsych = 2,
					/obj/item/storage/pill_bottle/neurine/small = 2,
					/obj/item/storage/pill_bottle/psicodine = 2,
					/obj/item/storage/pill_bottle/synaptazine = 2,
					/obj/item/storage/pill_bottle/haloperidol = 2,
					/obj/item/storage/pill_bottle/morphine/small = 2)

	default_price = 40
	extra_price = 680
	payment_department = ACCOUNT_MED
	refill_canister = /obj/item/vending_refill/psych

/obj/item/vending_refill/psych
	machine_name = "NanoMind Plus"
	icon_state = "refill_medical"
