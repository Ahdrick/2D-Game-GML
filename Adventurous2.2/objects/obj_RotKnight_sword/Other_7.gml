if (distance_to_object(obj_player) < 500 && distance_to_object(obj_player) > 25){

				if (obj_player.x < x && place_meeting(x,y+1, obj_solid))
				{
					left  = 1;
					right = 0;
				}
				else if(obj_player.x > x && place_meeting(x,y+1, obj_solid))
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

if(sprite_index == spr_death)
{
	if (death == false){
		image_speed = 0;
		image_index = 1;
		//instance_create_depth(x,y,-300, obj_effect_blanks);
		
		death = true;	
		scr_item_drop();
	}
}
	canAttack = true;