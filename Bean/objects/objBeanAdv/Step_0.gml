//Get Player Input
mLeft = keyboard_check(vk_left) || keyboard_check(ord("A"));
mRight = keyboard_check(vk_right) || keyboard_check(ord("D"));
mUp = keyboard_check(vk_up) || keyboard_check(ord("W"));
mDown = keyboard_check(vk_down) || keyboard_check(ord("S"));
//key_jump = keyboard_check_pressed(vk_space);

//Calculate Movement
var moveH = mRight - mLeft;
var moveV = mDown - mUp;

hsp = moveH*walksp;
vsp = moveV*walksp;



//Horizontal Collision
if(place_meeting(x+hsp,y,objWallHome)){
	while (!place_meeting(x+sign(hsp),y,objWallHome)){
		x=x+sign(hsp);
	}
	hsp=0;
}
x = x+hsp;

//Vertical Collision
if(place_meeting(x, y+vsp, objWallHome)){
	while(!place_meeting(x,y+sign(vsp),objWallHome)){
		y=y+vsp;
	}
	vsp=0;
}
y=y+vsp;

//Animation
image_speed = 0;

//moving
if (moveH != 0){
	image_speed = 1;
	sprite_index = sprAdvBeanRun2;
	if (mLeft){
		image_xscale = -1;
	}
	else{
		image_xscale = 1;
	}
}

//sitting still
if (moveH == 0 & moveV == 0){
	image_speed = 0;
	sprite_index = sprAdvBean;
	image_index = 0;
}



//moving up
if (vsp < 0){
	image_speed = 0;
	sprite_index = sprAdvBean;
	image_index = 1;
}

//moving down
if (vsp > 0){
	image_speed = 0;
	sprite_index = sprAdvBean;
	image_index = 2;
}
