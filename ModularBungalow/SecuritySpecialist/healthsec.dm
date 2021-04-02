//Medsec glasses
/obj/item/clothing/glasses/healthsec
	name = "Combat Medic HUD"
	desc = "A heads-up display that scans the humanoids in view and provides accurate data about their health and security status."
	icon_state = "medsechud"

/obj/item/clothing/glasses/healthsec/dropped(mob/user)
	..()
	remove_sensors(user)

/obj/item/clothing/glasses/healthsec/equipped(mob/user, slot)
	..()
	add_sensors(user, slot)

/obj/item/clothing/glasses/healthsec/proc/remove_sensors(mob/user)
	if(!user)
		if(ismob(loc))
			user = loc
		else
			return
	var/datum/atom_hud/secsensor = GLOB.huds[DATA_HUD_SECURITY_ADVANCED]
	var/datum/atom_hud/medsensor = GLOB.huds[DATA_HUD_MEDICAL_ADVANCED]
	secsensor.remove_hud_from(user)
	medsensor.remove_hud_from(user)

/obj/item/clothing/glasses/healthsec/proc/add_sensors(mob/user, slot)
	if(slot != ITEM_SLOT_EYES)
		return
	if(!user)
		if(ismob(loc))
			user = loc
		else
			return
	var/datum/atom_hud/secsensor = GLOB.huds[DATA_HUD_SECURITY_ADVANCED]
	var/datum/atom_hud/medsensor = GLOB.huds[DATA_HUD_MEDICAL_ADVANCED]
	secsensor.add_hud_to(user)
	medsensor.add_hud_to(user)


/obj/item/clothing/glasses/healthsec/Destroy()
	remove_sensors()
	return ..()

