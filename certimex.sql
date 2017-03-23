-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 20-03-2017 a las 19:01:51
-- Versión del servidor: 10.1.19-MariaDB
-- Versión de PHP: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `certimex`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carrusel`
--

CREATE TABLE `carrusel` (
  `id_carrusel` int(10) NOT NULL,
  `encabezado` varchar(1000) NOT NULL,
  `contenido` varchar(5000) NOT NULL,
  `complemento` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `carrusel`
--

INSERT INTO `carrusel` (`id_carrusel`, `encabezado`, `contenido`, `complemento`) VALUES
(29, 'CERTIMEX 2', 'Servicio de CertificaciÃ³n para productos y procesos orgÃ¡nicos de alcance internacional.', ''),
(30, 'CERTIMEX 4', '', ''),
(31, 'CERTIMEX 5', 'Servicio de CertificaciÃ³n para productos y procesos orgÃ¡nicos de alcance internacional.', '%'),
(33, 'CERTIMEX', 'Servicio de CertificaciÃ³n para productos y procesos orgÃ¡nicos de alcance internacional.', '#');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `historia`
--

CREATE TABLE `historia` (
  `id_historia` int(10) NOT NULL,
  `titulo` varchar(2000) NOT NULL,
  `informacion` varchar(2000) NOT NULL,
  `url` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `historia`
--

INSERT INTO `historia` (`id_historia`, `titulo`, `informacion`, `url`) VALUES
(1, 'HISTORIA', 'CERTIMEX se crea en el aÃ±o de 1997 gracias al interÃ©s de los productores mexicanos de querer contar con una certificadora nacional que realizara con calidad los servicios de inspecciÃ³n y certificaciÃ³n, pero a precios accesibles para los interesados.\r\nAsÃ­, CERTIMEX inicia sus actividades en ese aÃ±o ofreciendo Ãºnicamente los servicios de certificaciÃ³n de productos y procesos ecolÃ³gicos u orgÃ¡nicos, los cuales se han venido realizando desde entonces con bastante Ã©xito. ', 'tomatoes-1993695.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `imagenes_carrusel`
--

CREATE TABLE `imagenes_carrusel` (
  `id_imgcarrusel` int(10) NOT NULL,
  `id_carrusel` int(10) DEFAULT NULL,
  `nombre` varchar(2000) NOT NULL,
  `url` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `imagenes_carrusel`
--

INSERT INTO `imagenes_carrusel` (`id_imgcarrusel`, `id_carrusel`, `nombre`, `url`) VALUES
(31, 29, 'environmental-protection-326923_1280.jpg', '../Imagenes/environmental-protection-326923_1280.jpg'),
(32, 30, 'apple-1122537_1920.jpg', '../Imagenes/apple-1122537_1920.jpg'),
(33, 31, 'apple-1873078_1920.jpg', '../Imagenes/apple-1873078_1920.jpg'),
(35, 33, 'apple-1873078_1921.jpg', '../Imagenes/apple-1873078_1921.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `img_noticias`
--

CREATE TABLE `img_noticias` (
  `id_img` int(10) NOT NULL,
  `id_noticias` int(10) DEFAULT NULL,
  `url` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `img_noticias`
--

INSERT INTO `img_noticias` (`id_img`, `id_noticias`, `url`) VALUES
(11, 13, '../Imagenes_Noticias/gato.jpg'),
(12, 14, '../Imagenes_Noticias/Hydrangeas.jpg'),
(14, 16, '../Imagenes_Noticias/consumelocal.jpg'),
(15, 17, '../Imagenes_Noticias/1612849.jpg'),
(16, 18, '../Imagenes_Noticias/go-valentines_0.jpg'),
(17, 19, '../Imagenes_Noticias/google.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `informacion`
--

CREATE TABLE `informacion` (
  `id_informacion` int(5) NOT NULL,
  `titulo` varchar(1000) NOT NULL,
  `informacion` varchar(2000) NOT NULL,
  `url` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `informacion`
--

INSERT INTO `informacion` (`id_informacion`, `titulo`, `informacion`, `url`) VALUES
(1, 'certimex', 'CERTIMEX, Certificadora Mexicana de Productos y Procesos EcolÃ³gicos es una sociedad civil -legalmente registrada bajo el NÃºm. 164/97-, constituida con la finalidad de contribuir en el desarrollo de la producciÃ³n mediante la inspecciÃ³n y certificaciÃ³n de calidad de los procesos y productos agrÃ­colas, pecuarios, agroindustriales y forestales.\r\n\r\nCERTIMEX ha definido su polÃ­tica empresarial con base en los siguientes objetivos:\r\n\r\nGarantizar a productores, procesadores, comercializadores y consumidores la realizaciÃ³n de actividades de inspecciÃ³n y certificaciÃ³n de productos y procesos con competencia, independencia e imparcialidad.\r\nDesarrollar un sistema de calidad, tanto para la inspecciÃ³n como para la certificaciÃ³n, que estÃ© adecuado al contexto nacional pero equivalente a las exigencias internacionales.\r\nDesarrollar sistemas de certificaciÃ³n nacionales que econÃ³micamente estÃ©n al alcance de todos los interesados, pero que ademÃ¡s le permita a CERTIMEX obtener los ingresos necesarios para asegurar la continuidad e independencia de su trabajo.\r\n\r\nHoy sustentamos nuestra tarea en la oportunidad, la fortaleza, la fertilidad, el movimiento y el comercio justo.', 'a1.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mision`
--

CREATE TABLE `mision` (
  `id_mision` int(10) NOT NULL,
  `titulo` varchar(2000) NOT NULL,
  `informacion` varchar(2000) NOT NULL,
  `url` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `mision`
--

INSERT INTO `mision` (`id_mision`, `titulo`, `informacion`, `url`) VALUES
(1, 'MISIÃ“N', 'Somos una agencia de certificaciÃ³n de productos orgÃ¡nicos, inocuos, de comercio justo, y calidad; con acreditaciÃ³n nacional e internacional, comprometida con los actores de las cadenas agroalimentarias sustentables.', 'environmental-protection-326923_1280.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `noticias`
--

CREATE TABLE `noticias` (
  `id_noticias` int(10) NOT NULL,
  `titulo` varchar(500) NOT NULL,
  `contenido` varchar(500) NOT NULL,
  `fecha` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `noticias`
--

INSERT INTO `noticias` (`id_noticias`, `titulo`, `contenido`, `fecha`) VALUES
(13, 'El oso panda', 'El panda, oso panda o panda gigante es una especie de mamÃ­fero del orden de los carnÃ­voros y aunque hay una gran controversia al respecto, los Ãºltimos estudios de su ADN lo engloban entre los miembros ..', '2017-02-05'),
(14, 'Las hortencias', 'Hortencias o El gato o gato domÃ©stico y coloquialmente llamado minino, micho, mizo o miz es una subespecie de mamÃ­fero carnÃ­voro de la familia Felidae.', '2017-02-06'),
(16, 'Consume local', 'Si realmente quieres lucirte en un evento de gala, porque no hacerlo con un bordado del Istmo, de Quielana o Tlahuitoltepec. Por otro lado tambiÃ©n es una buena opciÃ³n para hacer un regalo.', '2017-02-07'),
(17, 'El nintendo switch', 'DespuÃ©s de rumores sobre el precio de la nueva consola de Nintendo, este jueves se confirmÃ³ el costo para MÃ©xico, ademÃ¡s de informar sobre el servicio "online" de pago a nivel mundial.\r\n\r\nEn la preventa de Amazon MÃ©xico, se confirma que el precio oficial del Nintendo Switch serÃ¡ de 9 mil 999 pesos, sÃ³lo por la consola.', '2017-02-08'),
(18, 'pokemon Go', 'La compaÃ±Ã­a creadora de PokÃ©mon Go, Niantic, acaba de anunciar una nueva dinÃ¡mica para el DÃ­a de San ValentÃ­n.\r\n\r\nA partir de hoy y hasta el 15 de febrero, los jugadores recibirÃ¡n el doble de dulces cuando atrapen PokÃ©mon, eclosionen huevos, transfieran PokÃ©mon o al encontrar dulces con un compaÃ±ero PokÃ©mon.\r\n\r\nPokÃ©mon rosados, incluyendo a Chansey, Clefable y Porygon tendrÃ¡n una mayor probabilidad de aparecer y los jugadores tambiÃ©n tendrÃ¡n mayor probabilidad de eclosionar PokÃ©m', '2017-02-09'),
(19, 'Google Maps ', 'No es suficiente saber a dÃ³nde vas, sino que es necesario encontrar la forma mÃ¡s eficiente de hacerlo.\r\n\r\nAfortunadamente Google entiende esta necesidad y acaba de actualizar su aplicaciÃ³n Google Maps en Android, prometiendo brindar informaciÃ³n Ãºtil en tiempo real al fondo de tu pantalla.\r\n\r\nA partir de hoy, si deslizas el dedo hacia arriba, la aplicaciÃ³n te mostrarÃ¡ tres pestaÃ±as diferentes: lugares, conducir y trÃ¡nsito. De esa forma, la aplicaciÃ³n te guiarÃ¡ a un restaurante cercano,', '2017-02-10');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `servicios`
--

CREATE TABLE `servicios` (
  `id_servicio` int(5) NOT NULL,
  `nombre` varchar(2000) NOT NULL,
  `descripcion` varchar(2000) NOT NULL,
  `imagen` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `servicios`
--

INSERT INTO `servicios` (`id_servicio`, `nombre`, `descripcion`, `imagen`) VALUES
(6, 'PROGRAMA DE CAPACITACIÃ“N', 'Consulte sus eventos', 'presentation.png'),
(7, 'SOLICITUD ELECTRÃ“NICA', 'Â¿Quieres certificarte con CERTIMEX en linea?', 'writing-1.png'),
(8, 'PROYECTOS CERTIFICADOS', 'Conoce los operadores certificados por CERTIMEX', 'checklist.png'),
(9, 'PRESUPUESTO APROXIMADO', 'eCertimex: MÃ³dulo de cÃ¡lculo de presupuestos', 'money-bag.png');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id_usuarios` int(10) NOT NULL,
  `usuario` varchar(30) NOT NULL,
  `contrasena` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id_usuarios`, `usuario`, `contrasena`) VALUES
(1, 'admin', '1234');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vision`
--

CREATE TABLE `vision` (
  `id_vision` int(10) NOT NULL,
  `titulo` varchar(2000) NOT NULL,
  `informacion` varchar(2000) NOT NULL,
  `url` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `vision`
--

INSERT INTO `vision` (`id_vision`, `titulo`, `informacion`, `url`) VALUES
(1, 'VISIÃ“N', 'Ser la empresa social de certificaciÃ³n de productos y procesos sustentables, lÃ­der en MÃ©xico, alineada a su filosofÃ­a y valores, con procedimientos confiables e innovadores apegados a las realidades y exigencias nacionales e internacionales.', 'tomatoes-1993695.jpg');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `carrusel`
--
ALTER TABLE `carrusel`
  ADD PRIMARY KEY (`id_carrusel`);

--
-- Indices de la tabla `historia`
--
ALTER TABLE `historia`
  ADD PRIMARY KEY (`id_historia`);

--
-- Indices de la tabla `imagenes_carrusel`
--
ALTER TABLE `imagenes_carrusel`
  ADD PRIMARY KEY (`id_imgcarrusel`),
  ADD KEY `id_carrusel` (`id_carrusel`);

--
-- Indices de la tabla `img_noticias`
--
ALTER TABLE `img_noticias`
  ADD PRIMARY KEY (`id_img`),
  ADD KEY `id_noticias` (`id_noticias`);

--
-- Indices de la tabla `informacion`
--
ALTER TABLE `informacion`
  ADD PRIMARY KEY (`id_informacion`);

--
-- Indices de la tabla `mision`
--
ALTER TABLE `mision`
  ADD PRIMARY KEY (`id_mision`);

--
-- Indices de la tabla `noticias`
--
ALTER TABLE `noticias`
  ADD PRIMARY KEY (`id_noticias`);

--
-- Indices de la tabla `servicios`
--
ALTER TABLE `servicios`
  ADD PRIMARY KEY (`id_servicio`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_usuarios`);

--
-- Indices de la tabla `vision`
--
ALTER TABLE `vision`
  ADD PRIMARY KEY (`id_vision`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `carrusel`
--
ALTER TABLE `carrusel`
  MODIFY `id_carrusel` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
--
-- AUTO_INCREMENT de la tabla `historia`
--
ALTER TABLE `historia`
  MODIFY `id_historia` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `imagenes_carrusel`
--
ALTER TABLE `imagenes_carrusel`
  MODIFY `id_imgcarrusel` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
--
-- AUTO_INCREMENT de la tabla `img_noticias`
--
ALTER TABLE `img_noticias`
  MODIFY `id_img` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT de la tabla `informacion`
--
ALTER TABLE `informacion`
  MODIFY `id_informacion` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `mision`
--
ALTER TABLE `mision`
  MODIFY `id_mision` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `noticias`
--
ALTER TABLE `noticias`
  MODIFY `id_noticias` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT de la tabla `servicios`
--
ALTER TABLE `servicios`
  MODIFY `id_servicio` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_usuarios` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `vision`
--
ALTER TABLE `vision`
  MODIFY `id_vision` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `imagenes_carrusel`
--
ALTER TABLE `imagenes_carrusel`
  ADD CONSTRAINT `imagenes_carrusel_ibfk_1` FOREIGN KEY (`id_carrusel`) REFERENCES `carrusel` (`id_carrusel`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `img_noticias`
--
ALTER TABLE `img_noticias`
  ADD CONSTRAINT `img_noticias_ibfk_1` FOREIGN KEY (`id_noticias`) REFERENCES `noticias` (`id_noticias`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
