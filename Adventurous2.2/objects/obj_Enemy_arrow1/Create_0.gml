/// 
initialize_movement_entity(.1,.1,.16,0,obj_solid);
enable_movement_platform_actions(.1,1,1.5,0,0,0,0);
move_movement_entity();
event_inherited()
image_index = 0; 
image_speed = 0; 
sprite_index = spr_enmy_arrow;
Damage = 20;

grounded = false;
damage   = true; 
