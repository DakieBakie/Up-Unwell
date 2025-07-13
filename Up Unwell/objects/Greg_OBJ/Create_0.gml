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


//dashing variables
current_dashspd = 0;
dashspd = 10;
cooldown_dash = 0;


//sprite variables
sprite[RIGHT] = greg_spr_right;
sprite[LEFT] = greg_spr_left;

face = RIGHT;


//Gun Stuff
firerate = 4;
gundir = 0;