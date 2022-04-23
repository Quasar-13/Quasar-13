/obj/effect/mob_spawn/human/corpse/solgovgenericcorpse
	name = "Kepler Mercenary Operative"
	id_job = "Operative"
	hairstyle = "Bald"
	facial_hairstyle = "Shaved"
	outfit = /datum/outfit/solgovgenericcorpse

/datum/outfit/solgovgenericcorpse
	name = "Kepler Mercenary Corpse"
	uniform = /obj/item/clothing/under/syndicate
	suit = /obj/item/clothing/suit/armor/vest
	shoes = /obj/item/clothing/shoes/combat
	gloves = /obj/item/clothing/gloves/color/black
	ears = /obj/item/radio/headset
	mask = /obj/item/clothing/mask/gas
	head = /obj/item/clothing/head/helmet/swat
	back = /obj/item/storage/backpack
	id = /obj/item/card/id/syndicate

/datum/outfit/solgovcorpsemarksman
	name = "Kepler Marksman Corpse"
	uniform = /obj/item/clothing/under/syndicate
	suit = /obj/item/clothing/suit/armor/vest
	shoes = /obj/item/clothing/shoes/combat
	gloves = /obj/item/clothing/gloves/color/black
	ears = /obj/item/radio/headset
	mask = /obj/item/clothing/mask/gas
	head = /obj/item/clothing/head/helmet/kepler
	back = /obj/item/storage/backpack
	id = /obj/item/card/id/syndicate

/datum/outfit/solgovcorpsecloaker
	name = "Kepler Elite Corpse"
	uniform = /obj/item/clothing/under/syndicate
	suit = /obj/item/clothing/suit/armor/vest
	shoes = /obj/item/clothing/shoes/combat
	gloves = /obj/item/clothing/gloves/color/black
	ears = /obj/item/radio/headset
	mask = /obj/item/clothing/mask/gas
	head = /obj/item/clothing/head/helmet/kepler/cloaker
	back = /obj/item/storage/backpack
	id = /obj/item/card/id/syndicate

/datum/outfit/solgovcorpselmg
	name = "Kepler Heavy Gunner Corpse"
	uniform = /obj/item/clothing/under/syndicate
	suit = /obj/item/clothing/suit/armor/vest
	shoes = /obj/item/clothing/shoes/combat
	gloves = /obj/item/clothing/gloves/color/black
	ears = /obj/item/radio/headset
	mask = /obj/item/clothing/mask/gas
	head = /obj/item/clothing/head/helmet/kepler/heavy
	back = /obj/item/storage/backpack
	id = /obj/item/card/id/syndicate

/datum/outfit/solgovcorpseshotgunner
	name = "Kepler Heavy Shotgunner Corpse"
	uniform = /obj/item/clothing/under/syndicate
	suit = /obj/item/clothing/suit/armor/vest
	shoes = /obj/item/clothing/shoes/combat
	gloves = /obj/item/clothing/gloves/color/black
	ears = /obj/item/radio/headset
	mask = /obj/item/clothing/mask/gas
	head = /obj/item/clothing/head/helmet/kepler/heavy/shotgunner
	back = /obj/item/storage/backpack
	id = /obj/item/card/id/syndicate

/datum/outfit/solgovcorpseassault
	name = "Kepler Elite Mercenary Corpse"
	uniform = /obj/item/clothing/under/syndicate
	suit = /obj/item/clothing/suit/armor/vest
	shoes = /obj/item/clothing/shoes/combat
	gloves = /obj/item/clothing/gloves/color/black
	ears = /obj/item/radio/headset
	mask = /obj/item/clothing/mask/gas
	head = /obj/item/clothing/head/helmet/kepler/assault
	back = /obj/item/storage/backpack
	id = /obj/item/card/id/syndicate

/datum/outfit/solgovcorpsepilot
	name = "Kepler Pilot Corpse"
	uniform = /obj/item/clothing/under/syndicate
	suit = /obj/item/clothing/suit/armor/vest
	shoes = /obj/item/clothing/shoes/combat
	gloves = /obj/item/clothing/gloves/color/black
	ears = /obj/item/radio/headset
	mask = /obj/item/clothing/mask/gas
	head = /obj/item/clothing/head/helmet/kepler/pilot
	back = /obj/item/storage/backpack
	id = /obj/item/card/id/syndicate

/datum/outfit/solgovmerc
	name = "Kepler Mercenary"
	uniform = /obj/item/clothing/under/syndicate
	suit = /obj/item/clothing/suit/armor/vest
	shoes = /obj/item/clothing/shoes/combat
	gloves = /obj/item/clothing/gloves/color/black
	ears = /obj/item/radio/headset
	mask = /obj/item/clothing/mask/gas
	head = /obj/item/clothing/head/helmet/kepler/nco
	back = /obj/item/storage/backpack
	id = /obj/item/card/id/syndicate

/datum/outfit/solgovmercassault
	name = "Kepler Mercenary Assault"
	uniform = /obj/item/clothing/under/syndicate
	suit = /obj/item/clothing/suit/armor/vest
	shoes = /obj/item/clothing/shoes/combat
	gloves = /obj/item/clothing/gloves/color/black
	ears = /obj/item/radio/headset
	mask = /obj/item/clothing/mask/gas
	head = /obj/item/clothing/head/helmet/kepler/assault
	back = /obj/item/storage/backpack
	id = /obj/item/card/id/syndicate

/datum/outfit/solgovcorpsehazmat
	name = "Kepler Hazmat Corpse"
	uniform = /obj/item/clothing/under/syndicate
	suit = /obj/item/clothing/suit/armor/vest
	shoes = /obj/item/clothing/shoes/combat
	gloves = /obj/item/clothing/gloves/color/black
	ears = /obj/item/radio/headset
	mask = /obj/item/clothing/mask/gas
	head = /obj/item/clothing/head/helmet/swat
	back = /obj/item/storage/backpack
	id = /obj/item/card/id/syndicate

/datum/outfit/solgovcorpsenco
	name = "Kepler Mercenary NCO Corpse"
	uniform = /obj/item/clothing/under/syndicate
	suit = /obj/item/clothing/suit/armor/vest
	shoes = /obj/item/clothing/shoes/combat
	gloves = /obj/item/clothing/gloves/color/black
	ears = /obj/item/radio/headset
	mask = /obj/item/clothing/mask/gas
	head = /obj/item/clothing/head/helmet/kepler/nco
	back = /obj/item/storage/backpack
	id = /obj/item/card/id/syndicate

/mob/living/simple_animal/hostile/solgov
	name = "Solgov Standard"
	desc = "Protecting your future, unless you don't speak sol common. Unarmed"
	icon = 'icons/mob/simple_human.dmi'
	icon_state = "solgovgeneric"
	icon_living = "solgovgeneric"
	icon_dead = "russianmelee_dead"
	icon_gib = "syndicate_gib"
	mob_biotypes = MOB_ORGANIC|MOB_HUMANOID
	speak_chance = 1
	turns_per_move = 5
	speed = 1
	maxHealth = 100
	health = 100
	harm_intent_damage = 15
	melee_damage_lower = 15
	melee_damage_upper = 15
	attack_verb_continuous = "punches"
	attack_verb_simple = "punch"
	attack_sound = 'sound/weapons/punch1.ogg'
	a_intent = INTENT_HARM
	footstep_type = FOOTSTEP_MOB_SHOE
	loot = list(/obj/effect/mob_spawn/human/corpse/russian,
	/obj/effect/spawner/lootdrop/medical/firstaid_rare)
	atmos_requirements = list("min_oxy" = 0, "max_oxy" = 0, "min_tox" = 0, "max_tox" = 0, "min_co2" = 0, "max_co2" = 0, "min_n2" = 0, "max_n2" = 0)
	minbodytemp = 0
	faction = list("russian")
	check_friendly_fire = TRUE
	status_flags = CANPUSH
	del_on_death = 1
	var/projectile_deflect_chance = 0

//them being russian is a place holder for now.
/mob/living/simple_animal/hostile/solgov/can_inject(mob/user, error_msg)
	if(error_msg)
		to_chat(user, "<span class='alert'>[p_their(TRUE)] armor is too tough!</span>")
	return FALSE

/mob/living/simple_animal/hostile/solgov/ranged
	name = "Mercenary Privateer"
	desc = "Protecting your future, unless you don't speak sol common, Armed with a pistol"
	icon_state = "solgovranged"
	icon_living = "solgovranged"
	ranged = 1
	retreat_distance = 4
	minimum_distance = 3
	casingtype = /obj/item/ammo_casing/c45
	projectilesound = 'sound/weapons/gun/pistol/shot_alt.ogg'
	loot = list(/obj/effect/mob_spawn/human/corpse/russian,
	/obj/item/gun/ballistic/automatic/pistol/m1911,
	/obj/effect/spawner/lootdrop/medical/firstaid_rare)

/mob/living/simple_animal/hostile/solgov/ranged/smg
	name = "Mercenary NCO"
	desc = "Armed with SMG, Ready to fire upon you"
	icon_state = "solgovrangedsmg"
	icon_living = "solgovrangedsmg"
	maxHealth = 115
	health = 115
	rapid = 2
	rapid_fire_delay = 5
	retreat_distance = 4
	minimum_distance = 3
	casingtype = /obj/item/ammo_casing/c45
	projectilesound = 'sound/weapons/gun/smg/shot.ogg'
	loot = list(/obj/effect/mob_spawn/human/corpse/russian,
	/obj/item/gun/ballistic/automatic/mini_uzi/kepler,
	/obj/effect/spawner/lootdrop/medical/firstaid_rare)

/mob/living/simple_animal/hostile/solgov/ranged/smg/hazmat
	name = "Solgov Scientist"
	desc = "Armed with SMG, Ready to enforce to quarantine"
	icon_state = "solgovhazmat"
	icon_living = "solgovhazmat"
	maxHealth = 135
	health = 135
	rapid = 3
	rapid_fire_delay = 6
	retreat_distance = 4
	minimum_distance = 3
	casingtype = /obj/item/ammo_casing/c45
	projectilesound = 'sound/weapons/gun/smg/shot.ogg'
	loot = list(/obj/effect/mob_spawn/human/corpse/russian,
	/obj/item/gun/ballistic/automatic/mini_uzi/kepler,
	/obj/effect/spawner/lootdrop/medical/firstaid_rare)

//SPECIAL UNITS!! a slight warning, these guy does a lot of fucking damages and should be placed carefully
//HEAVY EMPHASIS ON CAREFULLY, THEY CAN BE DEVASTATING TO UNPREPARED PLAYERS
/mob/living/simple_animal/hostile/solgov/ranged/cloaker
	name = "Solgov Elite"
	desc = "What the hell is that thing"
	icon_state = "solgovcloaker"
	icon_living = "solgovcloaker"
	speed = 2
	maxHealth = 85
	health = 85
	harm_intent_damage = 5
	melee_damage_lower = 55
	melee_damage_upper = 5
	minimum_distance = 1
	casingtype = /obj/item/ammo_casing/c46x30mm
	projectilesound = 'sound/weapons/gun/smg/shot.ogg'
	loot = list(/obj/effect/mob_spawn/human/corpse/russian,
	/obj/item/gun/ballistic/automatic/mini_uzi/kepler,
	/obj/effect/spawner/lootdrop/medical/firstaid_rare)
	projectile_deflect_chance = 70

/mob/living/simple_animal/hostile/solgov/ranged/cloaker/Aggro()
	..()
	summon_backup(15)
	say("I'm gonna turn you inside out!")

/mob/living/simple_animal/hostile/solgov/ranged/cloaker/Initialize()
	. = ..()
	set_light(2)

/mob/living/simple_animal/hostile/solgov/ranged/heavy
	name = "Mercenary Elite"
	desc = "Protecting your future, Now stop resisting"
	icon_state = "solgovrangedlmg"
	icon_living = "solgovrangedlmg"
	speed = 0.8
	maxHealth = 155
	health = 155
	retreat_distance = 4
	minimum_distance = 3
	rapid = 5
	rapid_fire_delay = 6
	casingtype = /obj/item/ammo_casing/c46x30mm
	projectilesound = 'sound/weapons/gun/l6/shot.ogg'
	loot = list(/obj/effect/mob_spawn/human/corpse/russian,
	/obj/item/gun/ballistic/automatic/ar/hk21,
	/obj/effect/spawner/lootdrop/medical/firstaid_rare)

/mob/living/simple_animal/hostile/solgov/ranged/heavy/Aggro()
	..()
	summon_backup(15)
	say("Time to earn your pay!")

/mob/living/simple_animal/hostile/solgov/ranged/heavy/shotgun
	name = "Mercenary Heavy Shotgunner"
	desc = "An absolute unit, he's also running right at you"
	icon_state = "solgovrangedshotgun"
	icon_living = "solgovrangedshotgun"
	speed = 0.8
	maxHealth = 175
	health = 175
	minimum_distance = 2
	rapid = 3
	rapid_fire_delay = 10
	casingtype = /obj/item/ammo_casing/c46x30mm
	projectilesound = 'sound/weapons/gun/smg/shot.ogg'
	loot = list(/obj/effect/mob_spawn/human/corpse/russian,
	/obj/item/gun/ballistic/shotgun/riot/shortie,
	/obj/effect/spawner/lootdrop/medical/firstaid_rare)

/mob/living/simple_animal/hostile/solgov/ranged/heavy/shotgun/Aggro()
	..()
	summon_backup(15)
	say("There I see them!")

/mob/living/simple_animal/hostile/solgov/ranged/rifle
	name = "Mercenary Rifleman"
	desc = "A karate master also an excellent marksman, you\'re not supposed to be this close to look at him"
	icon_state = "solgovrangedrifle"
	icon_living = "solgovrangedrifle"
	maxHealth = 95
	health = 95
	harm_intent_damage = 25
	melee_damage_lower = 25
	melee_damage_upper = 25
	retreat_distance = 15
	minimum_distance = 4
	casingtype = /obj/item/ammo_casing/p50/penetrator
	rapid_fire_delay = 25
	projectilesound =  'sound/weapons/gun/sniper/shot.ogg'
	aggro_vision_range = 15
	vision_range = 15
	loot = list(/obj/effect/mob_spawn/human/corpse/russian,
	/obj/item/gun/ballistic/shotgun/lever_action/scope,
	/obj/effect/spawner/lootdrop/medical/firstaid_rare)
/mob/living/simple_animal/hostile/solgov/ranged/rifle/Aggro()
	..()
	summon_backup(45)
	say("Target Sighted")

/mob/living/simple_animal/hostile/solgov/ranged/assault
	name = "Mercenary Assault"
	desc = "Armed with SG-P29, This absolute unit is here to ruin your day."
	icon_state = "solgovassault"
	icon_living = "solgovassault"
	maxHealth = 145
	health = 145
	rapid = 3
	rapid_fire_delay = 4
	retreat_distance = 2
	minimum_distance = 1
	casingtype = /obj/item/ammo_casing/a556
	projectilesound = 'sound/weapons/gun/l6/shot.ogg'
	loot = list(/obj/effect/mob_spawn/human/corpse/russian,
	/obj/item/gun/ballistic/automatic/ar/xm29,
	/obj/effect/spawner/lootdrop/medical/firstaid_rare)

/mob/living/simple_animal/hostile/solgov/ranged/assault/Aggro()
	..()
	summon_backup(35)
	say("POZHAR NA VOLE")
//POZHAR NA VOLE
