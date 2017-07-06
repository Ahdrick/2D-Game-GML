/// Create Me;
scr_Enemy_stats(10,10,1,10);
scr_enemy_create();
//Overwrite Some values Inherited;
spr_attack1		  =  spr_MoldKnight_attack1;
spr_attack2		  =  spr_MoldKnight_attack2;
spr_attack3		  =  spr_MoldKnight_attack2;
spr_death    	  =  spr_MoldKnight_death;
spr_idle1         =  spr_MoldKnight_idle1;
spr_idle2         =  spr_MoldKnight_idle2;
spr_standup       =  spr_MoldKnight_standup;
spr_run           =  spr_MoldKnight_run;
image_speed       =	 1.9;
// put this in creation event
sprCombo[0]	  = spr_idle2;
sprCombo[1]	  = spr_attack1;
sprCombo[2]	  = spr_attack2;
sprCombo[3]	  = spr_run;

Combo_length = 3
mycombo = 1;
