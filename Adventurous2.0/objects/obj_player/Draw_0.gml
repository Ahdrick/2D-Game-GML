

/// Flinch
if (flinch == true){
	var myalpha=  random  (1); 
	
	draw_sprite_ext(sprite_index,-1,x,y,image_xscale,image_yscale,image_angle,c_red,myalpha)
		}
else 
	draw_sprite_ext(sprite_index,-1,x,y,image_xscale,image_yscale,image_angle,c_white ,1)
	
