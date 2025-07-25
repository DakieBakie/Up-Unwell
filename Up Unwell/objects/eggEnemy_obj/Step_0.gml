 
 
  if movement_timer > 0 {movement_timer--;}
  
  if (movement_timer <= 0)
	{
	moveto = random_range(Greg_OBJ.x + minimumx, Greg_OBJ.x + maximumx);
	movement_timer = movement_cooldown;
	}
 else{
   move_towards_point( moveto ,Greg_OBJ.y + -100, movespd)
 }
 if (current_dist <= 1)
 {
	movespd = 0; 
 }
 else
 {
	movespd = max_movespd; 
 }
 
 
 current_dist = point_distance(moveto ,Greg_OBJ.y + -100, eggEnemy_obj.x, eggEnemy_obj.y)
 
 show_debug_message(current_dist);
 if firerate > 0 {firerate--;}
 if (current_dist <= 100)
 {
	  
	if (firerate <= 0)
	{
		
	var bullet = instance_create_layer(eggEnemy_obj.x, eggEnemy_obj.y, Greg_OBJ.layer, enemyBullet_obj)
	firerate = firerate_cooldown;
	times_shot++;
	}
 }
 else
 {
	movespd =  max_movespd;
 }
 show_debug_message(times_shot);
