/obj/machinery/turnstile
	name = "turnstile"
	desc = "A mechanical door that permits one-way access and prevents tailgating."
	icon = 'icons/obj/turnstile.dmi'
	icon_state = "turnstile_map"
	density = FALSE
	armor = list(melee = 50, bullet = 50, laser = 50, energy = 50, bomb = 10, bio = 100, rad = 100, fire = 90, acid = 70)
	anchored = TRUE
	use_power = FALSE
	idle_power_usage = 2
	resistance_flags = INDESTRUCTIBLE | LAVA_PROOF | FIRE_PROOF | UNACIDABLE | ACID_PROOF
	layer = OPEN_DOOR_LAYER

/obj/machinery/turnstile/Initialize()
	. = ..()
	icon_state = "turnstile"

/obj/machinery/turnstile/CanAtmosPass(turf/T)
	return TRUE

/obj/machinery/turnstile/bullet_act(obj/item/projectile/P, def_zone)
	return BULLET_ACT_FORCE_PIERCE //Pass through!

/obj/machinery/turnstile/proc/allowed_access(var/mob/B)
	if(B.pulledby && ismob(B.pulledby))
		if(ishuman(B.pulledby))
			var/mob/living/carbon/human/P = B.pulledby
			var/obj/item/card/id/card = P.get_idcard()
			if(findtext(card.name, "Prisoner"))
				return allowed(B)
		return allowed(B.pulledby) | allowed(B)
	else
		return allowed(B)

/obj/machinery/turnstile/CanPass(atom/movable/AM, turf/T)
	if(ismob(AM))
		var/mob/B = AM
		if(isliving(AM))
			var/mob/living/M = AM

			if(world.time - M.last_bumped <= 5)
				return FALSE
			M.last_bumped = world.time

			var/allowed_access = FALSE
			var/turf/behind = get_step(src, dir)

			if(B in behind.contents)
				allowed_access = allowed_access(B)
			else
				to_chat(usr, "<span class='notice'>\the [src] resists your efforts.</span>")
				return FALSE

			if(allowed_access)
				flick("operate", src)
				playsound(src,'sound/items/ratchet.ogg',50,0,3)
				return TRUE
			else
				flick("deny", src)
				playsound(src,'sound/machines/deniedbeep.ogg',50,0,3)
				return FALSE
	if(ispath(AM, /obj/item/))
		return TRUE
	else
		return FALSE

/obj/machinery/turnstile/CheckExit(atom/movable/AM as mob|obj, target)
	if(isliving(AM))
		var/mob/living/M = AM
		var/outdir = dir
		if(allowed_access(M))
			switch(dir)
				if(NORTH)
					outdir = SOUTH
				if(SOUTH)
					outdir = NORTH
				if(EAST)
					outdir = WEST
				if(WEST)
					outdir = EAST
		var/turf/outturf = get_step(src, outdir)
		var/canexit = (target == src.loc) | (target == outturf)
		
		// KEPLER CHANGE: Fix turnstile time checking logic
		if(world.time - M.last_bumped <= 5)
			return FALSE
		M.last_bumped = world.time

		if(!canexit) // END KEPLER CHANGE THIS LINE
			to_chat(usr, "<span class='notice'>\the [src] resists your efforts.</span>")
		return canexit
	else
		return TRUE
