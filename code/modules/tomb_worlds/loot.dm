// Special items that are supposed to be spawned/used in tomb worlds


// Necromancer loot
// Helmet
/obj/item/clothing/head/wizard/magus/necromancer
	name = "\improper Necromancer helm"
	desc = "A helmet that was once worn by a powerful mage that delved way too far into the dark magic techniques."
	armor = list(MELEE = 70, BULLET = 50, LASER = 40, ENERGY = 60, BOMB = 80, BIO = 100, RAD = 70, FIRE = 100, ACID = 100,  WOUND = 30)
	cold_protection = HEAD
	min_cold_protection_temperature = SPACE_HELM_MIN_TEMP_PROTECT
	heat_protection = HEAD
	max_heat_protection_temperature = FIRE_IMMUNITY_MAX_TEMP_PROTECT
	flash_protect = FLASH_PROTECTION_WELDER
	resistance_flags = FIRE_PROOF | LAVA_PROOF
	clothing_flags = SNUG_FIT | STOPSPRESSUREDAMAGE | THICKMATERIAL
	flags_inv = HIDEMASK|HIDEEARS|HIDEFACE|HIDEHAIR|HIDEFACIALHAIR|HIDESNOUT
	flags_cover = HEADCOVERSEYES | HEADCOVERSMOUTH | PEPPERPROOF
	dynamic_hair_suffix = ""
	dynamic_fhair_suffix = ""
	strip_delay = 80
	var/obj/effect/proc_holder/spell/pointed/necromancer_curse/spell

/obj/item/clothing/head/wizard/magus/necromancer/Initialize()
	. = ..()
	spell = new(src)

/obj/item/clothing/head/wizard/magus/necromancer/equipped(mob/user, slot)
	. = ..()
	if(slot & ITEM_SLOT_HEAD)
		user?.mind?.AddSpell(spell)
		return
	user?.mind?.TempRemoveSpell(spell)

/obj/item/clothing/head/wizard/magus/necromancer/dropped(mob/user)
	..()
	user?.mind?.TempRemoveSpell(spell)

// Suit
/obj/item/clothing/suit/wizrobe/necromancer
	name = "\improper Necromancer robe"
	desc = "A set of dark armored robes that seem to be emitting the power of its previous owner."
	icon_state = "magusdark"
	inhand_icon_state = "magusdark"
	armor = list(MELEE = 70, BULLET = 50, LASER = 40, ENERGY = 60, BOMB = 80, BIO = 100, RAD = 70, FIRE = 100, ACID = 100,  WOUND = 30)
	flags_inv = HIDEGLOVES|HIDESHOES|HIDEJUMPSUIT
	body_parts_covered = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	cold_protection = CHEST | GROIN | LEGS | FEET | ARMS | HANDS
	min_cold_protection_temperature = SPACE_SUIT_MIN_TEMP_PROTECT_OFF
	heat_protection = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	max_heat_protection_temperature = FIRE_IMMUNITY_MAX_TEMP_PROTECT
	resistance_flags = FIRE_PROOF | LAVA_PROOF
	clothing_flags = STOPSPRESSUREDAMAGE | THICKMATERIAL
	allowed = list(/obj/item/flashlight, /obj/item/tank/internals, /obj/item/necromancer_sword)
	strip_delay = 80
	var/obj/effect/proc_holder/spell/targeted/touch/necrotic_revival/spell

/obj/item/clothing/suit/wizrobe/necromancer/Initialize()
	. = ..()
	spell = new(src)

/obj/item/clothing/suit/wizrobe/necromancer/equipped(mob/user, slot)
	. = ..()
	if(slot & ITEM_SLOT_OCLOTHING)
		user?.mind?.AddSpell(spell)
		return
	user?.mind?.TempRemoveSpell(spell)

/obj/item/clothing/suit/wizrobe/necromancer/dropped(mob/user)
	..()
	user?.mind?.TempRemoveSpell(spell)

// Sword
/obj/item/necromancer_sword
	name = "sword of the dead"
	desc = "An ancient relic of the past brought into this realm by a powerful mage to kill once again."
	icon_state = "hfrequency0"
	lefthand_file = 'icons/mob/inhands/weapons/swords_lefthand.dmi'
	righthand_file = 'icons/mob/inhands/weapons/swords_righthand.dmi'
	armour_penetration = 35
	block_chance = 30
	force = 32
	throwforce = 28
	throw_speed = 4
	sharpness = SHARP_EDGED
	attack_verb_continuous = list("cuts", "slices", "dices")
	attack_verb_simple = list("cut", "slice", "dice")
	w_class = WEIGHT_CLASS_BULKY
	slot_flags = ITEM_SLOT_BACK
	hitsound = 'sound/weapons/bladeslice.ogg'
	var/primed = FALSE
	var/bolt_cooldown
	var/bolt_cooldown_time = 10 SECONDS
	var/max_affected = 3
	var/bolt_power = 50000 // Damage in a weird way. Human damage is divided by thousand

/obj/item/necromancer_sword/attack_self(mob/user)
	if(!iscarbon(user) || !user.canUseTopic(src, BE_CLOSE, ismonkey(user)))
		return
	if(primed)
		to_chat(user, "<span class='notice'>You let the energy dissipate.</span>")
		primed = FALSE
	else
		if(bolt_cooldown > world.time)
			to_chat(user, "<span class='notice'>[src] isn't ready yet.</span>")
			return
		to_chat(user, "<span class='notice'>[src] begins to glow, as you channel the electric energy into it.</span>")
		primed = TRUE

/obj/item/necromancer_sword/afterattack(atom/A, mob/living/user, proximity_flag, params)
	. = ..()
	var/turf/T = get_turf(A)
	if(!T)
		return
	if(primed && (bolt_cooldown < world.time))
		if(!(T in view(user.client.view, user)))
			return
		bolt_cooldown = world.time + bolt_cooldown_time
		primed = FALSE
		lightning_bolt(T, user)

/obj/item/necromancer_sword/proc/lightning_bolt(turf/T, mob/living/user)
	user.visible_message("<span class='warning'>[user] points [user.p_their()] blade towards [T] as a lightning bolt appears!</span>", "<span class='notice'>You release blade's energy at [T]!</span>", "<span class='warning'>You hear an electric discharge!</span>")
	playsound(user, 'sound/magic/lightningshock.ogg', 40, 1)
	new /obj/effect/temp_visual/cult/turf/floor(T)
	addtimer(CALLBACK(src, .proc/send_bolt, T), 5)

/obj/item/necromancer_sword/proc/send_bolt(turf/T, mob/living/user)
	var/turf/lightning_source = get_step(get_step(T, NORTH), NORTH)
	if(lightning_source)
		lightning_source.Beam(T, icon_state="lightning[rand(1,12)]", time = 5)
	playsound(get_turf(T), 'sound/magic/lightningbolt.ogg', 40, TRUE)
	var/currently_affected = 0
	for(var/mob/living/L in T)
		if(currently_affected >= max_affected)
			return
		currently_affected += 1
		L.adjustFireLoss(bolt_power/2000)
		to_chat(L, "<span class='userdanger'>You've been hit by a magical lightning bolt!</span>")
		if(ishuman(L))
			var/mob/living/carbon/human/H = L
			H.electrocution_animation(5)
	for(var/obj/effect/decal/remains/R in T)
		if(currently_affected >= max_affected)
			return
		currently_affected += 1
		T.visible_message("<span class='warning'>A skeleton rises from a pile of remains!</span>")
		var/mob/living/simple_animal/skele = new /mob/living/simple_animal/hostile/skeleton/necromancer(T)
		// Skeleton will not attack its creator
		var/list/skele_factions = user.faction.Copy()
		for(var/F in skele_factions)
			if(F == "neutral")
				skele_factions -= F
		skele.faction = skele_factions
		qdel(R)
		new /obj/effect/temp_visual/cult/blood/out(T)
	for(var/obj/O in T)
		if(currently_affected >= max_affected)
			return
		if(!O.density)
			continue
		T.visible_message("<span class='warning'>[O] has been hit by a lightning bolt!</span>")
		currently_affected += 1
		O.zap_act(bolt_power, zap_flags = ZAP_DEFAULT_FLAGS)

//Sif loot
//crusher trophy
/obj/item/crusher_trophy/dark_energy
	name = "dark energy"
	desc = "A black ball of energy that was formed when Sif miraculously imploded. Suitable as a trophy for a kinetic crusher."
	icon = 'ModularBungalow/mobs/megafauna/tomb/sif/icons/sif.dmi'
	icon_state = "sif_energy"
	denied_type = /obj/item/crusher_trophy/dark_energy
	bonus_value = 30

/obj/item/crusher_trophy/dark_energy/effect_desc()
	return "mark detonation to perform a bash dealing <b>[bonus_value]</b> damage"

/obj/item/crusher_trophy/dark_energy/on_mark_detonation(mob/living/target, mob/living/user)
	if(!target)
		return
	var/chargeturf = get_turf(target) //get target turf
	if(!chargeturf)
		return
	var/dir = get_dir(user, chargeturf)//get direction
	var/turf/T = get_ranged_target_turf(chargeturf,dir,2)//get range of the turf
	if(!T)
		return
	playsound(user, pick('ModularBungalow/mobs/megafauna/tomb/sif/sound/whoosh1.ogg', 'ModularBungalow/mobs/megafauna/tomb/sif/sound/whoosh2.ogg', 'ModularBungalow/mobs/megafauna/tomb/sif/sound/whoosh3.ogg'), 300, 1)
	new /obj/effect/temp_visual/decoy/fading(loc,user)
	//Start bashing
	walk(user,0)
	setDir(dir)
	var/movespeed = 0.7
	walk_to(user, T, movespeed)
	target.apply_damage(bonus_value, BRUTE) // Damage
	var/atom/prevLoc = target.loc
	user.loc = prevLoc
	walk(user, 0)
	//Stop bashing
	new /obj/effect/temp_visual/decoy/fading(loc,user)
	playsound(user, 'sound/effects/meteorimpact.ogg', 200, 1, 2, 1)

//sword
/obj/item/melee/sword_of_the_forsaken
	name = "Sword of the Forsaken"
	desc = "A glowing giant heavy blade that grows and slightly shrinks in size depending on the wielder's strength."
	icon = 'ModularBungalow/mobs/megafauna/tomb/sif/icons/sif.dmi'
	icon_state = "sword_of_the_forsaken"
	lefthand_file = 'ModularBungalow/mobs/megafauna/tomb/sif/icons/item_lefthand.dmi'
	righthand_file = 'ModularBungalow/mobs/megafauna/tomb/sif/icons/item_righthand.dmi'
	w_class = WEIGHT_CLASS_HUGE
	force = 25
	throwforce = 10
	block_chance = 10
	armour_penetration = 80
	hitsound = 'ModularBungalow/mobs/megafauna/tomb/sif/sound/sif_slash.ogg'
	attack_verb_continuous = list("attacks", "slashes", "stabs", "slices", "tears", "rips", "dices", "cuts", "guts", "gores")
	attack_verb_simple = list("attacked", "slashed", "stabbed", "sliced", "torn", "ripped", "diced", "cut", "gutted", "gored")
	sharpness = SHARP_EDGED
	resistance_flags = INDESTRUCTIBLE | LAVA_PROOF | FIRE_PROOF | UNACIDABLE | ACID_PROOF

//Enables the sword to butcher bodies
/obj/item/melee/sword_of_the_forsaken/Initialize()
	. = ..()
	AddComponent(/datum/component/butchering, 50, 100, 10)

//Sword blocking attacks, really hard to block projectiles but still possible.
/obj/item/melee/sword_of_the_forsaken/hit_reaction(mob/living/owner, atom/object, damage, attack_text, attack_type, armour_penetration, mob/attacker, def_zone, final_block_chance, list/block_return)
	if(attack_type == PROJECTILE_ATTACK)
		final_block_chance = 5
	return ..()

//necklace
/obj/item/clothing/neck/necklace/necklace_of_the_forsaken
	name = "Necklace of the Forsaken"
	desc = "A rose gold necklace with a small static ember that burns inside of the black gem stone, making it warm to the touch."
	icon = 'ModularBungalow/mobs/megafauna/tomb/sif/icons/sif.dmi'
	icon_state = "necklace_forsaken_active"
	worn_icon = 'ModularBungalow/mobs/megafauna/tomb/sif/icons/worn.dmi'
	actions_types = list(/datum/action/item_action/hands_free/necklace_of_the_forsaken)
	resistance_flags = INDESTRUCTIBLE | LAVA_PROOF | FIRE_PROOF | UNACIDABLE | ACID_PROOF
	var/mob/living/carbon/human/active_owner
	var/numUses = 1

/obj/item/clothing/neck/necklace/necklace_of_the_forsaken/item_action_slot_check(slot)
	return slot == ITEM_SLOT_NECK

/obj/item/clothing/neck/necklace/necklace_of_the_forsaken/dropped(mob/user)
	..()
	if(active_owner)
		remove_necklace()

//Apply a temp buff until the necklace is used
/obj/item/clothing/neck/necklace/necklace_of_the_forsaken/proc/temp_buff(mob/living/carbon/human/user)
	to_chat(user, "<span class='warning'>You feel as if you have a second chance at something, but you're not sure what.</span>")
	if(do_after(user, 40, target = user))
		to_chat(user, "<span class='notice'>The ember warms you...</span>")
		ADD_TRAIT(user, TRAIT_NOHARDCRIT, "necklace_of_the_forsaken")//less chance of being gibbed
		active_owner = user

//Revive the user and remove buffs
/obj/item/clothing/neck/necklace/necklace_of_the_forsaken/proc/second_chance()
	icon_state = "necklace_forsaken_active"
	if(!active_owner)
		return
	var/mob/living/carbon/human/H = active_owner
	active_owner = null
	to_chat(H, "<span class='userdanger'>You feel a scorching burn fill your body and limbs!</span>")
	H.revive(TRUE, FALSE)
	remove_necklace() //remove buffs

//Remove buffs
/obj/item/clothing/neck/necklace/necklace_of_the_forsaken/proc/remove_necklace()
	icon_state = "necklace_forsaken_active"
	if(!active_owner)
		return
	REMOVE_TRAIT(active_owner, TRAIT_NOHARDCRIT, "necklace_of_the_forsaken")
	active_owner = null //just in case

//Add action
/datum/action/item_action/hands_free/necklace_of_the_forsaken
	check_flags = NONE
	name = "Necklace of the Forsaken"
	desc = "Bind the necklaces ember to yourself, so that next time you activate it, it will revive or fully heal you whether dead or knocked out. (Beware of being gibbed)"

//What happens when the user clicks on datum
/datum/action/item_action/hands_free/necklace_of_the_forsaken/Trigger()
	var/obj/item/clothing/neck/necklace/necklace_of_the_forsaken/MM = target
	if(MM.numUses == 0)//skip if it has already been used up
		return
	if(!MM.active_owner)//apply bind if there is no active owner
		if(ishuman(owner))
			MM.temp_buff(owner)
		src.desc = "Revive or fully heal yourself, but you can only do this once! Can be used when knocked out or dead."
		to_chat(MM.active_owner, "<span class='userdanger'>You have binded the ember to yourself! The next time you use the necklace it will heal you!</span>")
	else if(MM.numUses == 1 && MM.active_owner)//revive / heal then remove usage
		MM.second_chance()
		MM.numUses = 0
		MM.icon_state = "necklace_forsaken"
		MM.desc = "A rose gold necklace that used to have a bright burning ember inside of it."
		src.desc = "The necklaces ember has already been used..."

//necropolis loot chest
/obj/structure/closet/crate/necropolis/sif
	name = "Great Brown Wolf Sif's chest"

/obj/structure/closet/crate/necropolis/sif/PopulateContents()
	new /obj/item/melee/sword_of_the_forsaken(src)
	new /obj/item/clothing/neck/necklace/necklace_of_the_forsaken(src)

/obj/structure/closet/crate/necropolis/sif/crusher
	name = "Great Brown Wolf Sif's infinity chest"

/obj/structure/closet/crate/necropolis/sif/crusher/PopulateContents()
	new /obj/item/melee/sword_of_the_forsaken(src)
	new /obj/item/clothing/neck/necklace/necklace_of_the_forsaken(src)
	new /obj/item/crusher_trophy/dark_energy(src)
