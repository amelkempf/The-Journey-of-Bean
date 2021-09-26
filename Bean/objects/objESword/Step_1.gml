/// @description Insert description here
// You can write your code in this editor

x = owner.x;
y = owner.y + 10;

image_xscale = abs(owner.image_xscale);
image_yscale = abs(owner.image_yscale);

if(instance_exists(objBeanHome)){
	if (objBeanHome.x < x) image_yscale = -image_yscale;
	//if (point_distance(objBeanHome.x, objBeanHome.y, x, y) < 100){
		image_angle = point_direction(x, y, objBeanHome.x, objBeanHome.y);
		countdown--;
		if(countdown <= 0){
			if (!collision_line(x, y, objBeanHome.x, objBeanHome.y, objWallHome, false, false)){
				countdown = countdownrate;
				with (instance_create_layer(x,y,"FireBall",objFireBall))
					{
					speed = 1;
					mysign = -1;
					if ((other.image_angle - 180) < 0 ){
						mysign = 1;
					}
					direction = mysign * 90;
					image_angle = direction;
					}
			}
		}
	//}
}