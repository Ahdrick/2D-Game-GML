/// 
if (EnemyState != -1){
	sprite_index = spr_SporeOwl_Scream;
	image_speed =.2;
	currentHealth -=1;
		alarm[1] = 135;
	if (currentHealth < 1 ){
		EnemyState= -1;
		sprite_index = spr_SporeOwl_Death;
		}
}

if (obj_player != -1){ 
	if (flinch == false){
		flinch = true;
		if(alarm[5] == -1)
			alarm[5] = 20;
	}
}
// Make the screen slightly shake
obj_camera_controller.Shake_State = 2;
//if (object_exists(obj_player)) 
	//obj_player.Shake_State = 3; 

// make blood or spark effect particles

myblood =instance_create_depth(x,y,200,obj_blood_1);
myblood.MyBloodDonor = 2; 
