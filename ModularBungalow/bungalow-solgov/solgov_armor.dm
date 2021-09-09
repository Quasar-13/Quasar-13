/obj/item/clothing/head/helmet/solgov
	name = "\improper SolGov Helmet"
	desc = "A helmet manufactured by SolGov to protect craniums. Painted in green to provide some degree of camoflauge."
	icon_state = "helmet_terragov"
	can_flashlight = FALSE
	dog_fashion = null
	icon = 'ModularBungalow/zbungalowicons/clothing/obj/head.dmi'
	worn_icon = 'ModularBungalow/zbungalowicons/clothing/mob/head.dmi'

/obj/item/clothing/head/solgov/terragov
	name = "\improper TerraGov officer's cap"
	desc = "A cap worn by high-ranking officers of SolGov. This one is still in original TerraGov green."
	armor = list("melee" = 40, "bullet" = 30, "laser" = 30, "energy" = 40, "bomb" = 25, "bio" = 0, "rad" = 0, "fire" = 30, "acid" = 60)
	icon_state = "cap_terragov"

/obj/item/clothing/suit/armor/vest/solgov
	name = "\improper SolGov armor vest"
	desc = "A standard armor vest fielded for SolGov's infantry."
	icon_state = "armor_solgov"
	icon = 'ModularBungalow/zbungalowicons/clothing/obj/suits.dmi'
	worn_icon = 'ModularBungalow/zbungalowicons/clothing/mob/suits.dmi'

/obj/item/clothing/suit/armor/vest/solgov/rep
	name = "\improper SolGov Inspector armor vest"
	desc = "A type I armor vest emblazoned with the SolGov logo."
	icon_state = "armor_alt_solgov"

/obj/item/clothing/head/helmet/space/hardsuit/solgov
	name = "\improper SolGov hardsuit helmet"
	desc = "An armored spaceproof helmet. The glass has a metallic shine on it."
	icon_state = "hardsuit0-solgov"
	hardsuit_type = "solgov"
	armor = list("melee" = 50, "bullet" = 45, "laser" = 40,"energy" = 30, "bomb" = 60, "bio" = 100, "rad" = 90, "fire" = 85, "acid" = 75)
	icon = 'ModularBungalow/zbungalowicons/clothing/obj/suits.dmi'
	worn_icon = 'ModularBungalow/zbungalowicons/clothing/mob/suits.dmi'

/obj/item/clothing/suit/space/hardsuit/solgov
	icon_state = "hardsuit_solgov"
	name = "\improper SolGov hardsuit"
	desc = "An armored spaceproof suit. An exoskeleton helps the user not have slowdown, allowing full mobility with the suit."
	icon_state = "hardsuit_solgov"
	armor = list("melee" = 50, "bullet" = 45, "laser" = 40, "energy" = 30, "bomb" = 60, "bio" = 100, "rad" = 90, "fire" = 85, "acid" = 75) //intentionally the fucking strong, this is master chief-tier armor //is this really what you call the strong?? is this the best solgov has to offer??????
	helmettype = /obj/item/clothing/head/helmet/space/hardsuit/solgov
	slowdown = 0
	icon = 'ModularBungalow/zbungalowicons/clothing/obj/suits.dmi'
	worn_icon = 'ModularBungalow/zbungalowicons/clothing/mob/suits.dmi'
