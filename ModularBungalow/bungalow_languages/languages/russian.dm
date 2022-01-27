/datum/language/russian
	name = "Space Russian"
	desc = "An archaic terrestrial language still spoken in Space Russia."
	key = "2"
	sentence_chance = 5
	space_chance = 50
	syllables = list("bly", "bor", "cy", "da", "ko", "et", "sa", "gop", "grad", "kov", "ski", "vok", "nik", "cyka", "ka", "kor", "yov", "suk", "grad", "kov", "blyat", "vod", "ka")
	icon = 'ModularBungalow/bungalow_languages/icons/language_icons.dmi'
	icon_state = "commie"
	default_priority = 90

/datum/language_holder/russian
	understood_languages = list(/datum/language/common = list(LANGUAGE_ATOM),
								/datum/language/russian = list(LANGUAGE_ATOM))

	spoken_languages = list(/datum/language/common = list(LANGUAGE_ATOM),
							/datum/language/russian = list(LANGUAGE_ATOM))
