image_angle = point_direction(x,y,Greg_OBJ.x,Greg_OBJ.y)



if distance_to_object(Greg_OBJ) <= 100  and bulletnumber <= 10
{
	instance_create_layer(x,y,"Instances",enemyBullet_obj);
	
	bulletnumber++
}
