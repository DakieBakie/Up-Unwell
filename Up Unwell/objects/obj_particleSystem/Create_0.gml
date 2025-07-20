global.P_System = part_system_create_layer("Instances", false);
global.Particle1 = part_type_create();
part_type_shape(global.Particle1,pt_shape_pixel);
part_type_life(global.Particle1,10,15);
part_type_orientation(global.Particle1,0,5,0,5,true);
part_type_speed(global.Particle1,0.50,2,-0.10,0);
part_type_direction(global.Particle1,0,359,0,20);
part_type_size(global.Particle1,1,1,0,2);