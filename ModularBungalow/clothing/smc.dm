/obj/item/clothing/suit/armor/labcoat/syndie
	name = "armored syndicate labcoat"
	desc = "A heavily armored labcoat woven to stop attacks and biohazards alike."
	icon = 'ModularBungalow/zbungalowicons/clothing/coaticon.dmi'
	worn_icon = 'ModularBungalow/zbungalowicons/clothing/coat.dmi'
	icon_state = "labcoat_syndie"
	blood_overlay_type = "armor"
	armor = list(MELEE = 15, BULLET = 5, LASER = 15, ENERGY = 10, BOMB = 10, BIO = 50, RAD = 0, FIRE = 50, ACID = 50, WOUND = 10)


//Armor
/obj/item/clothing/suit/armor/medical_officer
	name = "medical officer's armor vest"
	desc = "A heavy armor vest made to stop biohazards, bullets and energy attacks.worn by the Syndicate Medical Officer"
	icon = 'ModularBungalow/zbungalowicons/clothing/coaticon.dmi'
	worn_icon = 'ModularBungalow/zbungalowicons/clothing/coat.dmi'
	icon_state = "armor_mo"
	blood_overlay_type = "armor"
	armor = list(MELEE = 5, BULLET = 30, LASER = 30, ENERGY = 30, BOMB = 10, BIO = 50, RAD = 0, FIRE = 50, ACID = 50, WOUND = 10)


/obj/item/clothing/suit/armor/wing
	name = "wing commander's jacket"
	desc = "A heavily armored purple jacket."
	worn_icon = 'ModularBungalow/clothing/worn/coatw.dmi'
	icon = 'ModularBungalow/clothing/icons/coat.dmi'
	icon_state = "wingcommander"
	blood_overlay_type = "armor"
	armor = list(MELEE = 10, BULLET = 70, LASER = 20, ENERGY = 30, BOMB = 25, BIO = 0, RAD = 0, FIRE = 0, ACID = 0, WOUND = 30)


/obj/item/clothing/suit/armor/staff
	name = "staff officer's jacket"
	desc = "A lightly armored purple jacket."
	worn_icon = 'ModularBungalow/clothing/worn/coatw.dmi'
	icon = 'ModularBungalow/clothing/icons/coat.dmi'
	icon_state = "wingcommander"
	blood_overlay_type = "armor"
	armor = list(MELEE = 30, BULLET = 30, LASER = 20, ENERGY = 30, BOMB = 25, BIO = 0, RAD = 0, FIRE = 0, ACID = 0, WOUND = 10)


//Berets
/obj/item/clothing/head/beret/mo
	name = "medical officer's beret"
	desc = "A robust beret with the syndicate triage insignia emblazoned on it. Uses reinforced fabric to offer sufficient protection."
	icon_state = "beret_mo"
	armor = list("melee" = 35, "bullet" = 30, "laser" = 30,"energy" = 40, "bomb" = 25, "bio" = 0, "rad" = 0, "fire" = 50, "acid" = 50)
	strip_delay = 60
	dog_fashion = null


/obj/item/clothing/head/beret/so
	name = "staff officer's beret"
	desc = "A purple beret for those in charge of the marines."
	icon_state = "beret_rd"


//Glasses
/obj/item/clothing/glasses/hud/health/syndicate
	name = "triage scanner HUD"
	desc = "A heads-up display that scans the humanoids in view and provides accurate data about their health status."
	worn_icon = 'ModularBungalow/clothing/worn/glassesw.dmi'
	icon = 'ModularBungalow/clothing/icons/glasses.dmi'
	icon_state = "synhealthhud"
	glass_colour_type = /datum/client_colour/glass_colour/green

/obj/item/clothing/glasses/hud/security/syndicate
	name = "military police scanner HUD"
	worn_icon = 'ModularBungalow/clothing/worn/glassesw.dmi'
	icon = 'ModularBungalow/clothing/icons/glasses.dmi'
	icon_state = "synsechud"
	glass_colour_type = /datum/client_colour/glass_colour/blue

