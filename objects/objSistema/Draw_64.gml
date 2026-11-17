if(global.game_over)
{
	draw_set_halign(fa_center);
	draw_set_valign(fa_center);
	draw_set_color(c_red);
	draw_text(display_get_gui_width()/2,display_get_gui_height()/2,"Game Over");
	draw_set_color(c_white);
	
	
}