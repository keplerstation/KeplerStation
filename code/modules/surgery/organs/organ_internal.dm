/obj/item/organ
	name = "organ"
	icon = 'icons/obj/surgery.dmi'
	var/mob/living/carbon/owner = null
	var/status = ORGAN_ORGANIC
	w_class = WEIGHT_CLASS_SMALL
	throwforce = 0
	var/zone = BODY_ZONE_CHEST
	var/slot
	var/organ_flags = 0
	var/maxHealth = STANDARD_ORGAN_THRESHOLD
	var/damage = 0

	var/healing_factor = 0 //fraction of maxhealth healed per on_life(), set to 0 for generic organs
	var/decay_factor = 0 //same as above but when without a living owner, set to 0 for generic organs

	var/high_threshold	= STANDARD_ORGAN_THRESHOLD * 0.45		//when severe organ damage occurs
	var/low_threshold	= STANDARD_ORGAN_THRESHOLD * 0.1		//when minor organ damage occurs
	
	///Organ variables for determining what we alert the owner with when they pass/clear the damage thresholds
	var/prev_damage = 0

	var/low_threshold_passed
	var/high_threshold_passed
	var/now_failing
	var/now_fixed
	var/low_threshold_cleared
	var/high_threshold_cleared


/obj/item/organ/proc/Insert(mob/living/carbon/M, special = 0, drop_if_replaced = TRUE)
	if(!iscarbon(M) || owner == M)
		return

	var/obj/item/organ/replaced = M.getorganslot(slot)
	if(replaced)
		replaced.Remove(M, special = 1)
		if(drop_if_replaced)
			replaced.forceMove(get_turf(M))
		else
			qdel(replaced)

	owner = M
	M.internal_organs |= src
	M.internal_organs_slot[slot] = src
	moveToNullspace()
	for(var/X in actions)
		var/datum/action/A = X
		A.Grant(M)

//Special is for instant replacement like autosurgeons
/obj/item/organ/proc/Remove(mob/living/carbon/M, special = 0)
	owner = null
	if(M)
		M.internal_organs -= src
		if(M.internal_organs_slot[slot] == src)
			M.internal_organs_slot.Remove(slot)
		if((organ_flags & ORGAN_VITAL) && !special && !(M.status_flags & GODMODE))
			M.death()
	for(var/X in actions)
		var/datum/action/A = X
		A.Remove(M)


/obj/item/organ/proc/on_find(mob/living/finder)
	return

/obj/item/organ/process()	//runs decay when outside of a person
	if((organ_flags & (ORGAN_SYNTHETIC | ORGAN_FROZEN)) || istype(loc, /obj/item/mmi))
		return
	if(damage >= maxHealth)
		organ_flags |= ORGAN_FAILING
		damage = maxHealth
		return
	else if(!owner)
		damage = min(maxHealth, damage + (maxHealth * decay_factor))

	else
		var/mob/living/carbon/C = owner
		if(!C)
			return
		if(C.stat == DEAD)
			if(damage >= maxHealth)
				organ_flags |= ORGAN_FAILING
				damage = maxHealth
				return
			damage = min(maxHealth, damage + (maxHealth * decay_factor))

/obj/item/organ/proc/on_life()	//repair organ damage if the organ is not failing
	var/mob/living/carbon/C = owner
	if(!C)
		return
	if(damage >= maxHealth)
		organ_flags |= ORGAN_FAILING
		damage = maxHealth
		check_damage_thresholds(C)
		prev_damage = damage
		return

	if((!(organ_flags & ORGAN_FAILING)) && (C.stat !=DEAD))
		damage = max(0, damage - (maxHealth * healing_factor))
		if(C.satiety > 0)
			///Damage decrements again by a percent of its maxhealth, up to a total of 4 extra times depending on the owner's health
			damage = max(0, damage - ((maxHealth * healing_factor) * (C.satiety / MAX_SATIETY) * 4))
		check_damage_thresholds(C)
		prev_damage = damage
	return

/obj/item/organ/examine(mob/user)
	..()
	if(status == ORGAN_ROBOTIC && (organ_flags & ORGAN_FAILING))
		to_chat(user, "<span class='warning'>[src] seems to be broken!</span>")
	else if(organ_flags & ORGAN_FAILING)
		to_chat(user, "<span class='warning'>[src] has decayed for too long, and has turned a sickly color! It doesn't look like it will work anymore!</span>")

	else if(damage > high_threshold)
		to_chat(user, "<span class='warning'>[src] is starting to look discolored.</span>")

/obj/item/organ/proc/prepare_eat()
	var/obj/item/reagent_containers/food/snacks/organ/S = new
	S.name = name
	S.desc = desc
	S.icon = icon
	S.icon_state = icon_state
	S.w_class = w_class

	return S

/obj/item/reagent_containers/food/snacks/organ
	name = "appendix"
	icon_state = "appendix"
	icon = 'icons/obj/surgery.dmi'
	list_reagents = list("nutriment" = 5)
	foodtype = RAW | MEAT | GROSS


/obj/item/organ/Initialize()
	START_PROCESSING(SSobj, src)
	return ..()

/obj/item/organ/Destroy()
	STOP_PROCESSING(SSobj, src)
	if(owner)
		// The special flag is important, because otherwise mobs can die
		// while undergoing transformation into different mobs.
		Remove(owner, special=TRUE)
	return ..()

/obj/item/organ/attack(mob/living/carbon/M, mob/user)
	if(M == user && ishuman(user))
		var/mob/living/carbon/human/H = user
		if(status == ORGAN_ORGANIC)
			var/obj/item/reagent_containers/food/snacks/S = prepare_eat()
			if(S)
				qdel(src)
				if(H.put_in_active_hand(S))
					S.attack(H, H)
	else
		..()

/obj/item/organ/item_action_slot_check(slot,mob/user)
	return //so we don't grant the organ's action to mobs who pick up the organ.

//Looking for brains?
//Try code/modules/mob/living/carbon/brain/brain_item.dm

/mob/living/proc/regenerate_organs()
	return 0

/mob/living/carbon/regenerate_organs()
	var/breathes = TRUE
	var/blooded = TRUE
	if(dna && dna.species)
		if(HAS_TRAIT_FROM(src, TRAIT_NOBREATH, SPECIES_TRAIT))
			breathes = FALSE
		if(NOBLOOD in dna.species.species_traits)
			blooded = FALSE
		var/has_liver = (!(NOLIVER in dna.species.species_traits))
		var/has_stomach = (!(NOSTOMACH in dna.species.species_traits))

		if(has_liver && !getorganslot(ORGAN_SLOT_LIVER))
			var/obj/item/organ/liver/LI

			if(dna.species.mutantliver)
				LI = new dna.species.mutantliver()
			else
				LI = new()
			LI.Insert(src)

		if(has_stomach && !getorganslot(ORGAN_SLOT_STOMACH))
			var/obj/item/organ/stomach/S

			if(dna.species.mutantstomach)
				S = new dna.species.mutantstomach()
			else
				S = new()
			S.Insert(src)

	if(breathes && !getorganslot(ORGAN_SLOT_LUNGS))
		var/obj/item/organ/lungs/L = new()
		L.Insert(src)

	if(blooded && !getorganslot(ORGAN_SLOT_HEART))
		var/obj/item/organ/heart/H = new()
		H.Insert(src)

	if(!getorganslot(ORGAN_SLOT_TONGUE))
		var/obj/item/organ/tongue/T

		if(dna && dna.species && dna.species.mutanttongue)
			T = new dna.species.mutanttongue()
		else
			T = new()

		// if they have no mutant tongues, give them a regular one
		T.Insert(src)
	else
		var/obj/item/organ/tongue/oT = getorganslot(ORGAN_SLOT_TONGUE)
		if(oT.name == "fluffy tongue")
			var/obj/item/organ/tongue/T
			if(dna && dna.species && dna.species.mutanttongue)
				T = new dna.species.mutanttongue()
			else
				T = new()
			oT.Remove(src)
			qdel(oT)
			T.Insert(src)

	if(!getorganslot(ORGAN_SLOT_EYES))
		var/obj/item/organ/eyes/E

		if(dna && dna.species && dna.species.mutanteyes)
			E = new dna.species.mutanteyes()

		else
			E = new()
		E.Insert(src)

	if(!getorganslot(ORGAN_SLOT_EARS))
		var/obj/item/organ/ears/ears
		if(dna && dna.species && dna.species.mutantears)
			ears = new dna.species.mutantears
		else
			ears = new

		ears.Insert(src)

	if(!getorganslot(ORGAN_SLOT_TAIL))
		var/obj/item/organ/tail/tail
		if(dna && dna.species && dna.species.mutanttail)
			tail = new dna.species.mutanttail
			tail.Insert(src)


/** check_damage_thresholds
  * input: M (a mob, the owner of the organ we call the proc on)
  * output:
  * description: By checking our current damage against our previous damage, we can decide whether we've passed an organ threshold.
  *				 If we have, send the corresponding threshold message to the owner, if such a message exists.
  */
/obj/item/organ/proc/check_damage_thresholds(var/M)
	if(damage == prev_damage)
		return
	var/delta = damage - prev_damage
	if(delta > 0)
		if(damage == maxHealth)
			if(now_failing)
				to_chat(M, now_failing)
		else if(damage > high_threshold && prev_damage <= high_threshold)
			if(high_threshold_passed)
				to_chat(M, high_threshold_passed)
		else if(damage > low_threshold && prev_damage <= low_threshold)
			if(low_threshold_passed)
				to_chat(M, low_threshold_passed)
	else if(delta < 0)
		if(prev_damage > low_threshold && damage <= low_threshold)
			if(low_threshold_cleared)
				to_chat(M, low_threshold_cleared)
		else if(prev_damage > high_threshold && damage <= high_threshold)
			if(high_threshold_cleared)
				to_chat(M, high_threshold_cleared)
		else if(prev_damage == maxHealth)
			if(now_fixed)
				to_chat(M, now_fixed)

/obj/item/organ/proc/applyOrganDamage(var/d, var/maximum = maxHealth)	//use for damaging effects
	if(maximum < d + damage)
		d = max(0, maximum - damage)
	damage = max(0, damage + d)

/obj/item/organ/proc/setOrganDamage(var/d)	//use mostly for admin heals
	damage = CLAMP(d, 0 ,maxHealth)
	if(d >= maxHealth)
		organ_flags |= ORGAN_FAILING
	else
		organ_flags &= ~ORGAN_FAILING
