
//Propiedades para sistema de mensaje

//Arreglo que recibirá los mensajes del NPC
mensajes = [];

//Posición del mensaje
mensaje_actual = 0;

//Cantidad de caracteres a mostrar
dialogo_actual = 0;

//Texto que se dibujará progresivamente
draw_mensaje = "";

//Configuración del dialogo


//Velocidad de escritura
dialogo_speed = 0.5;

//Tecla para pasar el diálogo
input_key = vk_space;

//Validar si la conversación
terminar = false;