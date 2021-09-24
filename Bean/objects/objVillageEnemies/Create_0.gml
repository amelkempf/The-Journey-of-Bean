if (hasweapon){
	mysword = instance_create_layer(x, y, "Sword", objESword)
	with (mysword){
		owner = other.id;
	}
	
}
else mysword = noone;


hsp = 0;
vsp = 0;
grv = 0.3;
walksp = .005;


hp = 5
sprite_index = choose (
    VillageEnemy1, VillageEnemy2, VillageEnemy3
);

flash = 0;



	