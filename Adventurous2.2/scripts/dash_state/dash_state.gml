// Stamina Down 
//hspd		 = 62;
//max_run      = 8;
mask_index = spr_player_mask;
if(DashL && canDash && (curStam > dashStamDown-1)){

	curStam -= dashStamDown;
	if(curStam < 0)
	{
		stamCD   = true;
		alarm[3] = stamTimer;
	}
	
/// creating the sexy shade(PCsI,PiI,x,y,PxS,1,0,-1,1);
	myf = instance_create_depth(x,y,depth, obj_Shade_1);
	myf.sprite_index =obj_player_cloths.PCsI;
	myf.image_index =image_index;
	myd = instance_create_depth(x,y,depth, obj_Shade_1);
	myd.sprite_index =obj_player_cloths.PHsI;
	myd.image_index =image_index;
	
	
	canDash = false;
	sprite_index = spr_player_dash;
	image_index = 0;
	image_speed =.2;
	if(Left)
		image_xscale = -1;
	if(Right)
		image_xscale = 1;
		
	// Check left or right of collison
	var mysign; 
	if (image_xscale == 1)
		 mysign = -1; 
	else 
		 mysign = 1
	// send back
//	hsp[0] = 0;
//	hsp[1] = 0;
		hsp[0] = 0;
		hsp[1] = 0;
		// send back
		//vsp[0] = 0;
		//vsp[1] = 0;
	
  if (vsp[0] == 0 && 	vsp[1] == 0)
		//add_movement_horizontal_vertical((10*-image_xscale),0);
		add_movement_horizontal_vertical_maxspeed(3*mysign, -3, 3*mysign, -4)
	
	else
	add_movement_horizontal_vertical_maxspeed(3*mysign, -3, 3*mysign, -4)
	//	add_movement_horizontal_vertical((7*-image_xscale), -1);
	
	// effect??? TBD 


}
if(Jump)
{
	canDash = true;
	state = move_state;
	script_execute(state);	
}

draw_state = "Dash"