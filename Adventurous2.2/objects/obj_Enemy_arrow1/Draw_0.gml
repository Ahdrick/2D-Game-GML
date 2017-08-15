/// @description Insert description here
// You can write your code in this editor
if (image_xscale ==1){
	 if (vsp[1] < -1)
		draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle-(-vsp[1]*10),c_white,image_alpha)
	else 
		draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle+(vsp[1]*10+10),c_white,image_alpha)
	}
else { 
	 if (vsp[1] < -1)
		draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle+(-vsp[1]*10),c_white,image_alpha)
	else 
		draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle-(-vsp[1]*10+10),c_white,image_alpha)
	}
//draw_text(x,y-10,vsp[1])