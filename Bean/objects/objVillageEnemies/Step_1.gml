/// @description Insert description here
// You can write your code in this editor

if (hp <= 0){
	instance_create_layer(x, y, layer, objVillageEnemiesDead);
	with(mysword) instance_destroy();
	instance_destroy();
}

