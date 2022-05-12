/datum/job/recruit
	title = "Recruit"
	faction = "Station"
	total_positions = -1
	spawn_positions = -1
	supervisors = "absolutely everyone"
	selection_color = "#595959"
	exp_type = EXP_TYPE_BIORESEARCH
	maptype = "syndicate-station"

	outfit = /datum/outfit/job/recruit

	access = list(ACCESS_SYNDICATE)
	minimal_access = list(ACCESS_SYNDICATE)
	paycheck = PAYCHECK_ASSISTANT
	paycheck_department = ACCOUNT_SCI
	display_order = JOB_DISPLAY_ORDER_NOFACTION4	//Literally end of the joborder no matter what

/datum/outfit/job/recruit
	name = "Recruit"
	jobtype = /datum/job/recruit
	belt = null

	id = /obj/item/card/id/black
	ears = /obj/item/radio/headset/syndicate
	uniform = /obj/item/clothing/under/smc/recruit
	shoes = /obj/item/clothing/shoes/jackboots
