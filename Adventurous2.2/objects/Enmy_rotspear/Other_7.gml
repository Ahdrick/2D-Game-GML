/// This Determine Behahaviour


if (distance_to_object(obj_player) > 50)
	sprite_index = sprCombo[mycombo];
else 
	sprite_index = spr_run; 

if (mycombo < 3)
	mycombo+=1;
else 
	mycombo =0; 
	