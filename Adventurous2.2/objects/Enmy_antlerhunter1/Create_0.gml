/// Create Me;
scr_Enemy_stats(10,10,1,10);
scr_enemy_create();
//Overwrite Some values Inherited;
spr_attack1		  =  spr_Antlerhunter_attack1;
spr_attack2		  =  spr_Antlerhunter_attack2;
spr_attack3		  =  spr_Antlerhunter_attack1
spr_death    	  =  spr_Antlerhunter_death;
spr_idle1         =  spr_Antlerhunter_idle1
spr_idle2         =  spr_Antlerhunter_idle1;
spr_stand         =  spr_Antlerhunter_stand;
spr_run           =  spr_Antlerhunter_walk
image_speed       =	 1.9;


// put this in creation event
sprCombo[0]	  = spr_attack2;
sprCombo[1]	  = spr_attack2;
sprCombo[2]	  = spr_attack2;
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
