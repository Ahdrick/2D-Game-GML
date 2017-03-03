/// Death equels true
if(sprite_index == spr_player_death)
{
	if (death == false){
		image_speed = 0;
		image_index = 1;
		//instance_create_depth(x,y,-300, obj_effect_blanks);
		
		death = true;	
	}
}

