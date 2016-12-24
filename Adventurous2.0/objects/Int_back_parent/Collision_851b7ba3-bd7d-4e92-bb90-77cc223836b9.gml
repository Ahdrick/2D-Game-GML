/// break pot

for(i = 1; i < 4; i++)
{
	mypiece = instance_create_depth(x,y,201,Int_back_piece);
	mypiece.sprite_index = spr_pot;
	mypiece.image_index  = i;
	mypiece.hspd  = irandom_range(-5,5);
	mypiece.vspd  = irandom(5);
	mypiece.angle = irandom(5);
}
instance_destroy();
