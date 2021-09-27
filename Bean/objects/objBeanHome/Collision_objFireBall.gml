/// @description Insert description here
// You can write your code in this editor

lives -= 1;

if (room == TransitionRoom){
	x = 10;
	y = 170;
}
if (room == BossRoom){
	x = 150;
	y = 400;
}

if (lives <= 0){
	with (objSword) instance_destroy();

	instance_change(objBeanDead, true);

	direction = point_direction(other.x, other.y, x, y);
	hsp = lengthdir_x(6, direction);
	vsp = lengthdir_y(4, direction) -2;
	if (sign(hsp) != 0) image_xscale = sign(hsp);
}