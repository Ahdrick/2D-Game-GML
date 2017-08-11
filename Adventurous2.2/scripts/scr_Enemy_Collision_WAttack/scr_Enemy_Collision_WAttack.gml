/// 
if (EnemyState != -1){
	//sprite_index = spr_SporeOwl_Scream;
	currentHealth -= round(obj_player.strpow);
	// Added combo
	obj_GUI.Combo_stat		  +=1;
	obj_GUI.Damage_Given_stat += obj_player.strpow;
		//alarm[1] = 135;
	if (currentHealth <= 0 ){
		EnemyState= -1;
		currentHealth = -10;
		sprite_index = spr_death;
		}
}

scr_Enemy_knockback(.70*obj_player.strpow,.70*obj_player.strpow,.70*obj_player.strpow,.70*obj_player.strpow,)

// Make the screen slightly shake
obj_camera_controller.Shake_State = 2;
// Added combo
obj_GUI.Combo_stat +=1;

// make blood or spark effect particles
myblood =instance_create_depth(x,y,200,obj_blood_1);
myblood.MyBloodDonor = 2; 
var myalpha = random(1)
draw_sprite_ext(sprite_index,-1,x,y,image_xscale,image_yscale,image_angle,c_red,myalpha)