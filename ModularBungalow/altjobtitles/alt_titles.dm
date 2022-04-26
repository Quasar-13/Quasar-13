/datum/job
	///Possible alt titles players can choose.
	var/list/alt_titles = list()
	///Titles selectable after getting enough playtime on the job.
	var/senior_title
	var/ultra_senior_title //Must be an intense shitpost, no exceptions

//Engineering
/datum/job/engineer
	alt_titles = list("Maintenance Technician", "Engine Technician", "Electrician", "Signal Technician")
	senior_title = list("Project Co-ordinator")
	ultra_senior_title = list("Bob the Builder")

/datum/job/atmos
	alt_titles = list("Firefighter", "Life Support Specialist", "Subengine Technician", "Breathing Enthusiast")
	senior_title = list("Fusion Technician")
	ultra_senior_title = list("Atmosian")

/datum/job/voidtech
	alt_titles = list("Space Explorer", "Salvager")
	senior_title = list("Space Marine")
	ultra_senior_title = list("TEG Supplier")

//Service
/datum/job/assistant
	alt_titles = list("Visitor", "Businessman", "Entertainer")
	senior_title = list("Assistant 2")
	ultra_senior_title = list("Assistinator")

/datum/job/cook
	alt_titles = list("Butcher", "Grillmaster")
	senior_title = list("Chef")
	ultra_senior_title = list("Pun Pun Destroyer")

/datum/job/bartender
	alt_titles = list("Barkeep", "Mixologist")
	senior_title = list("Master Mixologist")
	ultra_senior_title = list("Liver Killer")

/datum/job/hydro
	alt_titles = list("Gardener", "Herbalist", "Botanical Scientist", "Hydroponicist", "Beekeeper")
	senior_title = list("Groundskeeper")
	ultra_senior_title = list("Hippie")

/datum/job/curator
	alt_titles = list("Journalist", "Librarian")
	senior_title = list("Dungeon Master")
	ultra_senior_title = list("Dust Collector")

/datum/job/janitor
	alt_titles = list("Custodian", "Sanitation Technician")
	senior_title = list("Jannie")
	ultra_senior_title = list("Shit Picker-Upper")

/datum/job/lawyer
	alt_titles = list("Attorney", "Nanotrasen Censor", "Human Resources Representative")
	senior_title = list("Ace Attorney")
	ultra_senior_title = list("Objector")

/datum/job/chaplain
	alt_titles = list("Counselor", "Priest")
	senior_title = list("Prophet")
	ultra_senior_title = list("Summoner of Narsie")

/datum/job/clown
	alt_titles = list("Jester", "Comedian")
	senior_title = list("Cluwne")
	ultra_senior_title = list("Big Mean Slipping Machine")

/datum/job/mime
	alt_titles = list("Performer")
	senior_title = list("Frenchman")
	ultra_senior_title = list("Silencer")

//Science
/datum/job/scientist
	alt_titles = list("Xenobiologist", "Nanites Researcher", "Cytologist", "Explosives Expert")
	senior_title = list("Research Associate")
	ultra_senior_title = list("Nerd")

/datum/job/roboticist
	alt_titles = list("Biomechanical Engineer", "Robotical Engineer", "Computer Engineer")
	senior_title = list("Mecha Pilot")
	ultra_senior_title = list("Gygax Man")

/datum/job/geneticist
	alt_titles = list("Geneologist", "Medical Geneticist")
	senior_title = list("Genetic Engineer", "Freak of Genetics")
	ultra_senior_title = list("Hulk")

/datum/job/chemre
	alt_titles = list("Chemist", "Chemical Scientist")
	senior_title = list("Chemical Engineer")
	ultra_senior_title = list("Bomb Maker")

//Medical
/datum/job/doctor
	alt_titles = list("Nurse", "Surgeon", "Physician", "Mortician")
	senior_title = list("Medical Advisor", "Master Surgeon")
	ultra_senior_title = list("People Fixer")

/datum/job/paramedic
	alt_titles = list("Emergency Medical Technician")
	senior_title = list("Field Medic")
	ultra_senior_title = list("Mobile People Fixer")

/datum/job/pharmacist
	alt_titles = list("Pharmacologist")
	senior_title = list("Pharmacy Co-Ordinator")
	ultra_senior_title = list("Drug Dealer")

/datum/job/virologist
	alt_titles = list("Pathologist", "Microbiologist", "Epidemiologist", "Serologist")
	senior_title = list("Medical Laboratory Technologist")
	ultra_senior_title = list("Space Aids Curer")

//Security
/datum/job/warden
	alt_titles = list("Brig Chief", "Security Sergeant")
	senior_title = list("Master-At-Arms", "Security Major")
	ultra_senior_title = list("Arms Dealer")

/datum/job/detective
	alt_titles = list("Forensics Specialist", "Private Investigator")
	senior_title = list("Intelligence Officer", "Chief Investigator")
	ultra_senior_title = list("CO2 Machine")

/datum/job/officer
	alt_titles = list("Security Guard", "Hazardous Device Technician", "Reserve Military Police")
	senior_title = list("Man-at-Arms", "Sergeant Officer")
	ultra_senior_title = list("Harmbatoner")

/datum/job/prisoner
	alt_titles = list("Protected Custody")
	senior_title = list("Detained Warcriminal")
	ultra_senior_title = list("Death Row Inmate")

//Supply
/datum/job/mining
	alt_titles = list("Space Miner", "Hunter", "Prospector")
	senior_title = list("Geological Surveyor")
	ultra_senior_title = list("Doomslayer")

/datum/job/cargo_tech
	alt_titles = list("Mailroom Technician", "Deliveries Officer")
	senior_title = list("Requisitions Technician")
	ultra_senior_title = list("Crate-Mover 3000 Technician")

//Command
/datum/job/qm
	alt_titles = list("Supply Chief")
	senior_title = list("Requisitions Officer")
	ultra_senior_title = list("Crate-Mover 3000 Technician")

/datum/job/hos
	alt_titles = list("Security Commander", "Chief of Security", "Lieutenant Commander")
	senior_title = list("Chief Military Police")
	ultra_senior_title = list("Murderer With An Excuse")

/datum/job/cmo
	alt_titles = list("Medical Director", "Head Surgeon", "Medical Professor")
	senior_title = list("Senior Medical Officer", "Medical Professor")
	ultra_senior_title = list("People Fixer V2")

/datum/job/rd
	alt_titles = list("Research Supervisor", "Head of Research", "Chief Researcher")
	senior_title = list("Chief Science Officer")
	ultra_senior_title = list("Nerd 2: The Nerdening")

/datum/job/chief_engineer
	alt_titles = list("Chief Atmospherics Technician", "Chief Electrical Technician")
	senior_title = list("Senior Project Manager")
	ultra_senior_title = list("Jerry the Builder")

/datum/job/secretary
	alt_titles = list("Lieutenant", "Union Representative", "Ambassador", "Diplomat")
	senior_title = list("Senior Bridge Officer")
	ultra_senior_title = list("Sharon")

/datum/job/hop
	alt_titles = list("Executive Officer", "Head of Service", "Service Co-Ordinator")
	senior_title = list("Customs Officer")
	ultra_senior_title = list("AA Granter")

/datum/job/captain
	alt_titles = list("Commanding Officer", "Station Commander")
	senior_title = list("Commodore", "Marshal")
	ultra_senior_title = list("Condom")

/datum/job/ntcaptain
	senior_title = list("Commodore")

/datum/job/gooncaptain
	senior_title = list("Commodore")

//Funny role
/datum/job/staff_officer
	alt_titles = list("Field Officer")
