//LANGUAGE BOOKS

/datum/blackmarket_item/language
	category = "Language"


/datum/blackmarket_item/language/roundstartrace
	name = "Random racial language book"
	desc = "Group of xeno-specie schemes together in their language ? Learn their language with one of our books !"
	item = /obj/item/language_manual/roundstart_species
	price_min = 100
	price_max = 500
	stock_max = 10
	availability_prob = 100

/datum/blackmarket_item/language/roundstartrace_five
	name = "Random multi usage racial language book"
	desc = "Group of xeno-specie schemes together in their language ? Learn their language with one of our books ! This one has five users to share among your friends !"
	item = /obj/item/language_manual/roundstart_species
	price_min = 100
	price_max = 500
	stock_max = 1
	availability_prob = 60

/datum/blackmarket_item/language/common
	name = "Common language book"
	desc = "Someone doesn't speak Common ? Gift them this book ! We don't question the ethics behind it."
	item = /obj/item/book/granter/language_book/common
	price_min = 250
	price_max = 750
	stock_max = 3
	availability_prob = 100

/datum/blackmarket_item/language/aphasia
	name = "Gibberish language book"
	desc = "Formermly used by psychologists, this book teaches you the ability to speak and understand gibberish. Great with patients suffering of Aphasia."
	item = /obj/item/book/granter/language_book/aphasia
	price_min = 250
	price_max = 750
	stock_max = 3
	availability_prob = 100

/datum/blackmarket_item/language/beach
	name = "Beach Bum language book"
	desc = "Raaaaaadical duuuuuuuude..."
	item = /obj/item/book/granter/language_book/beachbum
	price_min = 250
	price_max = 750
	stock_max = 3
	availability_prob = 80

/datum/blackmarket_item/language/narsian
	name = "Narsian language book"
	desc = "Have you ever heard of our Mother of All, Nar'Sie ? We can sell you this book to extend your knowledge in Her !"
	item = /obj/item/book/granter/language_book/narsian
	price_min = 750
	price_max = 1500
	stock_max = 3
	availability_prob = 40

/datum/blackmarket_item/language/common
	name = "Monkey language book"
	desc = "For when you want to become full monke. Or curious to understand what those chimps say."
	item = /obj/item/book/granter/language_book/monkey
	price_min = 250
	price_max = 750
	stock_max = 3
	availability_prob = 80

/datum/blackmarket_item/language/slime
	name = "Slime language book"
	desc = "Who knew that every chirps and chimes from a slime was actually words? Decipher it with this book !"
	item = /obj/item/book/granter/language_book/slime
	price_min = 250
	price_max = 750
	stock_max = 3
	availability_prob = 80

/datum/blackmarket_item/language/russian
	name = "Russian language book"
	desc = "A nu cheeki breeki iv damke!"
	item = /obj/item/book/granter/language_book/russian
	price_min = 250
	price_max = 750
	stock_max = 3
	availability_prob = 100 //Unbiaised.

/datum/blackmarket_item/language/xeno
	name = "Xenomorphs language book"
	desc = "Let's hope you buy this for xenobiological ressearch..."
	item = /obj/item/book/granter/language_book/xeno
	price_min = 750
	price_max = 1500
	stock_max = 3
	availability_prob = 40

//MAGIC

/datum/blackmarket_item/magic
	category = "Supernatural"

/datum/blackmarket_item/magic/smoke_lesser
	name = "Lesser smoke spellbook"
	desc = "Want to learn magic ? This is the first standard spell the Wizard Confederation teaches !"
	item = /obj/item/book/granter/spell/smoke/lesser
	price_min = 500
	price_max = 1000
	stock_max = 3
	availability_prob = 100

/datum/blackmarket_item/magic/smoke
	name = "Smoke moke spellbook"
	desc = "A better version of the smoke spell ! It has a bigger radius."
	item = /obj/item/book/granter/spell/smoke
	price_min = 750
	price_max = 1500
	stock_max = 3
	availability_prob = 80

/datum/blackmarket_item/magic/charge
	name = "Charge spellbook"
	desc = "We know that you are filled with energy weapons. This one can sure help an officer. Remember that usage of Wizard's confederation magic is illegal."
	item = /obj/item/book/granter/spell/charge
	price_min = 2000
	price_max = 4000
	stock_max = 1
	availability_prob = 40

/datum/blackmarket_item/magic/nullrod
	name = "Null rod"
	desc = "A basic null rod used by chaplains. It is said to protect the weared against magic."
	item = /obj/item/nullrod
	price_min = 500
	price_max = 1000
	stock_max = 3
	availability_prob = 100

//ORGANS

/datum/blackmarket_item/organ
	category = "Organs"

/datum/blackmarket_item/organ/catears
	name = "Cat ears"
	desc = "Unlike in an anime shop, those are 100% real biomatter cat ears."
	item = /obj/item/organ/ears/cat
	price_min = 250
	price_max = 750
	stock_max = 5
	availability_prob = 80

/datum/blackmarket_item/organ/cattail
	name = "Cat tail"
	desc = "Unlike in an anime shop, those are 100% real biomatter cat tail."
	item = /obj/item/organ/tail/cat
	price_min = 250
	price_max = 750
	stock_max = 5
	availability_prob = 80

/datum/blackmarket_item/organ/lizardtail
	name = "Cat ears"
	desc = "Unlike in an anime shop, those are 100% real biomatter cat ears."
	item = /obj/item/organ/tail/lizard
	price_min = 250
	price_max = 750
	stock_max = 5
	availability_prob = 80

/datum/blackmarket_item/organ/monkeytail
	name = "Monkey tail"
	desc = "When you don't want entirely to return to monke."
	item = /obj/item/organ/tail/monkey
	price_min = 250
	price_max = 750
	stock_max = 5
	availability_prob = 80

/datum/blackmarket_item/organ/penguinears
	name = "Penguin ears"
	desc = "Want to waddle like a penguin ? Those ears will help you lose your balance !"
	item = /obj/item/organ/ears/penguin
	price_min = 250
	price_max = 750
	stock_max = 5
	availability_prob = 80

/datum/blackmarket_item/organ/snaileyes
	name = "Snail eyes"
	desc = "Snail helm not included. Provides you some loooooooong eyes."
	item = /obj/item/organ/eyes/snail
	price_min = 250
	price_max = 750
	stock_max = 5
	availability_prob = 80

/datum/blackmarket_item/organ/skeletontongue
	name = "Skeleton tongue"
	desc = "For when you want to be more convincing at Halloween. Alters your speech with more cackles."
	item = /obj/item/organ/tongue/bone
	price_min = 250
	price_max = 750
	stock_max = 5
	availability_prob = 80

//TREASURES

/datum/blackmarket_item/treasure
	category = "Treasures"

/datum/blackmarket_item/treasure/kiriekit
	name = "Faded Medikit"
	desc = "We found this limited edition of a purple medikit somewhere ! It seems already used altough."
	item = /obj/item/storage/firstaid/kirie
	price_min = 2500
	price_max = 5000
	stock_max = 1
	availability_prob = 100

/datum/blackmarket_item/treasure/nicolegun
	name = "Unique PL-14"
	desc = "An unique piece of weaponry that aged from centuries ago. We couldn't clean the dry blood on it."
	item = /obj/item/gun/ballistic/automatic/pistol/PL14_nicole
	price_min = 5000
	price_max = 10000
	stock_max = 1
	availability_prob = 100



/datum/blackmarket_item/treasure/svetdisabler
	name = "Brass Ray"
	desc = "A modified disabler designed by someone with awfull tastes. Self rechargeable and uses 'rays' instead of 'beams' to shoot."
	item = /obj/item/gun/energy/disabler/svet_disabler
	price_min = 5000
	price_max = 10000
	stock_max = 1
	availability_prob = 100


/datum/blackmarket_item/treasure/svetbaton
	name = "Brass Stringer"
	desc = "A modified baton designed by someone with awfull tastes. Retracts into pockets and works on silicons."
	item = /obj/item/melee/classic_baton/telescopic/svet_baton
	price_min = 5000
	price_max = 10000
	stock_max = 1
	availability_prob = 100


/datum/blackmarket_item/treasure/svetshotgun
	name = "Brass Cannon"
	desc = "A modified shotgun designed by someone with awfull tastes. Works like a standard double barrel shotgun, but with three barrels instead."
	item = /obj/item/gun/ballistic/shotgun/doublebarrel/svet_shotgun
	price_min = 5000
	price_max = 10000
	stock_max = 1
	availability_prob = 100

/datum/blackmarket_item/treasure/homepistol
	name = "E-220 Home Defender"
	desc = "The bastard child from a disabler and an ion gun. Self rechargeable. When you don't like any kind of intruders at your place."
	item = /obj/item/gun/ballistic/shotgun/doublebarrel/svet_shotgun
	price_min = 5000
	price_max = 10000
	stock_max = 1
	availability_prob = 100

