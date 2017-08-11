/// Create Me;
scr_Enemy_stats(10,10,1,10);
scr_enemy_create();
//Overwrite Some values Inherited;
spr_attack1		  =  spr_rotknight_archer_attack1;
spr_attack2		  =  spr_rotknight_archer_attack1;
spr_attack3		  =  spr_rotknight_archer_attack1;
spr_death    	  =  spr_rotknight_archer_death;
spr_idle1         =  spr_rotknight_archer_idle
spr_idle2         =  spr_rotknight_archer_idle
spr_stand         =  spr_rotknight_archer_stand;
spr_run           =  spr_rotknight_archer_walk
spr_angle1        =  spr_rotknight_archer_angle1;
spr_angle2        =  spr_rotknight_archer_angle2;
image_speed       =	 1.9;


// put this in creation event
sprCombo[0]	  = spr_attack2;
sprCombo[1]	  = spr_attack2;
sprCombo[2]	  = spr_idle2;
sprCombo[3]	  = spr_idle2;
sprCombo[4]	  = spr_idle2;
sprCombo[5]	  = spr_attack2;


// second near combo 
sprCombo2[0]	  = spr_attack1;
sprCombo2[1]	  = spr_attack1;
sprCombo2[2]	  = spr_idle2;
sprCombo2[3]	  = spr_idle2;
sprCombo2[4]	  = spr_idle2;
sprCombo2[5]	  = spr_attack2;
Combo_length= 5
mycombo     = 1;
mycombo2    = 1;
