SUBSYSTEM_DEF(randommining)
	name = "Random Mining"
	flags = SS_NO_FIRE
	init_order = INIT_ORDER_TICKER

	var/previous_map
	var/choosen_map
	var/traits

/datum/controller/subsystem/randommining/Initialize()

	var/list/possible_choices = list()

	if(fexists("data/previous_mining.dat"))
		var/_previous_map = file2text("data/previous_mining.dat")
		if(istext(_previous_map))
			previous_map = _previous_map

	if(!fexists("config/mining_levels.txt"))
		to_chat(world,"<span class='boldannounce'>RANDOM MINING ERROR: mining_levels.txt does not exist, unable to load mining level!</span>")
		return ..()

	var/list/lines = world.file2list("config/mining_levels.txt")
	for(var/line in lines)
		if(!length(line))
			continue
		if(findtextEx(line, "#", 1, 2))
			continue
		var/list/L = splittext(line,"+")
		if(L.len < 2)
			continue
		var/name = L[1]
		var/traits = L[2]
		if(name == previous_map && lines.len > 1)
			continue
		possible_choices[name] = traits
		to_chat(world,"<span class='boldannounce'>RANDOM MINING: [uppertext(name)] Level loaded!</span>")

	choosen_map = pick(possible_choices)
	traits = possible_choices[choosen_map]

	if(!choosen_map)
		to_chat(world,"<span class='boldannounce'>RANDOM MINING: Error, no map was chosen!</span>")
	else
		to_chat(world,"<span class='boldannounce'>RANDOM MINING: Map randomly picked!</span>")

	return ..()

/datum/controller/subsystem/randommining/Shutdown()
	if(choosen_map)
		var/F = file("data/previous_mining.dat")
		WRITE_FILE(F, choosen_map)