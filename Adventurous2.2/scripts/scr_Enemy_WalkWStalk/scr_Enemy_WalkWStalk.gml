/// Enemy Basics
myspeed = argument0;

if (currentHealth <1 ){
	sprite_index = spr_death;
	jump =0;
	EnemyState = -1;
	}
	
if (player.currentHealth >1){
	if(left)
		image_xscale = 1;
	if(right)
		image_xscale = -1;

	image_speed = .6;

	enable_movement_platform_actions(.6,1,myspeed,right,left,jump,0);
	move_movement_entity();

	if (player.x < x && place_meeting(x,y+1, obj_solid))
	{
		left  = 1;
		right = 0;
	}
	else if(player.x > x && place_meeting(x,y+1, obj_solid))
	{
		left  = 0;
		right = 1;
	}
	else
	{
		right = 0;
		left  = 0;
	}
}


