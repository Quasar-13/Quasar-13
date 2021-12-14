// A proc that reads the list of people not allowed to play
/proc/load_minors()
	GLOB.banned_kids.Cut()
	var/list/lines = world.file2list("[global.config.directory]/kids.txt")
	for(var/line in lines)
		if(!length(line))
			continue
		if(findtextEx(line, "#", 1, 2))
			continue
		GLOB.banned_kids += line
