/datum/job
	var/list/alt_titles = list()
	var/senior_title

//Engineering
/datum/job/engineer
	alt_titles = list("Maintenance Technician", "Engine Technician", "Mechanic", "Electrician", "Telecommunications Technician")
	senior_title = "Senior Engineer"

/datum/job/atmos
	alt_titles = list("Firefighter", "Life Support Specialist", "Vapor Chemist")
	senior_title = "Senior Atmospheric Technician"

/datum/job/tegu/voidtech
	alt_titles = list("Space Explorer", "Salvager")
	senior_title = "Space Marine"

//Service
/datum/job/assistant
	alt_titles = list("Civilian", "Visitor", "Businessman", "Entertainer")
	senior_title = list("Medical Assistant", "Mechanical Assistant", "Research Assistant")

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
	alt_titles = list("Attorney")
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
	alt_titles = list("Biomechanical Engineer", "Robotical Engineer")
	senior_title = "Mecha Pilot"

/datum/job/geneticist
	alt_titles = list("Geneologist", "Medical Geneticist")
	senior_title = "Genetic Engineer"

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
	alt_titles = list("Brig Chief", "Sergant")
	senior_title = "Sergant Major"

/datum/job/detective
	alt_titles = list("Forensics Specialist", "Private Investigator")
	senior_title = "Staff Sergant"

/datum/job/officer
	alt_titles = list("Security Guard", "Deputy")
	senior_title = "Blueshield Officer"

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
	alt_titles = list("Medical Director", "Head Surgeon")
	senior_title = "Senior Medical Officer"

/datum/job/rd
	alt_titles = list("Research Supervisor", "Head of Research", "Chief Researcher")
	senior_title = "Professor"

/datum/job/chief_engineer
	alt_titles = list("Chief Atmospherics Technician", "Chief Electrical Technician")
	senior_title = "Senior Project Manager"

/datum/job/tegu/secretary
	alt_titles = list("Staff Officer", "Lieutenant", "Union Representative", "Ambassador")
	senior_title = "Diplomat"

/datum/job/hop
	alt_titles = list("Executive Officer", "Head of Service", "Service Co-Ordinator")
	senior_title = "Customs Officer"

/datum/job/captain
	alt_titles = list("Commanding Officer", "Centcom Representative")
	senior_title = "Commodore"

