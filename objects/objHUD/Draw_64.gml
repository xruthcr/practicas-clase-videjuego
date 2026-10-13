//Dibujamos el HUD del juego de Vidas - Puntos - Monedas

var gui_w = display_get_gui_width();
var margen = 20;
var separacion = 15;
var panel_w = (gui_w - margen * 2 - separacion * 2) / 3;
var panel_h = 65;
var panel_y = 20;

//Paneles: vidas, monedas y puntos
var panel_x1 = margen;
var panel_x2 = margen + panel_w + separacion;
var panel_x3 = margen + (panel_w + separacion) * 2;

//Dibujamos los paneles
draw_set_color(c_black);
draw_rectangle(panel_x1, panel_y, panel_x1 + panel_w, panel_y + panel_h, false)
draw_rectangle(panel_x2, panel_y, panel_x2 + panel_w, panel_y + panel_h, false)
draw_rectangle(panel_x3, panel_y, panel_x3 + panel_w, panel_y + panel_h, false)


draw_set_halign(fa_center);
draw_set_valign(fa_middle);

draw_set_colour(c_white);
draw_text(panel_x1 + panel_w/2, panel_y + 17, "Vidas: ");

draw_set_colour(c_white);
draw_text(panel_x2 + panel_w/2, panel_y + 17, "Monedas: ");

draw_set_colour(c_white);
draw_text(panel_x3 + panel_w/2, panel_y + 17, "Puntos: ");

draw_set_colour(c_white);
draw_text(panel_x1 + panel_w/2, panel_y + 45, string(global.vidas));
draw_text(panel_x2 + panel_w/2, panel_y + 45, string(global.monedas));
draw_text(panel_x3 + panel_w/2, panel_y + 45, string(global.puntos));