/// This Determine Behahaviour


if (distance_to_object(obj_player) < 100)
	sprite_index = sprCombo[mycombo];
else 
	sprite_index = spr_run; 

if (mycombo < Combo_length)
	mycombo+=1;
else 
	mycombo =0; 
	