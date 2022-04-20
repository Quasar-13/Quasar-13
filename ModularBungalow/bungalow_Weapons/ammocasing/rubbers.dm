// 9mm (Makarov and Stechkin APS)

/obj/item/ammo_casing/c9mm/rubber
	name = "9mm rubber bullet casing"
	desc = "A 9mm bullet casing."
	caliber = CALIBER_9MM
	projectile_type = /obj/projectile/bullet/c9mm_rb

/obj/projectile/bullet/c9mm_rb
	name = "9mm rubber bullet"
	damage = 0
	stamina = 17
	embedding = null
	shrapnel_type = null

/obj/item/ammo_box/magazine/vector
	name = "vector smg magazine"
	desc = "A gun magazine."
	icon_state = "smg9mmr"
	ammo_type = /obj/item/ammo_casing/c9mm/rubber
	caliber = CALIBER_9MM
	max_ammo = 100
	multiple_sprites = AMMO_BOX_FULL_EMPTY
