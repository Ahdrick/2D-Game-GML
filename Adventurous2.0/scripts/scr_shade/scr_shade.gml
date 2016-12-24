///Super Sexy art. 
// take sprite and create new sprite and drop alpha
mypsprite = argument [0]; 
myxscale  = argument [1]; 
myyscale  = argument [2]; 
myself    = argument [3]; 
mypsprite = argument [4];

myShadeG = instance_create_depth(myself.x, myself.y,100,obj_Shade); 

with (myShadeG)
{
//	draw_sprite(mypsprite ,-1, image_xscale, image_yscale);


	//image_alpha -= .1; 
	//if (image_alpha < 0)
	//	instance_destroy();
}