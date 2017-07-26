/// Create Me;

scr_Enemy_stats(10,1,1,100);
scr_enemy_create();
spr_attack1		  =  spr_rotknight_shield_attack1;
spr_attack2		  =  spr_rotknight_shield_attack1;
spr_attack3		  =  spr_rotknight_shield_attack1;
spr_death    	  =  spr_rotknight_shield_death;
spr_idle1         =  spr_rotknight_shield_idle;
spr_idle2         =  spr_rotknight_shield_idle;
spr_stand         =  spr_rotknight_shield_stand;
spr_run           =  spr_rotknight_shield_walk;
spr_runbackwards  =  spr_rotknight_shield_walk;
spr_break         =  spr_rotknight_shield_break;
spr_block         =  spr_rotknight_shield_block;
image_speed       =	 1.9;


// put this in creation event
sprCombo[0]	  = spr_run;
sprCombo[1]	  = spr_run;
sprCombo[2]	  = spr_run;
sprCombo[3]	  = spr_idle2;
sprCombo[4]	  = spr_idle2;
sprCombo[5]	  = spr_run;


// second near combo 
sprCombo2[0]	  = spr_attack1;
sprCombo2[1]	  = spr_block;
sprCombo2[2]	  = spr_idle1;
sprCombo2[3]	  = spr_attack1;
sprCombo2[4]	  = spr_block;
sprCombo2[5]	  = spr_idle1;

// combo variables
Combo_length= 5
mycombo     = 1;
mycombo2    = 1;
