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