/// @description Insert description here
// You can write your code in this editor
if (enter == true)
	if (lock == true){
		if (image_index < image_number -1){
			lock = false;
			image_speed = .2;
			if (image_index < image_number-2){
			  for(i = 1; i < 6; i++)
					{
						mypiece = instance_create_depth(x,y,201,obj_chest_Item);
						//mypiece.sprite_index = spr_;
						mypiece.image_index  = i;
						mypiece.hspd  = irandom_range(-3,3);
						mypiece.vspd  = irandom_range(1,4);
						mypiece.angle = irandom(5);
						
					}
					image_speed =0;
					image_index = image_number;
					}
			}
		//else 
			//image_speed =0;
			}
else 
	image_speed =0; 
get_input();