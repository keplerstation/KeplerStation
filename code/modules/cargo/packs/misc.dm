
//Reminders-
// If you add something to this list, please group it by type and sort it alphabetically instead of just jamming it in like an animal
// cost = 700- Minimum cost, or infinite points are possible.
//////////////////////////////////////////////////////////////////////////////
//////////////////////////// Miscellaneous ///////////////////////////////////
//////////////////////////////////////////////////////////////////////////////

/datum/supply_pack/misc
	group = "Miscellaneous Supplies"

//////////////////////////////////////////////////////////////////////////////
//////////////////// Paperwork and Writing Supplies //////////////////////////
//////////////////////////////////////////////////////////////////////////////

/* I did it Kevin
/datum/supply_pack/misc/abandonedcrate
	name = "Abandoned Crate"
	desc = "Someone keeps finding these locked crates out in the boonies. How about you take a crack at it, we've had our fill. WARNING: EXPLOSIVE"
	contraband = TRUE
	cost = 12800
	contains = list(/obj/structure/closet/crate/secure/loot)
	crate_name = "abandoned crate"
	crate_type = /obj/structure/closet/crate/large
	dangerous = TRUE
*/
/datum/supply_pack/misc/artsupply
	name = "Art Supplies"
	desc = "Make some happy little accidents with six canvasses, two easels, two boxes of crayons, and a rainbow crayon!"
	cost = 800
	contains = list(/obj/structure/easel,
					/obj/structure/easel,
					/obj/item/canvas/nineteenXnineteen,
					/obj/item/canvas/nineteenXnineteen,
					/obj/item/canvas/twentythreeXnineteen,
					/obj/item/canvas/twentythreeXnineteen,
					/obj/item/canvas/twentythreeXtwentythree,
					/obj/item/canvas/twentythreeXtwentythree,
					/obj/item/storage/crayons,
					/obj/item/storage/crayons,
					/obj/item/toy/crayon/rainbow,
					/obj/item/toy/crayon/white,
					/obj/item/toy/crayon/white)
	crate_name = "art supply crate"
	crate_type = /obj/structure/closet/crate/wooden

/datum/supply_pack/misc/captain_pen
	name = "Captain Pen"
	desc = "A spare Captain fountain pen."
	access = ACCESS_CAPTAIN
	cost = 10000
	contains = list(/obj/item/pen/fountain/captain)
	crate_name = "captain pen"
	crate_type = /obj/structure/closet/crate/secure/weapon //It is a combat pen

/datum/supply_pack/misc/bicycle
	name = "Bicycle"
	desc = "Head Office reminds all employees to never toy with powers outside their control."
	cost = 1000000
	contains = list(/obj/vehicle/ridden/bicycle)
	crate_name = "Bicycle Crate"
	crate_type = /obj/structure/closet/crate/large

/datum/supply_pack/misc/bigband
	name = "Big Band Instrument Collection"
	desc = "Get your sad station movin' and groovin' with this fine collection! Contains nine different instruments!"
	cost = 5000
	crate_name = "Big band musical instruments collection"
	contains = list(/obj/item/instrument/violin,
					/obj/item/instrument/guitar,
					/obj/item/instrument/glockenspiel,
					/obj/item/instrument/accordion,
					/obj/item/instrument/saxophone,
					/obj/item/instrument/trombone,
					/obj/item/instrument/recorder,
					/obj/item/instrument/harmonica,
					/obj/structure/piano/unanchored)
	crate_type = /obj/structure/closet/crate/wooden

/datum/supply_pack/misc/book_crate
	name = "Book Crate"
	desc = "Surplus from the Horizons Archives, these five books are sure to be good reads."
	cost = 1500
	contains = list(/obj/item/book/codex_gigas,
					/obj/item/book/manual/random/,
					/obj/item/book/manual/random/,
					/obj/item/book/manual/random/,
					/obj/item/book/random/triple)
	crate_type = /obj/structure/closet/crate/wooden

/datum/supply_pack/misc/paper
	name = "Bureaucracy Crate"
	desc = "High stacks of papers on your desk Are a big problem - make it Pea-sized with these bureaucratic supplies! Contains five pens, some camera film, hand labeler supplies, a paper bin, three folders, two clipboards and two stamps as well as a briefcase."//that was too forced
	cost = 1500
	contains = list(/obj/structure/filingcabinet/chestdrawer/wheeled,
					/obj/item/camera_film,
					/obj/item/hand_labeler,
					/obj/item/hand_labeler_refill,
					/obj/item/hand_labeler_refill,
					/obj/item/paper_bin,
					/obj/item/pen/fourcolor,
					/obj/item/pen/fourcolor,
					/obj/item/pen,
					/obj/item/pen/blue,
					/obj/item/pen/red,
					/obj/item/folder/blue,
					/obj/item/folder/red,
					/obj/item/folder/yellow,
					/obj/item/clipboard,
					/obj/item/clipboard,
					/obj/item/stamp,
					/obj/item/stamp/denied,
					/obj/item/storage/briefcase)
	crate_name = "bureaucracy crate"

/datum/supply_pack/misc/captain_pen
	name = "Captain Pen"
	desc = "A spare Captain fountain pen."
	access = ACCESS_CAPTAIN
	cost = 5000
	contains = list(/obj/item/pen/fountain/captain)
	crate_name = "captain pen"
	crate_type = /obj/structure/closet/crate/secure/weapon //It is a combat pen

/datum/supply_pack/misc/fountainpens
	name = "Calligraphy Crate"
	desc = "Sign death warrants in style with these seven executive fountain pens."
	cost = 730
	contains = list(/obj/item/storage/box/fountainpens,
					/obj/item/paper_bin)
	crate_type = /obj/structure/closet/crate/wooden
	crate_name = "calligraphy crate"

/datum/supply_pack/misc/paper_work
	name = "Freelance Paper work"
	desc = "The Head Office Primary Bureaucratic Database Intelligence (HOPDBI) reports that the station has not completed its funding and grant paperwork this solar cycle. In order to gain further funding, your station is required to fill out (20) ten of these forms or no additional capital will be disbursed. We have sent you ten copies of the following form and we expect every one to be up to Head Office Standards." // Disbursement. It's not a typo, look it up.
	cost = 700 // Net of 0 credits but makes (120 x 20 = 2400)
	contains = list(/obj/item/folder/paperwork,
					/obj/item/folder/paperwork,
					/obj/item/folder/paperwork,
					/obj/item/folder/paperwork,
					/obj/item/folder/paperwork,
					/obj/item/folder/paperwork,
					/obj/item/folder/paperwork,
					/obj/item/folder/paperwork,
					/obj/item/folder/paperwork,
					/obj/item/folder/paperwork,
					/obj/item/folder/paperwork,
					/obj/item/folder/paperwork,
					/obj/item/folder/paperwork,
					/obj/item/folder/paperwork,
					/obj/item/folder/paperwork,
					/obj/item/folder/paperwork,
					/obj/item/folder/paperwork,
					/obj/item/folder/paperwork,
					/obj/item/folder/paperwork,
					/obj/item/folder/paperwork,
					/obj/item/pen/fountain
					)
	crate_name = "Paperwork"

//////////////////////////////////////////////////////////////////////////////
//////////////////////////////// Entertainment ///////////////////////////////
//////////////////////////////////////////////////////////////////////////////

/datum/supply_pack/misc/randombedsheets
	name = "Bedsheet Crate (R)"
	desc = "Snuggle up in some sweet sheets with this assorted bedsheet crate. Each set comes with eight random bedsheets for your slumbering pleasure!"
	cost = 2000
	contains = list(/obj/item/bedsheet/random,
					/obj/item/bedsheet/random,
					/obj/item/bedsheet/random,
					/obj/item/bedsheet/random,
					/obj/item/bedsheet/random,
					/obj/item/bedsheet/random,
					/obj/item/bedsheet/random,
					/obj/item/bedsheet/random) //I'm lazy, and I copy paste stuff.
	crate_name = "random bedsheet crate"

/datum/supply_pack/misc/coloredsheets
	name = "Bedsheet Crate (C)"
	desc = "Give your night life a splash of color with this crate filled with bedsheets! Contains a total of nine different-colored sheets."
	cost = 1250
	contains = list(/obj/item/bedsheet/blue,
					/obj/item/bedsheet/green,
					/obj/item/bedsheet/orange,
					/obj/item/bedsheet/purple,
					/obj/item/bedsheet/red,
					/obj/item/bedsheet/yellow,
					/obj/item/bedsheet/brown,
					/obj/item/bedsheet/black,
					/obj/item/bedsheet/rainbow)
	crate_name = "colored bedsheet crate"

/datum/supply_pack/misc/bicycle
	name = "Bicycle"
	desc = "Nanotrasen reminds all employees to never toy with powers outside their control."
	cost = 1000000
	contains = list(/obj/vehicle/ridden/bicycle)
	crate_name = "Bicycle Crate"
	crate_type = /obj/structure/closet/crate/large

/datum/supply_pack/misc/bigband
	name = "Big Band Instrument Collection"
	desc = "Get your sad station movin' and groovin' with this fine collection! Contains nine different instruments!"
	cost = 5000
	crate_name = "Big band musical instruments collection"
	contains = list(/obj/item/instrument/violin,
					/obj/item/instrument/guitar,
					/obj/item/instrument/glockenspiel,
					/obj/item/instrument/accordion,
					/obj/item/instrument/saxophone,
					/obj/item/instrument/trombone,
					/obj/item/instrument/recorder,
					/obj/item/instrument/harmonica,
					/obj/structure/piano/unanchored)
	crate_type = /obj/structure/closet/crate/wooden

/datum/supply_pack/misc/casinocrate
	name = "Casino Crate"
	desc = "Start up your own grand casino with this crate filled with slot machine and arcade boards!"
	cost = 3000
	contains = list(/obj/item/circuitboard/computer/arcade/battle,
					/obj/item/circuitboard/computer/arcade/battle,
					/obj/item/circuitboard/computer/arcade/orion_trail,
					/obj/item/circuitboard/computer/arcade/orion_trail,
					/obj/item/circuitboard/computer/arcade/minesweeper,
					/obj/item/circuitboard/computer/arcade/minesweeper,
					/obj/item/circuitboard/computer/slot_machine,
					/obj/item/circuitboard/computer/slot_machine,
					/obj/item/circuitboard/computer/slot_machine,
					/obj/item/circuitboard/computer/slot_machine,
					/obj/item/circuitboard/computer/slot_machine,
					/obj/item/circuitboard/computer/slot_machine)
	crate_name = "casino crate"

/datum/supply_pack/misc/coincrate
	name = "Coin Crate"
	desc = "Psssst, hey, you. Yes, you. I've heard that coins can do some special things on your station, give you access to some pretty cool stuff. Here's the deal, you give me some credits, and I give so some coins. Sound like a deal? I'll give you 10 for 10000 creds."
	contraband = TRUE
	cost = 3000
	contains = list(/obj/item/coin/silver) // 400 x 10 = 2 sheets of silver for 2300cr
	crate_name = "coin crate"
	crate_type = /obj/structure/closet/crate/large

/datum/supply_pack/misc/coincrate/generate()
	. = ..()
	for(var/i in 1 to 9)
		new /obj/item/coin/silver(.)

/datum/supply_pack/misc/dueling_stam
	name = "Dueling Pistols"
	desc = "Resolve all your quarrels with some nonlethal fun."
	cost = 2000
	contains = list(/obj/item/storage/lockbox/dueling/hugbox/stamina,
	/obj/item/storage/lockbox/dueling/hugbox/stamina,
	/obj/item/storage/lockbox/dueling/hugbox/stamina,
	/obj/item/storage/lockbox/dueling/hugbox/stamina,
	/obj/item/storage/lockbox/dueling/hugbox/stamina)
	crate_name = "dueling pistols"

/datum/supply_pack/misc/dueling_lethal
	name = "Lethal Dueling Pistols"
	desc = "Settle your differences the true spaceman way."
	cost = 3000
	contraband = TRUE
	contains = list(/obj/item/storage/lockbox/dueling/hugbox,
	/obj/item/storage/lockbox/dueling/hugbox,
	/obj/item/storage/lockbox/dueling/hugbox)
	crate_name = "dueling pistols (lethal)"

/datum/supply_pack/misc/dueling_death
	name = "Elimination Dueling Pistols"
	desc = "It's high noon."
	cost = 5000
	hidden = TRUE
	contains = list(/obj/item/storage/lockbox/dueling)
	crate_name = "dueling pistols (elimination)"

//////////////////////////////////////////////////////////////////////////////
//////////////////////////////// Misc Supplies ///////////////////////////////
//////////////////////////////////////////////////////////////////////////////

/datum/supply_pack/misc/candles
	name = "Candle Crate"
	desc = "Set up a romantic dinner or host a séance with these extra candles and crayons."
	cost = 850
	contains = list(/obj/item/storage/fancy/candle_box,
					/obj/item/storage/fancy/candle_box,
					/obj/item/storage/box/matches)
	crate_name = "candle crate"

/datum/supply_pack/misc/diamondring
	name = "Diamond Ring"
	desc = "Show them your love is like a diamond: unbreakable and forever lasting. Shipped straight from child slave cartels in the space african mines."
	cost = 10000
	contains = list(/obj/item/storage/fancy/ringbox/diamond)
	crate_name = "diamond ring crate"

/datum/supply_pack/misc/funeral
	name = "Funeral Supplies"
	desc = "Mourn your dead properly buy sending them off with love filled notes, clean clothes, and a proper ceremony. Contains two candle packs, funeral garb, flowers, a paperbin , and crayons to help aid in religious rituals. Coffin included."
	cost = 1200
	contains = list(/obj/item/clothing/under/burial,
					/obj/item/storage/fancy/candle_box,
					/obj/item/storage/fancy/candle_box,
					/obj/item/reagent_containers/food/snacks/grown/harebell,
					/obj/item/reagent_containers/food/snacks/grown/harebell,
					/obj/item/reagent_containers/food/snacks/grown/poppy/geranium,
					/obj/item/reagent_containers/food/snacks/grown/poppy/geranium,
					/obj/item/reagent_containers/food/snacks/grown/poppy/lily,
					/obj/item/reagent_containers/food/snacks/grown/poppy/lily,
					/obj/item/storage/crayons,
					/obj/item/paper_bin
					)
	crate_name = "coffin"
	crate_type = /obj/structure/closet/crate/coffin

/datum/supply_pack/misc/jewelry
	name = "Jewelry Crate"
	desc = "Bling out with this crate of jewelry. Includes gold necklace and a set of two rings."
	cost = 5000
	contains = list(/obj/item/clothing/neck/necklace/dope,
					/obj/item/storage/fancy/ringbox,
					/obj/item/storage/fancy/ringbox/silver
					)
	crate_name = "jewelry crate"

/datum/supply_pack/misc/jukebox
	name = "Jukebox"
	cost = 10000
	contains = list(/obj/machinery/jukebox)
	crate_name = "Jukebox"

/datum/supply_pack/misc/potted_plants
	name = "Potted Plants Crate"
	desc = "Spruce up the station with these lovely plants! Contains a random assortment of five potted plants from Nanotrasen's potted plant research division. Warranty void if thrown."
	cost = 730
	contains = list(/obj/item/twohanded/required/kirbyplants/random,
					/obj/item/twohanded/required/kirbyplants/random,
					/obj/item/twohanded/required/kirbyplants/random,
					/obj/item/twohanded/required/kirbyplants/random,
					/obj/item/twohanded/required/kirbyplants/random)
	crate_name = "potted plants crate"
	crate_type = /obj/structure/closet/crate/hydroponics

/datum/supply_pack/misc/religious_supplies
	name = "Religious Supplies Crate"
	desc = "Keep your local chaplain happy and well-supplied, lest they call down judgement upon your cargo bay. Contains two bottles of holywater, bibles, chaplain robes, and burial garmets."
	cost = 4000	// it costs so much because the Space Church is ran by Space Jews
	contains = list(/obj/item/reagent_containers/food/drinks/bottle/holywater,
					/obj/item/reagent_containers/food/drinks/bottle/holywater,
					/obj/item/storage/book/bible/booze,
					/obj/item/storage/book/bible/booze,
					/obj/item/clothing/suit/hooded/chaplain_hoodie,
					/obj/item/clothing/suit/hooded/chaplain_hoodie
					)
	crate_name = "religious supplies crate"

/datum/supply_pack/misc/shower
	name = "Shower Supplies"
	desc = "Everyone needs a bit of R&R. Make sure you get can get yours by ordering this crate filled with towels, rubber duckies, and some soap!"
	cost = 1000
	contains = list(/obj/item/reagent_containers/rag/towel,
					/obj/item/reagent_containers/rag/towel,
					/obj/item/reagent_containers/rag/towel,
					/obj/item/reagent_containers/rag/towel,
					/obj/item/reagent_containers/rag/towel,
					/obj/item/reagent_containers/rag/towel,
					/obj/item/bikehorn/rubberducky,
					/obj/item/bikehorn/rubberducky,
					/obj/item/soap/nanotrasen)
	crate_name = "shower crate"

//////////////////////////////////////////////////////////////////////////////
//////////////////////////// Misc + Decor ////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////

/datum/supply_pack/misc/carpet_exotic
	name = "Exotic Carpet Crate"
	desc = "Exotic carpets straight from Space Russia, for all your decorating needs. Contains 100 tiles each of 10 different flooring patterns."
	cost = 7000
	contains = list(/obj/item/stack/tile/carpet/blue/fifty,
					/obj/item/stack/tile/carpet/blue/fifty,
					/obj/item/stack/tile/carpet/cyan/fifty,
					/obj/item/stack/tile/carpet/cyan/fifty,
					/obj/item/stack/tile/carpet/green/fifty,
					/obj/item/stack/tile/carpet/green/fifty,
					/obj/item/stack/tile/carpet/orange/fifty,
					/obj/item/stack/tile/carpet/orange/fifty,
					/obj/item/stack/tile/carpet/purple/fifty,
					/obj/item/stack/tile/carpet/purple/fifty,
					/obj/item/stack/tile/carpet/red/fifty,
					/obj/item/stack/tile/carpet/red/fifty,
					/obj/item/stack/tile/carpet/royalblue/fifty,
					/obj/item/stack/tile/carpet/royalblue/fifty,
					/obj/item/stack/tile/carpet/royalblack/fifty,
					/obj/item/stack/tile/carpet/royalblack/fifty,
					/obj/item/stack/tile/carpet/blackred/fifty,
					/obj/item/stack/tile/carpet/blackred/fifty,
					/obj/item/stack/tile/carpet/monochrome/fifty,
					/obj/item/stack/tile/carpet/monochrome/fifty)
	crate_name = "exotic carpet crate"

/datum/supply_pack/misc/carpet
	name = "Premium Carpet Crate"
	desc = "Plasteel floor tiles getting on your nerves? These stacks of extra soft carpet will tie any room together. Contains some classic carpet, along with black, red, and monochrome varients."
	cost = 1350
	contains = list(/obj/item/stack/tile/carpet/fifty,
					/obj/item/stack/tile/carpet/fifty,
					/obj/item/stack/tile/carpet/black/fifty,
					/obj/item/stack/tile/carpet/black/fifty,
					/obj/item/stack/tile/carpet/blackred/fifty,
					/obj/item/stack/tile/carpet/blackred/fifty,
					/obj/item/stack/tile/carpet/monochrome/fifty,
					/obj/item/stack/tile/carpet/monochrome/fifty)
	crate_name = "premium carpet crate"

/datum/supply_pack/misc/noslipfloor
	name = "High-traction Floor Tiles"
	desc = "Make slipping a thing of the past with sixty industrial-grade anti-slip floortiles!"
	cost = 2000
	contains = list(/obj/item/stack/tile/noslip/thirty,
					/obj/item/stack/tile/noslip/thirty)
	crate_name = "high-traction floor tiles crate"

//////////////////////////////////////////////////////////////////////////////
//////////////////////////////// Lewd Supplies ///////////////////////////////
//////////////////////////////////////////////////////////////////////////////

/datum/supply_pack/misc/religious_supplies
	name = "Religious Supplies Crate"
	desc = "Keep your local chaplain happy and well-supplied, lest they call down judgement upon your cargo bay. Contains two bottles of holywater, bibles, chaplain robes, and burial garmets."
	cost = 4000	// it costs so much because the Space Church is ran by Space Jews
	contains = list(/obj/item/reagent_containers/food/drinks/bottle/holywater,
					/obj/item/reagent_containers/food/drinks/bottle/holywater,
					/obj/item/storage/book/bible/booze,
					/obj/item/storage/book/bible/booze,
					/obj/item/clothing/suit/hooded/chaplain_hoodie,
					/obj/item/clothing/suit/hooded/chaplain_hoodie
					)
	crate_name = "religious supplies crate"


