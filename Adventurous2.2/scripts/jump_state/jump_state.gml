/// jump_state(vspd)
vspd = argument0;
if(sprite_index != spr_player_jump)
{
	image_index = 0;
	sprite_index = spr_player_jump;
	image_speed = 0;
}
/*
if(vspd > 0     && vspd < -0.5)
	image_index = 1;
if(vspd >= -0.5 && vspd <= 0)
	image_index = 2;
if(vspd >= 0    && vspd <= 0.5)
	image_index = 3;
if(vspd > 0.5   && vspd <= 1)
	image_index = 4;
if(vspd > 1 && !place_meeting(x,y+1,obj_solid))
{
	image_index = 5;
	image_speed = 0;
}
if(place_meeting(x,y+1,obj_solid))
{
	image_index = 6;
	image_speed = 1;
}

if(Attack && currentEnergy > (100/stamDown)-5)
{
	state = attack_state
	instance_create_depth(x,y,200, obj_attack_mask);
	script_execute(state);
}

draw_state = "Jump"