with (other){
	var mysign; 
	// Check left or right of collison
	if (x > other.x)
		 mysign = 1; 
	else 
		 mysign = -1
	// send back
	add_movement_horizontal_vertical_maxspeed(5*mysign, -5, 5*mysign, -5)
}
blocked = true;