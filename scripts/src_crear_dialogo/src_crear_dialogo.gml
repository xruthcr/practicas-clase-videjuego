function src_crear_dialogo(_mensajes){
	if (instance_exists(objDialog))
	{
		return;
	}
	
	var nuevo_dialogo = instance_create_layer(0,0,"Npcs",objDialog);
	nuevo_dialogo.mensajes();

}