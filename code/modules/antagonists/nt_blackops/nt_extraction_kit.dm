/*
/obj/item/storage/box/syndicate/extraction_kit
	name = "Extraction Kit"
	desc = "Supplied to BNI Agents for extraction purposes"
	icon_state = "syndiebox"
	illustration = "writing_syndie"

/obj/item/storage/box/syndicate/extraction_loadout
	name = "Standard Loadout"
	desc = "Supplied to BNI Agents. supplied with their basic gear."
	icon_state = "syndiebox"
	illustration = "writing_syndie"

/obj/item/paper/extraction_guide
	name = "Extraction Guide"

/obj/item/paper/extraction_guide/Initialize()
	info = {"</p>
			<p>Greetings agent.</p>
			<p>Provided within, we give you your specialist hardsuit, one that's suited more for stealth purposes than the Death Commando suit, being both faster than your normal hardsuits and more compact, being able to place it inside your bag.We also have provided you with a set of chameleon clothes, both of which can be changed to any form you need for the moment. The cigarettes are a special blend - it'll heal your injuries slowly overtime due to the Omizine within.</p>
			<p>The contractor baton we provided you, hits harder than the ones you might be used to, and will likely be your go to weapon for capturing your targets. The three additional items have been randomly selected from what we had available. We hope they're useful to you for your mission.</p>
			<p>The Extraction Hub, available at the top right of the uplink, will provide you unique items and abilities. These are bought using Extraction points, with two Points being provided each time you complete an extraction</p>
			<h3>Using the tablet</h3>
			<ol>
			<li>Open the BNI Extraciton Uplink program.</li>
			<li>Here, you can accept an extraction target, and redeem your TC payments from completed extractions.</li>
			<li>The payment number shown in brackets is the bonus you'll receive when bringing your target <strong>alive</strong>. You receive the other number regardless of if they were alive or dead.</li>
			<li>Contracts are completed by bringing the target to designated dropoff, calling for extraction, and putting them inside the pod.</li>
			</ol>
			<p>Be careful when accepting a target. While you'll be able to see the location of the dropoff point, cancelling will make it unavailable to take on again.</p>
			<p>The tablet can also be recharged at any cell charger.</p>
			<h3>Extracting</h3>
			<ol>
			<li>Make sure both yourself and your target are at the dropoff.</li>
			<li>Call the extraction, and stand back from the drop point.</li>
			<li>If it fails, make sure your target is inside, and there's a free space for the pod to land.</li>
			<li>Grab your target, and drag them into the pod.</li>
			</ol>
			<h3>Insurance Policy</h3>
			<p>We need your target for internal security reasons, but we ransom them back to your mission area once their use is served. They will return back from where you sent them off from in several minutes time. Don't worry, we give you a cut of what we get paid. We pay this into whatever ID card you have equipped, on top of the TC payment we give.</p>
			<p>Good luck agent. You can burn this document with the supplied lighter.</p>
			"}

	return ..()

/obj/item/storage/box/syndicate/extraction_loadout/PopulateContents()
	new /obj/item/clothing/under/chameleon(src)
	new /obj/item/clothing/mask/chameleon(src)
	new /obj/item/card/id/syndicate(src)
	new /obj/item/storage/fancy/cigarettes/cigpack_syndicate(src)
	new /obj/item/lighter(src)

/obj/item/storage/box/syndicate/extraction_kit/PopulateContents()
	new /obj/item/modular_computer/tablet/syndicate_contract_uplink/preset/uplink(src)
	new /obj/item/storage/box/syndicate/contractor_loadout(src)
	new /obj/item/melee/classic_baton/telescopic/contractor_baton(src)

	// All about 4 TC or less - some nukeops only items, but fit nicely to the theme.
	var/list/item_list = list(
		/obj/item/storage/backpack/duffelbag/syndie/x4,
		/obj/item/storage/box/syndie_kit/throwing_weapons,
		/obj/item/gun/syringe/syndicate,
		/obj/item/pen/edagger,
		/obj/item/pen/sleepy,
		/obj/item/flashlight/emp,
		/obj/item/reagent_containers/syringe/mulligan,
		/obj/item/clothing/shoes/chameleon/noslip,
		/obj/item/storage/firstaid/tactical,
		/obj/item/encryptionkey/cent_agent,
		/obj/item/clothing/glasses/thermal/syndi,
		/obj/item/slimepotion/slime/sentience/nuclear,
		/obj/item/storage/box/syndie_kit/imp_radio,
		/obj/item/storage/box/syndie_kit/imp_uplink,
		/obj/item/clothing/gloves/krav_maga/combatglovesplus,
		/obj/item/gun/ballistic/automatic/c20r/toy/unrestricted/riot,
		/obj/item/reagent_containers/hypospray/medipen/stimulants,
		/obj/item/storage/box/syndie_kit/imp_freedom,
	)

	var/obj/item1 = pick_n_take(item_list)
	var/obj/item2 = pick_n_take(item_list)
	var/obj/item3 = pick_n_take(item_list)

	// Create two, non repeat items from the list.
	new item1(src)
	new item2(src)
	new item3(src)

	// Paper guide
	new /obj/item/paper/contractor_guide(src)
*/
