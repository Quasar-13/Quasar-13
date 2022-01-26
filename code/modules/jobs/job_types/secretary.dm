/datum/job/secretary
	title = "Secretary"
	department_head = list("Captain")
	faction = "Station"
	total_positions = 1
	spawn_positions = 1
	supervisors = "the captain"
	selection_color = "#bbbbee"
	exp_requirements = 60
	exp_type = EXP_TYPE_CREW
	mapexclude = list("goonlite")

	outfit = /datum/outfit/job/secretary

	access = list(ACCESS_HEADS, ACCESS_RC_ANNOUNCE, ACCESS_KEYCARD_AUTH, ACCESS_TCOMSAT, ACCESS_MAINT_TUNNELS,
		ACCESS_EVA, ACCESS_GATEWAY)

	minimal_access = list(ACCESS_HEADS, ACCESS_RC_ANNOUNCE, ACCESS_KEYCARD_AUTH, ACCESS_TCOMSAT, ACCESS_MAINT_TUNNELS,
		ACCESS_EVA, ACCESS_GATEWAY)
	paycheck = PAYCHECK_MEDIUM
	paycheck_department = ACCOUNT_SEC
	display_order = JOB_DISPLAY_ORDER_SECRETARY

/datum/outfit/job/secretary
	name = "Secretary"
	jobtype = /datum/job/secretary

	id = /obj/item/card/id/silver
	ears = /obj/item/radio/headset/headset_sct
	uniform = /obj/item/clothing/under/misc/parade
	shoes = /obj/item/clothing/shoes/sneakers/black
	l_hand = /obj/item/storage/briefcase/secretary
	skillchips = list(/obj/item/skillchip/disk_verifier)
	belt = /obj/item/pda/secretary
	r_pocket = /obj/item/kitchen/knife/letter_opener
	backpack_contents = list(/obj/item/modular_computer/tablet/preset/advanced/command = 1, /obj/item/workplacecapsule/command = 1)


/obj/effect/landmark/start/secretary
	name = "Secretary"
	icon_state = "Secretary"

