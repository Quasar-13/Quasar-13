/obj/item/lawradio
	name = "\improper Lawyer's Radio"
	desc = "This is a radio that lawyers can use to contact central command."
	worn_icon = 'ModularBungalow/zbungalowicons/objects.dmi'
	icon_state = "law_radio"


/obj/item/lawradio/attack_self(mob/user, modifiers)
	. = ..()
	var/message = trim(html_encode(params["message"]), MAX_MESSAGE_LEN)
	message_centcom(message, usr)
	to_chat(usr, "<span class='notice'>Message transmitted to Central Command.</span>")
	usr.log_talk(message, LOG_SAY, tag = "message to CentCom")
	deadchat_broadcast(" has messaged CentCom, \"[message]\" at <span class='name'>[get_area_name(usr, TRUE)]</span>.", "<span class='name'>[usr.real_name]</span>", usr, message_type = DEADCHAT_ANNOUNCEMENT)

