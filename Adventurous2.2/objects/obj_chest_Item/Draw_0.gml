
gpu_set_blendmode(bm_add);

var myalpha = choose(1,.4,.5,.3,.2,.9,.8,.7)
//draw_sprite_ext(sprite_index, 1, x, y, image_xscale, image_yscale, image_angle, c_white ,1);
draw_sprite_ext(sprite_index, 1, x, y, image_xscale, image_yscale, image_angle, micolor ,myalpha);
			//var healthy3 = (Fired)/ 5; 
			//gpu_set_blendenable(false);
gpu_set_blendmode(bm_normal);
