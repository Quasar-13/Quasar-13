//Mining Crew Cryostasis sleepers
/obj/effect/mob_spawn/human/hermit/miningstation
	name = "cryostasis sleeper"
	desc = "A humming sleeper with a silhouetted occupant inside. Its stasis function is active and it's occupant is still waking up."
	mob_name = "a mining station crewmember"
	icon = 'icons/obj/lavaland/spawners.dmi'
	icon_state = "cryostasis_sleeper"
	outfit = /datum/outfit/hermit
	roundstart = FALSE
	death = FALSE
	random = TRUE
	mob_species = /datum/species/human
	short_desc = "You've been hired by NT to assist in mining operations."
	flavour_text = "You are crew aboard a mining station to assist NT. Engineers, doctors, miners and command staff. There's no real need to go up above."
	assignedrole = "Mining Station Personnel"

/obj/effect/mob_spawn/human/hermit/miningstation/Initialize(mapload)
	. = ..()
	var/arrpee = rand(1,4)

	switch(arrpee)
		if(1)
			flavour_text += "you are a miner crew aboard the mining ship. Assist the mining operations, and stay away from the station."
			outfit.uniform = /obj/item/clothing/under/rank/cargo/miner
		if(2)
			flavour_text += "you are an engineer crew member aboard the mining ship. Assist the miners, set up the engine, go exploring and stay away from the station."
			outfit.uniform = /obj/item/clothing/under/rank/engineering/mech
		if(3)
			flavour_text += "you are a medical crew member aboard the mining ship. Assist the miners, set up the engine, go exploring and stay away from the station."
			outfit.uniform = /obj/item/clothing/under/rank/medical/doctor
			outfit.suit = /obj/item/clothing/suit/toggle/labcoat
			outfit.back = /obj/item/storage/backpack/medic
		if(4)
			flavour_text += "you are a bridge officer aboard the mining ship. Assist the mining operations, and stay away from the station."
			outfit.uniform = /obj/item/clothing/under/misc/assistantformal
			outfit.l_hand = /obj/item/stack/spacecash/c10000
			outfit.ears = /obj/item/radio/headset/heads/qm

/obj/effect/mob_spawn/human/hermit/miningstation/Destroy()
	new/obj/structure/fluff/empty_cryostasis_sleeper(get_turf(src))
	return ..()
