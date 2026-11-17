DRAW_GUI
;
draw_set_valign(fa_top);//Dimensiones de la interfaz
//El ancho y alto para dibujar en la interfaz
var ancho_gui = display_get_gui_width();
var alto_gui = display_get_gui_height();

//Dimensiones de la ventana

var margen = 20;

var ancho_ventana = ancho_gui - 40;
var alto_ventana = 120;

var x1 = 20;
var y1 = alto_gui - alto_ventana + 20;

var x2 = x1 + ancho_ventana;
var y2 = y1 + alto_ventana;

//Dibujar el dondo de la ventana

//Fondo (background)
draw_set_alpha(0.80);
draw_set_colour(c_black);

//Dibujamos
draw_rectangle(x1, y1, x2, y2, false);

//Restauramos la transparencia
draw_set_alpha(1);

//Dibujar el nombre del personaje
draw_set_font(fn_dialogo);
draw_set_halign((fa_left))

draw_set_colour(c_yellow);

var nombre_actual = mensajes[mensaje_actual].name;

draw_text (x1 + margen, y1 + 15, nombre_actual);

//Dibujamos el texto del diálogo
draw_set_colour(c_white);

draw_text_ext(x1 + margen, y1 + 45, draw_mensaje, 5, ancho_ventana - margen * 2);

//Dibujamos el indicardo para avanzar
draw_set_colour(c_gray);
draw_text(x2 - 35, y2 - 25, "Next");

//Restauramops la configuración
draw_set_colour(c_white);
draw_set_alpha(1);

draw_set_halign(fa_left);
draw_set_valign(fa_top);