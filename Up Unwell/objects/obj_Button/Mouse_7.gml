
switch (Button_Id)
{
	case 0:
	obj_Pause_Manager.paused = false;
	obj_Pause_Manager.update_pause();
	
	break;
	
	case 1:
	game_end();
	
	break;
}