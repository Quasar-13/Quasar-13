//Command Suits
/obj/item/clothing/suit/ntcommand
	name = "NT commander jacket"
	desc = "This jacket denotes a very important NT commander on some sort of mission. offers little protection."
	worn_icon = 'ModularBungalow/clothing/worn/coatw.dmi'
	icon = 'ModularBungalow/clothing/icons/coat.dmi'
	icon_state = "fedcapt"
	inhand_icon_state = "armor"

/obj/item/clothing/suit/ntcommand/bridge
	name = "NT officer jacket"
	desc = "This jacket denotes a not-so-important NT officer assisting the NT commander. Offers little protection."
	worn_icon = 'ModularBungalow/clothing/worn/coatw.dmi'
	icon = 'ModularBungalow/clothing/icons/coat.dmi'
	icon_state = "fedmodern"
	inhand_icon_state = "armor"

//Marine Armor
/obj/item/clothing/under/plasmaman/centcom_intern/marine
	name = "NT marine light combat suit"
	desc = "A lightly armored suit that decreases the chance of you getting sliced."
	armor = list(MELEE = 0, BULLET = 0, LASER = 0, ENERGY = 0, BOMB = 0, BIO = 0, RAD = 0, FIRE = 0, ACID = 0, WOUND = 5)

/obj/item/clothing/under/plasmaman/robotics/marine
	name = "NT marine pointman combat suit"
	desc = "A lightly armored suit that decreases the chance of you getting sliced."
	armor = list(MELEE = 0, BULLET = 0, LASER = 0, ENERGY = 0, BOMB = 0, BIO = 0, RAD = 0, FIRE = 0, ACID = 0, WOUND = 10)

/obj/item/clothing/suit/armor/vest/ntmarine
	name = "NT marine armor plates"
	desc = "These form-fitting V2 armor plates are used by the NT marine force."
	worn_icon = 'ModularBungalow/clothing/worn/coatw.dmi'
	icon = 'ModularBungalow/clothing/icons/coat.dmi'
	icon_state = "marine_trooper"
	inhand_icon_state = "armoralt"
	blood_overlay_type = "armor"
	armor = list(MELEE = 25, BULLET = 25, LASER = 10, ENERGY = 10, BOMB = 10, BIO = 0, RAD = 0, FIRE = 50, ACID = 50, WOUND = 10)

/obj/item/clothing/suit/armor/vest/ntmarine/command
	name = "NT squad lead armor plates"
	desc = "This armor vest has added blue plates for easy identification on the battlefield."
	icon_state = "marine_command"
	armor = list(MELEE = 35, BULLET = 45, LASER = 25, ENERGY = 20, BOMB = 10, BIO = 0, RAD = 0, FIRE = 50, ACID = 50, WOUND = 20)

/obj/item/clothing/suit/armor/vest/ntmarine/medic
	name = "NT marine medic armor plates"
	desc = "This armor vest has white plates for those seeking medical attention."
	icon_state = "marine_medic"
	armor = list(MELEE = 15, BULLET = 15, LASER = 10, ENERGY = 10, BOMB = 10, BIO = 0, RAD = 0, FIRE = 50, ACID = 50, WOUND = 10)

/obj/item/clothing/suit/armor/vest/ntmarine/engineer
	name = "NT marine engineer armor plates"
	desc = "This armor vest has brown plates for those seeking technical assistance."
	icon_state = "marine_engineer"
	armor = list(MELEE = 15, BULLET = 15, LASER = 10, ENERGY = 10, BOMB = 10, BIO = 0, RAD = 0, FIRE = 50, ACID = 50, WOUND = 10)

/obj/item/clothing/suit/armor/vest/ntmarine/security
	name = "NT marine pointman armor plates"
	desc = "This armor vest has red plates for the marines to rally behind. These marines usually carry pointman equipment."
	icon_state = "marine_security"
	armor = list(MELEE = 45, BULLET = 30, LASER = 10, ENERGY = 10, BOMB = 40, BIO = 0, RAD = 0, FIRE = 50, ACID = 50, WOUND = 10)

/obj/item/clothing/suit/armor/vest/ntmarine/sniper
	name = "NT marine ranger armor plates"
	desc = "This armor vest has extra pockets for extra equipment, and is lightweight enought to dash in."
	icon_state = "marine_sniper"
	slowdown = -0.3
	armor = list(MELEE = 10, BULLET = 15, LASER = 10, ENERGY = 10, BOMB = 10, BIO = 0, RAD = 0, FIRE = 50, ACID = 50, WOUND = 10)

/obj/item/clothing/suit/armor/vest/ntmarine/samurai
	name = "NT marine samurai armor plates"
	desc = "This armor vest is very light, allowing for fast movement."
	icon_state = "marine_samurai"
	slowdown = -0.05
	armor = list(MELEE = 5, BULLET = 0, LASER = 10, ENERGY = 10, BOMB = 10, BIO = 0, RAD = 0, FIRE = 50, ACID = 50, WOUND = 5)

