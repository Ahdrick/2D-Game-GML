/// break pot

var mysign; 
// Check left or right of collison
if (x > other.x)
	 mysign = 1; 
else 
	 mysign = -1
// send back
add_movement_horizontal_vertical_maxspeed(.5*mysign, -.5, 1*mysign, -1)

/*
for(i = 1; i < 4; i++)
{
	mypiece = instance_create_depth(x,y,201,obj_chest_Item);
	mypiece.sprite_index =  spr_spirit;
	mypiece.image_index  = i;
	mypiece.image_xscale =random(1);
	mypiece.image_yscale =random(1);
	mypiece.hspd  = irandom_range(-5,5);
	mypiece.vspd  = irandom_range(1,7);
	mypiece.angle = irandom(5);
}
instance_destroy();
