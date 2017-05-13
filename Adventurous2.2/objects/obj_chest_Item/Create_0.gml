/// 
initialize_movement_entity(.3,.4,0,0,obj_solid);
image_index = irandom(7); 
image_speed = 0; 
image_alpha =0;
sprite_index = spr_spirit; 
micolor = choose (c_aqua, c_red, c_fuchsia,c_lime, c_teal, c_maroon, c_black, c_white, c_olive, c_purple,c_yellow)
var mysign =choose(-1,1);
// send back
var xx = random (4)
var yy = random (4)
add_movement_horizontal_vertical_maxspeed(xx*mysign, -xx, yy*mysign, -yy)
