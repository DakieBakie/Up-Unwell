right_key = keyboard_check(vk_right);
left_key = keyboard_check(vk_left);
Jump_keyPressed = keyboard_check_pressed(vk_space);


moveDir = right_key - left_key;

xspd = moveDir * move_spd;


var _subPixel = .5;
if place_meeting(x + xspd, y, Wall_OBJ)
{
	var _pixelCheck = _subPixel * sign(xspd);
	while !place_meeting(x + _pixelCheck, y, Wall_OBJ)
	{
		x += _pixelCheck;	
	}
	
	xspd = 0;	
}

x += xspd;



//GRAVITY
yspd += grav;

if Jump_keyPressed && place_meeting(x, y + 1 , Wall_OBJ)
{
	yspd = jump_spd;
}

var _subPixel = .5;
if place_meeting(x , y + yspd, Wall_OBJ)
{
	var _pixelCheck = _subPixel * sign(yspd);
	while !place_meeting(x , y + _pixelCheck, Wall_OBJ)
	{
		y += _pixelCheck;	
	}
	
	yspd = 0;	
}

if yspd > terminalvel {yspd = terminalvel;};

y += yspd;



