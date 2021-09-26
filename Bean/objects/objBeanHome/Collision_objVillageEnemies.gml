/// @description Insert description here
// You can write your code in this editor

//KillPlayer();

lives -=1;


x = 560;
y = 310;

if (lives <= 0){
	with (objSword) instance_destroy();

	instance_change(objBeanDead, true);

	direction = point_direction(other.x, other.y, x, y);
	hsp = lengthdir_x(6, direction);
	vsp = lengthdir_y(4, direction) -2;
	if (sign(hsp) != 0) image_xscale = sign(hsp);
}