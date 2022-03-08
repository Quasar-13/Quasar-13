/datum/weather/space_wind
	name = "space_wind"
	desc = "Fierce Solar winds ravage the planet."
	probability = 250

	telegraph_message = "<span class='warning'>The wind begins to pick up, threatening to knock you over.</span>"
	telegraph_duration = 300
	telegraph_overlay = "light_wind"

	weather_message = "<span class='userdanger'><i>The wind is unbearable! Seek shelter!</i></span>"
	weather_overlay = "solar_wind"
	weather_duration_lower = 600
	weather_duration_upper = 1500

	end_duration = 100
	end_message = "<span class='boldannounce'>The winds become still. You can hear a pin drop.</span>"

	area_type = /area
	protect_indoors = TRUE
	target_trait = ZTRAIT_SPACEWIND

	barometer_predictable = TRUE


/datum/weather/space_wind/weather_act(mob/living/carbon/L)
	L.adjustBruteLoss(rand(0,1))
	L.Knockdown(20)
