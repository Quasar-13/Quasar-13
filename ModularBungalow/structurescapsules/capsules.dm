/obj/item/structurecapsule
	name = "structure capsule"
	desc = "A bluespace capsule that stores a schematic of a building."
	icon_state = "capsule"
	icon = 'icons/obj/mining.dmi'
	w_class = WEIGHT_CLASS_TINY
	var/template_id = "shelter_alpha"
	var/datum/map_template/shelter/template
	var/used = FALSE

/obj/item/structurecapsule/proc/get_template()
	if(template)
		return
	template = SSmapping.shelter_templates[template_id]
	if(!template)
		WARNING("Shelter template ([template_id]) not found!")
		qdel(src)

/obj/item/structurecapsule/Destroy()
	template = null // without this, capsules would be one use. per round.
	. = ..()

/obj/item/structurecapsule/examine(mob/user)
	. = ..()
	get_template()
	. += "This capsule has the [template.name] stored."
	. += template.description

/obj/item/structurecapsule/attack_self()
	//Can't grab when capsule is New() because templates aren't loaded then
	get_template()
	if(!used)
		loc.visible_message("<span class='warning'>\The [src] begins to shake. Stand back!</span>")
		used = TRUE
		sleep(50)
		var/turf/deploy_location = get_turf(src)
		var/status = template.check_deploy(deploy_location)
		switch(status)
			if(SHELTER_DEPLOY_BAD_AREA)
				src.loc.visible_message("<span class='warning'>\The [src] will not function in this area.</span>")
			if(SHELTER_DEPLOY_BAD_TURFS, SHELTER_DEPLOY_ANCHORED_OBJECTS)
				var/width = template.width
				var/height = template.height
				src.loc.visible_message("<span class='warning'>\The [src] doesn't have room to deploy! You need to clear a [width]x[height] area!</span>")

		if(status != SHELTER_DEPLOY_ALLOWED)
			used = FALSE
			return

		playsound(src, 'sound/effects/phasein.ogg', 100, TRUE)

		var/turf/T = deploy_location
		if(!is_mining_level(T.z)) //only report capsules away from the mining/lavaland level
			message_admins("[ADMIN_LOOKUPFLW(usr)] activated a bluespace capsule away from the mining level! [ADMIN_VERBOSEJMP(T)]")
			log_admin("[key_name(usr)] activated a bluespace capsule away from the mining level at [AREACOORD(T)]")
		template.load(deploy_location, centered = TRUE)
		new /obj/effect/particle_effect/smoke(get_turf(src))
		qdel(src)

//Add structures here

/obj/item/structurecapsule/purplebath
	name = "purple bath structure capsule"
	desc = "A shelter with a hot bath inside, to rest from your travels."
	template_id = "shelter_purplebath"




//Workplaces here !
/obj/item/workplacecapsule
	name = "workplacecapsule"
	desc = "A bluespace capsule that stores a schematic of a building."
	icon_state = "capsule"
	icon = 'icons/obj/mining.dmi'
	w_class = WEIGHT_CLASS_TINY
	var/template_id = "shelter_alpha"
	var/datum/map_template/shelter/template
	var/used = FALSE

/obj/item/workplacecapsule/proc/get_template()
	if(template)
		return
	template = SSmapping.shelter_templates[template_id]
	if(!template)
		WARNING("Shelter template ([template_id]) not found!")
		qdel(src)

/obj/item/workplacecapsule/Destroy()
	template = null // without this, capsules would be one use. per round.
	. = ..()

/obj/item/workplacecapsule/examine(mob/user)
	. = ..()
	get_template()
	. += "This capsule has the [template.name] stored."
	. += template.description

/obj/item/workplacecapsule/attack_self()
	//Can't grab when capsule is New() because templates aren't loaded then
	get_template()
	if(!used)
		loc.visible_message("<span class='warning'>\The [src] begins to shake. Stand back!</span>")
		used = TRUE
		sleep(50)
		var/turf/deploy_location = get_turf(src)
		var/status = template.check_deploy(deploy_location)
		switch(status)
			if(SHELTER_DEPLOY_BAD_AREA)
				src.loc.visible_message("<span class='warning'>\The [src] will not function in this area.</span>")
			if(SHELTER_DEPLOY_BAD_TURFS, SHELTER_DEPLOY_ANCHORED_OBJECTS)
				var/width = template.width
				var/height = template.height
				src.loc.visible_message("<span class='warning'>\The [src] doesn't have room to deploy! You need to clear a [width]x[height] area!</span>")

		if(status != SHELTER_DEPLOY_ALLOWED)
			used = FALSE
			return

		playsound(src, 'sound/effects/phasein.ogg', 100, TRUE)

		var/turf/T = deploy_location
		if(!is_mining_level(T.z)) //only report capsules away from the mining/lavaland level
			message_admins("[ADMIN_LOOKUPFLW(usr)] activated a bluespace capsule away from the mining level! [ADMIN_VERBOSEJMP(T)]")
			log_admin("[key_name(usr)] activated a bluespace capsule away from the mining level at [AREACOORD(T)]")
		template.load(deploy_location, centered = TRUE)
		new /obj/effect/particle_effect/smoke(get_turf(src))
		qdel(src)

//Add workplaces here

/obj/item/workplacecapsule/medbay
	name = "medbay capsule"
	desc = "A workplace with a surgery, isolation, patient and break room. For when you need to deploy a fast medbay in an expedition."
	template_id = "workplace_medbay"

/obj/item/workplacecapsule/hydroponics
	name = "hydroponics capsule"
	desc = "A workplace with a gardening tools and machinery. Some seeds are included."
	template_id = "workplace_hydroponics"

/obj/item/workplacecapsule/chemistry
	name = "chemistry capsule"
	desc = "A workplace filled with two chemistry labs with their standard tools."
	template_id = "workplace_chemistry"