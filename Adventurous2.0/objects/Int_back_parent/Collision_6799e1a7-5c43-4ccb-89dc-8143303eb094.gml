/// @description Insert description here
// You can write your code in this editor



for( i =0; i < 6; i++){
// Randomize!
randox      = irandom_range(-15,15);
randoy      = irandom_range(1,15);  
randoangle  = irandom_range(1,355);
// Create! 
mypiece = instance_create_depth(x+randox,   y-randoy ,201,Int_back_piece);
//Assign random jizz
mypiece.sprite_index = sprite_index; 
mypiece.image_index = irandom_range(1, 3); 
mypiece.hspd= irandom_range(-3, 3); 
mypiece.vspd= irandom_range(5, 16); 
mypiece.image_angle = randoangle;

}
instance_destroy();