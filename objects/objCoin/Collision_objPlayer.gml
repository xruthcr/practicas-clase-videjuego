//Collision con el player
if(!variable_global_exists("monedas"))
{
	global.monedas = 0;
}
audio_play_sound(soundCoin,1,false);
global.monedas +=1;
instance_destroy();