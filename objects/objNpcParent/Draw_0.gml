draw_self();

if (jugador_cerca) && !instance_exists(objDialog){
    draw_set_font(fn_Dialog);
    
    draw_set_halign(fa_center);
    draw_set_valign(fa_bottom);
    
    //Asignación color
    draw_set_colour(c_white);
    
    //Mensaje de interacción
    draw_text(x, y - 20, "E - Hablar");
    
    //Restaurar la alineación
    draw_set_halign(fa_left);
}