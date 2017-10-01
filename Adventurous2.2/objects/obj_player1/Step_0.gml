player_basics()

if(!obj_menu.paused and currentHealth > 0)
{	
	Pdeath()
	
	Pflinch()
	
	Pmove()

	Pjump()

	Pattack()

	Ppotion()

	Pblock()

	Pdash()
	
	player_movement()
}

// handles player after death
// if the death animation is over pause it at the end
if(anim == 8 and sprIndex >= anim_length[anim] - 1 and Dead)
{
	anim_speed = 0
	sprIndex = anim_length[anim] - 1
	// handle what happens on death here
}