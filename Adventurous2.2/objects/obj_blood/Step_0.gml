/// Step 
/// draw state

image_speed =.4
//time-= 10;
//if (time <20){
//instance_destroy();
// Destroy
 if (image_index > image_number - 1) 
		instance_destroy();
image_angle = rando; 

	draw_sprite_ext(sprite_index,-1,x,y,1,1,rando,c_white,1)