/// @description Insert description here
// You can write your code in this editor

instance_create_layer(objBeanHome.x, objBeanHome.y, "Sword", objSword);
instance_create_layer(100, 100, "Text", objMag);
objMag.text = "Let's head outside\n and find who did this";

instance_destroy();