var cannon = instance_nearest(x,y, Tank_Cannon_obj)



image_angle = point_direction(cannon.x,cannon.y,Greg_OBJ.x,Greg_OBJ.y - 100 )direction = point_direction(cannon.x,cannon.y,Greg_OBJ.x ,Greg_OBJ.y- 100)
image_xscale = .5;
image_yscale = .5;

bullet_speed = 2.5;
bullet_slowdown = .01;
damage = 10;
speed = bullet_speed;
bullet_grav = 1.5;


current_timer = 30;


