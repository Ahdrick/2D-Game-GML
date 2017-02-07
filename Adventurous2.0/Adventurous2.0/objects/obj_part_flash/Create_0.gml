//CREATE EVENT

// create system 
global.P_System=part_system_create();
//create particle 
global.Particle1=part_type_create();

// definine particle 
part_type_shape(global.Particle1,pt_shape_pixel);            //This defines the particles shape
part_type_size(global.Particle1,1,1,0,2);                    //This is for the size
part_type_scale(global.Particle1,1,1);                       //This is for scaling
part_type_color1(global.Particle1,c_white);                  //This sets its colour. There are three different codes for this
part_type_alpha1(global.Particle1,1);                        //This is its alpha. There are three different codes for this
part_type_speed(global.Particle1,0.50,2,-0.10,0);            //The particles speed
part_type_direction(global.Particle1,0,359,0,20);            //The direction
part_type_orientation(global.Particle1,0,0,0,0,1);           //This changes the rotation of the particle
part_type_blend(global.Particle1,1);                         //This is the blend mode, either additive or normal
part_type_life(global.Particle1,1,10);       

           
//Define and name the emitters
global.Particle1_Emitter1=part_emitter_create(global.P_System);
global.Particle1_Emitter2=part_emitter_create(global.P_System);

//Set up the area that will emit particles
//part_emitter_region(global.P_System, global.Particle1_Emitter1, 0, room_width, 0, room_height, ps_shape_rectangle, ps_distr_linear);
//part_emitter_region(global.P_System, global.Particle1_Emitter2, mouse_x-10, mouse_x+10, mouse_y-10, mouse_y+10, ps_shape_ellipse, ps_distr_gaussian);

//The second emitter has to move to the mouse position so...
//part_emitter_region(global.P_System, global.Particle1_Emitter1, 0, room_width, 0, room_height, ps_shape_rectangle, ps_distr_linear);
part_emitter_region(global.P_System, global.Particle1_Emitter2, x-10, x+10, y-10, y+10, ps_shape_ellipse, ps_distr_gaussian);

//Set the first to stream 10 particles every step
part_emitter_burst(global.P_System, global.Particle1_Emitter2, global.Particle1, 10);
//This can now be forgotten as it will function until told to stop...

//Set the alarm[0] event to burst the emitter2 particles...
alarm[0]=30;
