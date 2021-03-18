/datum/wires/radio
	holder_type = /obj/item/radio
	proper_name = "Radio"

/datum/wires/radio/New(atom/holder)
	wires = list(
		WIRE_SIGNAL,
		WIRE_RX, WIRE_TX
	)
	..()

/datum/wires/radio/interactable(mob/user)
	var/obj/item/radio/R = holder
	return R.unscrewed

/datum/wires/radio/on_pulse(index)
	var/obj/item/radio/R = holder
	switch(index)
		if(WIRE_SIGNAL)
			R.listening = !R.listening
			R.broadcasting = R.listening
		if(WIRE_RX)
			R.listening = !R.listening
		if(WIRE_TX)
			R.broadcasting = !R.broadcasting

/datum/wires/particle_accelerator/control_box
	holder_type = /obj/machinery/particle_accelerator/control_box
	proper_name = "Particle Accelerator"

/datum/wires/particle_accelerator/control_box/New(atom/holder)
	wires = list(
		WIRE_POWER, WIRE_STRENGTH, WIRE_LIMIT,
		WIRE_INTERFACE
	)
	add_duds(2)
	..()

/datum/wires/particle_accelerator/control_box/interactable(mob/user)
	var/obj/machinery/particle_accelerator/control_box/C = holder
	if(C.construction_state == 2)
		return TRUE

/datum/wires/particle_accelerator/control_box/on_pulse(wire)
	var/obj/machinery/particle_accelerator/control_box/C = holder
	switch(wire)
		if(WIRE_POWER)
			C.toggle_power()
		if(WIRE_STRENGTH)
			C.add_strength()
		if(WIRE_INTERFACE)
			C.interface_control = !C.interface_control
		if(WIRE_LIMIT)
			C.visible_message("<span class='notice'>[icon2html(C, viewers(holder))]<b>[C]</b> makes a large whirring noise.</span>")

/datum/wires/particle_accelerator/control_box/on_cut(wire, mend)
	var/obj/machinery/particle_accelerator/control_box/C = holder
	switch(wire)
		if(WIRE_POWER)
			if(C.active == !mend)
				C.toggle_power()
		if(WIRE_STRENGTH)
			for(var/i = 1; i < 3; i++)
				C.remove_strength()
		if(WIRE_INTERFACE)
			if(!mend)
				C.interface_control = FALSE
		if(WIRE_LIMIT)
			C.strength_upper_limit = (mend ? 2 : 3)
			if(C.strength_upper_limit < C.strength)
				C.remove_strength()

/datum/wires/particle_accelerator/control_box/emp_pulse() // to prevent singulo from pulsing wires
	return


