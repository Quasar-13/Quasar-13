/*Stuff for the NT Agents, like IAA or NT blackops
///datum/game_mode/traitor/internal_affairs
///datum/game_mode/traitor/nt_blackops
BUNDLES
*/

/datum/uplink_item/bundles_tc/marine_kit
	name= "Marine Kit Beacon"
	desc = "We procured a beacon normally used by our Marines for Operations, use it if you need to go loud or need extra firepower"
	item = /obj/item/choice_beacon/bungalow/combat/marine
	cost = 10
	include_modes = list(/datum/game_mode/traitor/nt_blackops, /datum/game_mode/traitor/internal_affairs)

// Dangerous Items

/datum/uplink_item/dangerous/pulse_carbine
	name = "P-05 Pulse Rifle"
	desc = "The strongest and loudest item we are allowed to give you, make sure to use it wisely. \
			Commonly used by our Death Commandos, our Pulse weapons have incredible power, able to destroy reinforced walls in few shots. \
			Remember, don't lose it"
	item = /obj/item/gun/energy/pulse/carbine
	cost = 20
	surplus = 0
	include_modes = list(/datum/game_mode/traitor/nt_blackops, /datum/game_mode/traitor/internal_affairs)

/datum/uplink_item/dangerous/pulse_pistol
	name = "P-24 Pulse Pistol"
	desc = "A more miniaturized version of the P-05 Pulse Rifle, if one needs to have a more compact version \
			Remember, don't lose it"
	item = /obj/item/gun/energy/pulse/pistol
	cost = 12
	surplus = 0
	include_modes = list(/datum/game_mode/traitor/nt_blackops, /datum/game_mode/traitor/internal_affairs)

/datum/uplink_item/device_tools/ccencryptionkey
	name = "Agent Encryption Key"
	desc = "A key that, when inserted into a radio headset, allows you to listen to all station department channels \
			as well as talk on an encrypted CentCom channel and peer into Syndicate Communications with other agents that have the same key."
	item = /obj/item/encryptionkey/cent_agent
	cost = 2
	surplus = 0
	restricted = TRUE
	include_modes = list(/datum/game_mode/traitor/nt_blackops, /datum/game_mode/traitor/internal_affairs)

//IMPLANTS

/datum/uplink_item/implants/nano_mantis
	name = "HEPHAESTUS. Industries Mantis Blades Kit"
	desc = "A Briefcase containing Mantis Blades redesigned by our poached HEPHAESTUS. Industries robotocists, based on the old design. \
			Unlike the reverse-engineered deisgns of the G.O.R.L.E.X Mantis Blades, these are designed in a more defensive nature, able to block most melee attacks. \
			The Briefcase comes with two autosurgeons, remember to use them wisely"
	item = /obj/item/storage/briefcase/nano_mantis
	include_modes = list(/datum/game_mode/traitor/nt_blackops, /datum/game_mode/traitor/internal_affairs)
	cost = 16
	surplus = 0
