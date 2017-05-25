/// 
randomize();
initialize_movement_entity(.2,.3,0,.9,obj_solid);
sprite_index = spr_spirit; 
image_speed = 0; 
image_alpha =0;
image_index = irandom(7); 
enter = false;
//micolor = choose (c_aqua, c_red, c_fuchsia,c_lime, c_teal, c_maroon, c_black, c_white, c_olive, c_purple,c_yellow)
var mysign =choose(-1,1);
// send back
var xx = random (4)
var yy = random (4)
add_movement_horizontal_vertical_maxspeed(xx*mysign, -xx, yy*mysign, -yy)
bounce = 1;
up = choose(false, true);