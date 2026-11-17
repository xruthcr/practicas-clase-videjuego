//COntrol de tiempo de invulnerabilidad
if (tiempo_invulnerable > 0){
    tiempo_invulnerable--;
}

//Controlamos el daño dibujando de rojo el player
if (tiempo_rojo > 0){
    tiempo_rojo--;
    
    if (tiempo_rojo <= 0){
        image_blend = c_white;
    }
}


var mov_x = keyboard_check(vk_right) - keyboard_check(vk_left);
 
 
 if(mov_x !=0)
 {
	if(!place_meeting(x + mov_x * move_speed,y, objWall))
	{
		x += mov_x* move_speed;
	}
	 if(mov_x>0)
	 {
		 sprite_index = playerRight;
	 }
	 else
	 {
		 sprite_index = playerLeft;
	 }
		image_speed = 0.2;
 }
 else
 {
	 image_speed =0;
	 image_index=0;
 }
 
// Gravedad
move_speed_v += gravity_v;

//Salto del jugador
if (keyboard_check_pressed(vk_space))
{
    if (place_meeting(x, y + 1, objWall))
    {
        move_speed_v = jump_speed;
    }
}
 
 
 //Collision vertical
 
if (!place_meeting(x, y + move_speed_v, objWall))
{
    y += move_speed_v;
}
else
{
    move_speed_v = 0;
}

// Recibir daño solo al tocar un enemigo
if (!global.game_over
    && tiempo_invulnerable <= 0
    && place_meeting(x, y, objEnemyParent))
{
    // Quitar una vida
    global.vidas = max(0, global.vidas - 1);

    // Protección durante 60 pasos
    tiempo_invulnerable = 60;

    // Mostrar al jugador de rojo durante 10 pasos
    image_blend = c_red;
    tiempo_rojo = 10;

    // Comprobar game over
    if (global.vidas <= 0)
    {
        global.game_over = true;
		audio_play_sound(soundCoin, 1, false);
    }
}