/// 
if (EnemyState != -1){
	//sprite_index = spr_SporeOwl_Scream;
	currentHealth -= obj_player.strpow;
		//alarm[1] = 135;
	if (currentHealth < 1 ){
		EnemyState= -1;
		sprite_index = spr_death;
		}
}


// Make the screen slightly shake
obj_camera_controller.Shake_State = 2;

// make blood or spark effect particles
myblood =instance_create_depth(x,y,200,obj_blood_1);
myblood.MyBloodDonor = 2; 
