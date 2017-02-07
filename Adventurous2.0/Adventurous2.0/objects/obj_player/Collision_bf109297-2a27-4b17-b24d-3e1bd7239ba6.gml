
/// If Hit By Enemy and enemy not dead set flash alarm
if (other.EnemyState != -1){ 
	if (flinch == false){
		sprite_index = spr_player_flinch;
		flinch = true;
			instance_create_depth(x,y,-300,obj_blood);
		if(alarm[5] == -1)
			alarm[5] = 20;
	}

// Subtract health

// Add knock back
var mysign; 
// Check left or right of collison
if (x > other.x)
	 mysign = 1; 
else 
	 mysign = -1
// send back
add_movement_horizontal_vertical_maxspeed(6*mysign, -6, 6*mysign, -4)
}


// screen shake 
obj_camera_controller.Shake_State = 1;