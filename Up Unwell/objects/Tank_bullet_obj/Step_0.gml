

bullet_speed -= bullet_slowdown;

speed = bullet_speed;

if (bullet_speed <= 1)
{
	speed = 1;
}
if current_timer > 0 {current_timer--;}


if(current_timer <= 0 )
{
	y += bullet_grav;
}
//colision with greg and deals damage
if place_meeting(x,y,Greg_OBJ)
{
	with(Greg_OBJ)
{
	hp = hp - other.damage;
}
instance_destroy(Tank_bullet_obj);
}

