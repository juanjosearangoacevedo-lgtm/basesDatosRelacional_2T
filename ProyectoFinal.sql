--1
SELECT COUNT(*) AS total_usuarios
FROM usuario;

--2
SELECT COMUNA AS nombre_comuna,
       COUNT(barrio) AS cantidad_barrios
FROM comuna_barrio
GROUP BY COMUNA;

--3
SELECT nombre AS 'Título del Juego',
       estudio_dev AS 'Empresa Desarrolladora'
FROM juego;

--4
SELECT u.primer_nombre,
       u.primer_apellido,
       c.barrio
FROM usuario u,
     comuna_barrio c
WHERE u.COMUNA_BARRIO_id = c.id;


--5
SELECT PLATAFORMA_id,
       COUNT(*) AS cantidad_juegos
FROM juego
GROUP BY PLATAFORMA_id;

--6
SELECT nombre AS 'Squad',
       horas AS 'Tiempo Jugado'
FROM equipo_juego;

--7
SELECT e.nombre AS equipo,
       j.nombre AS juego
FROM equipo_juego e,
     juego j
WHERE e.JUEGO_id = j.id;


--8
SELECT tipo,
       COUNT(*) AS cantidad_juegos
FROM juego
GROUP BY tipo;


--9
SELECT l.nombre AS logro,
       l.puntos_req,
       j.nombre AS juego
FROM logro_trofeo l,
     juego j
WHERE l.JUEGO_id = j.id;


--10
SELECT s.fecha_agenda,
       u.primer_nombre,
       u.primer_apellido
FROM sesion_entrenamiento s,
     usuario u
WHERE s.arbitro = u.id;


