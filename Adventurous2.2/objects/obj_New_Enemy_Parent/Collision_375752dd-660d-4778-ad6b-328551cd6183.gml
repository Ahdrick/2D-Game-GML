//block and bounce enemy back
var mysign; 

if (x > other.x)
		mysign = 1; 
else 
		mysign = -1
// send back
hsp[0] = 0;
hsp[1] = 0;
vsp[0] = 0;
vsp[1] = 0;
if (vsp[0] == 0 && 	vsp[1] == 0)
	add_movement_horizontal_vertical((4*mysign ),-1);
else
	add_movement_horizontal_vertical((4*mysign ),-1);
sprite_index =spr_idle1;
// screen shake 
obj_camera_controller.Shake_State = 1;