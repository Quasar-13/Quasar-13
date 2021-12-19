// Special items that are supposed to be spawned/used in tomb worlds


// Necromancer loot
// Helmet
/obj/item/clothing/head/wizard/magus/necromancer
	name = "\improper Necromancer helm"
	desc = "A helmet that was once worn by a powerful mage that delved way too far into the dark magic techniques."
	armor = list(MELEE = 70, BULLET = 40, LASER = 40, ENERGY = 50, BOMB = 50, BIO = 100, RAD = 70, FIRE = 100, ACID = 100,  WOUND = 30)
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
	armor = list(MELEE = 70, BULLET = 40, LASER = 40, ENERGY = 50, BOMB = 50, BIO = 100, RAD = 70, FIRE = 100, ACID = 100,  WOUND = 30)
	strip_delay = 80
	var/obj/effect/proc_holder/spell/targeted/touch/necrotic_revival/spell

/obj/item/clothing/suit/wizrobe/necromancer/Initialize()
	. = ..()
	spell = new(src)

/obj/item/clothing/suit/wizrobe/necromancer/equipped(mob/user, slot)
	. = ..()
	if(slot & ITEM_SLOT_OCLOTHING)
		user.mind.AddSpell(spell)
		return
	user.mind.RemoveSpell(spell)

/obj/item/clothing/suit/wizrobe/necromancer/dropped(mob/user)
	..()
	user.mind.RemoveSpell(spell)

// Sword
/obj/item/necromancer_sword
	name = "sword of the dead"
	desc = "An ancient relic of the past brought into this realm by a powerful mage to kill once again."
	icon_state = "hfrequency0"
	lefthand_file = 'icons/mob/inhands/weapons/swords_lefthand.dmi'
	righthand_file = 'icons/mob/inhands/weapons/swords_righthand.dmi'
	armour_penetration = 20
	force = 35
	throwforce = 30
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
		L.adjustFireLoss(25)
		to_chat(L, "<span class='userdanger'>You've been hit by a magical lightning bolt!</span>")
		if(ishuman(L))
			var/mob/living/carbon/human/H = L
			H.electrocution_animation(5)
	for(var/obj/effect/decal/remains/R in T)
		if(currently_affected >= max_affected)
			return
		currently_affected += 1
		T.visible_message("<span class='boldannounce'>A skeleton rises from a pile of remains!</span>")
		var/mob/living/simple_animal/skele = new /mob/living/simple_animal/hostile/skeleton/necromancer(T)
		// Skeleton will not attack its creator
		var/list/skele_factions = user.faction.Copy()
		for(var/F in skele_factions)
			if(F == "neutral")
				skele_factions -= F
		skele.faction = skele_factions
		qdel(R)
		new /obj/effect/temp_visual/cult/blood/out(T)
