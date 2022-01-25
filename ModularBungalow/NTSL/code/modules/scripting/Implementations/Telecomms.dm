//This file was auto-corrected by findeclaration.exe on 25.5.2012 20:42:33


/* --- Traffic Control Scripting Language --- */
	// Nanotrasen TCS Language - Made by Doohl, ported to Yogs by Altoids, ported to Skyrat by Tf4, and Ported to Bungalow by Kitsunemitsu

#define NTSL_LANG_APHASIA 1
#define NTSL_LANG_BEACHBUM 2
#define NTSL_LANG_BUZZWORDS 3
#define NTSL_LANG_CALCIC 4
#define NTSL_LANG_CODESPEAK 5
#define NTSL_LANG_COMMON 6
#define NTSL_LANG_DRACONIC 7
#define NTSL_LANG_DRONE 8
#define NTSL_LANG_MACHINE 9
#define NTSL_LANG_MOFFIC 10
#define NTSL_LANG_MONKEY 11
#define NTSL_LANG_MUSHROOM 12
#define NTSL_LANG_NARSIAN 13
#define NTSL_LANG_NEKOMIMETIC 14
#define NTSL_LANG_PIRATESPEAK 15
#define NTSL_LANG_SHADOWTONGUE 16
#define NTSL_LANG_SLIME 17
#define NTSL_LANG_SWARMER 18
#define NTSL_LANG_SYLVAN 19
#define NTSL_LANG_TERRUM 20
#define NTSL_LANG_UNCOMMON 21
#define NTSL_LANG_VOLTAIC 22
#define NTSL_LANG_XENOCOMMON 23
#define NTSL_LANG_DWARF 24
#define NTSL_LANG_GUTTER 25
#define NTSL_LANG_RUSSIAN 26
#define NTSL_LANG_SELENIAN 27
#define NTSL_LANG_SKRELL 28
#define NTSL_LANG_SPACER 29
#define NTSL_LANG_VOX 30

/proc/NTSL_LANG_TOBIT(lang)
	. = 0
	switch(lang)
		if(/datum/language/aphasia)
			return NTSL_LANG_APHASIA
		if(/datum/language/beachbum)
			return NTSL_LANG_BEACHBUM
		if(/datum/language/buzzwords)
			return NTSL_LANG_BUZZWORDS
		if(/datum/language/calcic)
			return NTSL_LANG_CALCIC
		if(/datum/language/codespeak)
			return NTSL_LANG_CODESPEAK
		if(/datum/language/common)
			return NTSL_LANG_COMMON
		if(/datum/language/draconic)
			return NTSL_LANG_DRACONIC
		if(/datum/language/machine)
			return NTSL_LANG_MACHINE
		if(/datum/language/moffic)
			return NTSL_LANG_MOFFIC
		if(/datum/language/monkey)
			return NTSL_LANG_MONKEY
		if(/datum/language/mushroom)
			return NTSL_LANG_MUSHROOM
		if(/datum/language/narsie)
			return NTSL_LANG_NARSIAN
		if(/datum/language/nekomimetic)
			return NTSL_LANG_NEKOMIMETIC
		if(/datum/language/piratespeak)
			return NTSL_LANG_PIRATESPEAK
		if(/datum/language/shadowtongue)
			return NTSL_LANG_SHADOWTONGUE
		if(/datum/language/slime)
			return NTSL_LANG_SLIME
		if(/datum/language/swarmer)
			return NTSL_LANG_SWARMER
		if(/datum/language/sylvan)
			return NTSL_LANG_SYLVAN
		if(/datum/language/terrum)
			return NTSL_LANG_TERRUM
		if(/datum/language/uncommon)
			return NTSL_LANG_UNCOMMON
		if(/datum/language/voltaic)
			return NTSL_LANG_VOLTAIC
		if(/datum/language/xenocommon)
			return NTSL_LANG_XENOCOMMON
		if(/datum/language/drone)
			return NTSL_LANG_DRONE

/proc/NTSL_LANG_TODATUM(lang)
	. = /datum/language/common // If we ever fail to grab a real language; instead of just not passing a language we'll revert to common.
	switch(lang)
		if(NTSL_LANG_APHASIA)
			return /datum/language/aphasia
		if(NTSL_LANG_BEACHBUM)
			return /datum/language/beachbum
		if(NTSL_LANG_BUZZWORDS)
			return /datum/language/buzzwords
		if(NTSL_LANG_CALCIC)
			return /datum/language/calcic
		if(NTSL_LANG_CODESPEAK)
			return /datum/language/codespeak
		if(NTSL_LANG_COMMON)
			return /datum/language/common
		if(NTSL_LANG_DRACONIC)
			return /datum/language/draconic
		if(NTSL_LANG_MACHINE)
			return /datum/language/machine
		if(NTSL_LANG_MOFFIC)
			return /datum/language/moffic
		if(NTSL_LANG_MONKEY)
			return /datum/language/monkey
		if(NTSL_LANG_MUSHROOM)
			return /datum/language/mushroom
		if(NTSL_LANG_NARSIAN)
			return /datum/language/narsie
		if(NTSL_LANG_NEKOMIMETIC)
			return /datum/language/nekomimetic
		if(NTSL_LANG_PIRATESPEAK)
			return /datum/language/piratespeak
		if(NTSL_LANG_SHADOWTONGUE)
			return /datum/language/shadowtongue
		if(NTSL_LANG_SLIME)
			return /datum/language/slime
		if(NTSL_LANG_SWARMER)
			return /datum/language/swarmer
		if(NTSL_LANG_SYLVAN)
			return /datum/language/sylvan
		if(NTSL_LANG_TERRUM)
			return /datum/language/terrum
		if(NTSL_LANG_UNCOMMON)
			return /datum/language/uncommon
		if(NTSL_LANG_VOLTAIC)
			return /datum/language/voltaic
		if(NTSL_LANG_XENOCOMMON)
			return /datum/language/xenocommon
		if(NTSL_LANG_DRONE)
			return /datum/language/drone

GLOBAL_LIST_INIT(allowed_custom_spans,list(SPAN_ROBOT,SPAN_YELL,SPAN_ITALICS,SPAN_SANS,SPAN_COMMAND,SPAN_CLOWN))//Span classes that players are allowed to set in a radio transmission.
//this is fucking broken
GLOBAL_LIST_INIT(allowed_translations,list(/datum/language/common,/datum/language/machine,/datum/language/draconic))// language datums that players are allowed to translate to in a radio transmission.

/n_Interpreter/TCS_Interpreter
	var/datum/TCS_Compiler/Compiler

/n_Interpreter/TCS_Interpreter/HandleError(runtimeError/e)
	Compiler.Holder.add_entry(e.ToString(), "Execution Error")

/n_Interpreter/TCS_Interpreter/GC()
	..()
	Compiler = null


/datum/TCS_Compiler
	var/n_Interpreter/TCS_Interpreter/interpreter
	var/obj/machinery/telecomms/server/Holder	// the server that is running the code
	var/ready = 1 // 1 if ready to run code

	/* -- Set ourselves to Garbage Collect -- */

/datum/TCS_Compiler/proc/GC()
	Holder = null
	if(interpreter)
		interpreter.GC()


	/* -- Compile a raw block of text -- */

/datum/TCS_Compiler/proc/Compile(code as message)
	var/n_scriptOptions/nS_Options/options = new()
	var/n_Scanner/nS_Scanner/scanner = new(code, options)
	var/list/tokens = scanner.Scan()
	var/n_Parser/nS_Parser/parser = new(tokens, options)
	var/node/BlockDefinition/GlobalBlock/program = parser.Parse()

	var/list/returnerrors = list()

	returnerrors += scanner.errors
	returnerrors += parser.errors

	if(returnerrors.len)
		return returnerrors

	interpreter 		= new(program)
	interpreter.persist	= 1
	interpreter.Compiler= src
	interpreter.container = src

	interpreter.SetVar("PI"		, 	3.141592653)	// value of pi
	interpreter.SetVar("E" 		, 	2.718281828)	// value of e
	interpreter.SetVar("SQURT2" , 	1.414213562)	// value of the square root of 2
	interpreter.SetVar("FALSE" , 	0)				// boolean shortcut to 0
	interpreter.SetVar("false" , 	0)				// boolean shortcut to 0
	interpreter.SetVar("TRUE"	,	1)				// boolean shortcut to 1
	interpreter.SetVar("true"	,	1)				// boolean shortcut to 1

	interpreter.SetVar("NORTH" 	, 	NORTH)			// NORTH (1)
	interpreter.SetVar("SOUTH" 	, 	SOUTH)			// SOUTH (2)
	interpreter.SetVar("EAST" 	, 	EAST)			// EAST (4)
	interpreter.SetVar("WEST" 	, 	WEST)			// WEST (8)

	// Channel macros
	interpreter.SetVar("channels", new /datum/n_enum(list(
		"common" = 1459,
		"science" = 1351,
		"command" = 1353,
		"medical" = 1355,
		"engineering" = 1357,
		"security" = 1359,
		"supply" = 1347,
		"service" = 1349,
		"centcom" = 1337,// Yes, that is the real Centcom freq.
		//This whole game is a big fuckin' meme.
		"aiprivate" = 1447 // The Common Server is the one...
		// ...that handles the AI Private Channel, btw.
	)))


	interpreter.SetVar("filter_types", new /datum/n_enum(list(
		"robot" = SPAN_ROBOT,
		"loud" = SPAN_YELL,
		"emphasis" = SPAN_ITALICS,
		"wacky" = SPAN_SANS,
		"commanding" = SPAN_COMMAND
	)))
	//Current allowed span classes

	//Language bitflags
	/* (Following comment written 26 Jan 2019)
	So, language doesn't work with bitflags anymore
	But having them be bitflags inside of NTSL makes more sense in its context
	So, when we get the signal back from NTSL, if the language has been altered, we'll set it to a new language datum,
	based on the bitflag the guy used.

	However, I think the signal can only have one language
	So, the lowest bit set within $language overrides any higher ones that are set.
	*/
	/*
	interpreter.SetVar("languages", new /datum/n_enum(list(
		"human" = HUMAN,
		"monkey" = MONKEY,
		"robot" = ROBOT,
		"polysmorph" = POLYSMORPH,
		"draconic" = DRACONIC,
		"beachtounge" = BEACHTONGUE
	)))
	*/

	interpreter.Run() // run the thing

	if(Holder)
		Holder.compile_warnings = parser.warnings || list()
		if(!interpreter.ProcExists("process_signal")) // yell at the user if they need to update their scripts
			Holder.compile_warnings += new /scriptError/OutdatedScript()

	return returnerrors

	/* -- Execute the compiled code -- */

/datum/TCS_Compiler/proc/Run(datum/signal/subspace/vocal/signal) // Runs the already-compiled code on an incoming signal.

	if(!ready)
		return

	if(!interpreter)
		return

	if(!interpreter.ProcExists("process_signal"))
		return

	if(!istype(signal, /datum/signal/subspace/vocal))
		return

	var/datum/language/oldlang = !signal.language ? /datum/language/common : signal.language
	oldlang = NTSL_LANG_TOBIT(oldlang)

	// Signal data

	var/datum/n_struct/signal/script_signal = new(list(
		"content" = html_decode(signal.data["message"]),
		"freq" = signal.frequency,
		"source" = signal.data["name"],
		"uuid" = signal.data["name"],
		"sector" = signal.levels,
		"job" = signal.data["job"],
		"pass" = !(signal.data["reject"]),
		"filters" = signal.data["spans"],
		"language" = oldlang,
		"say" = signal.virt.verb_say,
		"ask" = signal.virt.verb_ask,
		"yell" = signal.virt.verb_yell,
		"exclaim" = signal.virt.verb_exclaim
	))

	// Run the compiled code
	script_signal = interpreter.CallProc("process_signal", list(script_signal))
	if(!istype(script_signal))
		signal.data["reject"] = 1
		return

	// Backwards-apply variables onto signal data
	/* sanitize EVERYTHING. fucking players can't be trusted with SHIT */

	var/msg = script_signal.get_clean_property("content", signal.data["message"])
	if(isnum(msg))
		msg = "[msg]"
	else if(!msg)
		msg = "*beep*"
	signal.data["message"] = msg


	signal.frequency = script_signal.get_clean_property("freq", signal.frequency)

	var/setname = script_signal.get_clean_property("source", signal.data["name"])

	if(signal.data["name"] != setname)
		signal.data["realname"] = signal.data["name"]
		signal.virt.name = setname
	signal.data["name"]			= setname
	//signal.data["uuid"]			= script_signal.get_clean_property("$uuid", signal.data["uuid"])
	signal.levels 				= script_signal.get_clean_property("sector", signal.levels)
	signal.data["job"]			= script_signal.get_clean_property("job", signal.data["job"])
	signal.data["reject"]		= !(script_signal.get_clean_property("pass")) // set reject to the opposite of $pass
	signal.virt.verb_say		= script_signal.get_clean_property("say")
	signal.virt.verb_ask		= script_signal.get_clean_property("ask")
	signal.virt.verb_yell		= script_signal.get_clean_property("yell")
	signal.virt.verb_exclaim	= script_signal.get_clean_property("exclaim")
	var/newlang = NTSL_LANG_TODATUM(script_signal.get_clean_property("language"))
	if(newlang != oldlang)// makes sure that we only clean out unallowed languages when a translation is taking place otherwise we run an unnecessary proc to filter newlang on foreign untranslated languages.
		if(!LAZYFIND(GLOB.allowed_translations, oldlang)) // cleans out any unallowed translations by making sure the new language is on the allowed translation list. Tcomms powergaming is dead! - Hopek
			newlang = oldlang
	signal.language = newlang || oldlang
	var/list/setspans 			= script_signal.get_clean_property("filters") //Save the span vector/list to a holder list
	if(islist(setspans)) //Players cannot be trusted with ANYTHING. At all. Ever.
		setspans &= GLOB.allowed_custom_spans //Prune out any illegal ones. Go ahead, comment this line out. See the horror you can unleash!
		signal.data["spans"]	= setspans //Apply new span to the signal only if it is a valid list, made using $filters & vector() in the script.
	else
		signal.data["spans"] = list()

	// If the message is invalid, just don't broadcast it!
	if(signal.data["message"] == "" || !signal.data["message"])
		signal.data["reject"] = 1

/datum/n_struct/signal/New(list/P)
	properties = P | list(
		"content" = "",
		"freq" = 1459,
		"source" = "",
		"uuid" = "",
		"sector" = list(),
		"job" = "",
		"pass" = TRUE,
		"filters" = list(),
		"language" = NTSL_LANG_COMMON,
		"say" = "says",
		"ask" = "asks",
		"yell" = "yells",
		"exclaim" = "exclaims"
	)

// makes a new signal object

// arguments: message, freq, source, job
// if you want to change anything else do it yourself
/datum/n_function/default/signal
	name = "signal"
	interp_type = /n_Interpreter/TCS_Interpreter
/datum/n_function/default/signal/execute(this_obj, list/params)
	var/datum/n_struct/signal/S = new
	if(params.len >= 1)
		S.properties["content"] = params[1]
	if(params.len >= 2)
		S.properties["freq"] = params[2]
	if(params.len >= 3)
		S.properties["source"] = params[3]
	if(params.len >= 4)
		S.properties["job"] = params[4]
	return S


/* -- Actual language proc code -- */

#define SIGNAL_COOLDOWN 20 // 2 seconds
#define MAX_MEM_VARS 500 // The maximum number of variables that can be stored by NTSL via mem()

/datum/n_function/default/mem
	name = "mem"
	interp_type = /n_Interpreter/TCS_Interpreter
/datum/n_function/default/mem/execute(this_obj, list/params, scope/scope, n_Interpreter/TCS_Interpreter/interp)
	var/address = params.len >= 1 ? params[1] : null
	var/value = params.len >= 2 ? params[2] : null
	if(istext(address))
		var/obj/machinery/telecomms/server/S = interp.Compiler.Holder

		if(params.len == 1) // Getting the value
			return S.memory[address]
		else if(value == null) // setting it to null? You must be trying to remove it! Since altoids added this fancy ass memory thing might as well
			S.memory -= address
			return TRUE
		else // Setting the value
			if(S.memory.len >= MAX_MEM_VARS)
				if(!(address in S.memory))
					return FALSE
			S.memory[address] = value
			return TRUE

/datum/n_function/default/clearmem
	name = "clearmem"
	interp_type = /n_Interpreter/TCS_Interpreter
/datum/n_function/default/clearmem/execute(this_obj, list/params, scope/scope, n_Interpreter/TCS_Interpreter/interp)
	var/obj/machinery/telecomms/server/S = interp.Compiler.Holder
	S.memory = list()
	return TRUE

/datum/n_function/default/remote_signal
	name = "remote_signal"
	interp_type = /n_Interpreter/TCS_Interpreter
/datum/n_function/default/remote_signal/execute(this_obj, list/params, scope/scope, n_Interpreter/TCS_Interpreter/interp)
	var/freq = params.len >= 1 ? params[1] : 1459
	var/code = params.len >= 2 ? params[2] : 30

	if(isnum(freq) && isnum(code))

		var/obj/machinery/telecomms/server/S = interp.Compiler.Holder

		if(S.last_signal + SIGNAL_COOLDOWN > world.timeofday && S.last_signal < MIDNIGHT_ROLLOVER)
			return
		S.last_signal = world.timeofday

		if(findtext(num2text(freq), ".")) // if the frequency has been set as a decimal
			freq *= 10 // shift the decimal one place
			// "But wait, wouldn't floating point mess this up?" You ask.
			// Nah. That actually can't happen when you multiply by a whole number.
			// Think about it.

		freq = sanitize_frequency(freq)

		var/datum/radio_frequency/connection = SSradio.return_frequency(freq)

		code = round(code)
		code = clamp(code, 0, 100)

		var/datum/signal/signal = new
		signal.source = S
		signal.data["code"] = code
		signal.data["message"] = "ACTIVATE"

		connection.post_signal(S, signal)

		message_admins("Telecomms server \"[S.id]\" sent a signal command, which was triggered by NTSL<B>: </B> [format_frequency(freq)]/[code]")

/datum/n_function/default/broadcast
	name = "broadcast"
	interp_type = /n_Interpreter/TCS_Interpreter
/datum/n_function/default/broadcast/execute(this_obj, list/params, scope/scope, n_Interpreter/TCS_Interpreter/interp)
	if(params.len < 1)
		return
	var/datum/n_struct/signal/script_signal = params[1]
	if(!istype(script_signal))
		return

	var/message = script_signal.get_clean_property("content")
	var/freq = script_signal.get_clean_property("freq")
	var/source = script_signal.get_clean_property("source")
	var/job = script_signal.get_clean_property("job")
	var/spans = script_signal.get_clean_property("filters")
	var/say = script_signal.get_clean_property("say")
	var/ask = script_signal.get_clean_property("ask")
	var/yell = script_signal.get_clean_property("yell")
	var/exclaim = script_signal.get_clean_property("exclaim")
	var/language = script_signal.get_clean_property("language")


	var/obj/machinery/telecomms/server/S = interp.Compiler.Holder
	var/obj/item/radio/server/hradio = S.server_radio

	if(!hradio)
		throw EXCEPTION("tcombroadcast(): signal has no radio")
		return
	//First lets do some checks for bad input
	if(isnum(message)) // Allows for setting $content to a number value
		message = "[message]"
	if((!message) && message != 0)
		message = "*beep*"
	if(!source)
		source = "[html_encode(uppertext(S.id))]"
		//hradio = new // sets the hradio as a radio intercom
	if(!job)
		job = "Unknown"
	if(!freq || (!isnum(freq) && text2num(freq) == null))
		freq = 1459
	if(!isnum(freq))
		freq = text2num(freq)
	if(findtext(num2text(freq), ".")) // if the frequency has been set as a decimal
		freq *= 10 // shift the decimal one place
		// "But wait, wouldn't floating point mess this up?" You ask.
		// Nah. That actually can't happen when you multiply by a whole number.
		// Think about it.
	if(isnum(language)) // If the language was a lang bit instead of a datum
		language = NTSL_LANG_TODATUM(language)
	if(!islist(spans))
		spans = list()
	else
		spans &= GLOB.allowed_custom_spans //Removes any spans not on the allowed list. Comment this out if want to let players use ANY span in stylesheet.dm!

	//SAY REWRITE RELATED CODE.
	//This code is a little hacky, but it *should* work. Even though it'll result in a virtual speaker referencing another virtual speaker. vOv
	var/atom/movable/virtualspeaker/virt = new
	virt.name = source
	virt.job = job
	virt.verb_say = say
	virt.verb_ask = ask
	virt.verb_exclaim = exclaim
	virt.verb_yell = yell

	var/datum/signal/subspace/vocal/newsign = new(hradio,freq,virt,language,message,spans, list(), list(S.z))

	//END SAY REWRITE RELATED CODE.

	//Now we set up the signal
	newsign.data["mob"] = virt
	newsign.data["mobtype"] = /mob/living/carbon/human
	newsign.data["name"] = source
	newsign.data["realname"] = newsign.data["name"]
	newsign.data["uuid"] = source
	newsign.data["job"] = "[job]"
	newsign.data["compression"] = 0
	newsign.data["message"] = message
	//newsign.data["type"] = BROADCAST_ARTIFICIAL // artificial broadcast
	newsign.data["spans"] = spans
	newsign.data["language"] = language
	newsign.frequency = freq
	newsign.data["radio"] = hradio
	newsign.data["vmessage"] = message
	newsign.data["vname"] = source
	newsign.data["vmask"] = 0


	var/pass = S.relay_information(newsign, /obj/machinery/telecomms/hub)
	if(!pass) // If we're not sending this to the hub (i.e. we're running a basic tcomms or something)
		pass = S.relay_information(newsign, /obj/machinery/telecomms/broadcaster) // send this message to broadcasters directly
	return pass // Returns, as of Jan 23 2019, the number of machines that received this broadcast's message.
#undef SIGNAL_COOLDOWN
#undef MAX_MEM_VARS
