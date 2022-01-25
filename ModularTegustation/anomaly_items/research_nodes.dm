/////// RESEARCH ///////
// Actual Research Stuff
/datum/techweb_node/anomaly_weaponry
	id = "anomaly_weaponry"
	display_name = "Anomalous Weaponry"
	description = "A highly advanced research, rumored to be of an alien origin."
	prereq_ids = list("anomaly_research", "adv_weaponry")
	design_ids = list("vortex_gun", "flux_sword")
	boost_item_paths = list(/obj/item/gun/energy/vortex_gun, /obj/item/melee/flux_sword, \
	/obj/item/clothing/suit/armor/abductor/vest, /obj/item/gun/energy/alien, /obj/item/gun/energy/shrink_ray, \
	/obj/item/assembly/signaler/anomaly/vortex, /obj/item/assembly/signaler/anomaly/flux)
	research_costs = list(TECHWEB_POINT_TYPE_GENERIC = 7500)
	hidden = TRUE

/datum/techweb_node/anomaly_tools
	id = "anomaly_tools"
	display_name = "Anomalous Tools Research"
	description = "Expensive tools that utilize anomalous properties to solve modern engineering problems."
	prereq_ids = list("anomaly_research", "exp_tools")
	design_ids = list("rcd_bluespace", "magboots_anomaly")
	boost_item_paths = list(/obj/item/construction/rcd/arcd/bluespace, /obj/item/clothing/shoes/magboots/noslow, \
	/obj/item/assembly/signaler/anomaly/bluespace, /obj/item/assembly/signaler/anomaly/grav)
	research_costs = list(TECHWEB_POINT_TYPE_GENERIC = 5000)
	hidden = TRUE
