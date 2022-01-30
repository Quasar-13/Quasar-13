/datum/job
	///Possible alt titles players can choose.
	var/list/alt_titles = list()
	///Titles selectable after getting enough playtime on the job.
	var/senior_title

//Engineering
/datum/job/engineer
	alt_titles = list("Maintenance Technician", "Engine Technician", "Electrician", "Signal Technician")
	senior_title = "Project Co-ordinator"

/datum/job/atmos
	alt_titles = list("Firefighter", "Life Support Specialist", "Subengine Technician", "Breathing Enthusiast")
	senior_title = "Fusion Technician"

/datum/job/voidtech
	alt_titles = list("Space Explorer", "Salvager")
	senior_title = "Space Marine"

//Service
/datum/job/assistant
	alt_titles = list("Visitor", "Businessman", "Entertainer")
	senior_title = list("Assistinator", "Assistant 2")

/datum/job/cook
	alt_titles = list("Butcher", "Grillmaster")
	senior_title = "Chef"

/datum/job/bartender
	alt_titles = list("Barkeep", "Mixologist")
	senior_title = "Master Mixologist"

/datum/job/hydro
	alt_titles = list("Gardener", "Herbalist", "Botanical Scientist", "Hydroponicist", "Beekeeper")
	senior_title = "Groundskeeper"

/datum/job/curator
	alt_titles = list("Journalist", "Librarian")
	senior_title = "Dungeon Master"

/datum/job/janitor
	alt_titles = list("Custodian", "Sanitation Technician")
	senior_title = "Jannie"

/datum/job/lawyer
	alt_titles = list("Attorney", "Nanotrasen Censor", "Human Resources Representative")
	senior_title = "Ace Attorney"

/datum/job/chaplain
	alt_titles = list("Counselor", "Priest")
	senior_title = "Prophet"

/datum/job/clown
	alt_titles = list("Jester", "Comedian")
	senior_title = "Cluwne"

/datum/job/mime
	alt_titles = list("Performer")
	senior_title = "Frenchman"

//Science
/datum/job/scientist
	alt_titles = list("Xenobiologist", "Nanites Researcher", "Cytologist", "Explosives Expert")
	senior_title = "Research Associate"

/datum/job/roboticist
	alt_titles = list("Biomechanical Engineer", "Robotical Engineer", "Computer Engineer")
	senior_title = "Mecha Pilot"

/datum/job/geneticist
	alt_titles = list("Geneologist", "Medical Geneticist")
	senior_title = "Genetic Engineer"

/datum/job/chemre
	alt_titles = list("Chemical Researcher", "Chemical Scientist")
	senior_title = "Chemical Engineer"

//Medical
/datum/job/doctor
	alt_titles = list("Nurse", "Surgeon", "Physician", "Mortician")
	senior_title = list("Medical Advisor", "Master Surgeon")

/datum/job/paramedic
	alt_titles = list("Emergency Medical Technician")
	senior_title = "Field Medic"

/datum/job/pharmacist
	alt_titles = list("Pharmacologist")
	senior_title = "Pharmacy Co-Ordinator"

/datum/job/virologist
	alt_titles = list("Pathologist", "Microbiologist", "Epidemiologist", "Serologist")
	senior_title = "Medical Laboratory Technologist"

//Security
/datum/job/warden
	alt_titles = list("Brig Chief", "Security Sergeant")
	senior_title = list("Master-At-Arms", "Security Major")

/datum/job/detective
	alt_titles = list("Forensics Specialist", "Private Investigator")
	senior_title = list("Intelligence Officer", "Chief Investigator")

/datum/job/officer
	alt_titles = list("Security Guard", "Hazardous Device Technician", "NT Military Police")
	senior_title = list("Man-at-Arms", "Sergeant Officer")

//Supply
/datum/job/mining
	alt_titles = list("Space Miner", "Hunter", "Prospector")
	senior_title = "Geological Surveyor"

/datum/job/cargo_tech
	alt_titles = list("Mailroom Technician", "Deliveries Officer")
	senior_title = "Requisitions Technician"

//Command
/datum/job/qm
	alt_titles = list("Supply Chief")
	senior_title = "Requisitions Officer"

/datum/job/hos
	alt_titles = list("Security Commander", "Chief of Security", "Lieutenant Commander")
	senior_title = "Chief Military Police"

/datum/job/cmo
	alt_titles = list("Medical Director", "Head Surgeon", "Medical Professor")
	senior_title = list("Senior Medical Officer", "Medical Professor")

/datum/job/rd
	alt_titles = list("Research Supervisor", "Head of Research", "Chief Researcher")
	senior_title = "Chief Science Officer"

/datum/job/chief_engineer
	alt_titles = list("Chief Atmospherics Technician", "Chief Electrical Technician")
	senior_title = "Senior Project Manager"

/datum/job/secretary
	alt_titles = list("Lieutenant", "Union Representative", "Ambassador")
	senior_title = "Diplomat"

/datum/job/hop
	alt_titles = list("Executive Officer", "Head of Service", "Service Co-Ordinator")
	senior_title = "Customs Officer"

/datum/job/captain
	alt_titles = list("Commanding Officer", "Station Commander")
	senior_title = list("Commodore", "Marshal")

//Funny role
/datum/job/staff_officer
	alt_titles = list("Field Officer")
