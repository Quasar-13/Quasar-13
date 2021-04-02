//Kirie's First Aid Kit, and Special Biohood


/obj/item/clothing/head/bio/kirie
	name = "shattered biohood"
	desc = "A shattered biohood. The owner of this has met a terrible fate. There's a nametag inside too faded to read."
	icon = 'ModularTegustation/Teguicons/kirie_stuff/ruinitems.dmi'
	icon_state = "bio_kirie"
	inhand_icon_state = "bio_hood"
	worn_icon = 'ModularTegustation/Teguicons/kirie_stuff/ruinclothes.dmi'
	w_class = WEIGHT_CLASS_NORMAL


/obj/item/storage/firstaid/kirie
	name = "faded first aid kit"
	desc = "A faded, purple first aid kit, filled with questionable things. You can barely make out 'Happy 23rd birthday! To: Kirie, my darling.' written in long faded sharpie in the bottom left."
	icon_state = "kiriefirstaid"
	icon = 'ModularTegustation/Teguicons/kirie_stuff/ruinitems.dmi'

	inhand_icon_state = "firstaid-o2"
	damagetype_healed = "all"


/obj/item/storage/firstaid/kirie/PopulateContents()
	if(empty)
		return
	var/static/items_inside = list(
		/obj/item/reagent_containers/glass/bottle/fentanyl = 1,
		/obj/item/healthanalyzer/advanced = 1,
		/obj/item/clothing/head/bio/kirie = 1,
		/obj/item/defibrillator/compact/combat/loaded = 1,
		/obj/item/hemostat/supermatter = 1,
		/obj/item/scalpel/supermatter = 1,
		/obj/item/clothing/neck/cloak/healercloak = 1)
	generate_items_inside(items_inside,src)
