//Landmark shit, this all just overwrites different things
/obj/effect/landmark/start/ntcaptain
	name = "NT Captain"
	icon_state = "Security Officer"

/obj/effect/landmark/start/captain/Initialize()
	. = ..()
	var/turf/T = get_turf(src)
	new /obj/effect/landmark/start/ntcaptain(T)


/obj/effect/landmark/start/blueshield
	name = "Blueshield"
	icon_state = "Detective"

/obj/effect/landmark/start/detective/Initialize()
	. = ..()
	var/turf/T = get_turf(src)
	new /obj/effect/landmark/start/blueshield(T)


/obj/effect/landmark/start/ntsquadleader
	name = "NT Squad Leader"
	icon_state = "Security Officer"

/obj/effect/landmark/start/head_of_security/Initialize()
	. = ..()
	var/turf/T = get_turf(src)
	new /obj/effect/landmark/start/ntsquadleader(T)


/obj/effect/landmark/start/ntpolice
	name = "NT Military Police"
	icon_state = "Security Officer"

/obj/effect/landmark/start/warden/Initialize()
	. = ..()
	var/turf/T = get_turf(src)
	new /obj/effect/landmark/start/ntpolice(T)


/obj/effect/landmark/start/ntmarine
	name = "NT Marine"
	icon_state = "Security Officer"

/obj/effect/landmark/start/security_officer/Initialize()
	. = ..()
	var/turf/T = get_turf(src)
	new /obj/effect/landmark/start/ntmarine(T)
