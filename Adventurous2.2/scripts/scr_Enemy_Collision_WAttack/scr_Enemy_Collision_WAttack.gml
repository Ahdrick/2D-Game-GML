/// 
if (EnemyState != -1){
	//sprite_index = spr_SporeOwl_Scream;
	currentHealth -= obj_player.strpow;
		//alarm[1] = 135;
	if (currentHealth < 1 ){
		EnemyState= -1;
		sprite_index = spr_death;
		}
}

scr_Enemy_knockback(.70*obj_player.strpow,.70*obj_player.strpow,.70*obj_player.strpow,.70*obj_player.strpow,)

// Make the screen slightly shake
obj_camera_controller.Shake_State = 2;

// make blood or spark effect particles
myblood =instance_create_depth(x,y,200,obj_blood_1);
myblood.MyBloodDonor = 2; 
var myalpha = random(1)
draw_sprite_ext(sprite_index,-1,x,y,image_xscale,image_yscale,image_angle,c_red,myalpha)