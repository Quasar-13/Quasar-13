GLOBAL_LIST_INIT(command_positions,list(
	"Captain",

	//Nonstandard heads
	"Blueshield",
	"Communication Officer",

	//Other Heads of staff
	"Head of Personnel",
	"Head of Security",
	"Chief Engineer",
	"Research Director",
	"Chief Medical Officer",
	"Quartermaster",

	//Nt Marine command
	"NT Commander",
	"ERT Commander",
	"NT Squad Leader"))

GLOBAL_LIST_INIT(engineering_positions, list(
	"Chief Engineer",
	"Station Engineer",
	"Atmospheric Technician",
	"Void Technician"))

GLOBAL_LIST_INIT(medical_positions, list(
	"Chief Medical Officer",
	"Medical Doctor",
	"Paramedic",
	"Virologist",
	"Pharmacist"))

GLOBAL_LIST_INIT(science_positions, list(
	"Research Director",
	"Scientist",
	"Geneticist",
	"Roboticist",
	"Chemist"))


GLOBAL_LIST_INIT(supply_positions, list(
	"Quartermaster",
	"Cargo Technician",
	"Shaft Miner"))

GLOBAL_LIST_INIT(service_positions, list(
	"Head of Personnel",
	"Secretary",
	"Bartender",
	"Botanist",
	"Cook",
	"Janitor",
	"Curator",
	"Psychologist",
	"Lawyer",
	"Chaplain",
	"Clown",
	"Mime",
	"Prisoner",
	"Assistant"))


GLOBAL_LIST_INIT(security_positions, list(
	"Head of Security",
	"Nanotrasen Security Operative",
	"Warden",
	"Detective",
	"Deputy", // Tegustation Deupty edit: Adds them as a Security job
	"Security Officer"))


GLOBAL_LIST_INIT(nonhuman_positions, list(
	"AI",
	"Cyborg",
	ROLE_PAI))


//Syndiestation

GLOBAL_LIST_INIT(syncommand_positions, list(
	"Commandant",
	"First Officer",
	"Medical Officer",
	"Military Warden",
	"Logistics Officer",
	"Wing Commander"
	))

GLOBAL_LIST_INIT(triage_positions, list(
	"Medical Officer",
	"Triage Technician",
	"Triage Officer"))

GLOBAL_LIST_INIT(operations_positions, list(
	"Wing Commander",
	"Pilot Officer",
	"Staff Officer",
	"Marine",
	"Survivor"))

GLOBAL_LIST_INIT(logistics_positions, list(
	"Logistics Officer",
	"Requisitions Chief",
	"Deckhand",
	"Ordinance Technician",
	//Goonpacked stuff
	"Chief Engineer",
	"Station Engineer",
	"Cargo Technician",
	"Miner",
	"Mechanic"))

GLOBAL_LIST_INIT(police_positions, list(
	"Military Warden",
	"Military Police"))


//NT Blacksite
GLOBAL_LIST_INIT(ntmarines_positions, list(
	"NT Commander",
	"NT Bridge Officer",
	"NT Medical Officer",
	"ERT Commander",
	"ERT Engineer",
	"ERT Medic",
	"ERT Security",
	"Death Commando",
	"NT Squad Leader",
	"NT Military Police",
	"NT Vehicle Operator",
	"NT Marine"))

//Other Gamemodes
GLOBAL_LIST_INIT(solgov_positions, list(
	"Commander",
	"Administrator",
	"Lab Technician",
	"Medical Technician",
	"Engineer",
	"Bunker Crew",
	"Soldier",
	"Security",
	"Civillian"))

GLOBAL_LIST_INIT(position_categories, list(
	EXP_TYPE_COMMAND = list("jobs" = command_positions, "color" = "#ccccff"),
	EXP_TYPE_ENGINEERING = list("jobs" = engineering_positions, "color" = "#ffeeaa"),
	EXP_TYPE_SUPPLY = list("jobs" = supply_positions, "color" = "#ddddff"),
	EXP_TYPE_SILICON = list("jobs" = nonhuman_positions - "pAI", "color" = "#ccffcc"),
	EXP_TYPE_SERVICE = list("jobs" = service_positions, "color" = "#bbe291"),
	EXP_TYPE_MEDICAL = list("jobs" = medical_positions, "color" = "#ffddf0"),
	EXP_TYPE_SCIENCE = list("jobs" = science_positions, "color" = "#ffddff"),
	EXP_TYPE_SECURITY = list("jobs" = security_positions, "color" = "#ffdddd"),

//Syndiestation
	EXP_TYPE_SYNDICATE = list("jobs" = syncommand_positions, "color" = "#e67c7c"),
	EXP_TYPE_OPERATIONS = list("jobs" = operations_positions, "color" = "#ab88b3"),
	EXP_TYPE_TRIAGE = list("jobs" = triage_positions, "color" = "#43ab62"),
	EXP_TYPE_LOGISTICS = list("jobs" = logistics_positions, "color" = "#e3dc81"),
	EXP_TYPE_POLICE = list("jobs" = police_positions, "color" = "#7692b0"),

//Other Gamemodes
	EXP_TYPE_SOLGOV = list("jobs" = solgov_positions, "color" = "#b7edda"),
	EXP_TYPE_NTMARINE = list("jobs" = ntmarines_positions, "color" = "##134975"),
))

GLOBAL_LIST_INIT(exp_jobsmap, list(
	EXP_TYPE_CREW = list("titles" = command_positions | engineering_positions | medical_positions | science_positions | supply_positions | security_positions | service_positions | list("AI","Cyborg")), // crew positions
	EXP_TYPE_COMMAND = list("titles" = command_positions),
	EXP_TYPE_ENGINEERING = list("titles" = engineering_positions),
	EXP_TYPE_MEDICAL = list("titles" = medical_positions),
	EXP_TYPE_SCIENCE = list("titles" = science_positions),
	EXP_TYPE_SUPPLY = list("titles" = supply_positions),
	EXP_TYPE_SECURITY = list("titles" = security_positions),
	EXP_TYPE_SILICON = list("titles" = list("AI","Cyborg")),
	EXP_TYPE_SERVICE = list("titles" = service_positions),
	EXP_TYPE_NTMARINE = list("titles" = ntmarines_positions),

//Syndiestation
	EXP_TYPE_SYNDICATE = list("titles" = syncommand_positions),
	EXP_TYPE_OPERATIONS = list("titles" = operations_positions),
	EXP_TYPE_TRIAGE = list("titles" = triage_positions),
	EXP_TYPE_LOGISTICS = list("titles" = logistics_positions),
	EXP_TYPE_POLICE = list("titles" = police_positions),

//Other Gamemodes
	EXP_TYPE_SOLGOV = list("titles" = solgov_positions)
))

GLOBAL_LIST_INIT(exp_specialmap, list(

	EXP_TYPE_LIVING = list(), // all living mobs
	EXP_TYPE_ANTAG = list(),
	EXP_TYPE_SPECIAL = list("Lifebringer","Ash Walker","Exile","Servant Golem","Free Golem","Hermit","Translocated Vet","Escaped Prisoner","Hotel Staff","SuperFriend","Space Syndicate",ROLE_SYNDICATE_CYBERSUN,ROLE_SYNDICATE_CYBERSUN_CAPTAIN,"Ancient Crew","Space Doctor","Space Bartender","Beach Bum","Skeleton","Zombie","Space Bar Patron","Lavaland Syndicate","Ghost Role"), // Ghost roles
	EXP_TYPE_GHOST = list() // dead people, observers
))
GLOBAL_PROTECT(exp_jobsmap)
GLOBAL_PROTECT(exp_specialmap)

//this is necessary because antags happen before job datums are handed out, but NOT before they come into existence
//so I can't simply use job datum.department_head straight from the mind datum, laaaaame.
/proc/get_department_heads(job_title)
	if(!job_title)
		return list()

	for(var/datum/job/J in SSjob.occupations)
		if(J.title == job_title)
			return J.department_head //this is a list

/proc/get_full_job_name(job)
	var/static/regex/cap_expand = new("cap(?!tain)")
	var/static/regex/cmo_expand = new("cmo")
	var/static/regex/hos_expand = new("hos")
	var/static/regex/hop_expand = new("hop")
	var/static/regex/rd_expand = new("rd")
	var/static/regex/ce_expand = new("ce")
	var/static/regex/qm_expand = new("qm")
	var/static/regex/sec_expand = new("(?<!security )officer")
	var/static/regex/engi_expand = new("(?<!station )engineer")
	var/static/regex/atmos_expand = new("atmos tech")
	var/static/regex/doc_expand = new("(?<!medical )doctor|medic(?!al)")
	var/static/regex/mine_expand = new("(?<!shaft )miner")
	var/static/regex/chef_expand = new("chef")
	var/static/regex/borg_expand = new("(?<!cy)borg")

	job = lowertext(job)
	job = cap_expand.Replace(job, "captain")
	job = cmo_expand.Replace(job, "chief medical officer")
	job = hos_expand.Replace(job, "head of security")
	job = hop_expand.Replace(job, "head of personnel")
	job = rd_expand.Replace(job, "research director")
	job = ce_expand.Replace(job, "chief engineer")
	job = qm_expand.Replace(job, "quartermaster")
	job = sec_expand.Replace(job, "security officer")
	job = engi_expand.Replace(job, "station engineer")
	job = atmos_expand.Replace(job, "atmospheric technician")
	job = doc_expand.Replace(job, "medical doctor")
	job = mine_expand.Replace(job, "shaft miner")
	job = chef_expand.Replace(job, "cook")
	job = borg_expand.Replace(job, "cyborg")
	return job
