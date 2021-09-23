//Get Player Input
mLeft = keyboard_check(vk_left) || keyboard_check(ord("A"));
mRight = keyboard_check(vk_right) || keyboard_check(ord("D"));
mUp = keyboard_check(vk_up) || keyboard_check(ord("W"));
mDown = keyboard_check(vk_down) || keyboard_check(ord("S"));
attack = keyboard_check_pressed(vk_space);


//Calculate Movement
var moveH = mRight - mLeft;
var moveV = mDown - mUp;

hsp = moveH*walksp;
vsp = moveV*walksp;


//Attacks
if (attack) {
	 if ( sprite_index != sprAdvBeanAtk){
		if (sprite_index == sprAdvBean && image_index == 1){
			sprite_index = sprBeanAtkUp;
			image_index = 0;
			image_speed = 1;
		    var inst = instance_create_layer(x, y, "Instances", objShockwave)
		    inst.direction = image_angle + 0.5;
		}
		else if (sprite_index == sprAdvBean && image_index == 2){
			sprite_index = sprBeanAtkDown;
			image_index = 0;
			image_speed = 1;
		    var inst = instance_create_layer(x, y, "Instances", objShockwave)
		    inst.direction = image_angle - 0.5;
		}
		else if ((sprite_index == sprAdvBean) || (sprite_index == sprAdvBeanRun2 && image_angle = 1)){
		    sprite_index = sprAdvBeanAtk;
		    image_index = 0;
			image_speed = 1;
		    var inst = instance_create_layer(x, y, "Instances", objShockwave)
		    inst.direction = image_angle;
		}
		else if (sprite_index == sprAdvBeanRun2 && image_angle = 1){
		    sprite_index = sprAdvBeanAtk;
		    image_index = 0;
			image_angle = -1
			image_speed = 1;
		    var inst = instance_create_layer(x, y, "Instances", objShockwave)
		    inst.direction = image_angle;
		}
	}
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

//Animation
image_speed = 0;

if room = beanHouse { 

    //moving
    if (mRight || mLeft){
	    image_speed = 1;
	    sprite_index = sprHomeBeanRun;
	    if (mLeft){
		    image_xscale = -1;
	    }
	    else{
		    image_xscale = 1;
	    }
    }

    //moving up
    else if(vsp < 0){
	    sprite_index = sprHomeBean;
	    image_speed = 0;
   	    image_index = 1;
    }

    //moving down
    else if(vsp > 0){
	    image_speed = 0;
	    sprite_index = sprHomeBean;
	    image_index = 2;
    }
    //sitting still
    else if (moveH == 0 & moveV == 0){
	    image_speed = 0;
	    sprite_index = sprHomeBean;
	    image_index = 0;
    }


    //moving up
    if (vsp < 0){
	    image_speed = 0;
	    sprite_index = sprHomeBean;
	    image_index = 1;
    }

    //moving down 
    if (vsp > 0){
	    image_speed = 0;
	    sprite_index = sprHomeBean;
	    image_index = 2;
    }
}

else {
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
}