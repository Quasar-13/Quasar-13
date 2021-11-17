/obj/item/clothing/under/plasmaman/security
	name = "security plasma envirosuit"
	desc = "A plasmaman containment suit designed for security officers, offering a limited amount of extra protection."
	icon_state = "security_envirosuit"
	inhand_icon_state = "security_envirosuit"
	armor = list(MELEE = 10, BULLET = 0, LASER = 0, ENERGY = 0, BOMB = 0, BIO = 100, RAD = 0, FIRE = 95, ACID = 95)

/obj/item/clothing/under/plasmaman/security/warden
	name = "warden plasma envirosuit"
	desc = "A plasmaman containment suit designed for the warden, white stripes being added to differentiate them from other members of security."
	icon_state = "warden_envirosuit"
	inhand_icon_state = "warden_envirosuit"

/obj/item/clothing/under/plasmaman/syndicate/generic //I HAD TO PUT THIS HERE BECAUSE, WHEN I MADE "/code/modules/clothing/under/jobs/Plasmaman/syndicate.dm" IT DID NOT GOT RECOGNIZED IN COMPILATION
	name = "standard syndicate plasma envirosuit"
	desc = "Inspired by the regular syndicate combat suit."
	icon_state = "syndicate_envirosuit"
	inhand_icon_state = "syndicate_envirosuit"
	armor = list(MELEE = 10, BULLET = 0, LASER = 0, ENERGY = 0, BOMB = 0, BIO = 100, RAD = 0, FIRE = 95, ACID = 95)
