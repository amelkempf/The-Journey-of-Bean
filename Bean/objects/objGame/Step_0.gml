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
if(room == beanHouse or TransitionRoom or BossRoom or Village1) {
if(lives <= 0){
	room_goto(GameOverRoom)
	}
}