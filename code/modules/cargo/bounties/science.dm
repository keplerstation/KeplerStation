/datum/bounty/item/science/boh
	name = "Bag of Holding"
	description = "The ICC would make good use of high-capacity backpacks. If you have any, please ship them."
	reward = 5000
	wanted_types = list(/obj/item/storage/backpack/holding)

/datum/bounty/item/science/tboh
	name = "Trash Bag of Holding"
	description = "The ICC would make good use of high-capacity trash bags. If you have any, please ship them."
	reward = 3000
	wanted_types = list(/obj/item/storage/backpack/holding)

/datum/bounty/item/science/bluespace_syringe
	name = "Bluespace Syringe"
	description = "The ICC would make good use of high-capacity syringes. If you have any, please ship them."
	reward = 1500
	wanted_types = list(/obj/item/reagent_containers/syringe/bluespace)

/datum/bounty/item/science/bluespace_body_bag
	name = "Bluespace Body Bag"
	description = "The ICC would make good use of high-capacity body bags. If you have any, please ship them."
	reward = 5000
	wanted_types = list(/obj/item/bodybag/bluespace)

/datum/bounty/item/science/nightvision_goggles
	name = "Night Vision Goggles"
	description = "An electrical storm has busted all the lights at Head Office. While management is waiting for replacements, perhaps some night vision goggles can be shipped?"
	reward = 1250
	wanted_types = list(/obj/item/clothing/glasses/night, /obj/item/clothing/glasses/meson/night, /obj/item/clothing/glasses/hud/health/night, /obj/item/clothing/glasses/hud/security/night, /obj/item/clothing/glasses/hud/diagnostic/night)

/datum/bounty/item/science/experimental_welding_tool
	name = "Experimental Welding Tool"
	description = "A recent accident has left most of Head Office's welding tools exploded. Ship replacements to be rewarded."
	reward = 5000
	required_count = 3
	wanted_types = list(/obj/item/weldingtool/experimental)

/datum/bounty/item/science/cryostasis_beaker
	name = "Cryostasis Beaker"
	description = "Chemists at Central Command have discovered a new chemical that can only be held in cryostasis beakers. The only problem is they don't have any! Rectify this to receive payment."
	reward = 2000
	wanted_types = list(/obj/item/reagent_containers/glass/beaker/noreact)

/datum/bounty/item/science/diamond_drill
	name = "Diamond Mining Drill"
	description = "Head Office is willing to pay three months salary in exchange for one diamond mining drill."
	reward = 5500
	wanted_types = list(/obj/item/pickaxe/drill/diamonddrill, /obj/item/mecha_parts/mecha_equipment/drill/diamonddrill)

/datum/bounty/item/science/floor_buffer
	name = "Floor Buffer Upgrade"
	description = "One of Head Office's janitors made a small fortune betting on carp races. Now they'd like to commission an upgrade to their floor buffer."
	reward = 3000
	wanted_types = list(/obj/item/janiupgrade)

/datum/bounty/item/science/advanced_mop
	name = "Advanced Mop"
	description = "Excuse me. I'd like to request 17 credits for a push broom rebristling. Either that, or an advanced mop."
	reward = 3000
	wanted_types = list(/obj/item/mop/advanced)

/datum/bounty/item/science/advanced_egun
	name = "Advanced Energy Gun"
	description = "With the price of rechargers on the rise, upper management is interested in purchasing guns that are self-powered. If you ship one, they'll pay."
	reward = 1800
	wanted_types = list(/obj/item/gun/energy/e_gun/nuclear)

/datum/bounty/item/science/bscells
	name = "Bluespace Power Cells"
	description = "Someone in upper management keeps using the excuse that his tablet battery dies when he's in the middle of work. This will be the last time he doesn't have his presentation, I swear to -"
	reward = 3000
	required_count = 10 //Easy to make
	wanted_types = list(/obj/item/stock_parts/cell/bluespace)

/datum/bounty/item/science/t4manip
	name = "Femto-Manipulators"
	description = "One of our Chief Engineers has OCD. Can you send us some femto-manipulators so he stops complaining that his ID doesn't fit perfectly in the PDA slot?"
	reward = 2000
	required_count = 20 //Easy to make
	wanted_types = list(/obj/item/stock_parts/manipulator/femto)

/datum/bounty/item/science/t4bins
	name = "Bluespace Matter Bins"
	description = "The local Janitorial union has gone on strike. Can you send us some bluespace bins so we don't have to take out our own trash?"
	reward = 2000
	required_count = 20 //Easy to make
	wanted_types = list(/obj/item/stock_parts/matter_bin/bluespace)

/datum/bounty/item/science/t4capacitor
	name = "Quadratic Capacitor"
	description = "One of our linguists doesn't understand why they're called Quadratic capacitors. Can you give him a few so he leaves us alone about it?"
	reward = 2000
	required_count = 20 //Easy to make
	wanted_types = list(/obj/item/stock_parts/capacitor/quadratic)

/datum/bounty/item/science/t4triphasic
	name = "Triphasic Scanning Module"
	description = "One of our scientists got into the liberty caps and is demanding new scanning modules so he can talk to ghosts. At this point we just want him out of our office."
	reward = 2000
	required_count = 20 //Easy to make
	wanted_types = list(/obj/item/stock_parts/scanning_module/triphasic)

/datum/bounty/item/science/t4microlaser
	name = "Quad-Ultra Micro-Laser"
	description = "The cats on Vega 9 are breeding out of control. We need something to corral them into one area so we can saturation bomb it."
	reward = 2000
	required_count = 20 //Easy to make
	wanted_types = list(/obj/item/stock_parts/micro_laser/quadultra)

/datum/bounty/item/science/fakecrystals
	name = "Synthetic Bluespace Crystals"
	description = "Don't, uh, tell anyone, but one of our BSA arrays might have had a little... accident. Send us some bluespace crystals so we can recalibrate it before anyone realizes. The whole set uses artificial bluespace crystals, so we need and not any other type of bluespace crystals..."
	reward = 8000
	required_count = 5
	wanted_types = list(/obj/item/stack/ore/bluespace_crystal/artificial)
	exclude_types = list(/obj/item/stack/ore/bluespace_crystal,
						 /obj/item/stack/sheet/bluespace_crystal,
						 /obj/item/stack/ore/bluespace_crystal/refined)
