/datum/job/honkmother
	title = "Honkmother Chosen"
	faction = "Station"
	total_positions = 1
	spawn_positions = 1
	supervisors = "no one"
	selection_color = "#595959"
	exp_type = EXP_TYPE_AUXILIARY
	maptype = "syndicate-station"

	outfit = /datum/outfit/job/honkmother

	access = list(ACCESS_SYNDICATE, ACCESS_SYNDICATE_RESEARCH)
	minimal_access = list(ACCESS_SYNDICATE, ACCESS_SYNDICATE_RESEARCH)
	paycheck = PAYCHECK_MEDIUM
	paycheck_department = ACCOUNT_SCI
	display_order = JOB_DISPLAY_ORDER_BARTENDER


/datum/job/honkmother/after_spawn(mob/living/carbon/human/H, mob/M)
	. = ..()
	H.apply_pref_name("clown", M.client)

/datum/outfit/job/honkmother
	name = "Honkmother Chosen"
	jobtype = /datum/job/honkmother

	belt = null
	ears = /obj/item/radio/headset/syndicate
	uniform = /obj/item/clothing/under/rank/civilian/clown/rainbow
	shoes = /obj/item/clothing/shoes/clown_shoes
	mask = /obj/item/clothing/mask/gas/clown_hat
	l_pocket = /obj/item/bikehorn
	backpack_contents = list(
		/obj/item/stamp/clown = 1,
		/obj/item/reagent_containers/spray/waterflower = 1,
		/obj/item/food/grown/banana = 1,
		/obj/item/instrument/bikehorn = 1,
		)

	implants = list(/obj/item/implant/sad_trombone)

	backpack = /obj/item/storage/backpack/clown
	satchel = /obj/item/storage/backpack/clown
	duffelbag = /obj/item/storage/backpack/duffelbag/clown //strangely has a duffel

	box = /obj/item/storage/box/hug/survival

	chameleon_extras = /obj/item/stamp/clown

/datum/outfit/job/honkmother/pre_equip(mob/living/carbon/human/H, visualsOnly)
	. = ..()
	if(HAS_TRAIT(SSstation, STATION_TRAIT_BANANIUM_SHIPMENTS))
		backpack_contents[/obj/item/stack/sheet/mineral/bananium/five] = 1

/datum/outfit/job/honkmother/post_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	..()
	if(visualsOnly)
		return

	H.fully_replace_character_name(H.real_name, pick(GLOB.clown_names)) //rename the mob AFTER they're equipped so their ID gets updated properly.
	ADD_TRAIT(H, TRAIT_NAIVE, JOB_TRAIT)
	H.dna.add_mutation(CLOWNMUT)
	for(var/datum/mutation/human/clumsy/M in H.dna.mutations)
		M.mutadone_proof = TRUE
	var/datum/atom_hud/fan = GLOB.huds[DATA_HUD_FAN]
	fan.add_hud_to(H)
