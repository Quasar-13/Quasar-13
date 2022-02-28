/obj/item/storage/box/randomid
	name = "The HOP's lucky ID box"
	desc = "A box holding the HOP's prized posession"

/obj/item/storage/box/randomid/PopulateContents()
	var randomid = pick(subtypesof(/obj/item/card/id/random))
	new randomid(src)


/obj/item/card/id/random
	name = "seafoam identification card"
	desc = "Created to celebrate Tales of Nymphonia releasing on the Nanotrasen Gamegorl Ultra"
	icon_state = "seafoam"

/obj/item/card/id/random/pearl
	name = "pearl white identification card"
	desc = "A beautiful pearl-white ID. Stain resistant."
	icon_state = "pearl"

/obj/item/card/id/random/orange
	name = "orange identification card"
	desc = "A second generation orange ID card. Only a few thousand were produced, and are now used for prisoners."
	icon_state = "orangegcn"

/obj/item/card/id/random/indigo
	name = "indigo identification card"
	desc = "The original ID card colour. NT decided on grey, silver and gold later."
	icon_state = "indigo"

/obj/item/card/id/random/blue
	name = "blue identification card"
	desc = "Contrary to popular belief, this ID is not a centcom ID card."
	icon_state = "blue"

/obj/item/card/id/random/black
	name = "black identification card"
	desc = "After the indigo colour, NT tried a black one. The tests were not successful."
	icon_state = "blackgcn"

/obj/item/card/id/random/ice
	name = "ice-blue identification card"
	desc = "A shiny ice-blue ID card. The sheen really feels like it's premium despite being made of cheap plastic."
	icon_state = "ice"

/obj/item/card/id/random/rose
	name = "rose-gold identification card"
	desc = "Popular among female marshals."
	icon_state = "rosegold"

/obj/item/card/id/random/starlight
	name = "starlight gold identification card"
	desc = "An admiral's wife asked for this ID line to be made specifically for her. Produced in limited quantities"
	icon_state = "starlight"

/obj/item/card/id/random/transparent
	name = "transparent identification card"
	desc = "Limited edition. Reminds you of the good old days."
	icon_state = "transparent"

/obj/item/card/id/random/gundam
	name = "mecha identification card"
	desc = "Used to celebrate the release of a mecha anime."
	icon_state = "gundam"

/obj/item/card/id/random/cherry
	name = "cherry identification card"
	desc = "Nippon-Ichi!"
	icon_state = "cherry"

/obj/item/card/id/random/luigi
	name = "luigi identification card"
	desc = "Luigi!?"
	icon_state = "luigi"
