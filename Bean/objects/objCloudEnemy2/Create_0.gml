/// @description Insert description here
// You can write your code in this editor
image_speed = 0;
hp = 5;
mvsp = 1;

if (hasweapon){
	mysword = instance_create_layer(x, y, "Sword", objESword)
	with (mysword){
		owner = other.id;
	}
	
}
else mysword = noone;