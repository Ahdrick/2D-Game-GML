//////////////////////////////////////////////////////////
//////////// Basic sprite control starts here ////////////

// grab all input variables
// ation words starting with capital letters
// Attack Jump Block ect. 
// True if the button was clicked or held
get_input()

// always be setting the values of these variables
hspd = hsp[0]+hsp[1] 
vspd = vsp[0]+vsp[1]
	
// fixes stupid floor glitch
y = floor(y)

// if your not attacking your able to turn your sprite 
if(!attacking)
{
	if(Left)
		image_xscale = -1
	if(Right)
		image_xscale = 1
}
	
// controls the sprites animation speeds
if sprIndex <= anim_length[anim] - 1
	sprIndex += anim_speed/60
else
	sprIndex = 0
	
//////////// Basic sprite control ends here //////////////
//////////////////////////////////////////////////////////
//////////// Players Actions start here //////////////////

if(!obj_menu.paused and currentHealth > 0)
{

	//////////////////////////////////////////////////////////
	//////////// Death starts here ///////////////////////////S
	
	if(keyboard_check_pressed(vk_backspace))
	currentHealth -= 10 // testing daamge

	// if you die ... play death animation
	if(currentHealth <= 0 and anim != 8)
	{
		sprIndex = 0
		anim = 8
		anim_speed = anim_speed_default-2
		Dead = true
	}
	
	// if the death animation is over pause it at the end
	if(anim == 8 and sprIndex >= anim_length[anim] - 1 and Dead)
	{
		anim_speed = 0
		sprIndex = anim_length[anim] - 1
		// handle what happens on death here
	}
	
	//////////// Death ends here /////////////////////////////
	//////////////////////////////////////////////////////////
	//////////// Flinching starts here ///////////////////////
	
	if (flinch == false)
		enable_movement_platform_actions(.6,runSpeed,4.7,Right,Left,Jump,0)
	if (flinch == true)
	{
		if(alarm[2] == -1)
			alarm[2] = 3
	}
	
	//////////// Flinching ends here /////////////////////////
	//////////////////////////////////////////////////////////
	//////////// Walking starts here /////////////////////////
	
	// idle slow down idle speed default was too fast
	if(anim == 0)
		anim_speed = anim_speed_default-4
	else
		anim_speed = anim_speed_default
		
	// controls the walk and when to walk 
	// this needs to be altered a lot based on what animatino gets broken by walking inturpting it
	if(hspd != 0 and (Left or Right) and (anim < 2 or anim > 4) and grounded and anim != 6 and !Block)
	{
		if(anim != 1)
		{
			sprIndex = 0
			anim = 1
		}
	}
	
	// resets to idle
	if(anim == 1 and hspd == 0)
	{
		if(anim != 0)
		{
			sprIndex = 0
			anim = 0
		}
	}
	
	/////////// Walking stops here ////////////////////////////
	///////////////////////////////////////////////////////////
	/////////// Jumping starts here ///////////////////////////
	
	// if you jumped and could jump 
	if(Jump and anim != 6 and place_meeting(x,y+1,collision_object) and !blocking)
	{
		sprIndex = 0
		anim = 6
	}
	
	// not grounded aka falling of some sort
	if(!place_meeting(x,y+1,collision_object) and vspd < 0)
	{
		sprIndex = 3
		anim = 6
		grounded = false
	}
	
	// if your not touching the ground then do stuff in here 
	// use the grounded variable in the attacking variable for
	// flying attack combos dont do it here. this is basic jumping
	// falling and landing
	if(!grounded)
	{
		anim_speed = 0
		if(vspd < 0     and vspd < -1)
			sprIndex = 1
		if(vspd >= -1 and vspd <= -0.2)
			sprIndex = 2
		if(vspd >= -0.2 and vspd <= 0.5)
			sprIndex = 3
		if(vspd > 0.5   and vspd <= 1)
			sprIndex = 4
		if(vspd > 1 and !place_meeting(x,y+1,collision_object))
			sprIndex = 5
		if(place_meeting(x,y+1,collision_object))
		{
			sprIndex = 7
			grounded = true
		}
	}
	
	// if your on the ground and need to finish the landing part
	// of the animation
	// play it faster so it looks like he lands smoother and doesnt
	// drag his feet
	if(grounded and anim == 6)
		anim_speed = anim_speed_default+10
	
	// if you landed and the animation ends transition to idle
	if(grounded and anim == 6 and floor(sprIndex) == anim_length[anim] - 1)
	{
		sprIndex = 0
		anim = 0
		anim_speed = anim_speed_default
	}
	
	/////////// Jumping stops here ////////////////////////////
	///////////////////////////////////////////////////////////
	////////// Attacking starts here //////////////////////////
	
	// stop movement during attack
	if(anim >= 2 and anim <= 4)
	{
		hsp[0] = 0
		hsp[1] = 0
	}
	
	if(Attack and canAttack)
	{
		// tells it to combo
		if(!comboing and canCombo)
			comboing = true
			
		if(obj_menu.weaponType == 0) // if you have a short sword
		{	
			// if your not doing attack animation change to 
			// first swing of combo and each addition else if checks
			// the combo variable is true showing that you want to combo
			// then changing to the next swing
			if(vspd == 0 and (anim < 2 or anim > 4))
			{
				sprIndex = 0
				anim = 2
				comboing = false
			}
			else if (vspd == 0 and anim == 2 and comboing)
			{
				sprIndex = 0
				anim = 3
				comboing = false
			}
			else if(vspd == 0 and anim == 3 and comboing)
			{
				sprIndex = 0
				anim = 4
				comboing = false
			}
		}
		else if(obj_menu.weaponType == 1) // if you have a great sword
		{ 

		}
		else if(obj_menu.weaponType == 2) // if you have daggers
		{ 

		}
	}
	
	// check if its time to combo
	if(sprIndex <= anim_length[anim] - 3)
		canCombo = false
	else 
		canCombo = true
	
	// set the attacking variable very useful
	if(anim >= 2 and anim <= 4)
		attacking = true
	else
		attacking = false
		
	// reset to idle after attacking
	if(anim >= 2 and anim <= 4 and floor(sprIndex) >= anim_length[anim] - 1)
	{
		sprIndex = 0
		anim = 0
		canAttack = false
		alarm[0] = 16
	}	
	
	//////////////// Attacking stops here //////////////////////
	////////////////////////////////////////////////////////////
	//////////////// Potions start here ////////////////////////
	
	// Potions
	if(Potion and numPotion != 0 )
	{
		if(anim != 5)
		{
			sprIndex = 0
			anim = 5
		}		
	}
	
	// stop moving if your drinking .... dont want to spill it do you?
	if(anim == 5)
	{
		hsp[0] = 0
		hsp[1] = 0
	}
	
	// stop drinking ... when your done drinking
	if(anim == 5 and floor(sprIndex) == anim_length[anim] - 1)
	{
		sprIndex = 0
		anim = 0
	}

	//////////////// Potions stops here ////////////////////////
	////////////////////////////////////////////////////////////
	//////////////// Blocking start here ///////////////////////

	if(Block and canBlock)
	{
		// stops movement during blocking not falling
		if place_meeting(x,y+1,collision_object)
		{
			hsp[0] = 0
			hsp[1] = 0
		}
		
		// if your not currently blocking
		if(anim < 9 or anim > 11)
		{
			sprIndex = 0
			anim = 9
		}
		
		// if you are at the last frame of the plling shield up animation
		// your concidered to be blocking
		if(anim == 9 and sprIndex >= anim_length[anim] - 1)
			blocking = true
		else
			anim_speed = anim_speed_default + 8
			
		// if your holding your shield up and blocking  
		if(anim == 9 and blocking)
		{
			anim_speed = 0
			sprIndex = anim_length[anim] - 1
			
			// enough stamina to succesfully block so pplay block animation
			if(keyboard_check_pressed(ord("B")) and curStam >= blockStamDown) 
			{// swap key inputwith enemy attack
				sprIndex = 0
				anim = 10
				anim_speed = anim_speed_default
				curStam -= blockStamDown
			}
			
			// not enough stamina so your shield breaks
			else if(keyboard_check_pressed(ord("B")) and curStam < blockStamDown)
			{// testing block breaking
				sprIndex = 0
				anim = 11
				anim_speed = anim_speed_default
				blocking = false
				canBlock = false 
				alarm[1] = 60 // alarm sets the canBlock to true
			}
		}
		
		// if you succesfully block and that animation ends
		// reset to the blocking animation
		if(anim == 10 and floor(sprIndex) == anim_length[anim] - 1)
		{
			sprIndex = 6
			anim = 9
			anim_speed = anim_speed_default
		}
	}
	
	// reset to idle if you sto blocking
	else if(anim >= 9 and anim <= 11 and !Block)
	{
		sprIndex = 0
		anim_speed = anim_speed_default
		anim = 0
		blocking = false
	}
	
	// if your block was broken and you're at the end of the animation
	// and you cant block yet then idle 
	if(anim == 11 and sprIndex >= anim_length[anim] - 1 and !canBlock)
	{
		sprIndex = 0
		anim = 0
		anim_speed = anim_speed_default
	}
	
	//////////////// Blocking stops here ///////////////////////
	////////////////////////////////////////////////////////////
	//////////////// Dashing start here ////////////////////////
	
	if(DashL and curStam > dashStamDown and place_meeting(x,y+1,collision_object))
	{
		// dash code animations and movement
		if(anim != 12)
		{
			sprIndex = 0
			anim = 12
			anim_speed = 12
			
			hsp[0] = 0
			hsp[1] = 0
	
			hsp[1] -= ((distance)*image_xscale)
		}
	}
	// reset to idle from dash
	if(anim == 12 and floor(sprIndex) == anim_length[anim] - 1)
	{
		sprIndex = 0
		anim_speed = anim_speed_default
		anim = 0
	}
	
	//////////////// Dashing stops here ////////////////////////
	////////////////////////////////////////////////////////////
	//////////////// Movement start here ///////////////////////
	
	var yslope = 0 // Used to calculate movement along a slope

	// Air jump reset
	if (place_meeting(x, y+1, collision_object)) {
	    air_jump = 1
	}

	// Move down a slope
	if (!place_meeting(x+hspd, y, collision_object) && abs(hspd) > 0 && place_meeting(x, y+1, collision_object)) {
	    while (!place_meeting(x+hspd, y-yslope, collision_object) && yslope >= -abs(hspd)) {
	        yslope--
	    }
    
	    // Make sure we actually need to move down
	    if (yslope != 0 && place_meeting(x+hspd, y-yslope+1, collision_object)) {
	        y -= yslope
	    }
	}

	// Horizontal check
	if (place_meeting(x+hspd, y, collision_object)) {
	    // Move up a slope
	    while (place_meeting(x+hspd, y-yslope, collision_object) && yslope <= abs(hspd)) {
	        yslope++
	    }
    
	    if (place_meeting(x+hspd, y-yslope, collision_object)) {
	        // Move to contact and bounce
	        while (!place_meeting(x+sign(hspd), y, collision_object)) {
	            x+=sign(hspd)
	        }
        
	        // Update the horizontal speeds
		    hspd = 0
		    hsp[0] = 0
		    hsp[1] = -(hsp[1])*bounce*2
        
	        // Stop bounce at low values
	        if (abs(hsp[1]) < 1) hsp[1] = 0
	    } else {
	        y-=yslope
	    }
	}
	if (!place_meeting(x+hspd, y, collision_object)) {
	    x += hspd
	}

	// Vertical collision check
	if (place_meeting(x, y+vspd, collision_object)) {
	    while (!place_meeting(x, y+sign(vspd), collision_object)) {
	        y+=sign(vspd)
	    }
    
	    // Update the vertical speeds
	    vspd = 0
	    vsp[0] = 0
	    vsp[1] = -vsp[1]*bounce
    
	    // Stop bounce at low values
	    if (abs(vsp[1]) < 1) vsp[1] = 0
	}
	y += vspd

	/// Apply gravity
	if (!place_meeting(x, y+1, collision_object))  {
	    vsp[0] += grav
	}

	// Apply friction
	if (place_meeting(x, y+1, collision_object)) {
	    if (horizontal_move_input == false) {
	        hsp[0] = approach(hsp[0], 0, fric)
	    }
    
	    hsp[1] = approach(hsp[1], 0, fric)
	}

	// Air resistance
	if (horizontal_move_input == false) {
	    hsp[0] = approach(hsp[0], 0, air_res)
	}
	if (vertical_move_input == false && grav == 0) {
	    vsp[0] = approach(vsp[0], 0, air_res)
	}

	hsp[1] = approach(hsp[1], 0, air_res)
	vsp[1] = approach(vsp[1], 0, air_res)
	
	/////////////////////////////////////////////////////////////
	/////////////// Movement ends here //////////////////////////
}

