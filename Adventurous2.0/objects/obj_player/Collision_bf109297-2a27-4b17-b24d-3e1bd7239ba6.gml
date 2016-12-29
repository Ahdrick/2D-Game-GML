
/// If Hit By Enemy and enemy not dead set flash alarm
if (other.EnemyState != -1){ 
	if (flinch == false){
		flinch = true;
		if(alarm[5] == -1)
			alarm[5] = 20;
	}

// Subtract health

// Add knock back

}


