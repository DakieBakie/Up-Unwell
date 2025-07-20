// all movement variables
xspd = 0;
yspd = 0;
move_spd = 1.5;
moveDir = 0;


// all jumping variables
grav = .5;
jump_spd = -4;
terminalvel = 5;
timer = 0;
is_falling = false;

//timer variables
t_sec = 3
t_mil = 0

alarm[0] = 6

//dashing variables
current_dashspd = 0;
dashspd = 20;
can_dash = true;


//sprite variables
sprite[RIGHT] = greg_spr_right;
sprite[LEFT] = greg_spr_left;

face = RIGHT;


//Gun Stuff
firerate = 4;
gundir = 0;

//hp variables
hp = 50;
max_hp = hp;

healthbar_width = 187;
healthbar_height = 60;
healthbar_x = (100) - (healthbar_width/2);
healthbar_y = ystart - 150;
