/*Stuff for the NT Agents, like IAA or NT blackops
///datum/game_mode/traitor/internal_affairs
///datum/game_mode/traitor/nt_blackops
BUNDLES
*/

/datum/uplink_item/bundles_tc/marine_kit
	name= "Marine Kit Beacon"
	desc = "We procured a beacon normally used by our Marines for Operations, use it if you need to go loud or need extra firepower"
	item = /obj/item/choice_beacon/marine
	cost = 25
	include_modes = list(/datum/game_mode/traitor/nt_blackops, /datum/game_mode/traitor/internal_affairs)

// Dangerous Items

/datum/uplink_item/dangerous/small_aeg
	name = "Compartmentalized X-07 Nuclear Energy Rifle"
	desc = "An energy gun with an experimental miniaturized nuclear reactor that automatically charges the internal power cell. \
			Modified to fit in a bag. Be careful around EMPs"
	item = /obj/item/gun/energy/e_gun/nuclear/small
	cost = 12
	surplus = 0
	include_modes = list(/datum/game_mode/traitor/nt_blackops, /datum/game_mode/traitor/internal_affairs)

/datum/uplink_item/dangerous/small_tac
	name = "Compartmentalized XX-01 Tactical Energy Rifle"
	desc = "Military issue energy gun, is able to fire stun rounds.is able to fire stun rounds. Modified to be smaller"
	item = /obj/item/gun/energy/e_gun/stun/small
	cost = 25
	surplus = 0
	include_modes = list(/datum/game_mode/traitor/nt_blackops, /datum/game_mode/traitor/internal_affairs)

/datum/uplink_item/dangerous/small_laser
	name = "Compartmentalized L-504 Laser Gun"
	desc = "Nanotrasen’s 5th series rifle, an old and outdated rifle. but can serve some use.. Modified to be smaller"
	item = /obj/item/gun/energy/laser/fifth/small
	cost = 10
	surplus = 0
	include_modes = list(/datum/game_mode/traitor/nt_blackops, /datum/game_mode/traitor/internal_affairs)

/datum/uplink_item/dangerous/socom
	name = "Mark 23 SOCOM"
	desc = "Your standard sidearm during most duties, Agent. Uses 9mm and is highly capable, uncapable of being supressed though"

	item = /obj/item/gun/ballistic/automatic/pistol/mk23
	cost = 12
	include_modes = list(/datum/game_mode/traitor/nt_blackops, /datum/game_mode/traitor/internal_affairs)

/datum/uplink_item/dangerous/mateba
	name = "Mateba Unica 6"
	desc = "The Quintessential NT revolver. Usually held by centcom commanders, and black ops"

	item = /obj/item/gun/ballistic/revolver/mateba
	cost = 18
	include_modes = list(/datum/game_mode/traitor/nt_blackops, /datum/game_mode/traitor/internal_affairs)


/datum/uplink_item/device_tools/ccencryptionkey
	name = "Agent Encryption Key"
	desc = "A key that, when inserted into a radio headset, allows you to listen to all station department channels \
			as well as talk on an encrypted CentCom channel and peer into Syndicate Communications with other agents that have the same key."
	item = /obj/item/encryptionkey/cent_agent
	cost = 3
	surplus = 0
	restricted = TRUE
	include_modes = list(/datum/game_mode/traitor/nt_blackops, /datum/game_mode/traitor/internal_affairs)

//STEALTH WEAPONS

/datum/uplink_item/stealthy_weapons/baton
	name = "Stolen Contractor Baton"
	desc = "We acquired a Baton used by the Syndicate Contractors. \
			Stronger than a normal baton and collapsible, it's a fine tool to use."
	item = /obj/item/melee/classic_baton/telescopic/contractor_baton
	cost = 15

/datum/uplink_item/stealthy_weapons/telebaton
	name = "Telescopic Baton"
	desc = "We acquired a Baton used by the Syndicate Contractors. \
			Stronger than a normal baton and collapsible, it's a fine tool to use."
	item = /obj/item/melee/classic_baton/telescopic
	cost = 4


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

//Pointless Badassery
/*datum/uplink_item/badass
	category = "(Pointless) Badassery"
	surplus = 0
*/

/datum/uplink_item/badass/bni_outfit
	name = "BNI Agent Outfit"
	desc = "Normally on operations such as these, you would simply wear your designated cover disguise. \
			However for a small fee, we can package you with your rank ribbon and standard uniform in a secure briefcase"
	item = /obj/item/storage/secure/briefcase/bni
	cost = 30
	surplus = 0
	include_modes = list(/datum/game_mode/traitor/nt_blackops, /datum/game_mode/traitor/internal_affairs)

/datum/uplink_item/badass/centcom_outfit
	name = "CentCom Official Outfit"
	desc = "If needed, we are able to give you a copy of the standard uniform of the CentCom Officials if need be, radio inclued. \
			Do note that due to current protocols, we are unable to proof announcements to give you legitamacy."
	item = /obj/item/storage/secure/briefcase/bni/cc_official
	cost = 10
	surplus = 0
	include_modes = list(/datum/game_mode/traitor/nt_blackops, /datum/game_mode/traitor/internal_affairs)

/datum/uplink_item/badass/mateba
	name = "Golden Revolver"
	desc = "The man with the golden gun."

	item = /obj/item/gun/ballistic/revolver/golden
	cost = 18
	include_modes = list(/datum/game_mode/traitor/nt_blackops, /datum/game_mode/traitor/internal_affairs)

