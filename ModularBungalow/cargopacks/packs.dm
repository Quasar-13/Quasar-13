//EMERGENCY
/datum/supply_pack/emergency/beacon_structures
	name = "Instant Structure Capsules"
	desc = "Contains two beacons that contains capsules able to build premade structures."
	cost = CARGO_CRATE_VALUE * 4
	contains = list(/obj/item/choice_beacon/structures,
					/obj/item/choice_beacon/structures)
	crate_name = "Structure capsules"

/datum/supply_pack/emergency/beacon_workplaces
	name = "Instant Workshop Capsules"
	desc = "Contains one beacon that contains a capsule able to build premade and functional workplaces."
	cost = CARGO_CRATE_VALUE * 16
	contains = list(/obj/item/choice_beacon/workplaces)
	crate_name = "Structure capsules"

//ARMORY

/datum/supply_pack/security/armory/box_rubbershots
	name = "Rubbershots boxes crate"
	desc = "Contains 4 boxes of rubbershot shells. Requires Armory access to open."
	cost = CARGO_CRATE_VALUE * 3
	contains = list(/obj/item/storage/box/rubbershot,
					/obj/item/storage/box/rubbershot,
					/obj/item/storage/box/rubbershot,
					/obj/item/storage/box/rubbershot)

/datum/supply_pack/security/armory/box_beanbags
	name = "Beanbags boxes crate"
	desc = "Contains 4 boxes of beanbag shells. Requires Armory access to open."
	cost = CARGO_CRATE_VALUE * 2.5
	contains = list(/obj/item/storage/box/beanbag,
					/obj/item/storage/box/beanbag,
					/obj/item/storage/box/beanbag,
					/obj/item/storage/box/beanbag)

/datum/supply_pack/security/armory/box_buckshots
	name = "Buckshots boxes crate"
	desc = "Contains 4 boxes of buckshots shells. Requires Armory access to open."
	cost = CARGO_CRATE_VALUE * 5
	contains = list(/obj/item/storage/box/lethalshot,
					/obj/item/storage/box/lethalshot,
					/obj/item/storage/box/lethalshot,
					/obj/item/storage/box/lethalshot)