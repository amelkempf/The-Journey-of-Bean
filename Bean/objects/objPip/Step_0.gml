image_speed = 0;

if ((follow == true) && (lives > 0)){
	x = objBeanHome.x - 25;
	y = objBeanHome.y;
}
if (lives <= 0) {
	instance_destroy();
}