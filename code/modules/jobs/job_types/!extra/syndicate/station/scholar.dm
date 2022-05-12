/datum/job/scholar
	title = "Scholar"
	department_head = list("Commandant")
	faction = "Station"
	total_positions = 1
	spawn_positions = 1
	supervisors = "the commandant"
	selection_color = "#595959"
	exp_requirements = 60
	exp_type = EXP_TYPE_AUXILIARY
	maptype = "syndicate-station"

	outfit = /datum/outfit/job/scholar

	access = list(ACCESS_SYNDICATE, ACCESS_SYNDICATE_OFFICER, ACCESS_HEADS, ACCESS_SYNDICATE_AUXILIARY)
	minimal_access = list(ACCESS_SYNDICATE, ACCESS_SYNDICATE_OFFICER, ACCESS_HEADS, ACCESS_SYNDICATE_AUXILIARY)
	paycheck = PAYCHECK_COMMAND
	paycheck_department = ACCOUNT_SCI
	display_order = JOB_DISPLAY_ORDER_HEAD_OF_PERSONNEL

/datum/outfit/job/scholar
	name = "Scholar"
	jobtype = /datum/job/scholar
	belt = null

	id = /obj/item/card/id/black
	ears = /obj/item/radio/headset/syndicate/alt/leader
	uniform = /obj/item/clothing/under/syndicate
	shoes = /obj/item/clothing/shoes/jackboots
	suit_store = /obj/item/gun/ballistic/automatic/pistol


//Spawn Point
/obj/effect/landmark/start/scholar
	name = "Scholar"
	icon_state = "science_officer"
