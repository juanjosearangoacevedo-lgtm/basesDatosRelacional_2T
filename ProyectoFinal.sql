--1
SELECT COUNT(*) AS total_usuarios
FROM usuario;

--2
SELECT comuna_id,
       COUNT(*) AS cantidad_barrios
FROM comuna_barrio
GROUP BY comuna_id;

--3
SELECT nombre AS "Título del Juego",
       estudio AS "Empresa Desarrolladora"
FROM juego;

--4
SELECT u.primer_nombre,
       u.primer_apellido,
       b.nombre_barrio
FROM usuario u, comuna_barrio b
WHERE u.barrio_id = b.id_comuna_barrio;

--5
SELECT plataforma_id,
       COUNT(*) AS cantidad_juegos
FROM juego
GROUP BY plataforma_id;

--6
SELECT nombre_equipo AS "Squad",
       horas_entrenamiento AS "Tiempo Jugado"
FROM equipo_juego;

--7
SELECT e.nombre_equipo,
       j.nombre AS nombre_juego
FROM equipo_juego e, juego j
WHERE e.juego_id = j.id_juego;

--8
SELECT tipo,
       COUNT(*) AS cantidad
FROM juego
GROUP BY tipo;

--9
SELECT l.nombre_logro,
       l.puntos,
       j.nombre AS nombre_juego
FROM logro_trofeo l, juego j
WHERE l.juego_id = j.id_juego;

--10
SELECT s.fecha_sesion,
       u.primer_nombre,
       u.primer_apellido
FROM sesion_entrenamiento s,
     usuario u
WHERE s.arbitro_id = u.id_usuario;
