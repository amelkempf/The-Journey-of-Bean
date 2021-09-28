/// @description Insert description here
// You can write your code in this editor



//Maybe Switch is better for this

switch(room){
	case TransitionRoom:
		draw_set_font(fSign2);
		draw_text(100, 5, "LIVES: " + string(lives));
		break;
	
	case BossRoom:
		draw_set_font(fSign2);
		draw_text(100, 5, "LIVES: " + string(lives));
		break;
		
	case Village1:
		draw_set_font(fSign2);
		draw_text(10, 5, "LIVES: " + string(lives));
		break;
		
	case StartRoom:
		draw_set_font(fSign2);
		draw_text(550, 300,
						"The Adventures of Bean"
					);
		draw_text(550, 400,
						"PRESS ENTER TO START"
					);
		
		break;
	
	case GameOverRoom:
		draw_set_font(fSign2);
		draw_text(550, 300,
						"Your village has been destroyed by the Evil Frog"
					);
		draw_text(550, 400,
						"PRESS ENTER TO RESTART"
					);
		break;
	
	case WinRoom:
		draw_set_font(fSign2);
		draw_text(550, 300,
						"You won!"
					);
		draw_text(550, 400,
						"PRESS ENTER TO RESTART"
					);
		break;
}
