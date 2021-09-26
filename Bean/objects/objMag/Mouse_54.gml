/// @description Insert description here
// You can write your code in this editor

if (point_in_circle(objBeanHome.x, objBeanHome.y, x, y, 64) && !instance_exists(objText)){
	with(instance_create_layer(x, y-64, layer, objText)){
		text = other.text;
		length = string_length(text);
		
	}
}