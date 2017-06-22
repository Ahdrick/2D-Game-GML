/// Create Me;
scr_Enemy_stats(10,10,1,10);
scr_enemy_create();
//Overwrite Some values Inherited;
spr_attack1		  =  spr_rotknight_sword_attack1;
spr_attack2		  =  spr_rotknight_sword_attack1;
spr_attack3		  =  spr_rotknight_sword_attack1;
spr_death    	  =  spr_rotknight_sword_death;
spr_idle1         =  spr_rotknight_sword_idle;
spr_idle2         =  spr_rotknight_sword_idle;
spr_standup       =  spr_rotknight_sword_stand;
spr_run           =  spr_rotknight_sword_walk;
image_speed       = .3; 

// put this in creation event
sprCombo[0]	  = spr_attack1;
sprCombo[1]	  = spr_run;
sprCombo[2]	  = spr_run;
sprCombo[3]	  = spr_run;

mycombo = 1;