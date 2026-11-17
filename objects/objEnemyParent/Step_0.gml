// Buscar al jugador
var jugador_cerca = false;

if (perseguir_jugador && instance_exists(objPlayer))
{
    var jugador = instance_nearest(x, y, objPlayer);

    if (point_distance(x, y, jugador.x, jugador.y) < rango_persecusion)
    {
        jugador_cerca = true;

        if (jugador.x < x)
        {
            direccion_enemigo = -1;
        }
        else if (jugador.x > x)
        {
            direccion_enemigo = 1;
        }
        else
        {
            direccion_enemigo = 0;
        }
    }
}

// Recuperar dirección de patrulla si estaba detenido
if (!jugador_cerca && direccion_enemigo == 0)
{
    direccion_enemigo = 1;
}

// Movimiento horizontal
var movimiento_x = velocidad_enemigo * direccion_enemigo;

if (place_meeting(x + movimiento_x, y, objSolid)
    || place_meeting(x + movimiento_x, y, objWall))
{
    // Al patrullar, dar la vuelta ante un obstáculo
    if (!jugador_cerca)
    {
        direccion_enemigo = -direccion_enemigo;
    }
}
else
{
    x += movimiento_x;
}

// Aplicar gravedad
velocidad_vertical = min(
    velocidad_vertical + gravedad_enemigo,
    8
);

// Colisión vertical
if (place_meeting(x, y + velocidad_vertical, objSolid)
    || place_meeting(x, y + velocidad_vertical, objWall))
{
    // Acercarse al suelo o techo sin atravesarlo
    var paso_y = sign(velocidad_vertical);

    if (paso_y != 0)
    {
        while (!place_meeting(x, y + paso_y, objSolid)
            && !place_meeting(x, y + paso_y, objWall))
        {
            y += paso_y;
        }
    }

    velocidad_vertical = 0;
}
else
{
    y += velocidad_vertical;
}

