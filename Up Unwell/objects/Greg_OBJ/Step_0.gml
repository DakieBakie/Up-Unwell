right_key = keyboard_check(ord("D"));
left_key = keyboard_check(ord("A"));
Jump_keyPressed = keyboard_check_pressed(vk_space);
left_click_pressed = mouse_check_button_pressed(mb_left);

moveDir = right_key - left_key;

if(left_click_pressed == true)
{
	
	var _bulletInst = instance_create_layer(Greg_OBJ.x, Greg_OBJ.y,Greg_OBJ.layer,Bullet_obj);
	
	with(_bulletInst)
	{
		bullet_dir = other.gundir;	
		
	}
	
	
}


if (right_key == true)
{
	face = RIGHT;
	
}
if (left_key == true)
{
	face = LEFT;
	
}
if (face == LEFT){gundir = -1;}
if (face == RIGHT){gundir = 1;}
//updates sprite direction
sprite_index = sprite[face];
xspd = moveDir * move_spd;

//moves x and collision
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
yspd += grav * (timer * .01);

//moves y and collision
if Jump_keyPressed && place_meeting(x, y + 1 , Wall_OBJ)
{
	yspd = jump_spd;
	is_falling = true;
}
if !place_meeting(x, y + 1 , Wall_OBJ)
{
	is_falling = true;
}

if place_meeting(x , y + yspd, Wall_OBJ)
{
	var _pixelCheck = _subPixel * sign(yspd);
	while !place_meeting(x , y + _pixelCheck, Wall_OBJ)
	{
		y += _pixelCheck;	
	}
	is_falling = false;
	yspd = 0;	
}

if yspd > terminalvel {yspd = terminalvel;};
if (is_falling == true) 
{
	timer++;
}
else {timer = 1;}


y += yspd;

if xspd = 0 and yspd = 0
{
	image_index = 0
}


	



