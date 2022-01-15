/datum/job/ntmarinecasio
	title = "NT Marine"
	faction = "Station"
	total_positions = 4
	spawn_positions = 4
	supervisors = "the NT Squad Leader"
	selection_color = "#134975"
	exp_type = EXP_TYPE_NTMARINE
	maptype = "casio"

	outfit = /datum/outfit/job/ntmarine

	access = list(ACCESS_SECURITY, ACCESS_SEC_DOORS, ACCESS_BRIG, ACCESS_COURT, ACCESS_MAINT_TUNNELS, ACCESS_MECH_SECURITY, ACCESS_MORGUE, ACCESS_WEAPONS, ACCESS_FORENSICS_LOCKERS, ACCESS_MINERAL_STOREROOM)
	minimal_access = list(ACCESS_SECURITY, ACCESS_SEC_DOORS, ACCESS_BRIG, ACCESS_COURT, ACCESS_WEAPONS, ACCESS_MECH_SECURITY, ACCESS_MINERAL_STOREROOM) // See /datum/job/officer/get_access()
	paycheck = PAYCHECK_MEDIUM
	paycheck_department = ACCOUNT_SEC
	display_order = JOB_DISPLAY_ORDER_SECURITY_OFFICER

/obj/effect/landmark/start/ntmarine
	name = "NT Marine"
	icon_state = "Security Officer"

/obj/effect/landmark/start/security_officer/Initialize()
	. = ..()
	var/turf/T = get_turf(src)
	new /obj/effect/landmark/start/ntmarine(T)
