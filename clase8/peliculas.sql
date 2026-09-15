-- ============================================================
-- Base de datos: peliculasdb
-- Tablas: paises, generos, directores, actores, peliculas, peliculas_actores
-- ============================================================

DROP TABLE IF EXISTS `peliculas_actores`;
DROP TABLE IF EXISTS `peliculas`;
DROP TABLE IF EXISTS `actores`;
DROP TABLE IF EXISTS `directores`;
DROP TABLE IF EXISTS `generos`;
DROP TABLE IF EXISTS `paises`;

-- --------------------------------------------------------
-- Tabla: paises
-- --------------------------------------------------------
CREATE TABLE `paises` (
                          `idPais` tinyint unsigned NOT NULL AUTO_INCREMENT,
                          `pais` varchar(50) NOT NULL,
                          `bandera` varchar(255) NOT NULL,
                          PRIMARY KEY (`idPais`),
                          UNIQUE KEY `pais` (`pais`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------
-- Tabla: generos
-- --------------------------------------------------------
CREATE TABLE `generos` (
                           `idGenero` tinyint unsigned NOT NULL AUTO_INCREMENT,
                           `genero` varchar(50) NOT NULL,
                           PRIMARY KEY (`idGenero`),
                           UNIQUE KEY `genero` (`genero`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------
-- Tabla: directores
-- --------------------------------------------------------
CREATE TABLE `directores` (
                              `idDirector` mediumint unsigned NOT NULL AUTO_INCREMENT,
                              `nombre` varchar(50) NOT NULL,
                              `apellido` varchar(50) NOT NULL,
                              `idPais` tinyint unsigned NOT NULL,
                              PRIMARY KEY (`idDirector`),
                              KEY `idPais` (`idPais`),
                              CONSTRAINT `directores_ibfk_1` FOREIGN KEY (`idPais`) REFERENCES `paises` (`idPais`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------
-- Tabla: actores
-- --------------------------------------------------------
CREATE TABLE `actores` (
                           `idActor` mediumint unsigned NOT NULL AUTO_INCREMENT,
                           `nombre` varchar(50) NOT NULL,
                           `apellido` varchar(50) NOT NULL,
                           `idPais` tinyint unsigned NOT NULL,
                           PRIMARY KEY (`idActor`),
                           KEY `idPais` (`idPais`),
                           CONSTRAINT `actores_ibfk_1` FOREIGN KEY (`idPais`) REFERENCES `paises` (`idPais`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------
-- Tabla: peliculas
-- --------------------------------------------------------
CREATE TABLE `peliculas` (
                             `idPelicula` mediumint unsigned NOT NULL AUTO_INCREMENT,
                             `titulo` varchar(150) NOT NULL,
                             `anio` smallint unsigned NOT NULL,
                             `rating` decimal(3,1) NOT NULL,
                             `duracion` smallint unsigned NOT NULL,
                             `idDirector` mediumint unsigned NOT NULL,
                             `idGenero` tinyint unsigned NOT NULL,
                             `idPaisOrigen` tinyint unsigned NOT NULL,
                             `sinopsis` varchar(1000) NOT NULL,
                             PRIMARY KEY (`idPelicula`),
                             UNIQUE KEY `titulo` (`titulo`),
                             KEY `idDirector` (`idDirector`),
                             KEY `idGenero` (`idGenero`),
                             KEY `idPaisOrigen` (`idPaisOrigen`),
                             CONSTRAINT `peliculas_ibfk_1` FOREIGN KEY (`idDirector`) REFERENCES `directores` (`idDirector`),
                             CONSTRAINT `peliculas_ibfk_2` FOREIGN KEY (`idGenero`) REFERENCES `generos` (`idGenero`),
                             CONSTRAINT `peliculas_ibfk_3` FOREIGN KEY (`idPaisOrigen`) REFERENCES `paises` (`idPais`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------
-- Tabla: peliculas_actores (relación N:M)
-- --------------------------------------------------------
CREATE TABLE `peliculas_actores` (
                                     `idPelicula` mediumint unsigned NOT NULL,
                                     `idActor` mediumint unsigned NOT NULL,
                                     KEY `idPelicula` (`idPelicula`),
                                     KEY `idActor` (`idActor`),
                                     CONSTRAINT `peliculas_actores_ibfk_1` FOREIGN KEY (`idPelicula`) REFERENCES `peliculas` (`idPelicula`),
                                     CONSTRAINT `peliculas_actores_ibfk_2` FOREIGN KEY (`idActor`) REFERENCES `actores` (`idActor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ============================================================
-- DATOS
-- ============================================================

-- --------------------------------------------------------
-- Datos: paises (10)
-- --------------------------------------------------------
INSERT INTO `paises` (`pais`, `bandera`) VALUES
                                             ('Estados Unidos', 'https://flagcdn.com/w320/us.png'),
                                             ('Reino Unido',    'https://flagcdn.com/w320/gb.png'),
                                             ('Japón',          'https://flagcdn.com/w320/jp.png'),
                                             ('Nueva Zelanda',  'https://flagcdn.com/w320/nz.png'),
                                             ('Italia',         'https://flagcdn.com/w320/it.png'),
                                             ('Francia',        'https://flagcdn.com/w320/fr.png'),
                                             ('Alemania',       'https://flagcdn.com/w320/de.png'),
                                             ('España',         'https://flagcdn.com/w320/es.png'),
                                             ('Corea del Sur',  'https://flagcdn.com/w320/kr.png'),
                                             ('Australia',      'https://flagcdn.com/w320/au.png');

-- --------------------------------------------------------
-- Datos: generos (10)
-- --------------------------------------------------------
INSERT INTO `generos` (`genero`) VALUES
                                     ('Drama'),
                                     ('Crimen'),
                                     ('Ciencia Ficción'),
                                     ('Terror'),
                                     ('Comedia'),
                                     ('Animación'),
                                     ('Aventura'),
                                     ('Fantasía'),
                                     ('Acción'),
                                     ('Bélico');

-- --------------------------------------------------------
-- Datos: directores (11)
-- idPais: 1=Estados Unidos, 2=Reino Unido, 3=Japón, 4=Nueva Zelanda
-- --------------------------------------------------------
INSERT INTO `directores` (`nombre`, `apellido`, `idPais`) VALUES
                                                              ('Francis Ford', 'Coppola',    1),
                                                              ('Martin',       'Scorsese',   1),
                                                              ('Stanley',      'Kubrick',    1),
                                                              ('Steven',       'Spielberg',  1),
                                                              ('Quentin',      'Tarantino',  1),
                                                              ('Hayao',        'Miyazaki',   3),
                                                              ('Makoto',       'Shinkai',    3),
                                                              ('Ridley',       'Scott',      2),
                                                              ('Christopher',  'Nolan',      2),
                                                              ('Peter',        'Jackson',    4),
                                                              ('Guy',          'Ritchie',    2);

-- --------------------------------------------------------
-- Datos: actores (16)
-- --------------------------------------------------------
INSERT INTO `actores` (`nombre`, `apellido`, `idPais`) VALUES
                                                           ('Marlon',    'Brando',        1),
                                                           ('Al',        'Pacino',        1),
                                                           ('Robert',    'De Niro',       1),
                                                           ('Leonardo',  'DiCaprio',      1),
                                                           ('Jack',      'Nicholson',     1),
                                                           ('Harrison',  'Ford',          1),
                                                           ('Uma',       'Thurman',       1),
                                                           ('Samuel L.', 'Jackson',       1),
                                                           ('Russell',   'Crowe',         4),
                                                           ('Christian', 'Bale',          2),
                                                           ('Matthew',   'McConaughey',   1),
                                                           ('Elijah',    'Wood',          1),
                                                           ('Viggo',     'Mortensen',     1),
                                                           ('Jason',     'Statham',       2),
                                                           ('Rumi',      'Hiiragi',       3),
                                                           ('Ryunosuke', 'Kamiki',        3);

-- --------------------------------------------------------
-- Datos: peliculas (30)
-- idGenero: 1=Drama 2=Crimen 3=CienciaFicción 4=Terror 5=Comedia
--           6=Animación 7=Aventura 8=Fantasía 9=Acción 10=Bélico
-- idPaisOrigen: 1=Estados Unidos 2=Reino Unido 3=Japón 4=Nueva Zelanda
-- --------------------------------------------------------
INSERT INTO `peliculas` (`titulo`, `anio`, `rating`, `duracion`, `idDirector`, `idGenero`, `idPaisOrigen`, `sinopsis`) VALUES
                                                                                                                           ('El Padrino',                                     1972, 9.2, 175,  1,  2, 1, 'La historia de una familia de la mafia italoamericana y la transición de poder entre generaciones.'),
                                                                                                                           ('El Padrino Parte II',                             1974, 9.0, 202,  1,  2, 1, 'Continúa la saga familiar mostrando en paralelo el ascenso del patriarca y la consolidación de su heredero.'),
                                                                                                                           ('Apocalypse Now',                                  1979, 8.4, 147,  1, 10, 1, 'Un oficial es enviado río arriba durante la guerra de Vietnam en busca de un coronel renegado.'),
                                                                                                                           ('Taxi Driver',                                     1976, 8.2, 114,  2,  1, 1, 'Un veterano de guerra insomne recorre las calles de Nueva York como taxista mientras su mente se deteriora.'),
                                                                                                                           ('Goodfellas',                                      1990, 8.7, 146,  2,  2, 1, 'El ascenso y la caída de un hombre dentro del crimen organizado neoyorquino, contado en primera persona.'),
                                                                                                                           ('The Departed',                                    2006, 8.5, 151,  2,  2, 1, 'Un policía infiltrado y un criminal infiltrado en la policía luchan por descubrirse mutuamente.'),
                                                                                                                           ('2001: Odisea del Espacio',                        1968, 8.3, 149,  3,  3, 1, 'Un viaje espacial hacia Júpiter se complica cuando la computadora de a bordo desarrolla voluntad propia.'),
                                                                                                                           ('La Naranja Mecánica',                             1971, 8.3, 136,  3,  3, 1, 'Un joven violento es sometido a un tratamiento experimental para eliminar sus impulsos criminales.'),
                                                                                                                           ('El Resplandor',                                   1980, 8.4, 146,  3,  4, 1, 'Un escritor y su familia quedan aislados como cuidadores de un hotel embrujado durante el invierno.'),
                                                                                                                           ('Jurassic Park',                                   1993, 8.2, 127,  4,  7, 1, 'Un parque temático con dinosaurios clonados se descontrola cuando falla la seguridad.'),
                                                                                                                           ('La Lista de Schindler',                           1993, 9.0, 195,  4,  1, 1, 'Un empresario alemán salva a cientos de trabajadores judíos durante el Holocausto.'),
                                                                                                                           ('E.T. El Extraterrestre',                          1982, 7.8, 115,  4,  3, 1, 'Un niño ayuda a un alienígena varado en la Tierra a regresar a casa.'),
                                                                                                                           ('Pulp Fiction',                                    1994, 8.9, 154,  5,  2, 1, 'Varias historias de crimen en Los Ángeles se entrelazan con humor negro y diálogos afilados.'),
                                                                                                                           ('Kill Bill: Volumen 1',                             2003, 8.2, 111,  5,  9, 1, 'Una asesina busca venganza contra quienes intentaron matarla el día de su boda.'),
                                                                                                                           ('El Viaje de Chihiro',                             2001, 8.6, 125,  6,  6, 3, 'Una niña queda atrapada en un mundo de espíritus y debe trabajar en una casa de baños para liberar a sus padres.'),
                                                                                                                           ('Mi Vecino Totoro',                                1988, 8.1,  86,  6,  6, 3, 'Dos hermanas descubren criaturas mágicas del bosque al mudarse al campo con su padre.'),
                                                                                                                           ('La Princesa Mononoke',                            1997, 8.4, 134,  6,  6, 3, 'Un príncipe se ve envuelto en el conflicto entre los dioses del bosque y una ciudad minera.'),
                                                                                                                           ('Your Name',                                       2016, 8.4, 106,  7,  6, 3, 'Dos adolescentes descubren que intercambian cuerpos misteriosamente y buscan encontrarse.'),
                                                                                                                           ('El Tiempo Contigo',                                2019, 7.5, 112,  7,  6, 3, 'Un joven conoce a una chica capaz de despejar el cielo, en una Tokio marcada por la lluvia constante.'),
                                                                                                                           ('Alien: El Octavo Pasajero',                       1979, 8.5, 117,  8,  4, 2, 'La tripulación de una nave de carga es cazada por una criatura extraterrestre letal.'),
                                                                                                                           ('Blade Runner',                                    1982, 8.1, 117,  8,  3, 2, 'Un cazarrecompensas persigue replicantes fugitivos en una Los Ángeles futurista y decadente.'),
                                                                                                                           ('Gladiador',                                       2000, 8.5, 155,  8,  9, 2, 'Un general romano traicionado se convierte en esclavo y gladiador buscando venganza.'),
                                                                                                                           ('Origen',                                          2010, 8.8, 148,  9,  3, 2, 'Un ladrón que roba secretos entrando en los sueños ajenos recibe la misión de implantar una idea.'),
                                                                                                                           ('El Caballero de la Noche',                        2008, 9.0, 152,  9,  9, 2, 'Batman enfrenta al Joker, un criminal que busca sumir a Gotham en el caos.'),
                                                                                                                           ('Interestelar',                                    2014, 8.7, 169,  9,  3, 2, 'Un grupo de exploradores viaja a través de un agujero de gusano en busca de un nuevo hogar para la humanidad.'),
                                                                                                                           ('El Señor de los Anillos: La Comunidad del Anillo', 2001, 8.9, 178, 10,  8, 4, 'Un hobbit inicia un viaje para destruir un anillo capaz de dominar el mundo.'),
                                                                                                                           ('El Señor de los Anillos: Las Dos Torres',          2002, 8.8, 179, 10,  8, 4, 'La comunidad, ahora dividida, enfrenta nuevas batallas mientras el anillo continúa su camino hacia el destino.'),
                                                                                                                           ('King Kong',                                       2005, 7.2, 187, 10,  7, 4, 'Una expedición cinematográfica descubre una isla habitada por un gigantesco gorila y criaturas prehistóricas.'),
                                                                                                                           ('Snatch: Cerdos y Diamantes',                       2000, 8.3, 102, 11,  2, 2, 'Un diamante robado desata una cadena de encuentros entre boxeadores, ladrones y gánsteres londinenses.'),
                                                                                                                           ('Lock & Stock',                                     1998, 8.1, 107, 11,  2, 2, 'Cuatro amigos se endeudan tras una partida de cartas amañada y deben conseguir dinero rápido.');

-- --------------------------------------------------------
-- Datos: peliculas_actores
-- --------------------------------------------------------
INSERT INTO `peliculas_actores` (`idPelicula`, `idActor`) VALUES
                                                              (1, 1), (1, 2),
                                                              (2, 2), (2, 3),
                                                              (3, 1),
                                                              (4, 3),
                                                              (5, 3),
                                                              (6, 4), (6, 5),
                                                              (9, 5),
                                                              (13, 7), (13, 8),
                                                              (14, 7),
                                                              (15, 15),
                                                              (18, 16),
                                                              (21, 6),
                                                              (22, 9),
                                                              (23, 4),
                                                              (24, 10),
                                                              (25, 11),
                                                              (26, 12), (26, 13),
                                                              (27, 12), (27, 13),
                                                              (29, 14),
                                                              (30, 14);