/// @description Insert description here
// You can write your code in this editor
//Horizontal Collision

if (done == 0){
	if(place_meeting(x+hsp,y,objWallHome)){
		while (!place_meeting(x+sign(hsp),y,objWallHome)){
			x=x+sign(hsp);
		}
		hsp=0;
	}
	x = x+hsp;

	//Vertical Collision
	if(place_meeting(x, y+vsp, objWallHome)){
		if (vsp > 0){
			done = 1;
		}
		while(!place_meeting(x,y+sign(vsp),objWallHome)){
			y=y+vsp;
		}
		vsp=0;
	}
	y=y+vsp;
}