

//colision with greg and deals damage
if place_meeting(x,y,Greg_OBJ)
{
	with(Greg_OBJ)
{
	hp = hp - other.damage;
}
instance_destroy(enemyBullet_obj);
}