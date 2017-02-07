/// 
enable_movement_platform_actions(.6,4,5,0,0,0,0);
move_movement_entity();

image_alpha -= .02; 
if (image_alpha < .1)
	instance_destroy();
y -= vspd;
x += hspd;
image_angle += angle;

if(place_meeting(x,y+1,obj_solid))
{
	vspd = 0;
	hspd = 0;
}