//gpu_set_blendenable(false);
gpu_set_blendmode(bm_add);
//gpu_set_blendenable(true);
//gpu_set_blendenable(true);

//with (obj_Player) 
	//{
var myalpha = choose(1,.9,.8,.7)


		
		if (Iced > 0){
			draw_sprite_ext(spr_statuses, 1, x+16, y-74, image_xscale, image_yscale, image_angle, c_aqua, myalpha );
			//var healthy3 = (Fired)/ 5; 
			//draw_sprite(spr_enemy_health1,0,x,y-45);
			//draw_sprite_ext(spr_statuses_bar, 1, x-15, y-54,  healthy3*2,3, image_angle, image_blend, image_alpha);
			}

		if (Fired > 0){
			draw_sprite_ext(spr_statuses, 2, x, y-74, image_xscale, image_yscale, image_angle,  c_red, myalpha );
			//var healthy2 = (Fired)/ 5; 
			//draw_sprite(spr_enemy_health1,0,x,y-35);
		//	draw_sprite_ext(spr_statuses_bar, 2, x-15, y-44,  healthy2*2,3, image_angle, image_blend, image_alpha);
			}
	
		if (Poisoned >0){
			draw_sprite_ext(spr_statuses, 0, x-16, y-74, image_xscale, image_yscale, image_angle,  c_purple, myalpha );
			/// draw the GUI
			//var healthy = (Poisoned)/ 5; 
			//draw_sprite(spr_enemy_health1,0,x,y-25);
			//draw_sprite_ext(spr_statuses_bar, 0, x-15, y-34,  healthy*2,3, image_angle, image_blend, image_alpha);

			}
		
//}



if (object_exists(obj_attack_mask)){
	with (obj_attack_mask){
		draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, c_gray, myalpha);
	}
}
if (object_exists(obj_blood)){
	with (obj_blood){
		draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, c_dkgray, myalpha);
	}
}


if (object_exists(obj_blood_1)){
	with (obj_blood_1){
		draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, c_gray, myalpha);
	}	
}

if (object_exists(obj_double_sword)){
	with (obj_double_sword){
		draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, c_gray, myalpha);
	}
}


gpu_set_blendmode(bm_normal);
