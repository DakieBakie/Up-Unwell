image_angle = point_direction(x,y,Greg_OBJ.x,Greg_OBJ.y)
if object_exists(Greg_OBJ) and (abs aimArrow_obj.x) - (abs Greg_OBJ.x) <= 10
{
	instance_create_layer(x,y,"Instances",enemyBullet_obj);
}
