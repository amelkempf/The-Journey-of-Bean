image_speed = 0;

if ((follow == true) && (lives > 0)){
	x = objBeanHome.x - 50;
	y = objBeanHome.y - 10;
}
if (lives <= 0) {
	instance_destroy();
}