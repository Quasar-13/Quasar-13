/datum/weather/diamond_storm
	name = "diamond storm"
	desc = "razor sharp diamonds ravage the landscape."
	probability = 90

	telegraph_message = "<span class='warning'>You can see razor-sharp diamonds falling from the sky. Seek shelter.</span>"
	telegraph_duration = 300
	telegraph_overlay = "light_diamond"

	weather_message = "<span class='userdanger'><i>The Diamonds pick up speed, threatening to cut you to ribbons</i></span>"
	weather_overlay = "diamond_storm"
	weather_duration_lower = 600
	weather_duration_upper = 1500

	end_duration = 100
	end_message = "<span class='boldannounce'>The diamonds slow down. Nothing but diamond dust remains..</span>"
	immunity_type = "general"
	area_type = /area
	protect_indoors = TRUE
	target_trait = ZTRAIT_DIAMONDSTORM

	barometer_predictable = TRUE


/datum/weather/diamond_storm/weather_act(mob/living/L)
	L.adjustBruteLoss(rand(2,6))
