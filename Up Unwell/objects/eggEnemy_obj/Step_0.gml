 
 //movement timer every frame
  if movement_timer > 0 {movement_timer--;}
  
  // sets a new desination when timer is 0
  if (movement_timer <= 0)
	{
	moveto = random_range(Greg_OBJ.x + minimumx, Greg_OBJ.x + maximumx);
	movement_timer = movement_cooldown;
	}
 else{
   move_towards_point( moveto ,Greg_OBJ.y + egg_enemy_offset, movespd)
 }
 
 //sets speed to 0 if it gets to destination
 if (current_dist <= 1)
 {
	movespd = 0; 
 }
 else
 {
	movespd = max_movespd; 
 }
 
 // finds difference from current position to its destination
 current_dist = point_distance(moveto ,Greg_OBJ.y + egg_enemy_offset, eggEnemy_obj.x, eggEnemy_obj.y)
 
 //firerate timer
 if firerate > 0 {firerate--;}
 //if the enemy if within range it will shoot towards player
 if (current_dist <= 90)
 {
	  
	if (firerate <= 0)
	{
		//creates bullet and resets firerate timer
	var bullet = instance_create_layer(eggEnemy_obj.x, eggEnemy_obj.y, Greg_OBJ.layer, enemyBullet_obj)
	firerate = firerate_cooldown;
	times_shot++;
	}
 }

 
 // moves eggboi out of range and destroys it
 if(times_shot >= 5)
 {
	 movespd = 5;
	 move_towards_point( moveto ,Greg_OBJ.y + -200, movespd)
	 if (current_dist <= 1)
	 {
		instance_destroy(eggEnemy_obj);
	 }
 }
