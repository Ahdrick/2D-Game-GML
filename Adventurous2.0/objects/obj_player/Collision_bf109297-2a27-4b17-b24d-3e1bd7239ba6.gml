
/// If Hit By Enemy and enemy not dead set flash alarm
if (other.EnemyState != -1){ 
	if (flinch == false){
		flinch = true;
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


