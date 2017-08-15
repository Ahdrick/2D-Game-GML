///Player basics

hspd = hsp[0]+hsp[1];
var vspd = vsp[0]+vsp[1];
mask_index = spr_player_mask

// if hero is dead dont grab input...if he is alive grab it
get_input();

// Check if the hero is dead! 
if (currentHealth < 1 && state != dead_state){
	state = dead_state;
	script_execute(state);
	if (!instance_exists(obj_death))
		instance_create_depth(x,y,-10000,obj_death)
}
// flinch 
if (flinch == true && state != dead_state)
{
	if(alarm[5] == -1)
		alarm[5] = 3;
}

// if dead apply physics but no player control
if(currentHealth <= 0){
	enable_movement_platform_actions(.6,4,5,0,0,0,0);
	move_movement_entity();
}

//if alive and not paused
if(!obj_menu.paused && (currentHealth > 0))
{
	if(state != dash_state)
		image_speed = 1.4;
	//_platform_actions(acceleration, run_speed, jump_height, right_input, left_input,
	if (flinch == false ){
		if(state != dash_state)
			enable_movement_platform_actions(.6,max_run*1.2,4.7,Right,Left,Jump,0);
		script_execute(state);
	}
	// hollow effect
	if (Jump != 0){
		if(alarm[4] == -1)
			alarm[4] = 5;
	
		}

// Attack
if(Attack && curStam > (stamDown - 1))
{
	if (flinch == false)
	{
		//if ((vsp[0] = 0) || (vsp[1] = 0))
		state = attack_state;
	//	else 
			//state = jump_attack_state;
		script_execute(state);
	}
	if(comboCount == 0 && sprite_index != sprCombo[combo])
	{
		sprite_index = sprCombo[combo];
		image_index  = 0;
		curStam      = curStam - stamDown;
		combo++;
		if(curStam < 0)
		{
			stamCD   = true;
			alarm[3] = stamTimer;
		}
	}
	if(comboCount < 3)
		comboCount+=1;
}
// Potions
if(Potion && numPotion != 0)
{
	state = potion_state;
	script_execute(state);		
}
if((curStam < stamPool) && !Block && !(stamCD))
	curStam += stamRegen;
// Blocking
if(Block && canBlock && curStam > blockStamDown)
{
	state = block_state;
	script_execute(state);		
}
if(!Block && state == block_state)
{
	state = move_state;
	script_execute(state);
}
/// Dash
if(DashL && curStam > dashStamDown && place_meeting(x,y+1,collision_object))
{
	state = dash_state;
	script_execute(state);
}
if(curStam > blockStamDown)
	canBlock = true;

var yslope = 0; // Used to calculate movement along a slope

// Air jump reset
if (place_meeting(x, y+1, collision_object)) {
    air_jump = 1;
}

// Move down a slope
if (!place_meeting(x+hspd, y, collision_object) && abs(hspd) > 0 && place_meeting(x, y+1, collision_object)) {
    while (!place_meeting(x+hspd, y-yslope, collision_object) && yslope >= -abs(hspd)) {
        yslope--;
    }
    
    // Make sure we actually need to move down
    if (yslope != 0 && place_meeting(x+hspd, y-yslope+1, collision_object)) {
        y -= yslope;
    }
}

// Horizontal check
if (place_meeting(x+hspd, y, collision_object)) {
    // Move up a slope
    while (place_meeting(x+hspd, y-yslope, collision_object) && yslope <= abs(hspd)) {
        yslope++;
    }
    
    if (place_meeting(x+hspd, y-yslope, collision_object)) {
        // Move to contact and bounce
        while (!place_meeting(x+sign(hspd), y, collision_object)) {
            x+=sign(hspd);
        }
        
        // Update the horizontal speeds
	    hspd = 0;
	    hsp[0] = 0;
	    hsp[1] = -(hsp[1])*bounce*2;
        
        // Stop bounce at low values
        if (abs(hsp[1]) < 1) hsp[1] = 0;
    } else {
        y-=yslope;
    }
}
if (!place_meeting(x+hspd, y, collision_object) && state != potion_state) {
    x += hspd;
}

// Vertical collision check
if (place_meeting(x, y+vspd, collision_object)) {
    while (!place_meeting(x, y+sign(vspd), collision_object)) {
        y+=sign(vspd);
    }
    
    // Update the vertical speeds
    vspd = 0;
    vsp[0] = 0;
    vsp[1] = -vsp[1]*bounce;
    
    // Stop bounce at low values
    if (abs(vsp[1]) < 1) vsp[1] = 0;
}
y += vspd;


/// Apply gravity
if (!place_meeting(x, y+1, collision_object))  {
	if (state == move_state)
		if (flinch == false)
		{
		if (!place_meeting(x, y+15, collision_object)) {
			state = jump_state;
			script_execute(state);
			}
		}
		else 
			sprite_index = spr_player_flinch;
    vsp[0] += grav;
}

// Apply friction
if (place_meeting(x, y+1, collision_object)) {
    if (horizontal_move_input == false) {
        hsp[0] = approach(hsp[0], 0, fric);
    }
    
    hsp[1] = approach(hsp[1], 0, fric);
}

// Air resistance
if (horizontal_move_input == false) {
    hsp[0] = approach(hsp[0], 0, air_res);
}
if (vertical_move_input == false && grav == 0) {
    vsp[0] = approach(vsp[0], 0, air_res);
}

hsp[1] = approach(hsp[1], 0, air_res);
vsp[1] = approach(vsp[1], 0, air_res);
}


////////////
// Cursed Brings back enemies to life
////////////
if (Cursed == true ){
	if (!instance_exists( obj_enemy_parent_1))
		instance_create_depth(obj_player.x +100,obj_player.y- 100,300, obj_enemy_parent_1)
		
}