/// alarm
/*
//The second emitter has to move to the mouse position so...
//part_emitter_region(global.P_System, global.Particle1_Emitter2, mouse_x-10, mouse_x+10, mouse_y-10, mouse_y+10, ps_shape_ellipse, ps_distr_gaussian);

//The second emitter has to move to the mouse position so...
part_emitter_region(global.P_System, global.Particle1_Emitter2, x, x+10, y, y+10, ps_shape_ellipse, ps_distr_gaussian);

//Now to burst 30 particles and reset the alarm[0]
part_emitter_burst(global.P_System, global.Particle1_Emitter2, global.Particle1, 30);
alarm[0]=30;
*/ 
instance_destroy();