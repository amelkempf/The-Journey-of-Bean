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

/*
|| room == BossRoom || room == Village1)
*/
if(room == TransitionRoom && lives <= 0) {
	room_goto(GameOverRoom)	
}

if(room == BossRoom && lives <= 0) {
	room_goto(GameOverRoom)	
}

if(room == Village1 && lives <= 0) {
	room_goto(GameOverRoom)	
}

if(room == BossRoom && global.enemy_lives <= 0) {
    room_goto(WinRoom)
}