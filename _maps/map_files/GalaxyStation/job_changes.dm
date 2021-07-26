
#define JOB_MODIFICATION_MAP_NAME "GalaxyStation"

//Command


/datum/job/captain/New()
	..()
	MAP_JOB_CHECK
	outfit = /datum/outfit/job/captain/ws

/datum/job/hop/New()
	..()
	MAP_JOB_CHECK
	outfit = /datum/outfit/job/hop/ws
