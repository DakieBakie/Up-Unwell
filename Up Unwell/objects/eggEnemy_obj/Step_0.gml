 move_towards_point( Greg_OBJ.x, Greg_OBJ.y, movespd)
 
 current_dist = point_distance(Greg_OBJ.x,Greg_OBJ.y, eggEnemy_obj.x, eggEnemy_obj.y)
 
 if firerate > 0 {firerate--;}
 if (current_dist <= 100)
 {
	 
	movespd = 0; 
	if (firerate <= 0)
	{
		
	var bullet = instance_create_layer(eggEnemy_obj.x, eggEnemy_obj.y, Greg_OBJ.layer, enemyBullet_obj)
	firerate = firerate_cooldown;
	}
 }
 else
 {
	movespd =  max_movespd;
 }
