/// Create Me;
scr_Enemy_stats(10,10,1,10);
scr_enemy_create();
//Overwrite Some values Inherited;
spr_attack1		  =  spr_hound_attack1;
spr_attack2		  =  spr_hound_attack1;
spr_attack3		  =  spr_hound_attack1;
spr_death    	  =  spr_hound_death;
spr_idle1         =  spr_hound_idle1;
spr_idle2         =  spr_hound_idle2;
spr_standup       =  spr_hound_idle3;
spr_run           =  spr_hound_idle2;
image_speed       = .3; 

// put this in creation event
sprCombo[0]	  = spr_attack1;
sprCombo[1]	  = spr_run;
sprCombo[2]	  = spr_run;
sprCombo[3]	  = spr_run;

mycombo = 1;

// AI 
FoundHero = false;
distance_range = 400;