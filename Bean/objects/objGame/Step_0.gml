/// Room Switch

if(keyboard_check_pressed(vk_enter)){
	switch(room){
		case StartRoom:
			room_goto(beanHouse)
			break;
		
		case WinRoom:
		case GameOverRoom:
			game_restart()
		}
}
if(room == TransitionRoom or room == BossRoom or room == Village1) {
    if(lives <= 0){
	    room_goto(GameOverRoom)
	}
}
if(room == BossRoom & enemy_lives <= 0) {
    room_goto(WinRoom)
}
