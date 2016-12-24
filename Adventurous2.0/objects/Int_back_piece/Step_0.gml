/// @description Insert description here
// You can write your code in this editor
image_alpha -= .01; 

if (image_alpha < .10)
	instance_destroy();
y+= 1;