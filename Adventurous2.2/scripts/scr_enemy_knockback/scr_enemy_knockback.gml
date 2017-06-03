var current    = argument[0]; // Current value
var Vertical   = argument[1]; // typical value 3
var Horizontal = argument[2]  // typical value 3
var blood_type = argument[0]; // obj_blood_1

/// knock back
if (EnemyState != -1){
	//sprite_index = spr_S1_death;
	EnemyState= -1;
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


myblood =instance_create_depth(x,y,200,blood_type);
myblood.MyBloodDonor = 2; 

var mysign; 
// Check left or right of collison
if (x > other.x)
	 mysign = 1; 
else 
	 mysign = -1
	 
// send back
add_movement_horizontal_vertical_maxspeed(Horizontal*mysign, -Horizontal, Vertical*mysign, -Vertical-1)