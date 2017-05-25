

if (lock == true){
	if (enter == true) {
			lock = false;
			image_speed = .3;
			if (image_index < image_number-1){
				  for(i = 1; i < 6; i++)
						{
							mypiece = instance_create_depth(x,y,201,obj_chest_Item);
							mypiece.image_index  = i;
							mypiece.hspd  = irandom_range(-3,3);
							mypiece.vspd  = irandom_range(1,4);
							mypiece.angle = irandom(10);
							looted = true; 
						}
			}
	}
}


get_input();

if (looted == true) {
	image_index= choose ( image_number-3, image_number-2)
	image_speed =0;
	}