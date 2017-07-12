/// Create Me;
scr_Enemy_stats(10,10,1,10);
scr_enemy_create();
//Overwrite Some values Inherited;
spr_attack1		  =  spr_SporeOwl_Agro;
spr_attack2		  =  spr_SporeOwl_Scream;
spr_attack3		  =  spr_SporeOwl_Scream2;
spr_death    	  =  spr_SporeOwl_Death;
spr_idle1         =  spr_SporeOwl_Idle1;
spr_idle2         =  spr_SporeOwl_Idle2;

image_speed       =	 1.9;
// put this in creation event
sprCombo[0]	  = spr_attack1;
sprCombo[1]	  = spr_attack2;
sprCombo[2]	  = spr_attack3;

Combo_length = 2
mycombo = 1;
