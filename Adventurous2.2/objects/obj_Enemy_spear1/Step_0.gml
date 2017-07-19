///
enable_movement_platform_actions(.1,1,1.5,0,0,0,0);
move_movement_entity();




// Check if grounded 
if (distance_to_object(obj_solid) < 10)
	grounded=true;
else  if (distance_to_object(obj_solid_45) < 10)
	grounded=true;
else
	grounded=false;
	
	