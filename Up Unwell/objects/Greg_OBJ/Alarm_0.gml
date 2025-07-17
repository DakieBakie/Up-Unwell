t_mil -= 1

if t_mil = -1
{
	t_mil = 9
	t_sec -= 1
}

if t_sec = -1
{
	t_sec = 59
}

if !(t_sec = 0 && t_mil = 0)
{
	alarm[0] = 6
	can_dash = false
} else {
	
can_dash = true;
}