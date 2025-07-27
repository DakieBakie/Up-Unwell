
if (place_meeting( x , y , Greg_OBJ))
{
	for (i = 0; i <= spawn_enemys; i++)
	{
	instance_create_layer(Greg_OBJ.x , Greg_OBJ.y + -200, Greg_OBJ.layer, eggEnemy_obj);
	}
	instance_destroy(Trigger_Box);
}