with (other){
	var mysign; 
	// Check left or right of collison
	if (x > other.x)
		 mysign = 1; 
	else 
		 mysign = -1
		 // send back
		hsp[0] = 0;
		hsp[1] = 0;
		// send back
		vsp[0] = 0;
		vsp[1] = 0;
	// send back
	//add_movement_horizontal_vertical(.02* mysign ,0);
	//add_movement_horizontal_vertical_maxspeed(10*mysign, 8, 2*mysign, -4)
	//add_movement_horizontal_vertical_maxspeed(10*mysign, 8, 2*mysign, -4)
	add_movement_horizontal_vertical_maxspeed(3*mysign, -3, 3*mysign, -4)
}
blocked = true;