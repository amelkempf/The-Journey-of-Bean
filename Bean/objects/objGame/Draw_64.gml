/// @description Insert description here
// You can write your code in this editor



if (room == TransitionRoom){
	draw_set_font(fSign2);
	draw_text(25, 5, "LIVES: " + string(lives));
}
else if (room == BossRoom){
	draw_set_font(fSign2);
	draw_text(100, 5, "LIVES: " + string(lives));
}
else{
	draw_text(10, 5, "LIVES: " + string(lives));
}
