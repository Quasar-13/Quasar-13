/datum/job/messtech
	title = "Mess Sergeant"
	department_head = list("Scholar")
	faction = "Station"
	total_positions = 1
	spawn_positions = 1
	supervisors = "the scholar"
	selection_color = "#595959"
	exp_requirements = 60
	exp_type = EXP_TYPE_AUXILIARY
	maptype = "syndicate-station"

	outfit = /datum/outfit/job/messtech

	access = list(ACCESS_SYNDICATE, ACCESS_SYNDICATE_AUXILIARY)
	minimal_access = list(ACCESS_SYNDICATE, ACCESS_SYNDICATE_AUXILIARY)
	paycheck = PAYCHECK_EASY
	paycheck_department = ACCOUNT_SCI
	display_order = JOB_DISPLAY_ORDER_BARTENDER

/datum/outfit/job/messtech
	name = "Mess Sergeant"
	jobtype = /datum/job/messtech
	belt = null

	id = /obj/item/card/id/black
	ears = /obj/item/radio/headset/syndicate/alt/leader
	uniform = /obj/item/clothing/under/rank/civilian/chef
	suit = /obj/item/clothing/suit/toggle/chef
	head = /obj/item/clothing/head/chefhat


//Spawn Point
/obj/effect/landmark/start/messtech
	name = "Scholar"
	icon_state = "science_officer"
