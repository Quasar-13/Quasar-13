//Neo Labcoats

//Doc Alternate
/obj/item/clothing/suit/neocoat
	name = "doctor's long labcoat"
	desc = "A long white labcoat used by doctors occasionally"
	icon = 'ModularBungalow/zbungalowicons/clothing/newlabcoats.dmi'
	worn_icon = 'ModularBungalow/zbungalowicons/clothing/newlabcoats_worn.dmi'
	icon_state = "labcoat_doc_alt"
	inhand_icon_state = "labcoat"
	allowed = list(/obj/item/analyzer, /obj/item/stack/medical, /obj/item/dnainjector, /obj/item/reagent_containers/dropper, /obj/item/reagent_containers/syringe, /obj/item/reagent_containers/hypospray, /obj/item/healthanalyzer, /obj/item/flashlight/pen, /obj/item/reagent_containers/glass/bottle, /obj/item/reagent_containers/glass/beaker, /obj/item/reagent_containers/pill, /obj/item/storage/pill_bottle, /obj/item/paper, /obj/item/melee/classic_baton/telescopic, /obj/item/soap, /obj/item/sensor_device, /obj/item/tank/internals/emergency_oxygen, /obj/item/tank/internals/plasmaman, /obj/item/biopsy_tool)
	armor = list(MELEE = 0, BULLET = 0, LASER = 0,ENERGY = 0, BOMB = 0, BIO = 0, RAD = 0, FIRE = 0, ACID = 50)

//Viro Alternate
/obj/item/clothing/suit/neocoat/viro
	name = "virologist's long labcoat"
	desc = "A long labcoat with green hues used by doctors occasionally"
	icon_state = "labcoat_viro_alt"

//Geneticist Alternate
/obj/item/clothing/suit/neocoat/gene
	name = "geneticist's long labcoat"
	desc = "A long labcoat with a blue sleeve used by geneticists occasionally"
	icon_state = "labcoat_gene_alt"

//CMO Alternate
/obj/item/clothing/suit/neocoat/cmo
	name = "cmo's long labcoat"
	desc = "A long labcoat with gold buttons. The CMO can be seen with it sometimes."
	icon_state = "labcoat_cmo_alt"

//Pharmacist new
/obj/item/clothing/suit/neocoat/pharm
	name = "pharmacist's labcoat"
	desc = "A beautiful orange labcoat for the pharamcists to wear. has outstanding acid resistance."
	icon_state = "labcoat_chem"

//Sci Alternate
/obj/item/clothing/suit/neocoat/sci
	name = "scientist's long labcoat"
	desc = "A beautiful purple labcoat for the scientists to wear."
	icon_state = "labcoat_sci"

//Robotics Black
/obj/item/clothing/suit/neocoat/roboblack
	name = "roboticist's black labcoat"
	desc = "A beautiful black and red labcoat for the roboticists to wear."
	icon_state = "labcoat_roboblack"

//Robotics white
/obj/item/clothing/suit/neocoat/robowhite
	name = "roboticist's white labcoat"
	desc = "A beautiful white and red labcoat for the roboticists to wear."
	icon_state = "labcoat_robowhite"

//Brig Doctor
/obj/item/clothing/suit/neocoat/brigdoc
	name = "brig doctor's labcoat"
	desc = "A beautiful red and black labcoat for deputized doctors to wear."
	icon_state = "labcoat_brig"

//Xenoarch
/obj/item/clothing/suit/neocoat/xeno
	name = "xenoarchaeologist's labcoat"
	desc = "A long, armored labcoat that looks a little ugly...."
	icon_state = "labcoat_geo"
	allowed = list(/obj/item/pickaxe, /obj/item/tank/internals)
	armor = list(MELEE = 25, BULLET = 0, LASER = 10,ENERGY = 10, BOMB = 30, BIO = 0, RAD = 0, FIRE = 100, ACID = 50)
