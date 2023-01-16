///////////////////////
////////PISTOLS////////
///////////////////////

/obj/item/gun/ballistic/automatic/pistol/sig
	name = "K&H P337"
	desc = "A modern version of the classic P226. Chambered in .38 to be more accessible to poor colonies."
	icon_state = "sig"
	icon = 'ModularBungalow/bungalow_Weapons/_icon/ballistics.dmi'
	mag_type = /obj/item/ammo_box/magazine/sig
	can_suppress = FALSE

/obj/item/gun/ballistic/automatic/pistol/ppk
	name = "MZ Type 64"
	desc = "The classic Chinese handgun. Chambered in .38."
	icon = 'ModularBungalow/bungalow_Weapons/_icon/ballistics.dmi'
	icon_state = "ppk"
	mag_type = /obj/item/ammo_box/magazine/m9mm
	can_suppress = FALSE

/obj/item/gun/ballistic/automatic/pistol/actualppk
	name = "K&H PPK"
	desc = "A modern version of the classic spy gun by Kain and Heinrich. Favored by cheap action movie spies."
	icon = 'ModularBungalow/bungalow_Weapons/_icon/ballistics.dmi'
	icon_state = "ppk380"
	mag_type = /obj/item/ammo_box/magazine/m380
	can_suppress = TRUE

/obj/item/gun/ballistic/automatic/pistol/woodmak
	name = "wood grip makarov"
	desc = "A classic soviet piece, wood grip included. Has a threaded barrel for suppressors."
	icon = 'ModularBungalow/bungalow_Weapons/_icon/ballistics.dmi'
	icon_state = "woodmak"

/obj/item/gun/ballistic/automatic/pistol/aps/wood
	name = "wood grip stechkin APS"
	desc = "An ancient 21st century recreation Stechkin APS. It fires quickly, but kicks like a mule. Uses 9mm ammo. Has a threaded barrel for suppressors."
	icon = 'ModularBungalow/bungalow_Weapons/_icon/ballistics.dmi'
	icon_state = "woodaps"

//Syndie Pistols
/obj/item/gun/ballistic/automatic/pistol/sig/syndie
	name = "CSN C38-S"
	desc = "A classic handgun that packs a nice punch. Cybersun have modified this gun to suit their needs."
	icon_state = "sigs"

/obj/item/gun/ballistic/automatic/pistol/glock/fullauto
	name = "CSN A18"
	desc = "A Cybersun version of an 80s classic. This one is fully automatic, and may break your hand."
	burst_size = 1
	spread = 30
	fire_delay = 0.5

/obj/item/gun/ballistic/automatic/pistol/glock/fullauto/ComponentInitialize()
	. = ..()
	AddComponent(/datum/component/automatic_fire, 0.1 SECONDS)

//NT Pistols
/obj/item/gun/ballistic/automatic/pistol/sec
	name = "NT-MRS 'Venus'"
	desc = "Re-creation of a unique and fancy firearm. Used by lower ranking commissioned officers and high-ranking security staff."
	icon = 'ModularBungalow/bungalow_Weapons/_icon/ballistics.dmi'
	icon_state = "venus"
	mag_type = /obj/item/ammo_box/magazine/m9mm
	can_suppress = FALSE

/obj/item/gun/ballistic/automatic/pistol/commander
	name = "NT-RBY 'Ruby'"
	desc = "A modernised version of the 1911. Feeds 9mm instead of the classic .45 ACP. Sometimes seen in the hands of NT security personnel but more commononly sold on the open market."
	icon_state = "commander"
	mag_type = /obj/item/ammo_box/magazine/m9mm
	can_suppress = FALSE

/obj/item/gun/ballistic/automatic/pistol/mk23
	name = "NT-SCM 'SOCOM'"
	desc = "A pistol used by NT special forces and occasionally marines."
	icon_state = "mk23"
	icon = 'ModularBungalow/bungalow_Weapons/_icon/ballistics.dmi'
	mag_type = /obj/item/ammo_box/magazine/m10mm
	can_suppress = TRUE
	suppressor_x_offset = 7

/obj/item/gun/ballistic/automatic/pistol/glock
	name = "NT-GLK 'Glock'"
	desc = "An NT version of an 80s classic. Commonly used by SolGov law enforcement."
	icon = 'ModularBungalow/bungalow_Weapons/_icon/ballistics.dmi'
	icon_state = "glock"
	mag_type = /obj/item/ammo_box/magazine/glock
	can_suppress = FALSE

//PL-14
/obj/item/gun/ballistic/automatic/pistol/PL14
	name = "PL-14"
	desc = "A Russian semi-automatic pistol chambered in 9x19 Parabellum."
	icon_state = "pl14"
	icon = 'ModularTegustation/Teguicons/kirie_stuff/kiriepistols.dmi'
	w_class = WEIGHT_CLASS_NORMAL
	mag_type = /obj/item/ammo_box/magazine/m9mm
	can_suppress = FALSE
	fire_sound = 'sound/weapons/gun/pistol/shot_alt.ogg'
	rack_sound = 'sound/weapons/gun/pistol/rack.ogg'
	lock_back_sound = 'sound/weapons/gun/pistol/slide_lock.ogg'
	bolt_drop_sound = 'sound/weapons/gun/pistol/slide_drop.ogg'

//Special lore variant
/obj/item/gun/ballistic/automatic/pistol/PL14_nicole
	name = "bloody PL-14"
	desc = "A Russian semi-automatic pistol chambered in 9x19 Parabellum. The name 'Nicole' is scribed in gold leaf into the side, and there is centuries old, caked on blood coating the handle. You get a feeling the owner is long dead."
	icon_state = "pl14_nicole"
	icon = 'ModularTegustation/Teguicons/kirie_stuff/kiriepistols.dmi'

//Albeit less succesfully heres the AUTOMAG
/obj/item/gun/ballistic/automatic/pistol/avtomag
	name = "KT-M35 Avtomag"
	desc = "A special pistol made to fire .44 AMP, although the gun ceased production a long time ago, a certain factory still produce it, Now seen in the hands of certain high ranking kepler officer and solgov officers alike. <b>Do you feel lucky? NO I DON'T, NOT ANYMORE</b>."
	icon_state = "avtomag"
	icon = 'ModularTegustation/Teguicons/kirie_stuff/kiriepistols.dmi'
	mag_type = /obj/item/ammo_box/magazine/avtomag

//Delta M1911
/obj/item/gun/ballistic/automatic/pistol/m45a1
	name = "KT-P23 'Dusker'"
	desc = "A heavy duty pistol chambered in .45 ACP, it's got a rather decieving appearance as it's actually quite powerful, the gun itself is infact an upgraded M1911."
	icon_state = "m45a1"
	icon = 'ModularBungalow/bungalow_Weapons/_icon/ballistics.dmi'
	mag_type = /obj/item/ammo_box/magazine/m45/big
	projectile_damage_multiplier = 1.15
	fire_delay = 2

//M93R and AJM9 Here
/obj/item/gun/ballistic/automatic/pistol/m93r
	name = "m93r"
	desc = "an Italian selective-fire machine pistol, designed and manufactured by Beretta in the late 1970s for police and military use."
	icon_state = "m93r"
	icon = 'ModularBungalow/bungalow_Weapons/_icon/ballistics.dmi'
	fire_delay = 1.6
	burst_size = 3

/obj/item/gun/ballistic/automatic/pistol/m93r/burst_select()
	var/mob/living/carbon/human/user = usr
	switch(select)
		if(0)
			select = 1
			burst_size = initial(burst_size)
			fire_delay = initial(fire_delay)
			to_chat(user, "<span class='notice'>You switch to [burst_size]-rnd burst.</span>")
		if(1)
			select = 0
			burst_size = 1
			fire_delay = 0
			to_chat(user, "<span class='notice'>You switch to semi-auto.</span>")
	playsound(user, 'sound/weapons/empty.ogg', 100, TRUE)
	update_icon()
	return


////////////////////
//////REVOLVERS////
///////////////////

/obj/item/gun/ballistic/revolver/update_overlays()
	. = ..()
	if(!selector_switch_icon)
		return
	if(!select)
		. += "[initial(icon_state)]_semi"
	if(select == 1)
		. += "[initial(icon_state)]_burst"

/obj/item/gun/ballistic/revolver/ui_action_click(mob/user, actiontype)
	if(istype(actiontype, /datum/action/item_action/toggle_firemode))
		burst_select()
	else
		..()

/obj/item/gun/ballistic/revolver/proc/burst_select()
	var/mob/living/carbon/human/user = usr
	select = !select
	if(!select)
		burst_size = 1
		fire_delay = 0
		to_chat(user, "<span class='notice'>You switch to semi-automatic.</span>")
	else
		burst_size = initial(burst_size)
		fire_delay = initial(fire_delay)
		to_chat(user, "<span class='notice'>You switch to [burst_size]-round fan fire.</span>")

	playsound(user, 'sound/weapons/empty.ogg', 100, TRUE)
	update_icon()
	for(var/X in actions)
		var/datum/action/A = X
		A.UpdateButtonIcon()

//Colt Detective Special Ivory. a gun used by the kitsune
/obj/item/gun/ballistic/revolver/akira
	name = "Vixen 31 'Red Right Hand'"
	desc = "An ornate special revolver produced by Colt. There's a safety mechanism preventing you from firing it one handed, the strange built in barrel charger decreases firerate and accuracy but immensely increase damage output. Chambered in .223 Remington and should be compatible with most ammo made around that, requires two hand to fire as a safety precaution. A mysterious gun developed prior to the occult war and used by New Moscow Snow Ranger Department. It faintly smells of cinnamon and sake. There's an engraving of a nine tailed fox curled up and resting."
	icon_state = "redgrip"
	icon = 'ModularBungalow/bungalow_Weapons/_icon/48x32sprites.dmi'
	mag_type = /obj/item/ammo_box/magazine/internal/cylinder/rev556
	initial_caliber = CALIBER_A556
	projectile_damage_multiplier = 1.5
	recoil = 6
	fire_sound = 'sound/weapons/gun/revolver/shot_altp.ogg'
	weapon_weight = WEAPON_HEAVY //Balance reason, you can actually fire a .45-70 revolver one handed and hit a target up to 100 meters just fine.
	fire_delay = 3

/obj/item/gun/ballistic/revolver/akira/burst_select()
	var/mob/living/carbon/human/user = usr
	switch(select)
		if(0)
			select = 1
			spread = initial(spread)
			fire_delay = initial(fire_delay)
			projectile_damage_multiplier = initial(projectile_damage_multiplier)
			to_chat(user, "<span class='notice'>You switch to semi-auto.</span>")
		if(1)
			select = 0
			spread = 30
			fire_delay = 1.5
			projectile_damage_multiplier = 1.15 //fanfiring it obviously reducethe damage due to you forcing the gun to fire faster than it should
			to_chat(user, "<span class='notice'>You switch to fan fire.</span>")
	playsound(user, 'sound/weapons/empty.ogg', 100, TRUE)
	update_icon()
	return

//Your short barreled
/obj/item/gun/ballistic/revolver/akira/snub
	name = "colt detective special redgrip"
	desc = "What a nice looking gun I hope it will not get used for genocide, chambered in 5.56x45 NATO  for some odd reason"
	w_class = WEIGHT_CLASS_SMALL
	icon_state = "redgrip"
	icon = 'ModularBungalow/bungalow_Weapons/_icon/ballistics.dmi'
	initial_caliber = CALIBER_A556
	projectile_damage_multiplier = 1.2
	recoil = 3
	fire_sound = 'sound/weapons/gun/revolver/shot_altp.ogg'
	weapon_weight = WEAPON_LIGHT
	fire_delay = 1

//Marsoc Variant
/obj/item/gun/ballistic/revolver/akira/snub/specop
	name = "SG-V35 'Law Left hand'"
	desc = "A sol gov reproduction of the rare Vixen-31 handgun, much shorter barrel allows ease of storage and concealment. Less muzzle velocity but it maintains lethality nonetheless. Still chambered in the .223 Remington and should be compatible with most ammo made afterward."
	icon_state = "redgripspecop"
	icon = 'ModularBungalow/bungalow_Weapons/_icon/ballistics.dmi'
	projectile_damage_multiplier = 1.3
	fire_delay = 0 //FIRE AT WILL MOTHERFUCKER

/obj/item/ammo_box/magazine/internal/cylinder/rev556
	ammo_type = /obj/item/ammo_casing/a556
	caliber = CALIBER_A556
	max_ammo = 6

//Taurus Judge
/obj/item/gun/ballistic/revolver/judge
	name = "SG-S14 'Judge'"
	desc = "The classic high-powered revolver made in brazil, Typically used by judges as personal defenses weapon both courtroom and outside of it. It hold six shotgun shells, should be more than enough to kill anything that move."
	icon_state = "judge"
	icon = 'ModularBungalow/bungalow_Weapons/_icon/ballistics.dmi'
	mag_type = /obj/item/ammo_box/magazine/internal/cylinder/revjudge
	initial_caliber = CALIBER_SHOTGUN
	recoil = 3
	pb_knockback = 3
	fire_delay = 1.5
/obj/item/ammo_box/magazine/internal/cylinder/revjudge
	caliber = CALIBER_SHOTGUN
	max_ammo = 6
	ammo_type = /obj/item/ammo_casing/shotgun
//Chiappa Rhino
/obj/item/gun/ballistic/revolver/rhino
	name = "Chiappa Rhino"
	desc = "A special pistol made for the captain, chambered in .38"
	icon_state = "rhino"
	icon = 'ModularBungalow/bungalow_Weapons/_icon/ballistics.dmi'
	mag_type = /obj/item/ammo_box/magazine/internal/cylinder/rev38
	initial_caliber = CALIBER_38

//Magnum Research Sequoia from New Vegas
/obj/item/gun/ballistic/revolver/sequoia
	name = "Commander's Sequoia Pistol"
	desc = "A pistol for solgov commander made in Romulus by Kepler Technology, fighting against all tyrant it has come a long way since then and it's now in your hand, chambered in the obsolete .45-70 Government. Extremely overpowered and would easily shred anything that dares piss you off, don't waste your ammo. Only 20000 of these were ever made and you are lucky to have one of them. Beautifully decorated in gold with wooden finishes and engraved on the bottom is <b>'Thank you for your 20 years of service'</b>"
	icon_state = "sequoia"
	icon = 'ModularBungalow/bungalow_Weapons/_icon/48x32sprites.dmi'
	mag_type = /obj/item/ammo_box/magazine/internal/cylinder/rev4570
	fire_delay = 6
	recoil = 2
	pb_knockback = 5
	initial_caliber = CALIBER_A4570

//Smith and Wesson Model 29

/obj/item/gun/ballistic/revolver/modeltwentynine
	name = "S&W Model 29"
	desc = "An interesting rare revolver chambered in .44 magnum, the most powerful handgun cartridges available to the colonist, Do you feel lucky?"
	icon = 'ModularBungalow/bungalow_Weapons/_icon/ballistics.dmi'
	icon_state = "magnum"
	mag_type = /obj/item/ammo_box/magazine/internal/cylinder/rev44
	initial_caliber = CALIBER_44

/obj/item/ammo_box/magazine/internal/cylinder/rev44
	ammo_type = /obj/item/ammo_casing/a44
	caliber = CALIBER_44
	max_ammo = 6

//Hakita
/obj/item/gun/ballistic/revolver/hakita
	name = "Hakita Special Revolver"
	desc = "A special pistol used by centcom admirals. Looks sleek, kicks ass."
	icon_state = "hakita"
	icon = 'ModularBungalow/bungalow_Weapons/_icon/ballistics.dmi'

//S&W 500 Revolver
/obj/item/gun/ballistic/revolver/sw500
	name = "S&W 500 Revolver"
	desc = "The classic high-powered revolver to rival the Mateba. This one is loaded in .357 with a custom 7 bullet cylinder."
	icon_state = "sw500"
	icon = 'ModularTegustation/Teguicons/kirie_stuff/kiriepistols.dmi'

//Single Action Revolver Here

//Magnum Research BFR
/obj/item/gun/ballistic/shotgun/tracker
	name = "SG-R29 'Tracker'"
	desc = "A horrifyingly powerful single action revolver made specifically for the anti-riot Rangers, fire extremely high powered .45-70 normally meant for fighting heavily armored wildlife in the region."
	icon_state = "tracker"
	icon = 'ModularBungalow/bungalow_Weapons/_icon/ballistics.dmi'
	mag_type = /obj/item/ammo_box/magazine/internal/cylinder/rev4570
	initial_caliber = CALIBER_A4570
	w_class = WEIGHT_CLASS_NORMAL
	inhand_icon_state = "revolver"
	recoil = 2
	pb_knockback = 5
	weapon_weight = WEAPON_LIGHT

/obj/item/ammo_box/magazine/internal/cylinder/rev4570
	ammo_type = /obj/item/ammo_casing/a4570
	caliber = CALIBER_A4570
	max_ammo = 6

