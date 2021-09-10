//Get Player Input
key_left = keyboard_check(vk_left) || keyboard_check(ord("A"));
key_right = keyboard_check(vk_right) || keyboard_check(ord("D"));
key_up = keyboard_check(vk_up) || keyboard_check(ord("W"));
key_down = keyboard_check(vk_down) || keyboard_check(ord("S"));
key_jump = keyboard_check_pressed(vk_space);

//Calculate Movement
var move = key_right - key_left;
hsp = move*walksp;
vsp = vsp + grv;

if(place_meeting(x,y+1,objWallHome)) && (key_jump)
{
vsp = -1;	
}

//Horizontal Collision
if(place_meeting(x+hsp,y,objWallHome))
{
while (!place_meeting(x+sign(hsp),y,objWallHome))
{
x=x+sign(hsp);
}
	hsp=0;
}
x = x+hsp;

//Vertical Collision
if(place_meeting(x, y+vsp, objWallHome))
{
while(!place_meeting(x,y+sign(vsp),objWallHome))
{
y=y+vsp;
}
vsp=0;
}
y=y+vsp;

//Animation

//moving
if (move != 0){
	image_speed = 1;
	sprite_index = sprHomeBeanRun;
	if (key_left){
		image_xscale = -1;
	}
	else{
		image_xscale = 1;
	}
}

//sitting still
if (move == 0 & vsp == 0){
	image_speed = 0;
	sprite_index = sprHomeBean;
	image_index = 0;
}

//jumping
if (vsp < 0){
	image_speed = 0;
	sprite_index = sprHomeBean;
	image_index = 1;
}

//falling
if (vsp > 0){
	image_speed = 0;
	sprite_index = sprHomeBean;
	image_index = 2;
}
