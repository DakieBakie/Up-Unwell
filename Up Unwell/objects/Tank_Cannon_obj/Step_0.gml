
var parent = instance_nearest(x, y, Tank_enemy_obj)

image_angle = point_direction(parent.x, parent.y + 100, Greg_OBJ.x, Greg_OBJ.y)


x = parent.x + 16
y = parent.y + 15

 current_dist = point_distance(Greg_OBJ.x ,Greg_OBJ.y , parent.x, parent.y);
if firerate > 0 {firerate--;}
 //if the enemy if within range it will shoot towards player

	if (current_dist <= 1000)
{
	if (firerate <= 0)
	{
		//creates bullet and resets firerate timer
	var bullet = instance_create_layer(parent.x , parent.y + 16, Greg_OBJ.layer, Tank_bullet_obj)
	firerate = firerate_cooldown;
	}
}
 


