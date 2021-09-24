//Going after bean
if(distance_to_object(objBeanHome) < 25) {
	move_towards_point(objBeanHome.x, objBeanHome.y, .25);
}
else if(distance_to_object(objBeanHome) > 50) {
	x = x
	y = y
	speed = 0;
}
	
if(distance_to_object(objBeanHome) < 5) {
	
}


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
	/*while(!place_meeting(x,y+sign(vsp),objWallHome)){
		y=y+vsp;
	}*/
	vsp=0;
}
y=y+vsp;
