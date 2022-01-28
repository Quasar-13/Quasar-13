/datum/language/beecommon
	name = "beecommon"
	desc = "The workforce lenguage of bees"
	key = "3"
	space_chance = 75
	syllables = list(
	"bz","bzz","bzzz","bzzzz","bzzbzz","bzbz","bzbzbz","bzzbzzbzz",
	"bzzzzz","bzzbzzbz","bzbzzbzzz"
	) //do ya like jazz?
	icon = 'ModularBungalow/bungalow_languages/icons/language_icons.dmi'
	icon_state = "bee"
	default_priority = 60

/datum/language_holder/beepeople
	understood_languages = list(/datum/language/common = list(LANGUAGE_ATOM),
								/datum/language/beecommon = list(LANGUAGE_ATOM))

	spoken_languages = list(/datum/language/common = list(LANGUAGE_ATOM),
							/datum/language/beecommon = list(LANGUAGE_ATOM))
