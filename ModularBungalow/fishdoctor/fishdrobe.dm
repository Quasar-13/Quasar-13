/obj/machinery/vending/wardrobe/fish_wardrobe
	name = "FishDrobe"
	desc = "A lowstock vendor that smells funny. It dispenses fishing related clothing and gear."
	icon_state = "fishdrobe"
	product_ads = "Like fishin? Then come buy some shit."
	vend_reply = "Fish on!"
	products = list(/obj/item/clothing/suit/apron/waders = 3,
					/obj/item/fishing_rod = 3,
					/obj/item/fish_feed = 10,
					/obj/item/storage/fish_case = 2)
	refill_canister = /obj/item/vending_refill/wardrobe/fish_wardrobe
	payment_department = ACCOUNT_MED
	light_color = LIGHT_COLOR_ELECTRIC_CYAN

/obj/item/vending_refill/wardrobe/fish_wardrobe
	machine_name = "FishDrobe"
