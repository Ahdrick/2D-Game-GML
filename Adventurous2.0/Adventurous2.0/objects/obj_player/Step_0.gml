///Player basics
var hspd = hsp[0]+hsp[1];
var vspd = vsp[0]+vsp[1];

get_input();

if(!obj_menu.paused)
{
	enable_movement_platform_actions(.6,2,5,Right,Left,Jump,0);

	script_execute(state);

if(Attack && currentEnergy > (100/stamDown)-5)
{
	state = attack_state;
	instance_create_depth(x,y,200, obj_attack_mask);
	script_execute(state);
}
if(Block && currentEnergy > 5)
{
	blocking = true;
	state = block_state;
	script_execute(state);
}
if(Potion && numPotion != 0)
{
	state = potion_state;
	script_execute(state);
}
if((Jump && state != attack_state && state != potion_state) || 
	vspd != 0 && state != attack_state && state != potion_state)
{
	state = jump_state;
	script_execute(state,vspd);
}

if(currentEnergy < 100) && !(stamCD)
	currentEnergy += stamRegen;

// hollow effect
if(vspd != 0 && !place_meeting(x,y,obj_solid))
{
	if(alarm[4] == -1)
		alarm[4] = 5;
}

if(image_index > image_number-3 && state = attack_state)
	canCombo = true;
if(state == attack_state || state == block_state)
	hspd = hspd/8;

if(state != attack_state && state != potion_state && state != jump_state && state != block_state)
{
	image_speed = abs((hspd)/4);
	if(hspd == 0)
		sprite_index = spr_player_stand;
}

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
	    hsp[1] = -(hsp[1])*bounce;
        
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
if (!place_meeting(x, y+1, collision_object)) {
	script_execute(state,vspd)
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

