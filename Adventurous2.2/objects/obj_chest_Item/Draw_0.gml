
//gpu_set_blendmode(bm_add);

var myalpha = choose(1,.9,.8,.7)
//draw_sprite_ext(sprite_index, 1, x, y, image_xscale, image_yscale, image_angle, c_white ,1);
if ( place_meeting (x,y+10, obj_solid))
draw_sprite_ext(spr_item_caption, 1, x, y-30+bounce, image_xscale, image_yscale, image_angle, c_white,myalpha);
			//var healthy3 = (Fired)/ 5; 
			//gpu_set_blendenable(false);
//wpu_set_blendmode(bm_normal);
if (up ==false)
	if (bounce < 10)
		bounce +=.3;
	else 
		up=true;
else 
if (bounce > 0)
		bounce -=.3;
	else 
		up=false;

draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, c_white ,1);