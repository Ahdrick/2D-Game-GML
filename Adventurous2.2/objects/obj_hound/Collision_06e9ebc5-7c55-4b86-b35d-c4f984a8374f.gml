/// 
if (EnemyState != -1){
	//sprite_index = spr_SporeOwl_Scream;
	currentHealth -=1;
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


var mysign; 
// Check left or right of collison
if (x > other.x)
	 mysign = 1; 
else 
	 mysign = -1
// send back
if (jump ==0)
	add_movement_horizontal_vertical_maxspeed(3*mysign, -3, 3*mysign, -4)
else
	add_movement_horizontal_vertical_maxspeed(3*mysign, -3, 0, 0)