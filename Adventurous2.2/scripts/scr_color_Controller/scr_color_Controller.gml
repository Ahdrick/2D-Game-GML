//gpu_set_blendenable(false);
gpu_set_blendmode(bm_add);
//gpu_set_blendenable(true);
//gpu_set_blendenable(true);

//with (obj_Player) 
	//{
var myalpha = random(1)
	if (Iced > 0){

		
		draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, c_fuchsia, myalpha);
		}

	if (Fired > 0){
	
		draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, c_red, myalpha);
		}
	
	if (Poisoned >0){
	
		draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, c_maroon , myalpha);
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

gpu_set_blendmode(bm_normal);
