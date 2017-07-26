/// Create Me;
scr_Enemy_stats(10,10,3,10);
scr_enemy_create();
//Overwrite Some values Inherited;
spr_attack1		  =  spr_hound_attack1;
spr_attack2		  =  spr_hound_attack1;
spr_attack3		  =  spr_hound_attack1;
spr_death    	  =  spr_hound_death;
spr_idle1         =  spr_hound_idle1;
spr_idle2         =  spr_hound_idle2;
spr_idle3         =  spr_hound_idle3;
spr_standup       =  spr_hound_idle3;
spr_run           =  spr_hound_run;
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
