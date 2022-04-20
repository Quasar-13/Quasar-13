/datum/weather/void_storm
	name = "void storm"
	desc = "A rare and highly anomalous event often accompanied by unknown entities shredding spacetime continouum. We'd advise you to start running."

	telegraph_duration = 2 SECONDS
	telegraph_overlay = "void"

	weather_message = "<span class='danger'><i>You feel air around you getting colder... and void's sweet embrace...</i></span>"
	weather_overlay = "void_storm"
	weather_duration_lower = 60 SECONDS
	weather_duration_upper = 120 SECONDS


	end_duration = 10 SECONDS

	area_type = /area
	protect_indoors = FALSE
	target_trait = ZTRAIT_VOIDSTORM

	immunity_type = "void"

	barometer_predictable = FALSE
	perpetual = TRUE

/datum/weather/void_storm/weather_act(mob/living/L)
	if(IS_HERETIC(L) || IS_HERETIC_MONSTER(L))
		return
	L.adjustOxyLoss(rand(1,3))
	L.adjustFireLoss(rand(1,3))
	L.adjust_blurriness(rand(0,1))
	L.adjust_bodytemperature(-rand(5,15))

/datum/weather/void_storm/space
	probability = 50
	telegraph_duration = 300
	protect_indoors = TRUE
	target_trait = ZTRAIT_VOIDSTORMSPACE
	perpetual = FALSE
	area_type = /area/asteroidbelt/space/generation
	immunity_type = "general"
	barometer_predictable = TRUE
	telegraph_message = "<span class='warning'>You see space warping around you. Seek shelter immediately.</span>"

	end_message = "<span class='boldannounce'>The void's embrace ebbs. You are free to continue.</span>"

/datum/weather/void_storm/space/weather_act(mob/living/L)
	if(IS_HERETIC(L) || IS_HERETIC_MONSTER(L))
		return
	L.adjustOxyLoss(rand(1,3))
	L.adjustFireLoss(rand(1,3))
	L.adjust_blurriness(rand(0,1))
	L.adjust_bodytemperature(-rand(5,15))
