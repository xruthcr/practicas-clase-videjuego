if (global.game_over){
    temporizador_game_over--;
    
    if (temporizador_game_over <= 0){
		audio_stop_sound(soundBackground);
		room_restart();
    }
}