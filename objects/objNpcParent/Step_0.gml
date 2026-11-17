//Comprobar que exista un dialogo
//Si ya existe una conversación no iniciar otra
if (instance_exists(objDialog)){
    jugador_cerca = false;
    exit;
}

//Detectar al jugador
jugador_cerca = false;

//abs regresa un valor positivo
if (instance_exists(objPlayer)){
    var distancia_x = abs(objPlayer.x - y);
    var distancia_y = abs(objPlayer.y - y);
    
    //Comprobar si el jugador esta cerca
    
    if (distancia_x <= dist_x_int && distancia_y <= dist_y_int){
        jugador_cerca = true;
        
        //Si presionamos E, iniciamos la conversación
        if (keyboard_check_pressed(tecla_int)){
            //Crear el diálogo y llamamos el script del diálogo
           scr_crear_dialogo(dialogo);
            
        }
    }
}