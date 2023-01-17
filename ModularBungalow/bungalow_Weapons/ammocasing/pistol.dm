//Pistol mags
/obj/item/ammo_box/magazine/avtomag
	name = ".44 Avtomag Magazine"
	desc = "a 10 rounds .44 AMP magazine for the Avtomag."
	ammo_type = /obj/item/ammo_casing/a44
	caliber = CALIBER_44
	max_ammo = 10
	multiple_sprites = AMMO_BOX_FULL_EMPTY
	icon_state = "avtomag-10"
	icon = 'ModularBungalow/bungalow_Weapons/_icon/ammo_box.dmi'

/obj/item/ammo_box/magazine/avtomag/update_icon()
	..()
	if (ammo_count() >= 10)
		icon_state = "avtomag-10"
	else
		icon_state = "avtomag-[ammo_count()]"

/obj/item/ammo_casing/a4570
	name = "45-70 Govt bullet"
	desc = "High Power .45-70 Govt Round, intended for taking down bears and whatnot"
	projectile_type = /obj/projectile/bullet/a4570
	caliber = CALIBER_A4570

/obj/projectile/bullet/a4570
	name = "45-70 Govt bullet"
	damage = 43
	armour_penetration = 80
	wound_bonus = 50
	stamina = 50

/obj/item/ammo_casing/a44
	name = "44 magnum bullet"
	desc = "High Power .44 Magnum Round, What, You're not gonna shoot me Amy"
	projectile_type = /obj/projectile/bullet/a44
	caliber = CALIBER_44

/obj/projectile/bullet/a44
	name = "44 Magnum bullet"
	damage = 44 //because funny
	armour_penetration = 80
	wound_bonus = -70
	ricochets_max = 5
	ricochet_chance = 100
	ricochet_auto_aim_angle = 50
	ricochet_auto_aim_range = 6
	ricochet_incidence_leeway = 80
	ricochet_decay_chance = 1

/obj/item/ammo_casing/a44/heavy
	name = "44 heavy magnum bullet"
	desc = "High Power heavy .44 Magnum Round, will knock target back"
	projectile_type = /obj/projectile/bullet/a44/heavy

/obj/projectile/bullet/a44/heavy
	name = "44 Magnum bullet"
	damage = 33
	armour_penetration = 100
	wound_bonus = 60
	paralyze = 15
	knockdown = 80
	hitsound = 'sound/effects/meteorimpact.ogg'

/obj/projectile/bullet/a44/heavy/on_hit(atom/target, blocked = FALSE)
	. = ..()
	if(ismovable(target))
		var/atom/movable/M = target
		var/atom/throw_target = get_edge_target_turf(M, get_dir(src, get_step_away(M, src)))
		M.safe_throw_at(throw_target, 3, 2)

/obj/item/ammo_box/magazine/m45/big
	name = "Double stack .45 ACP Magazine"
	desc = "Not enough ammo? here's your solution."
	max_ammo = 14
	icon_state = "double45"
	icon = 'ModularBungalow/bungalow_Weapons/_icon/ammo_box.dmi'
/obj/item/ammo_box/magazine/m45/big/update_icon()
	..()
	if (ammo_count() == 0)
		icon_state = "double45-0"
	else
		icon_state = "double45-14"
