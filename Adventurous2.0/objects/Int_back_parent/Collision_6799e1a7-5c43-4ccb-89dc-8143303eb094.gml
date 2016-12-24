/// @description Insert description here
// You can write your code in this editor



for( i =0; i < 6; i++){
randox = irandom_range(-20,20);
randoy =irandom_range(5,35); 
mypiece = instance_create_depth(  x+randox ,   y-randoy ,201,Int_back_piece);
mypiece.sprite_index = spr_pot; 
mypiece.image_index = irandom_range(1, 3); 
mypiece.hspd= irandom_range(-3, 3); 
mypiece.vspd= irandom_range(5, 16); 
}
instance_destroy() 