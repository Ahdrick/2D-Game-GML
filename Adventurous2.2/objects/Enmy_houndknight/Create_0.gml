/// Create Me;
scr_Enemy_stats(10,10,1,10);
scr_enemy_create();
event_inherited()
//Overwrite Some values Inherited;
spr_attack1		  =  spr_houndknight_attack2;
spr_attack2		  =  spr_houndknight_attack1;
spr_attack3		  =  spr_houndknight_attack1;
spr_death    	  =  spr_houndknight_death;
spr_idle1         =  spr_houndknight_idle;
spr_idle2         =  spr_houndknight_idle;
spr_idle3         =  spr_houndknight_idle;
spr_standup       =  spr_houndknight_idle;
spr_run           =  spr_houndknight_run;
image_speed       =	 1.9;


// put this in creation event
sprCombo[0]	  = spr_run;
sprCombo[1]	  = spr_run;
sprCombo[2]	  = spr_idle2;
sprCombo[3]	  = spr_idle2;
sprCombo[4]	  = spr_attack1;
sprCombo[5]	  = spr_attack2;

Combo_length = 5
mycombo = 1;
