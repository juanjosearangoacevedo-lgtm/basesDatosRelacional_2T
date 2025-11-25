-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 23, 2025 at 07:02 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `esports`
--

-- --------------------------------------------------------

--
-- Table structure for table `comuna_barrio`
--

CREATE TABLE `comuna_barrio` (
  `id` int(11) NOT NULL,
  `COMUNA` varchar(45) NOT NULL,
  `barrio` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `comuna_barrio`
--

INSERT INTO `comuna_barrio` (`id`, `COMUNA`, `barrio`) VALUES
(1, 'Comuna 1', 'Popular'),
(2, 'Comuna 2', 'Santa Cruz'),
(3, 'Comuna 3', 'Manrique'),
(4, 'Comuna 4', 'Aranjuez'),
(5, 'Comuna 5', 'Castilla'),
(6, 'Comuna 6', 'Doce de Octubre'),
(7, 'Comuna 7', 'Robledo'),
(8, 'Comuna 8', 'Villa Hermosa'),
(9, 'Comuna 9', 'Buenos Aires'),
(10, 'Comuna 10', 'La Candelaria'),
(11, 'Comuna 11', 'Laureles'),
(12, 'Comuna 12', 'La América'),
(13, 'Comuna 13', 'San Javier'),
(14, 'Comuna 14', 'El Poblado'),
(15, 'Comuna 15', 'Guayabal'),
(16, 'Comuna 16', 'Belén'),
(17, 'Comuna 17', 'San Cristóbal'),
(18, 'Comuna 18', 'Altavista'),
(19, 'Comuna 19', 'San Antonio'),
(20, 'Comuna 20', 'Prado');

-- --------------------------------------------------------

--
-- Table structure for table `consola`
--

CREATE TABLE `consola` (
  `id` int(11) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `numero_serie` varchar(45) NOT NULL,
  `existencia_inventario` int(11) NOT NULL,
  `dir_ip` varchar(45) DEFAULT NULL,
  `dir_mac` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `consola`
--

INSERT INTO `consola` (`id`, `nombre`, `numero_serie`, `existencia_inventario`, `dir_ip`, `dir_mac`) VALUES
(1, 'PS4', 'PS4-000001', 10, '192.168.0.1', 'AA:BB:CC:DD:01'),
(2, 'PS5', 'PS5-000002', 8, '192.168.0.2', 'AA:BB:CC:DD:02'),
(3, 'Xbox One', 'XB1-000003', 6, '192.168.0.3', 'AA:BB:CC:DD:03'),
(4, 'Xbox Series X', 'XSX-000004', 4, '192.168.0.4', 'AA:BB:CC:DD:04'),
(5, 'Nintendo Switch', 'NSW-000005', 12, '192.168.0.5', 'AA:BB:CC:DD:05'),
(6, 'PC Gamer', 'PCG-000006', 5, '192.168.0.6', 'AA:BB:CC:DD:06'),
(7, 'PS3', 'PS3-000007', 3, '192.168.0.7', 'AA:BB:CC:DD:07'),
(8, 'Xbox 360', 'X360-000008', 7, '192.168.0.8', 'AA:BB:CC:DD:08'),
(9, 'Wii U', 'WIIU-000009', 2, '192.168.0.9', 'AA:BB:CC:DD:09'),
(10, 'Wii', 'WII-000010', 4, '192.168.0.10', 'AA:BB:CC:DD:0A'),
(11, 'PS Vita', 'PSV-000011', 1, '192.168.0.11', 'AA:BB:CC:DD:0B'),
(12, '3DS', '3DS-000012', 2, '192.168.0.12', 'AA:BB:CC:DD:0C'),
(13, 'Steam Deck', 'SD-000013', 5, '192.168.0.13', 'AA:BB:CC:DD:0D'),
(14, 'Meta Quest 3', 'MQ3-000014', 3, '192.168.0.14', 'AA:BB:CC:DD:0E'),
(15, 'HTC Vive', 'HTC-000015', 3, '192.168.0.15', 'AA:BB:CC:DD:0F'),
(16, 'Arcade', 'ARC-000016', 1, '192.168.0.16', 'AA:BB:CC:DD:10'),
(17, 'Retro Mini', 'RET-000017', 2, '192.168.0.17', 'AA:BB:CC:DD:11'),
(18, 'GameCube', 'GC-000018', 1, '192.168.0.18', 'AA:BB:CC:DD:12'),
(19, 'Sega Genesis', 'SG-000019', 1, '192.168.0.19', 'AA:BB:CC:DD:13'),
(20, 'SNES', 'SN-000020', 1, '192.168.0.20', 'AA:BB:CC:DD:14');

-- --------------------------------------------------------

--
-- Table structure for table `control`
--

CREATE TABLE `control` (
  `id` int(11) NOT NULL,
  `numero_serie` varchar(45) DEFAULT NULL,
  `tipo` varchar(45) DEFAULT NULL,
  `consola_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `control`
--

INSERT INTO `control` (`id`, `numero_serie`, `tipo`, `consola_id`) VALUES
(1, 'CTRL-01', 'Inalámbrico', 1),
(2, 'CTRL-02', 'Inalámbrico', 2),
(3, 'CTRL-03', 'Cableado', 3),
(4, 'CTRL-04', 'Inalámbrico', 4),
(5, 'CTRL-05', 'Inalámbrico', 5),
(6, 'CTRL-06', 'Cableado', 6),
(7, 'CTRL-07', 'Inalámbrico', 7),
(8, 'CTRL-08', 'Cableado', 8),
(9, 'CTRL-09', 'Inalámbrico', 9),
(10, 'CTRL-10', 'Inalámbrico', 10),
(11, 'CTRL-11', 'Cableado', 11),
(12, 'CTRL-12', 'Inalámbrico', 12),
(13, 'CTRL-13', 'Inalámbrico', 13),
(14, 'CTRL-14', 'Cableado', 14),
(15, 'CTRL-15', 'Inalámbrico', 15),
(16, 'CTRL-16', 'Inalámbrico', 16),
(17, 'CTRL-17', 'Cableado', 17),
(18, 'CTRL-18', 'Inalámbrico', 18),
(19, 'CTRL-19', 'Inalámbrico', 19),
(20, 'CTRL-20', 'Cableado', 20);

-- --------------------------------------------------------

--
-- Table structure for table `equipo_juego`
--

CREATE TABLE `equipo_juego` (
  `id` int(11) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `horas` int(11) NOT NULL,
  `nivel` int(11) NOT NULL,
  `juego` varchar(45) DEFAULT NULL,
  `juego_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `equipo_juego`
--

INSERT INTO `equipo_juego` (`id`, `nombre`, `horas`, `nivel`, `juego`, `juego_id`) VALUES
(1, 'Alpha Squad', 120, 5, 'Fortnite', 1),
(2, 'Los Titanes', 98, 4, 'FIFA 25', 2),
(3, 'Eagles eSports', 225, 7, 'MW3', 3),
(4, 'Miners Club', 310, 8, 'Minecraft', 4),
(5, 'Turbo League', 80, 3, 'Rocket League', 5),
(6, 'Valor Kings', 150, 6, 'Valorant', 6),
(7, 'LoL Legends', 190, 9, 'LOL', 7),
(8, 'Sniper Elite', 119, 5, 'CS2', 8),
(9, 'Apex Wolves', 132, 6, 'Apex', 9),
(10, 'OverPower', 145, 7, 'OW2', 10),
(11, 'Horizon Racers', 86, 4, 'Forza', 11),
(12, 'San Andreas Crew', 203, 8, 'GTA V', 12),
(13, 'CyberRunners', 120, 5, 'Cyberpunk', 13),
(14, 'Roblox Studio Team', 72, 3, 'Roblox', 14),
(15, 'PUBG Veterans', 167, 7, 'PUBG', 15),
(16, 'Kart Masters', 90, 4, 'Mario Kart', 16),
(17, 'Smash Bros Team', 60, 3, 'Smash', 17),
(18, 'Halo Force', 110, 6, 'Halo', 18),
(19, 'Warzone Elite', 200, 7, 'Warzone', 19),
(20, 'Ring Slayers', 99, 4, 'Elden Ring', 20);

-- --------------------------------------------------------

--
-- Table structure for table `juego`
--

CREATE TABLE `juego` (
  `id` int(11) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `clasificacion_ESRB` varchar(45) DEFAULT NULL,
  `estudio_dev` varchar(45) DEFAULT NULL,
  `plataformas_disponibles` varchar(45) DEFAULT NULL,
  `numero_jugadores` varchar(45) DEFAULT NULL,
  `tipo` varchar(45) DEFAULT NULL,
  `existencias_inventario` int(11) DEFAULT NULL,
  `plataforma_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `juego`
--

INSERT INTO `juego` (`id`, `nombre`, `clasificacion_ESRB`, `estudio_dev`, `plataformas_disponibles`, `numero_jugadores`, `tipo`, `existencias_inventario`, `plataforma_id`) VALUES
(1, 'Fortnite', 'T', 'Epic Games', 'PC, PS4, Xbox', '100', 'Battle Royale', 50, 1),
(2, 'FIFA 25', 'E', 'EA Sports', 'PC, Consolas', '22', 'Deportes', 30, 2),
(3, 'Call of Duty MW3', 'M', 'Activision', 'PC, PS5', '12', 'Shooter', 40, 3),
(4, 'Minecraft', 'E10', 'Mojang', 'Todas', '8', 'Sandbox', 60, 4),
(5, 'Rocket League', 'E', 'Psyonix', 'PC/PS', '8', 'Deportes', 20, 5),
(6, 'Valorant', 'T', 'Riot Games', 'PC', '10', 'Shooter', 33, 6),
(7, 'League of Legends', 'T', 'Riot Games', 'PC', '10', 'MOBA', 70, 7),
(8, 'CS2', 'M', 'Valve', 'PC', '10', 'Shooter', 44, 8),
(9, 'Apex Legends', 'T', 'Respawn', 'PC/PS/Xbox', '3', 'Shooter', 21, 9),
(10, 'Overwatch 2', 'T', 'Blizzard', 'PC/PS/Xbox', '10', 'Shooter', 25, 10),
(11, 'Forza Horizon 5', 'E', 'Playground Games', 'Xbox/PC', '12', 'Carreras', 18, 11),
(12, 'GTA V', 'M', 'Rockstar', 'PC/PS/Xbox', '1', 'Acción', 52, 12),
(13, 'Cyberpunk 2077', 'M', 'CDPR', 'PC', '1', 'RPG', 15, 13),
(14, 'Roblox', 'E', 'Roblox Corp', 'PC/Mobile', '∞', 'Sandbox', 90, 14),
(15, 'PUBG', 'M', 'Krafton', 'PC/Mobile', '100', 'Shooter', 33, 15),
(16, 'Mario Kart 8', 'E', 'Nintendo', 'Switch', '4', 'Carreras', 16, 16),
(17, 'Smash Bros', 'E10', 'Nintendo', 'Switch', '8', 'Lucha', 14, 17),
(18, 'Halo Infinite', 'T', '343 Industries', 'Xbox', '16', 'Shooter', 22, 18),
(19, 'Warzone', 'M', 'Activision', 'PC/PS/Xbox', '150', 'Shooter', 47, 19),
(20, 'Elden Ring', 'M', 'FromSoftware', 'PC/PS/Xbox', '1', 'RPG', 28, 20);

-- --------------------------------------------------------

--
-- Table structure for table `logro_trofeo`
--

CREATE TABLE `logro_trofeo` (
  `id` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `puntos_req` int(11) NOT NULL,
  `juego_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `logro_trofeo`
--

INSERT INTO `logro_trofeo` (`id`, `nombre`, `puntos_req`, `juego_id`) VALUES
(1, 'Primer Paso', 10, 1),
(2, 'Campeón FIFA', 20, 2),
(3, 'Soldado Élite', 30, 3),
(4, 'Arquitecto', 15, 4),
(5, 'Super Goleador', 18, 5),
(6, 'Headshot Master', 25, 6),
(7, 'Ace Pentakill', 40, 7),
(8, 'Francotirador', 22, 8),
(9, 'Apex Predator', 35, 9),
(10, 'Heroe del Equipo', 28, 10),
(11, 'Piloto Experto', 40, 11),
(12, 'Criminal Legendario', 50, 12),
(13, 'Cyber Ninja', 33, 13),
(14, 'Constructor Maestro', 12, 14),
(15, 'Superviviente', 45, 15),
(16, 'Rey de la Pista', 20, 16),
(17, 'Super Smash', 30, 17),
(18, 'Guardián Halo', 32, 18),
(19, 'Warzone Killer', 44, 19),
(20, 'Ancestral', 38, 20);

-- --------------------------------------------------------

--
-- Table structure for table `plataforma`
--

CREATE TABLE `plataforma` (
  `id` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `marca` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `plataforma`
--

INSERT INTO `plataforma` (`id`, `nombre`, `marca`) VALUES
(1, 'PlayStation 4', 'Sony'),
(2, 'PlayStation 5', 'Sony'),
(3, 'Xbox One', 'Microsoft'),
(4, 'Xbox Series X', 'Microsoft'),
(5, 'Nintendo Switch', 'Nintendo'),
(6, 'PC Gaming', 'Custom'),
(7, 'Steam Deck', 'Valve'),
(8, 'Meta Quest 3', 'Meta'),
(9, 'PlayStation VR2', 'Sony'),
(10, 'Mobile Android', 'Google'),
(11, 'Mobile iOS', 'Apple'),
(12, 'Arcade', 'Retro Corp'),
(13, 'Sega Genesis Mini', 'Sega'),
(14, 'SNES Mini', 'Nintendo'),
(15, 'PS Vita', 'Sony'),
(16, 'Xbox 360', 'Microsoft'),
(17, 'Wii U', 'Nintendo'),
(18, '3DS', 'Nintendo'),
(19, 'PC Esports', 'Intel'),
(20, 'VR HTC Vive', 'HTC');

-- --------------------------------------------------------

--
-- Table structure for table `sesion_entrenamiento`
--

CREATE TABLE `sesion_entrenamiento` (
  `id` int(11) NOT NULL,
  `fecha_agenda` datetime NOT NULL,
  `hora_ini` datetime DEFAULT NULL,
  `hora_fin` datetime DEFAULT NULL,
  `juego_id` int(11) NOT NULL,
  `arbitro` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sesion_entrenamiento`
--

INSERT INTO `sesion_entrenamiento` (`id`, `fecha_agenda`, `hora_ini`, `hora_fin`, `juego_id`, `arbitro`) VALUES
(1, '2025-01-01 10:00:00', '2025-01-01 10:00:00', '2025-01-01 12:00:00', 1, 4),
(2, '2025-01-02 11:00:00', '2025-01-02 11:00:00', '2025-01-02 13:00:00', 2, 4),
(3, '2025-01-03 12:00:00', '2025-01-03 12:00:00', '2025-01-03 14:00:00', 3, 4),
(4, '2025-01-04 13:00:00', '2025-01-04 13:00:00', '2025-01-04 15:00:00', 4, 4),
(5, '2025-01-05 14:00:00', '2025-01-05 14:00:00', '2025-01-05 16:00:00', 5, 4),
(6, '2025-01-06 15:00:00', '2025-01-06 15:00:00', '2025-01-06 17:00:00', 6, 4),
(7, '2025-01-07 16:00:00', '2025-01-07 16:00:00', '2025-01-07 18:00:00', 7, 4),
(8, '2025-01-08 17:00:00', '2025-01-08 17:00:00', '2025-01-08 19:00:00', 8, 4),
(9, '2025-01-09 18:00:00', '2025-01-09 18:00:00', '2025-01-09 20:00:00', 9, 4),
(10, '2025-01-10 19:00:00', '2025-01-10 19:00:00', '2025-01-10 21:00:00', 10, 4),
(11, '2025-01-11 10:00:00', '2025-01-11 10:00:00', '2025-01-11 12:00:00', 11, 4),
(12, '2025-01-12 11:00:00', '2025-01-12 11:00:00', '2025-01-12 13:00:00', 12, 4),
(13, '2025-01-13 12:00:00', '2025-01-13 12:00:00', '2025-01-13 14:00:00', 13, 4),
(14, '2025-01-14 13:00:00', '2025-01-14 13:00:00', '2025-01-14 15:00:00', 14, 4),
(15, '2025-01-15 14:00:00', '2025-01-15 14:00:00', '2025-01-15 16:00:00', 15, 4),
(16, '2025-01-16 15:00:00', '2025-01-16 15:00:00', '2025-01-16 17:00:00', 16, 4),
(17, '2025-01-17 16:00:00', '2025-01-17 16:00:00', '2025-01-17 18:00:00', 17, 4),
(18, '2025-01-18 17:00:00', '2025-01-18 17:00:00', '2025-01-18 19:00:00', 18, 4),
(19, '2025-01-19 18:00:00', '2025-01-19 18:00:00', '2025-01-19 20:00:00', 19, 4),
(20, '2025-01-20 19:00:00', '2025-01-20 19:00:00', '2025-01-20 21:00:00', 20, 4);

-- --------------------------------------------------------

--
-- Table structure for table `telefono`
--

CREATE TABLE `telefono` (
  `id` int(11) NOT NULL,
  `numero` varchar(45) NOT NULL,
  `tipo` varchar(45) NOT NULL,
  `usuario_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `telefono`
--

INSERT INTO `telefono` (`id`, `numero`, `tipo`, `usuario_id`) VALUES
(1, '3001110001', 'Celular', 1),
(2, '3001110002', 'Celular', 2),
(3, '3001110003', 'Celular', 3),
(4, '3001110004', 'Celular', 4),
(5, '3001110005', 'Celular', 5),
(6, '3001110006', 'Celular', 6),
(7, '3001110007', 'Celular', 7),
(8, '3001110008', 'Celular', 8),
(9, '3001110009', 'Celular', 9),
(10, '3001110010', 'Celular', 10),
(11, '3001110011', 'Fijo', 11),
(12, '3001110012', 'Fijo', 12),
(13, '3001110013', 'Fijo', 13),
(14, '3001110014', 'Fijo', 14),
(15, '3001110015', 'Fijo', 15),
(16, '3001110016', 'Fijo', 16),
(17, '3001110017', 'Fijo', 17),
(18, '3001110018', 'Fijo', 18),
(19, '3001110019', 'Fijo', 19),
(20, '3001110020', 'Fijo', 20);

-- --------------------------------------------------------

--
-- Table structure for table `tipo_usuario`
--

CREATE TABLE `tipo_usuario` (
  `id` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `descripcion` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tipo_usuario`
--

INSERT INTO `tipo_usuario` (`id`, `nombre`, `descripcion`) VALUES
(1, 'Jugador', 'Participante activo'),
(2, 'Entrenador', 'Lidera entrenamientos'),
(3, 'Administrador', 'Gestiona el sistema'),
(4, 'Arbitro', 'Supervisa sesiones'),
(5, 'Invitado', 'Acceso limitado'),
(6, 'Streamer', 'Crea contenido'),
(7, 'Analista', 'Evalúa estadísticas'),
(8, 'Manager', 'Coordina equipos'),
(9, 'Coach Mental', 'Apoyo emocional'),
(10, 'Jugador Pro', 'Nivel competitivo'),
(11, 'Organizador', 'Coordina eventos'),
(12, 'Soporte', 'Atención técnica'),
(13, 'Staff', 'Ayuda general'),
(14, 'Marketing', 'Publicidad'),
(15, 'Comunicador', 'Manejo de redes'),
(16, 'Tester', 'Prueba videojuegos'),
(17, 'Desarrollador', 'Crea software'),
(18, 'Diseñador', 'Arte y diseño'),
(19, 'Creador', 'Contenido multimedia'),
(20, 'Director', 'Máxima autoridad');

-- --------------------------------------------------------

--
-- Table structure for table `usuario`
--

CREATE TABLE `usuario` (
  `id` int(11) NOT NULL,
  `tipo_documento` varchar(45) NOT NULL,
  `numero_documento` varchar(45) NOT NULL,
  `primer_nombre` varchar(45) NOT NULL,
  `segundo_nombre` varchar(45) DEFAULT NULL,
  `primer_apellido` varchar(45) NOT NULL,
  `segundo_apellido` varchar(45) DEFAULT NULL,
  `fecha_nacimiento` datetime NOT NULL,
  `sexo` varchar(45) DEFAULT NULL,
  `direccion_domicilio` varchar(45) NOT NULL,
  `nickname` varchar(45) DEFAULT NULL,
  `clave` varchar(45) DEFAULT NULL,
  `acudiente` int(11) DEFAULT NULL,
  `comuna_barrio_id` int(11) NOT NULL,
  `tipo_usuario_id` int(11) NOT NULL,
  `equipo_juego_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `usuario`
--

INSERT INTO `usuario` (`id`, `tipo_documento`, `numero_documento`, `primer_nombre`, `segundo_nombre`, `primer_apellido`, `segundo_apellido`, `fecha_nacimiento`, `sexo`, `direccion_domicilio`, `nickname`, `clave`, `acudiente`, `comuna_barrio_id`, `tipo_usuario_id`, `equipo_juego_id`) VALUES
(1, 'CC', '1010000001', 'Juan', 'Carlos', 'Lopez', 'Ramirez', '1990-01-01 00:00:00', 'm', 'cra 10 #20-30', 'JuanC', '1234', 0, 1, 1, 1),
(2, 'CC', '1010000002', 'Maria', 'Alejandra', 'Gomez', 'Torres', '1995-02-02 00:00:00', 'f', 'cll 50 #10-40', 'MariG', '1234', 0, 2, 2, 2),
(3, 'CC', '1010000003', 'Pedro', 'Andres', 'Martinez', 'Quintero', '1992-03-03 00:00:00', 'm', 'cra 90 #14-22', 'PeterM', '1234', 0, 3, 3, 3),
(4, 'CE', '1010000004', 'Laura', 'Valentina', 'Rios', 'Castro', '1999-04-04 00:00:00', 'f', 'cll 12 #44-10', 'LauVR', '1234', 0, 4, 4, 4),
(5, 'TI', '1010000005', 'Andres', 'Felipe', 'Zapata', 'Salazar', '1993-05-05 00:00:00', 'm', 'cra 80 #50-12', 'AndyZ', '1234', 0, 5, 5, 5),
(6, 'CC', '1010000006', 'Carolina', 'Marcela', 'Herrera', 'Guzman', '1998-06-06 00:00:00', 'f', 'cll 90 #12-33', 'CaroH', '1234', 0, 6, 6, 6),
(7, 'CC', '1010000007', 'Jorge', 'Ivan', 'Sanchez', 'Bermudez', '1987-07-07 00:00:00', 'm', 'cra 11 #77-09', 'JorgeS', '1234', 0, 7, 7, 7),
(8, 'CC', '1010000008', 'Diana', 'Patricia', 'Pineda', 'Montoya', '1996-08-08 00:00:00', 'f', 'cll 22 #88-10', 'DianPM', '1234', 0, 8, 8, 8),
(9, 'CE', '1010000009', 'Felipe', 'Alexander', 'Ortega', 'Vargas', '1989-09-09 00:00:00', 'm', 'cra 33 #99-12', 'FeliO', '1234', 0, 9, 9, 9),
(10, 'CC', '1010000010', 'Camila', 'Andrea', 'Castaño', 'Zuluaga', '2000-10-10 00:00:00', 'f', 'cll 15 #45-32', 'CamiCZ', '1234', 0, 10, 10, 10),
(11, 'CC', '1010000011', 'Sebastian', 'David', 'Arango', 'Cardona', '1994-11-11 00:00:00', 'm', 'cra 66 #55-23', 'SebaA', '1234', 0, 11, 11, 11),
(12, 'CC', '1010000012', 'Paula', 'Daniela', 'Mejia', 'Lozano', '1997-12-12 00:00:00', 'f', 'cll 37 #22-11', 'PauDL', '1234', 0, 12, 12, 12),
(13, 'CC', '1010000013', 'Oscar', 'Mauricio', 'Reyes', 'Ospina', '1986-01-13 00:00:00', 'm', 'cra 14 #01-08', 'OscarR', '1234', 0, 13, 13, 13),
(14, 'CC', '1010000014', 'Juliana', 'Estefania', 'Suarez', 'Gallego', '1998-02-14 00:00:00', 'f', 'cll 72 #60-88', 'JuliSG', '1234', 0, 14, 14, 14),
(15, 'CC', '1010000015', 'Ricardo', 'Manuel', 'Torres', 'Pava', '1985-03-15 00:00:00', 'm', 'cra 80 #23-12', 'RickyT', '1234', 0, 15, 15, 15),
(16, 'CC', '1010000016', 'Natalia', 'Sofia', 'Velez', 'Ocampo', '1994-04-16 00:00:00', 'f', 'cll 18 #12-50', 'NatyV', '1234', 0, 16, 16, 16),
(17, 'CC', '1010000017', 'Daniel', 'Esteban', 'Cabrera', 'Hoyos', '1983-05-17 00:00:00', 'm', 'cra 77 #44-21', 'DaniC', '1234', 0, 17, 17, 17),
(18, 'CC', '1010000018', 'Sara', 'Lucia', 'Bedoya', 'Arbeláez', '2001-06-18 00:00:00', 'f', 'cll 33 #19-75', 'SaraB', '1234', 0, 18, 18, 18),
(19, 'CC', '1010000019', 'Hector', 'Alfonso', 'Palacios', 'Molina', '1982-07-19 00:00:00', 'm', 'cra 55 #10-30', 'HecPM', '1234', 0, 19, 19, 19),
(20, 'CC', '1010000020', 'Valeria', 'Isabel', 'Giraldo', 'Franco', '1991-08-20 00:00:00', 'f', 'cll 99 #20-15', 'ValeGF', '1234', 0, 20, 20, 20);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comuna_barrio`
--
ALTER TABLE `comuna_barrio`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `consola`
--
ALTER TABLE `consola`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `control`
--
ALTER TABLE `control`
  ADD PRIMARY KEY (`id`),
  ADD KEY `consola_id` (`consola_id`);

--
-- Indexes for table `equipo_juego`
--
ALTER TABLE `equipo_juego`
  ADD PRIMARY KEY (`id`),
  ADD KEY `juego_id` (`juego_id`);

--
-- Indexes for table `juego`
--
ALTER TABLE `juego`
  ADD PRIMARY KEY (`id`),
  ADD KEY `plataforma_id` (`plataforma_id`);

--
-- Indexes for table `logro_trofeo`
--
ALTER TABLE `logro_trofeo`
  ADD PRIMARY KEY (`id`),
  ADD KEY `juego_id` (`juego_id`);

--
-- Indexes for table `plataforma`
--
ALTER TABLE `plataforma`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sesion_entrenamiento`
--
ALTER TABLE `sesion_entrenamiento`
  ADD PRIMARY KEY (`id`),
  ADD KEY `arbitro` (`arbitro`),
  ADD KEY `juego_id` (`juego_id`);

--
-- Indexes for table `telefono`
--
ALTER TABLE `telefono`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usuario_id` (`usuario_id`);

--
-- Indexes for table `tipo_usuario`
--
ALTER TABLE `tipo_usuario`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comuna_barrio_id` (`comuna_barrio_id`),
  ADD KEY `tipo_usuario_id` (`tipo_usuario_id`),
  ADD KEY `equipo_juego_id` (`equipo_juego_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comuna_barrio`
--
ALTER TABLE `comuna_barrio`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `consola`
--
ALTER TABLE `consola`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `control`
--
ALTER TABLE `control`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `equipo_juego`
--
ALTER TABLE `equipo_juego`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `juego`
--
ALTER TABLE `juego`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `logro_trofeo`
--
ALTER TABLE `logro_trofeo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `plataforma`
--
ALTER TABLE `plataforma`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `sesion_entrenamiento`
--
ALTER TABLE `sesion_entrenamiento`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `telefono`
--
ALTER TABLE `telefono`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tipo_usuario`
--
ALTER TABLE `tipo_usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `control`
--
ALTER TABLE `control`
  ADD CONSTRAINT `control_ibfk_1` FOREIGN KEY (`consola_id`) REFERENCES `consola` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `equipo_juego`
--
ALTER TABLE `equipo_juego`
  ADD CONSTRAINT `equipo_juego_ibfk_1` FOREIGN KEY (`juego_id`) REFERENCES `juego` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `juego`
--
ALTER TABLE `juego`
  ADD CONSTRAINT `juego_ibfk_1` FOREIGN KEY (`plataforma_id`) REFERENCES `plataforma` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `logro_trofeo`
--
ALTER TABLE `logro_trofeo`
  ADD CONSTRAINT `logro_trofeo_ibfk_1` FOREIGN KEY (`juego_id`) REFERENCES `juego` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sesion_entrenamiento`
--
ALTER TABLE `sesion_entrenamiento`
  ADD CONSTRAINT `sesion_entrenamiento_ibfk_1` FOREIGN KEY (`arbitro`) REFERENCES `usuario` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `sesion_entrenamiento_ibfk_2` FOREIGN KEY (`juego_id`) REFERENCES `juego` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `telefono`
--
ALTER TABLE `telefono`
  ADD CONSTRAINT `telefono_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `usuario` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `usuario_ibfk_1` FOREIGN KEY (`comuna_barrio_id`) REFERENCES `comuna_barrio` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `usuario_ibfk_2` FOREIGN KEY (`tipo_usuario_id`) REFERENCES `tipo_usuario` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `usuario_ibfk_3` FOREIGN KEY (`equipo_juego_id`) REFERENCES `equipo_juego` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
