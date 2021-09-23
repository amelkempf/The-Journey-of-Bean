// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlayerAttack(){
    if ( sprite_index != sprAdvBeanAtk){
		if (mUp){
			sprite_index = sprBeanAtkUp;
			image_index = 0;
		    var inst = instance_create_layer(x, y, "Instances", objShockwave)
		    inst.direction = image_angle + 0.5;
		}
		else if (mDown){
			sprite_index = sprBeanAtkUp;
			image_index = 0;
		    var inst = instance_create_layer(x, y, "Instances", objShockwave)
		    inst.direction = image_angle - 0.5;
		}
		else if (mRight){
		    sprite_index = sprAdvBeanAtk;
		    image_index = 0;
		    var inst = instance_create_layer(x, y, "Instances", objShockwave)
		    inst.direction = image_angle;
		}
		else if (mLeft){
		    sprite_index = sprAdvBeanAtk;
		    image_index = 0;
			image_angle = -1
		    var inst = instance_create_layer(x, y, "Instances", objShockwave)
		    inst.direction = image_angle;
		}
	}
}