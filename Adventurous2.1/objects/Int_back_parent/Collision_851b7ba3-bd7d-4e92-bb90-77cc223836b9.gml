/// break pot

for(i = 1; i < 4; i++)
{
	mypiece = instance_create_depth(x,y,201,Int_back_piece);
	mypiece.sprite_index = spr_pot;
	mypiece.image_index  = i;
	mypiece.hspd  = irandom_range(-3,3);
	mypiece.vspd  = irandom_range(1,4);
	mypiece.angle = irandom(5);
}
instance_destroy();
