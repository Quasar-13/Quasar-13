/datum/job
	var/list/alt_titles = list()
	var/senior_title

//Engineering
/datum/job/engineer
	alt_titles = list("Maintenance Technician", "Engine Technician", "Electrician", "Telecommunications Specialist")
	senior_title = "Technical Expert"

/datum/job/atmos
	alt_titles = list("Firefighter", "Life Support Specialist", "Gas Mixing Expert")
	senior_title = "Senior Atmospheric Technician"

/datum/job/tegu/voidtech
	alt_titles = list("Space Explorer", "Salvager")

//Service
/datum/job/assistant
	alt_titles = list("Civilian", "Visitor", "Businessman", "Entertainer")
	senior_title = "Assistinator"

/datum/job/cook
	alt_titles = list("Culinary Artist", "Butcher", "Grillmaster")
	senior_title = "Chef"

/datum/job/bartender
	alt_titles = list("Barkeep", "Mixologist")
	senior_title = "Master Mixologist"

/datum/job/hydro
	alt_titles = list("Gardener", "Herbalist", "Botanical Scientist", "Hydroponicist", "Beekeeper")
	senior_title = "Master Gardener"

/datum/job/curator
	alt_titles = list("Journalist", "Librarian")

/datum/job/janitor
	alt_titles = list("Custodian", "Sanitation Technician")

/datum/job/lawyer
	alt_titles = list("Attorney")
	senior_title = "Ace Attorney"

/datum/job/chaplain
	alt_titles = list("Counselor")
	senior_title = "Prophet"

/datum/job/clown
	alt_titles = list("Jester", "Comedian")
	senior_title = "Master Prankster"

/datum/job/mime
	alt_titles = list("Performer")
	senior_title = "True Frenchman"

//Science
/datum/job/scientist
	alt_titles = list("Xenobiologist", "Nanites Researcher", "Cytologist", "Explosives Expert", "Junior Scientist")
	senior_title = "Senior Scientist"

/datum/job/roboticist
	alt_titles = list("Biomechanical Engineer", "Mechatronic Engineer")
	senior_title = "Senior Roboticist"

/datum/job/geneticist
	alt_titles = list("Geneologist")

//Medical
/datum/job/doctor
	alt_titles = list("Nurse", "Surgeon", "Junior Doctor")
	senior_title = "Senior Medical Doctor"

/datum/job/paramedic
	alt_titles = list("Emergency Medical Technician")

/datum/job/chemist
	alt_titles = list("Pharmacist", "Pharmacologist")
	senior_title = "Senior Chemist"

/datum/job/virologist
	alt_titles = list("Pathologist", "Microbiologist", "Epidemiologist")

//Security
/datum/job/warden
	alt_titles = list("Brig Chief", "Master at Arms")

/datum/job/detective
	alt_titles = list("Forensics Specialist", "Private Investigator")
	senior_title = "Hard-boiled Detective"

/datum/job/officer
	alt_titles = list("Security Guard", "Junior Officer")
	senior_title = "Senior Officer"

//Supply
/datum/job/mining
	alt_titles = list("Space Miner", "Hunter")
	senior_title = "Senior Miner"

/datum/job/cargo_tech
	alt_titles = list("Mailroom Technician", "Deliveries Officer")
	senior_title = "Expert Crate Re-Locator"

//Command
/datum/job/qm
	alt_titles = list("Supply Chief")
	senior_title = "Requisitions Officer"

/datum/job/hos
	alt_titles = list("Security Commander", "Chief of Security")

/datum/job/cmo
	alt_titles = list("Medical Director", "Head Surgeon")
	senior_title = "Senior Medical Officer"

/datum/job/rd
	alt_titles = list("Research Supervisor", "Head Scientist", "Chief Researcher")
	senior_title = "Professor"

/datum/job/chief_engineer
	alt_titles = list("Chief Atmoshperics Technician", "Chief Electrical Technician")

/datum/job/tegu/secretary
	alt_titles = list("Staff Officer")

/datum/job/hop
	alt_titles = list("Executive Officer")

/datum/job/captain
	alt_titles = list("Commanding Officer")
	senior_title = "Commander"
