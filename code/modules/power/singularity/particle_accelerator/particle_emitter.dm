objstructureparticle_acceleratorparticle_emitter
	name = EM Containment Grid
	desc = This launches the Alpha particles, might not want to stand near this end.
	icon = 'iconsobjmachinesparticle_accelerator.dmi'
	icon_state = none
	varfire_delay = 50
	varlast_shot = 0

objstructureparticle_acceleratorparticle_emittercenter
	icon_state = emitter_center
	reference = emitter_center

objstructureparticle_acceleratorparticle_emitterleft
	icon_state = emitter_left
	reference = emitter_left

objstructureparticle_acceleratorparticle_emitterright
	icon_state = emitter_right
	reference = emitter_right

objstructureparticle_acceleratorparticle_emitterprocset_delay(delay)
	if(delay = 0)
		fire_delay = delay
		return 1
	return 0

objstructureparticle_acceleratorparticle_emitterprocemit_particle(strength = 0)
	if((last_shot + fire_delay) = world.time)
		last_shot = world.time
		varturfT = get_turf(src)
		varobjeffectaccelerated_particleP
		switch(strength)
			if(0)
				P = newobjeffectaccelerated_particleweak(T)
			if(1)
				P = newobjeffectaccelerated_particle(T)
			if(2)
				P = newobjeffectaccelerated_particlestrong(T)
			if(3)
				P = newobjeffectaccelerated_particlepowerful(T)
		P.setDir(dir)
		return 1
	return 0