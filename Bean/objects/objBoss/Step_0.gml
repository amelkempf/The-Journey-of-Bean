/// @description Insert description here
// You can write your code in this editor

//image_angle = point_direction(x, y, objBeanHome.x, objBeanHome.y);

if (global.enemy_lives <= 0){
	instance_change(objBeanDead, true);
}
if ( time <= 0 ){
	with (instance_create_layer(x,y,"Player", objFireBall)){
	speed = 2;	
	direction = point_direction(x, y, objBeanHome.x, objBeanHome.y) + 10;
	}
	/*with (instance_create_layer(x,y,"Player", objFireBall)){
	speed = 5;	
	direction = other.image_angle + 0.25;
	}
	with (instance_create_layer(x,y,"Player", objFireBall)){
	speed = 5;	
	direction = other.image_angle + 0.5;
	}
	with (instance_create_layer(x,y,"Player", objFireBall)){
	speed = 5;	
	direction = other.image_angle + 0.75;
	}*/
	time += 100
}
time--;