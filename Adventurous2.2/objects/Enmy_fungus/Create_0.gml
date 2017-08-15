/// Create Me;
scr_Enemy_stats(10,10,1,10);
scr_enemy_create();
//Overwrite Some values Inherited;
spr_attack1		  =  spr_fungusknight_attack1;
spr_attack2		  =  spr_fungusknight_attack2;
spr_attack3		  =  spr_fungusknight_attack1;
spr_death    	  =  spr_fungusknight_death;
spr_idle1         =  spr_fungusknight_idle;
spr_idle2         =  spr_fungusknight_idle2;
spr_stand         =  spr_fungusknight_stand;
spr_run           =  spr_fungusknight_walk;
image_speed       =	 1.9;


// put this in creation event
sprCombo[0]	  = spr_attack1;
sprCombo[1]	  = spr_run;
sprCombo[2]	  = spr_run;
sprCombo[3]	  = spr_idle1;
sprCombo[4]	  = spr_run;
sprCombo[5]	  = spr_attack2;

Combo_length = 5
mycombo = 1;
