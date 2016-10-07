-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 06, 2016 at 02:22 PM
-- Server version: 10.1.10-MariaDB
-- PHP Version: 5.6.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `proyectarte_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `area_master`
--

CREATE TABLE `area_master` (
  `AREA_ID` int(10) NOT NULL,
  `AREA_NAME_EN` varchar(300) DEFAULT NULL,
  `AREA_NAME_SP` varchar(300) DEFAULT NULL,
  `URL_REWRITE_EN` varchar(300) DEFAULT NULL,
  `URL_REWRITE_SP` varchar(300) DEFAULT NULL,
  `INACTIVE` tinyint(1) DEFAULT NULL,
  `CREATED_BY` varchar(100) DEFAULT NULL,
  `CREATED_DATE` timestamp NULL DEFAULT NULL,
  `UPDATED_BY` varchar(100) DEFAULT NULL,
  `UPDATED_DATE` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

--
-- Dumping data for table `area_master`
--

INSERT INTO `area_master` (`AREA_ID`, `AREA_NAME_EN`, `AREA_NAME_SP`, `URL_REWRITE_EN`, `URL_REWRITE_SP`, `INACTIVE`, `CREATED_BY`, `CREATED_DATE`, `UPDATED_BY`, `UPDATED_DATE`) VALUES
(1, 'Test date', 'Test Date', '1-test-date', '1-test-date', 1, NULL, '2016-10-06 03:38:33', NULL, NULL),
(2, 'test', 'test', '2-test', '2-test', 1, NULL, '2016-10-06 03:38:39', NULL, NULL),
(3, '123', '123', '3-123', '3-123', 1, NULL, '2016-10-06 03:38:47', NULL, NULL),
(4, '456', '456', '4-456', '4-456', 1, NULL, '2016-10-06 03:38:53', NULL, NULL),
(5, '456', '456', '5-456', '5-456', 1, NULL, '2016-10-06 03:38:53', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `banner`
--

CREATE TABLE `banner` (
  `BANNER_ID` int(10) NOT NULL,
  `BANNER_NAME` varchar(300) DEFAULT NULL,
  `BANNER_IMAGE` varchar(300) DEFAULT NULL,
  `BANNER_DESC_EN` varchar(500) DEFAULT NULL,
  `BANNER_DESC_SP` varchar(500) DEFAULT NULL,
  `INACTIVE` tinyint(1) DEFAULT NULL,
  `CREATED_BY` varchar(100) DEFAULT NULL,
  `CREATED_DATE` datetime DEFAULT NULL,
  `UPDATED_BY` varchar(100) DEFAULT NULL,
  `UPDATED_DATE` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

--
-- Dumping data for table `banner`
--

INSERT INTO `banner` (`BANNER_ID`, `BANNER_NAME`, `BANNER_IMAGE`, `BANNER_DESC_EN`, `BANNER_DESC_SP`, `INACTIVE`, `CREATED_BY`, `CREATED_DATE`, `UPDATED_BY`, `UPDATED_DATE`) VALUES
(43, 'Banner 123', '1475501958.jpg', '', '', 1, NULL, '2016-10-03 15:37:27', NULL, NULL),
(44, 'Banner 2', '1475557728.jpg', '', '', 1, NULL, '2016-10-04 07:08:48', NULL, NULL),
(45, 'Banner 1', '1475577792.jpg', '', '', 1, NULL, '2016-10-04 12:43:12', NULL, NULL),
(46, 'mario', '1475577874.jpg', '', '', 1, NULL, '2016-10-04 12:43:39', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `category_master`
--

CREATE TABLE `category_master` (
  `CATEGORY_ID` int(10) NOT NULL,
  `CATEGORY_NAME_EN` varchar(300) DEFAULT NULL,
  `CATEGORY_NAME_SP` varchar(300) DEFAULT NULL,
  `URL_REWRITE_EN` varchar(300) DEFAULT NULL,
  `URL_REWRITE_SP` varchar(300) DEFAULT NULL,
  `INACTIVE` tinyint(1) DEFAULT NULL,
  `CREATED_BY` varchar(100) DEFAULT NULL,
  `CREATED_DATE` datetime DEFAULT NULL,
  `UPDATED_BY` varchar(100) DEFAULT NULL,
  `UPDATED_DATE` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

--
-- Dumping data for table `category_master`
--

INSERT INTO `category_master` (`CATEGORY_ID`, `CATEGORY_NAME_EN`, `CATEGORY_NAME_SP`, `URL_REWRITE_EN`, `URL_REWRITE_SP`, `INACTIVE`, `CREATED_BY`, `CREATED_DATE`, `UPDATED_BY`, `UPDATED_DATE`) VALUES
(21, 'Design', 'Diseño', '21-design', '21-diseno', 1, NULL, '2016-10-05 10:41:48', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms`
--

CREATE TABLE `cms` (
  `CMS_ID` int(10) NOT NULL,
  `CMS_TYPE` enum('NEWS','ACCOUNCEMENT') DEFAULT NULL,
  `CMS_TITLE_EN` varchar(300) DEFAULT NULL,
  `CMS_TITLE_SP` varchar(300) DEFAULT NULL,
  `CMS_DESC_EN` mediumtext,
  `CMS_DESC_SP` mediumtext,
  `CMS_IMAGE` varchar(100) DEFAULT NULL,
  `INACTIVE` tinyint(1) DEFAULT NULL,
  `CREATED_BY` varchar(100) DEFAULT NULL,
  `CREATED_DATE` datetime DEFAULT NULL,
  `UPDATED_BY` varchar(100) DEFAULT NULL,
  `UPDATED_DATE` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

--
-- Dumping data for table `cms`
--

INSERT INTO `cms` (`CMS_ID`, `CMS_TYPE`, `CMS_TITLE_EN`, `CMS_TITLE_SP`, `CMS_DESC_EN`, `CMS_DESC_SP`, `CMS_IMAGE`, `INACTIVE`, `CREATED_BY`, `CREATED_DATE`, `UPDATED_BY`, `UPDATED_DATE`) VALUES
(19, 'NEWS', 'Lastest News', 'Lastest News123', 'english', 'spainsh', '1474280864.jpg', 0, NULL, NULL, NULL, NULL),
(20, 'ACCOUNCEMENT', 'Accouncement test', 'Accouncement123', 'english', 'spaish', '1474283169.png', 1, NULL, NULL, NULL, NULL),
(21, 'ACCOUNCEMENT', 'gfhg', 'ghfg', 'Validates that a value is a valid number according to the given step, min and original value.', '', '1474436776.png', 1, NULL, NULL, NULL, NULL),
(22, 'ACCOUNCEMENT', 'fdhgdfdfh', 'dfhdfhfhdf', 'Validates that a value matches a specific regular expression (regex).Note that patterns are anchored', '', '1474436890.png', 1, NULL, NULL, NULL, NULL),
(24, 'NEWS', 'fdgdfg', 'dfgfdgf', 'dgdfgdfg', 'dfgdfg', '1475469766.png', 1, NULL, '2016-10-03 06:42:46', NULL, NULL),
(25, 'NEWS', 'dfgdfgdfgdfgdfgdgddgdgdfgdfgdgdgd', 'dfgdfgdfgd79879879798798798', 'fdgdgdgdfdgd', 'dfgdfgdgdf', '1475469908.jpg', 1, NULL, '2016-10-03 06:45:08', NULL, NULL),
(27, 'NEWS', 'NEWS 1112', 'Noticias 1112', 'This is test', 'Esta es la prueba', '1475494051.png', 1, NULL, '2016-10-03 13:24:56', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `country_master`
--

CREATE TABLE `country_master` (
  `COUNTRY_ID` int(10) NOT NULL,
  `COUNTRY_NAME_EN` varchar(300) DEFAULT NULL,
  `COUNTRY_NAME_SP` varchar(300) DEFAULT NULL,
  `INACTIVE` tinyint(1) DEFAULT NULL,
  `CREATED_BY` varchar(100) DEFAULT NULL,
  `CREATED_DATE` datetime DEFAULT NULL,
  `UPDATED_BY` varchar(100) DEFAULT NULL,
  `UPDATED_DATE` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

-- --------------------------------------------------------

--
-- Table structure for table `course_area_category_mapping`
--

CREATE TABLE `course_area_category_mapping` (
  `COURSE_ID` int(10) DEFAULT NULL,
  `AREA_CAT_SOFTWARE_ID` int(10) DEFAULT NULL,
  `TYPE` enum('AREA','CATEGORY','SOFTWARE') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

--
-- Dumping data for table `course_area_category_mapping`
--

INSERT INTO `course_area_category_mapping` (`COURSE_ID`, `AREA_CAT_SOFTWARE_ID`, `TYPE`) VALUES
(128, 21, 'CATEGORY'),
(128, 8, 'SOFTWARE'),
(128, 3, 'AREA'),
(129, 21, 'CATEGORY'),
(129, 8, 'SOFTWARE'),
(129, 3, 'AREA'),
(130, 21, 'CATEGORY'),
(130, 8, 'SOFTWARE'),
(130, 3, 'AREA'),
(131, 21, 'CATEGORY'),
(131, 8, 'SOFTWARE'),
(131, 1, 'AREA'),
(131, 2, 'AREA'),
(131, 3, 'AREA'),
(131, 4, 'AREA'),
(131, 5, 'AREA'),
(132, 21, 'CATEGORY'),
(132, 8, 'SOFTWARE'),
(132, 1, 'AREA'),
(132, 3, 'AREA'),
(132, 5, 'AREA'),
(133, 21, 'CATEGORY'),
(133, 8, 'SOFTWARE'),
(133, 2, 'AREA'),
(133, 3, 'AREA'),
(133, 4, 'AREA'),
(134, 21, 'CATEGORY'),
(134, 8, 'SOFTWARE'),
(134, 1, 'AREA'),
(134, 3, 'AREA'),
(134, 5, 'AREA'),
(135, 21, 'CATEGORY'),
(135, 8, 'SOFTWARE'),
(135, 1, 'AREA'),
(135, 2, 'AREA'),
(135, 3, 'AREA'),
(135, 4, 'AREA'),
(135, 5, 'AREA');

-- --------------------------------------------------------

--
-- Table structure for table `course_information`
--

CREATE TABLE `course_information` (
  `ID` int(10) NOT NULL,
  `COURSE_ID` int(10) DEFAULT NULL,
  `COURSE_INFO_CONT_TYPE` enum('TEXT','FILEUPLOAD','MEDIA','SOUND') DEFAULT NULL,
  `COURSE_INFO_CONT_VALUE` mediumtext,
  `COURSE_INFO_CONT_ORDER` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

--
-- Dumping data for table `course_information`
--

INSERT INTO `course_information` (`ID`, `COURSE_ID`, `COURSE_INFO_CONT_TYPE`, `COURSE_INFO_CONT_VALUE`, `COURSE_INFO_CONT_ORDER`) VALUES
(486, 128, 'TEXT', '<h2 class="course-subtitle">Aprende t&eacute;cnicas infalibles de ilustraci&oacute;n digital para crear retratos con personalidad</h2>\r\n<p>El ilustrador &Oacute;scar Gim&eacute;nez te ense&ntilde;ar&aacute; a crear retratos &uacute;nicos y personalizados a partir de fotograf&iacute;as y m&uacute;ltiples referencias. Lo har&aacute;s a trav&eacute;s de t&eacute;cnicas y herramientas de ilustraci&oacute;n digital desarrolladas por el propio Gim&eacute;nez a lo largo de su carrera y que podr&aacute;s aplicar a cualquier otro tipo de proyecto.</p>\r\n<p>Empieza a pensar en tu personaje famoso favorito porque aprender&aacute;s a retratarlo como nunca antes lo hab&iacute;as imaginado.</p>\r\n<p>Este curso es el complemento perfecto de <a href="http://www.domestika.org/es/courses/26-ilustracion-para-music-lovers">&ldquo;Ilustraci&oacute;n para music lovers&rdquo;</a>, la anterior entrega del ilustrador para Domestika, en el que se explica c&oacute;mo ilustrar un cartel de alto impacto para un concierto.</p>', 1),
(487, 128, 'FILEUPLOAD', 'YKxLaoEBz6R3D0MmTypsurdqcA1ZItVW1448-big.jpg', 2),
(488, 128, 'TEXT', '<h3 class="h4 text-uppercase">What includes this course ?</h3>\r\n<p>Comenzar&aacute;s conociendo el trabajo y las influencias de &Oacute;scar Gim&eacute;nez &ndash;un ilustrador que se considera permanentemente insatisfecho aunque, tras 13 a&ntilde;os de profesi&oacute;n, ya no cree en el perfeccionismo sino en la dedicaci&oacute;n&ndash;.</p>\r\n<p>A continuaci&oacute;n aprender&aacute;s conceptos b&aacute;sicos sobre composici&oacute;n, pinceles, trazos, sombreado, color y retoque. Todos estos recursos los practicar&aacute;s primero sobre tu propio autoretrato para que vayas cogiendo soltura con las herramientas y despu&eacute;s, una vez que hayas decidido qui&eacute;n es tu personaje famoso favorito al que quieres ilustrar de forma &uacute;nica, comenzar&aacute;s la fase de documentaci&oacute;n, b&uacute;squeda de im&aacute;genes de referencia y composici&oacute;n del retrato principal.</p>\r\n<p>Cuando tengas a tu personaje totalmente definido con sombras y color, ser&aacute; el momento de a&ntilde;adirle nuevos elementos para enriquecer tu ilustraci&oacute;n, un fondo que le de mayor personalidad a la obra y los &uacute;ltimos retoques.</p>', 3),
(489, 128, 'FILEUPLOAD', 'JaID1ZUCh0wibBes6gHYcuxpTyNGPFA81448-big.jpg', 4),
(490, 129, 'TEXT', '<h2 class="course-subtitle">Crea una revista digital, un portfolio o un cat&aacute;logo para iPad y iPhone</h2>\r\n<p>En este curso, Sergio Ortiz &ndash;Dise&ntilde;ador gr&aacute;fico, Creador y Director de la revista Muster Magazine&ndash; te ense&ntilde;ar&aacute; las herramientas necesarias para poder crear una revista digital interactiva, un book profesional o un cat&aacute;logo de productos.</p>\r\n<p>Aprender&aacute;s a a&ntilde;adir v&iacute;deos, m&uacute;sica, links, botones, sonidos, pase de im&aacute;genes, deslizamiento de texto y p&aacute;ginas, una variedad de efectos que har&aacute;n que leer se convierta en una nueva experiencia totalmente distinta a la tradicional y todo ello, de manera sencilla e intuitiva y, sobre todo, sin tener que programar ni generar nada de c&oacute;digo.</p>', 1),
(491, 129, 'FILEUPLOAD', 'NpB09aXyCGRInhc36UYLAbl7VP2zDWHu1230-big.jpg', 2),
(492, 129, 'TEXT', '<h3 class="h4 text-uppercase">What includes this course ?</h3>\r\n<p>Comenzar&aacute;s conociendo mejor el trabajo y las influencias de Sergio Ortiz, adem&aacute;s de c&oacute;mo es y c&oacute;mo nace Muster Magazine.</p>\r\n<p>A continuaci&oacute;n dejar&aacute;s de lado los est&aacute;ndares marcados del dise&ntilde;o editorial en papel conociendo las caracter&iacute;sticas de la navegaci&oacute;n digital, aspectos clave de UI y UX y el uso de las tipograf&iacute;as para dispositivos.</p>\r\n<p>Seguidamente entrar&aacute;s en contacto con las herramientas a utilizar, InDesign y el plugin gratuito B&uuml;tton, aprendiendo a instalarlo en el ordenador, iPad y iPhone y descubriendo flujo de trabajo a la hora de organizar todos los archivos e im&aacute;genes con el objetivo de tenerlo todo listo para exportar tu proyecto.</p>\r\n<p>Una vez que conozcas las herramientas, ser&aacute; el momento de ponerte manos a la obra. Sabr&aacute;s c&oacute;mo personalizar el espacio de trabajo y aprender&aacute;s a a&ntilde;adir p&aacute;ginas, efectos de animaci&oacute;n, acciones especiales o de toque, pase de im&aacute;genes, sonido y extras como links y mapas.</p>\r\n<p>Por &uacute;ltimo, conocer&aacute;s c&oacute;mo exportar tu proyecto y las diferencias entre Single App o quiosco.</p>', 3),
(493, 130, 'MEDIA', 'https://enjoy4fire.wistia.com/medias/6kdlo3c61o', 1),
(494, 130, 'TEXT', '<h2 class="course-subtitle">Aprende los procesos y las t&eacute;cnicas b&aacute;sicas para ilustrar combinando nuevas tecnolog&iacute;as con procesos an&aacute;logos</h2>\r\n<p>C&eacute;sar Evangelista mejor conocido como Mr. Kone <em>&ndash;Ilustrador, dise&ntilde;ador y director de arte&ndash;</em> partiendo de elementos cotidianos te ense&ntilde;ar&aacute; a llevar la ilustraci&oacute;n a un nuevo nivel t&eacute;cnico y conceptual. A partir de diferentes ideas, conceptos y t&eacute;cnicas emprender&aacute;s un camino de experimentaci&oacute;n con m&eacute;todos alternativos que te ayudar&aacute;n a combinar procesos an&aacute;logos y digitales en la ilustraci&oacute;n.</p>', 2),
(495, 130, 'FILEUPLOAD', 'BIcukiPwSHVLqJ62jZOaMR5N40yQ9TDE1296-big.jpg', 3),
(496, 130, 'TEXT', '<h3 class="h4 text-uppercase">What includes this course ?</h3>\r\n<p>Comenzar&aacute;s conociendo el trabajo y la trayectoria profesional de Mr. Kone y su visi&oacute;n sobre la Ilustraci&oacute;n contempor&aacute;nea. A continuaci&oacute;n, partir&aacute;s de elementos que rodean tu vida diaria para desarrollar diferentes ideas que te permitan experimentar al momento de ilustrar a trav&eacute;s de formas b&aacute;sicas como: c&iacute;rculos, cuadrados, rect&aacute;ngulos y trapecios para despu&eacute;s pasar a las formas tridimensionales con las que crear&aacute;s diferentes figuras.</p>\r\n<p>Trabajar&aacute;s tambi&eacute;n con forma y volumen, crear&aacute;s texturas a nivel an&aacute;logo para despu&eacute;s a&ntilde;adir aspectos m&aacute;s complejos a tus ilustraciones, combinando as&iacute; t&eacute;cnicas manuales con programas espec&iacute;ficos como lo son Photoshop e Illustrator.</p>\r\n<p>Por &uacute;ltimo realizar&aacute;s una ilustraci&oacute;n vectorial en Adobe Illustrator llena de realismo y calidad, aplicando todos los conocimientos y t&eacute;cnicas aprendidos durante el curso.</p>', 4),
(497, 130, 'FILEUPLOAD', 'sxm8TRMrXDzfFyQhlJK5IYuaCndGiWk31201-big.jpg', 5),
(498, 131, 'TEXT', '<h2 class="course-subtitle">Aprende t&eacute;cnicas profesionales de composici&oacute;n, retoque e iluminaci&oacute;n fotogr&aacute;fica</h2>\r\n<p>Carles Marsal, dise&ntilde;ador gr&aacute;fico especializado en Matte Painting, te mostrar&aacute; las t&eacute;cnicas y trucos profesionales que utiliza para integrar correctamente los distintos elementos de un fotomontaje, alcanzando el m&aacute;ximo nivel de realismo posible.</p>\r\n<p>Tras definir una composici&oacute;n adecuada, aprender&aacute;s a retocar e integrar todos los elementos mediante un sinf&iacute;n de trucos con los que conseguir&aacute;s que tus proyectos luzcan como jam&aacute;s hubieras imaginado. &iexcl;Un aut&eacute;ntico arsenal de secretos del fotomontaje a tu disposici&oacute;n!</p>\r\n<p>En este curso profundizar&aacute;s en el mundo del retoque fotogr&aacute;fico y para realizarlo necesitar&aacute;s saber trabajar con capas, m&aacute;scaras y pinceles con Photoshop. Como introducci&oacute;n a esta t&eacute;cnica desde cero, te recomendamos el curso "<a href="http://www.domestika.org/es/courses/85-matte-painting-creando-mundos-fotorrealistas">Matte Painting: creando mundos fotorrealista</a>s" de Carlos Marsal en el que aprender&aacute;s a crear mundos imaginarios con un resultado fotorrealista y que solo est&aacute; disponible en Domestika.</p>', 1),
(499, 131, 'FILEUPLOAD', 'nIlxpe8sFR7rNLM9jU5Zo4DEm6HChSag1313-big.jpg', 2),
(500, 131, 'TEXT', '<h3 class="h4 text-uppercase">What includes this course ?</h3>\r\n<p>Comenzar&aacute;s conociendo un poco mejor los trabajos de fotomontaje de Carlos Marsal y las influencias que le inspiran.</p>\r\n<p>A continuaci&oacute;n, a partir de un idea inicial,Carles te explicar&aacute; c&oacute;mo componer la imagen y aprender&aacute;s a recopilar los materiales gr&aacute;ficos de base necesarios.</p>\r\n<p>Una vez que tengas los elementos b&aacute;sicos, descubrir&aacute;s c&oacute;mo &ldquo;quitar lo que sobra y a&ntilde;adir lo que falta&rdquo; mediante trucos profesionales de selecci&oacute;n y puntos de fuga.</p>\r\n<p>Despu&eacute;s ser&aacute; el turno de dar vida a la imagen aplicando t&eacute;cnicas de retoque, correcciones y color. Para darle m&aacute;s realismo a la escena, Carles te mostrar&aacute; los trucos de iluminaci&oacute;n natural y artificial que utiliza hasta alcanzar un resultado espectacular.</p>\r\n<p><strong>&iquest;CU&Aacute;L ES EL PROYECTO DEL CURSO?</strong></p>\r\n<p>Podr&aacute;s desarrollar tu propio proyecto de fotomontaje o mejorar uno ya realizado. La idea es que gracias al curso puedas implementar nuevas t&eacute;cnicas y que se vea reflejado en tus proyectos.</p>', 3),
(501, 131, 'FILEUPLOAD', 'qTPUwXh1RvHW23NdIfzipeS8aAEGmbVD1315-big.jpg', 4),
(502, 132, 'FILEUPLOAD', 'wm9calDRfYIMHNLOdJhus2nbtyTgeiVU1041-big.jpg', 1),
(503, 132, 'TEXT', '<h2 class="course-subtitle">Aprende los fundamentos del Desarrollo Web Frontend</h2>\r\n<div class="course-description">\r\n<p>&iexcl;Lleva tu dise&ntilde;o al navegador! En este curso, Javier Usobiaga te ense&ntilde;ar&aacute; a crear p&aacute;ginas web con las herramientas m&aacute;s fundamentales: HTML y CSS. Aprender&aacute;s a escribir tu propio c&oacute;digo y cambiar&aacute;s tu forma de ver (y de dise&ntilde;ar) la web, entendiendo c&oacute;mo funciona por dentro y c&oacute;mo dise&ntilde;ar una web responsive para que sea m&aacute;s efectiva. Y si el dise&ntilde;o no es lo tuyo, este curso puede suponer una buena base para comenzar en el mundo del Desarrollo Web Front-end.</p>\r\n<p>&nbsp;</p>\r\n<h3 class="h4 text-uppercase">What includes this course ?</h3>\r\n<p>Este curso parte desde un conocimiento cero de HTML y CSS. Incluye las etiquetas fundamentales de HTML y propiedades de CSS tipogr&aacute;ficas, herramientas de layout como Floats o Position, fondos, bordes, esquinas redondeadas, sombras, Web Fonts y herramientas fundamentales de Desarrollo Responsive como las Media Queries.</p>\r\n</div>', 2),
(504, 132, 'FILEUPLOAD', 'JYpeqTPSdg2GQk7vEOC1cFbfxKRrnMts1042-big.jpg', 3),
(505, 132, 'TEXT', '<p><strong>&iquest;C&Oacute;MO FUNCIONAN LOS CURSOS EN DOMESTIKA? </strong></p>\r\n<p>Todos los cursos de Domestika se imparten online y tienen como objetivo completar un proyecto final que luego podr&aacute;s publicar para recibir feedback de la comunidad creativa de Domestika.</p>\r\n<p>Mediante lecciones en v&iacute;deo que podr&aacute;s ver siempre que quieras, tu profesor te explica paso a paso sus trucos y t&eacute;cnicas, para que adquieras las habilidades necesarias para realizar el proyecto.</p>\r\n<p>Una vez que se abre el curso, puedes empezarlo d&oacute;nde y cu&aacute;ndo quieras. No hay plazos de entrega, ni fecha de finalizaci&oacute;n.</p>\r\n<p>La idea es que aprendas al ritmo que te propongas y que comiences una relaci&oacute;n duradera con la comunidad de tu curso.</p>\r\n<p>Recuerda... &iexcl;&Eacute;ste es el principio de una gran amistad!</p>', 4),
(506, 133, 'TEXT', '<h2 class="course-subtitle">Elabora un pattern para un packaging</h2>\r\n<div class="course-description">\r\n<p>En este curso, M&oacute;nica Mu&ntilde;oz, &ldquo;Moniquilla&rdquo;, te ense&ntilde;ara c&oacute;mo, dibujando primero a mano con acuarelas, rotuladores o ceras, podemos crear despu&eacute;s un estampado para aplicarlo a un packaging o a cualquier soporte.</p>\r\n</div>\r\n<h3 class="h4 text-uppercase">What includes this course ?</h3>\r\n<p>Este curso contiene cuatro unidades did&aacute;cticas en la que M&oacute;nica te mostrar&aacute; qu&eacute; es lo que hace y cu&aacute;l es su m&eacute;todo de trabajo. Te ense&ntilde;ar&aacute; d&oacute;nde busca la inspiraci&oacute;n para hacer sus maravillosos estampados. Tambi&eacute;n te ofrecer&aacute; unas nociones b&aacute;sicas de diferentes t&eacute;cnicas para dibujar tu pattern, seguro que sales sorprendido de la cantidad de cosas que se pueden hacer con materiales que tienes por casa y finalmente una gu&iacute;a sencilla de como crear un rapport en Photoshop para aplicarlo sobre cualquier superficie o soporte. En nuestro caso lo aplicaremos a un packaging.</p>', 1),
(507, 133, 'TEXT', '<h3 class="h4 text-uppercase">Requirements</h3>\r\n<div class="requirements">\r\n<p>Para este curso, necesitar&aacute;s un nivel medio de Photoshop, ordenador, esc&aacute;ner y material de dibujo o pintura, como acuarelas, ceras o rotuladores y tambi&eacute;n el papel adecuado para cada cosa.</p>\r\n<p><strong>&iquest;C&Oacute;MO FUNCIONAN LOS CURSOS EN DOMESTIKA?</strong> <br /> <br />Todos los cursos de Domestika <strong>se imparten online</strong> y tienen como objetivo completar un <strong>proyecto final</strong> que luego podr&aacute;s publicar para recibir feedback de la comunidad creativa de Domestika.</p>\r\n<p>Mediante <strong>lecciones en v&iacute;deo que podr&aacute;s ver siempre que quieras</strong>, tu profesor te explica paso a paso sus trucos y t&eacute;cnicas, para que adquieras las habilidades necesarias para realizar el proyecto.</p>\r\n<p>Una vez que se abre el curso, puedes empezarlo d&oacute;nde y cu&aacute;ndo quieras. <strong>No hay plazos de entrega, ni fecha de finalizaci&oacute;n</strong>. <br /> La idea es que aprendas al ritmo que te propongas y que comiences una relaci&oacute;n duradera con la comunidad de tu curso. <br />Recuerda... &iexcl;&Eacute;ste es el principio de una gran amistad!</p>\r\n</div>', 2),
(508, 134, 'MEDIA', 'https://enjoy4fire.wistia.com/medias/5o34smb76g', 1),
(509, 134, 'TEXT', '<h2 class="course-subtitle">Aprende la metodolog&iacute;a profesional para crear nombres de marca distintivos y memorables</h2>\r\n<p>Ignasi Fontvila &ndash;especialista en identidad verbal de marca para clientes como Seat, Repsol o Danone&ndash; te ense&ntilde;ar&aacute; una metodolog&iacute;a de naming eficaz.</p>\r\n<p>Aprender&aacute;s a plantear un proyecto de creaci&oacute;n de nombres desde el punto de vista profesional y descubrir&aacute;s c&oacute;mo evitar los problemas m&aacute;s frecuentes para conseguir nombres distintivos y memorables capaces de transmitir conceptos potentes y flexibles.</p>\r\n<p>Conocer&aacute;s tambi&eacute;n la importancia de la validaci&oacute;n final de los nombres asegurando, as&iacute;, su registro y viabilidad cultural.</p>', 2),
(510, 134, 'FILEUPLOAD', 'MBaItos6NvRynjOLF0dWkAcEiQl7Yg3z1711-big.jpg', 3),
(511, 134, 'TEXT', '<h3 class="h4 text-uppercase">What includes this course ?</h3>\r\n<p>Comenzar&aacute;s conociendo la trayectoria y las influencias de Ignasi Fontvila.</p>\r\n<p>A continuaci&oacute;n, Ignasi te ense&ntilde;ar&aacute; a analizar los diferentes elementos de identidad de la marca y su importancia.</p>\r\n<p>Seguidamente har&aacute;s un recorrido por los problemas en los procesos de naming y las posibles consecuencias de una mala elecci&oacute;n en el nombre de marca.</p>\r\n<p>Ya situados en contexto, ver&aacute;s con detalle la metodolog&iacute;a de un proceso de naming: comenzando por la recogida de la informaci&oacute;n necesaria y siguiendo por la elaboraci&oacute;n del concept board y la estrategia creativa.</p>\r\n<p>Analizar&aacute;s tambi&eacute;n distintos atributos sem&aacute;nticos, fon&eacute;ticos y morfol&oacute;gicos que nos ser&aacute;n de utilidad en el momento de desarrollar la fase estrat&eacute;gica.</p>\r\n<p>Seguidamente pasar&aacute;s a la fase de creaci&oacute;n, repasando los procesos y las t&eacute;cnicas para generar nuevos nombres o descubrir nombres existentes, para desembocar en la fase de selecci&oacute;n, examinando los criterios que se deben tener en cuenta para efectuar dicha elecci&oacute;n y posterior presentaci&oacute;n de los nombres candidatos.</p>\r\n<p>Por &uacute;ltimo, acabar&aacute;s el curso con un repaso de los controles ling&uuml;&iacute;sticos y jur&iacute;dicos que constituyen la validaci&oacute;n final de todo el proyecto.</p>', 4),
(512, 134, 'FILEUPLOAD', 'pBtjEJHRzWObV7rFePlCsvoiU49n5NDI1712-big.jpg', 5),
(513, 134, 'FILEUPLOAD', '9s5aEklX0DbPT823MWioxydgN47zruqK1710-big.jpg', 6),
(514, 134, 'TEXT', '<p><strong>&iquest;CU&Aacute;L ES EL PROYECTO DEL CURSO?</strong></p>\r\n<p>El proyecto del curso consiste en la creaci&oacute;n de un nombre para un servicio de transporte de pasajeros en trenes de alta velocidad. La metodolog&iacute;a explicada durante el curso es de f&aacute;cil aplicaci&oacute;n y seguimiento para poder desarrollar de forma sencilla y r&aacute;pida el proyecto en su totalidad.</p>\r\n<h3 class="h4 text-uppercase">Who is addressed this course to?</h3>\r\n<div class="aimed-to">\r\n<p>A estudiantes y profesionales de la Comunicaci&oacute;n, el Dise&ntilde;o gr&aacute;fico, la Creatividad, el Marketing, el Branding y la Direcci&oacute;n de empresas en todos sus &aacute;mbitos.</p>\r\n</div>\r\n<h3 class="h4 text-uppercase">Requirements</h3>\r\n<p>No se necesitan materiales ni conocimientos especiales para poder seguir con total normalidad el curso. Solo una cierta sensibilidad hacia las palabras.</p>', 7),
(515, 135, 'TEXT', '<h2 class="course-subtitle">Anima un personaje en 2D y crea un avatar animado en formato GIF frame a frame</h2>\r\n<p>En este curso de Domestika, el equipo de Llamarada Estudio &ndash;especializado en Animaci&oacute;n 2D y Motion Graphics&ndash; te ense&ntilde;ar&aacute; a dar vida a tus ilustraciones, fotograf&iacute;as y stills gracias a Adobe Photoshop.</p>\r\n<p>Descubrir&aacute;s distintas t&eacute;cnicas de animaci&oacute;n, composici&oacute;n y recursos visuales que podr&aacute;s aplicar en GIFs animados.</p>\r\n<p>Al final del curso, conocer&aacute;s en profundidad las posibilidades que tiene la cel animation (o cuadro a cuadro), sus ventajas, su alcance y su complejidad y podr&aacute;s aplicar estos conocimientos a otros muchos proyectos.</p>', 1),
(516, 135, 'FILEUPLOAD', 'dVeaBQ3Xzr1LSE6iuZUtgnI7NPKbRcfA1428-big.png', 2),
(517, 135, 'TEXT', '<h2 class="course-subtitle">Aprende a dise&ntilde;ar y animar tus propias letras</h2>\r\n<div class="course-description">\r\n<p>MEMOMA, un estudio especializado en animaci&oacute;n digital, te ense&ntilde;ar&aacute;n tres procesos diferentes para dise&ntilde;ar y animar tus propias creaciones de lettering logrando que mediante el concepto y la t&eacute;cnica se refuerce el mensaje a comunicar.</p>\r\n</div>\r\n<h3 class="h4 text-uppercase">What includes this course ?</h3>\r\n<p>Comenzar&aacute;s conociendo mejor el trabajo y las influencias de MEMOMA Estudio.</p>\r\n<p>A continuaci&oacute;n conocer&aacute;s las diferencias y similitudes entre lettering, caligraf&iacute;a y tipograf&iacute;a adem&aacute;s de algunos trucos para realizar un buen trabajo de lettering.</p>\r\n<p>Despu&eacute;s, MEMOMA te mostrar&aacute; c&oacute;mo hacer los primeros bocetos mediante tres procesos diferentes. En el primero, aprender&aacute;s a aplicar algunos conceptos b&aacute;sicos como la estructura b&aacute;sica de las letras, la composici&oacute;n, la intenci&oacute;n o el estilo gr&aacute;fico. En el segundo, profundizar&aacute;s en el uso de formas geom&eacute;tricas, los m&oacute;dulos y el color, mientras que el tercero estar&aacute; enfocado a crear un lettering en base a distintas fuentes tipogr&aacute;ficas.</p>\r\n<p>Finalmente descubrir&aacute;s tres caminos para de animar un lettering paso a paso: cel animation o animaci&oacute;n tradicional cuadro por cuadro, con After Effects y en 3D con la ayuda de Cinema 4D.</p>', 3),
(518, 135, 'TEXT', '<p><strong>&iquest;C&Oacute;MO FUNCIONAN LOS CURSOS EN DOMESTIKA?</strong></p>\r\n<p>Todos los cursos de Domestika se imparten online y tienen como objetivo completar un proyecto final que luego podr&aacute;s publicar para recibir feedback de la comunidad creativa de Domestika.</p>\r\n<p>Mediante lecciones en v&iacute;deo que podr&aacute;s ver siempre que quieras, tu profesor te explica paso a paso sus trucos y t&eacute;cnicas, para que adquieras las habilidades necesarias para realizar el proyecto.</p>\r\n<p>Una vez que se abre el curso, puedes empezarlo d&oacute;nde y cu&aacute;ndo quieras. No hay plazos de entrega, ni fecha de finalizaci&oacute;n.</p>\r\n<p>La idea es que aprendas al ritmo que te propongas y que comiences una relaci&oacute;n duradera con la comunidad de tu curso.</p>\r\n<p>Recuerda... &iexcl;&Eacute;ste es el principio de una gran amistad!</p>', 4);

-- --------------------------------------------------------

--
-- Table structure for table `course_master`
--

CREATE TABLE `course_master` (
  `COURSE_ID` int(10) NOT NULL,
  `COURSE_NAME` varchar(500) DEFAULT NULL,
  `COURSE_TOT_VIDEO` varchar(100) DEFAULT NULL,
  `USER_TOT_ENROLL` int(10) DEFAULT NULL,
  `USER_TOT_COMMENT` int(10) DEFAULT NULL,
  `INACTIVE` tinyint(1) DEFAULT NULL,
  `CREATED_BY` varchar(100) DEFAULT NULL,
  `CREATED_DATE` datetime DEFAULT NULL,
  `UPDATED_BY` varchar(100) DEFAULT NULL,
  `UPDATED_DATE` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

--
-- Dumping data for table `course_master`
--

INSERT INTO `course_master` (`COURSE_ID`, `COURSE_NAME`, `COURSE_TOT_VIDEO`, `USER_TOT_ENROLL`, `USER_TOT_COMMENT`, `INACTIVE`, `CREATED_BY`, `CREATED_DATE`, `UPDATED_BY`, `UPDATED_DATE`) VALUES
(128, 'Retrato ilustrado con Photoshop', '0', NULL, NULL, 1, 'ADMIN', '2016-10-06 12:42:42', NULL, '2016-10-06 10:42:42'),
(129, 'Diseño de una publicación interactiva con InDesign y Bütton', '0', NULL, NULL, 1, 'ADMIN', '2016-10-06 12:44:28', NULL, '2016-10-06 10:44:28'),
(130, 'Ilustración para no ilustradores', '0', NULL, NULL, 1, 'ADMIN', '2016-10-06 12:47:31', NULL, '2016-10-06 10:47:31'),
(131, 'Secretos del fotomontaje y el retoque creativo', '0', NULL, NULL, 1, 'ADMIN', '2016-10-06 12:51:27', NULL, '2016-10-06 10:51:27'),
(132, 'Motivos para repetir ', '0', NULL, NULL, 1, 'ADMIN', '2016-10-06 12:56:18', NULL, '2016-10-06 10:56:18'),
(133, 'A course by Mónica Muñoz Hernández Diseñadora de estampados ', '0', NULL, NULL, 1, 'ADMIN', '2016-10-06 12:57:58', NULL, '2016-10-06 10:57:58'),
(134, 'Estrategia y creatividad para diseñar nombres de marca', '0', NULL, NULL, 1, 'ADMIN', '2016-10-06 13:00:50', NULL, '2016-10-06 11:00:50'),
(135, 'Lettering Animado', '0', NULL, NULL, 1, 'ADMIN', '2016-10-06 13:40:22', NULL, '2016-10-06 11:40:22');

-- --------------------------------------------------------

--
-- Table structure for table `course_review`
--

CREATE TABLE `course_review` (
  `ID` int(10) NOT NULL,
  `USER_ID` int(10) DEFAULT NULL,
  `COURSE_ID` int(10) DEFAULT NULL,
  `COMMENT` mediumtext,
  `ISPOSITIVE` tinyint(1) DEFAULT NULL,
  `CREATED_DATE` datetime DEFAULT NULL,
  `INACTIVE` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

-- --------------------------------------------------------

--
-- Table structure for table `course_unit`
--

CREATE TABLE `course_unit` (
  `UNIT_ID` int(10) NOT NULL,
  `COURSE_ID` int(10) NOT NULL DEFAULT '0',
  `UNIT_NAME` varchar(500) DEFAULT NULL,
  `CREATED_BY` varchar(100) DEFAULT NULL,
  `CREATED_DATE` datetime DEFAULT NULL,
  `UPDATED_BY` varchar(100) DEFAULT NULL,
  `UPDATED_DATE` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

--
-- Dumping data for table `course_unit`
--

INSERT INTO `course_unit` (`UNIT_ID`, `COURSE_ID`, `UNIT_NAME`, `CREATED_BY`, `CREATED_DATE`, `UPDATED_BY`, `UPDATED_DATE`) VALUES
(105, 128, 'Presentación y referencias', 'ADMIN', '2016-10-06 12:43:32', NULL, NULL),
(106, 129, 'Introducción ', 'ADMIN', '2016-10-06 12:45:16', NULL, NULL),
(107, 129, 'Dejar de pensar en papel y pensar en digital', 'ADMIN', '2016-10-06 12:46:00', NULL, NULL),
(108, 130, 'Forma y Figura', 'ADMIN', '2016-10-06 12:49:03', NULL, NULL),
(109, 130, 'Final project ', 'ADMIN', '2016-10-06 12:49:34', NULL, NULL),
(110, 131, 'La composición lo es todo', 'ADMIN', '2016-10-06 12:52:52', NULL, NULL),
(111, 131, 'La escena cobra vida', 'ADMIN', '2016-10-06 12:53:42', NULL, NULL),
(112, 131, 'Final project ', 'ADMIN', '2016-10-06 12:54:05', NULL, NULL),
(113, 132, 'Añadiendo interacción', 'ADMIN', '2016-10-06 12:57:05', NULL, NULL),
(114, 133, 'Final project', 'ADMIN', '2016-10-06 12:58:12', NULL, NULL),
(115, 134, 'La fase de validación', 'ADMIN', '2016-10-06 13:01:25', NULL, NULL),
(116, 135, 'Final project', 'ADMIN', '2016-10-06 13:40:28', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `course_unit_information`
--

CREATE TABLE `course_unit_information` (
  `ID` int(10) NOT NULL,
  `UNIT_ID` int(10) DEFAULT NULL,
  `UNIT_INFO_CONT_TYPE` enum('TEXTBOX','TEXT','MEDIA','SOUND','FILEUPLOAD') DEFAULT NULL,
  `UNIT_INFO_CONT_VALUE` mediumtext,
  `UNIT_INFO_ORDER` int(10) DEFAULT NULL,
  `IS_SUBUNIT` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

--
-- Dumping data for table `course_unit_information`
--

INSERT INTO `course_unit_information` (`ID`, `UNIT_ID`, `UNIT_INFO_CONT_TYPE`, `UNIT_INFO_CONT_VALUE`, `UNIT_INFO_ORDER`, `IS_SUBUNIT`) VALUES
(2, 105, 'TEXT', '<p><strong>&iquest;CU&Aacute;L ES EL PROYECTO DEL CURSO?</strong></p>\r\n<p>Elaborar&aacute;s un retrato de tu personaje famoso favorito a partir de la informaci&oacute;n recopilada sobre &eacute;l y referencias visuales. En este proyecto, aplicar&aacute;s todas las t&eacute;cnicas aprendidas en el curso sobre composici&oacute;n, uso del color e integraci&oacute;n del personaje en su universo particular.</p>', 1, NULL),
(3, 106, 'TEXTBOX', 'Presentación', 1, 1),
(4, 106, 'TEXTBOX', 'Muster Magazine, qué es y cómo nace', 2, 1),
(5, 106, 'TEXT', '<h3 class="h4 text-uppercase">Who is addressed this course to?</h3>\r\n<div class="aimed-to">\r\n<p>A dise&ntilde;adores, ilustradores y creadores en general que quieran adentrarse de lleno en el mundo de las publicaciones interactivas, que les encante el dise&ntilde;o editorial y que apuestan por la creaci&oacute;n de contenidos con un toque diferente.</p>\r\n</div>', 3, NULL),
(6, 107, 'TEXTBOX', ' Una nueva forma de leer ', 1, 1),
(7, 107, 'TEXTBOX', 'Pros y contras de una publicación digital', 2, 1),
(8, 107, 'TEXT', '<h3 class="h4 text-uppercase">Requirements</h3>\r\n<p>Necesitar&aacute;s tener conocimientos b&aacute;sicos de InDesign CS6 o superior y descargar el plugin B&uuml;tton, una herramienta gratuita necesaria para la creaci&oacute;n de publicaciones interactivas y que Sergio Ortiz te ense&ntilde;ar&aacute; a utilizar desde cero.</p>\r\n<p>Adem&aacute;s, deber&aacute;s contar de un iPad 2 o superior o un iPhone 5 o superior. Y por supuesto, un ordenador.</p>', 3, NULL),
(9, 107, 'FILEUPLOAD', '6uRbnhSpaQCsKk54OLd7JVTvXtgZirFl.jpg', 4, NULL),
(10, 108, 'TEXTBOX', 'Abstracción de las formas y repetición ', 1, 1),
(11, 108, 'TEXTBOX', ' Experimentación con Formas Básicas Parte 1', 2, 1),
(12, 108, 'TEXTBOX', 'Experimentación con Formas Básicas Parte 2', 3, 1),
(13, 108, 'TEXTBOX', 'Experimentación con Formas Básicas Parte 3', 4, 1),
(14, 108, 'TEXTBOX', 'Experimentación con Formas Básicas Parte 4', 5, 1),
(15, 108, 'TEXTBOX', 'Experimentación con Formas Básicas Parte 5', 6, 1),
(16, 108, 'TEXTBOX', 'Experimentación con Formas Básicas Parte 6', 7, 1),
(17, 108, 'TEXTBOX', 'Forma y Figura Parte 1', 8, 1),
(18, 108, 'TEXTBOX', 'Forma y Figura Parte 2', 9, 1),
(19, 108, 'TEXTBOX', 'Forma y Figura Parte 3', 10, 1),
(20, 108, 'TEXT', '<p><strong>&iquest;CU&Aacute;L ES EL PROYECTO DEL CURSO?</strong></p>\r\n<p>Realizar una ilustraci&oacute;n vectorial siguiendo los pasos del m&eacute;todo de trabajo de Mr. Kone.</p>\r\n<h3 class="h4 text-uppercase">Who is addressed this course to?</h3>\r\n<div class="aimed-to">\r\n<p>Este curso va dirigido a todo tipo de dise&ntilde;adores, ilustradores y cualquier persona creativa; desde los principiantes hasta los que est&aacute;n buscando nuevos caminos y m&eacute;todos para plasmar sus ideas a trav&eacute;s de la ilustraci&oacute;n y la experimentaci&oacute;n visual.</p>\r\n</div>\r\n<h3 class="h4 text-uppercase">Requirements</h3>\r\n<p>Para realizar este curso necesitar&aacute;s tener conocimientos b&aacute;sicos de dise&ntilde;o y dibujo. Adem&aacute;s, deber&aacute;s tener nociones elementales de Adobe Illustrator y Photoshop.</p>', 11, NULL),
(21, 109, 'TEXTBOX', 'Ilustración para no ilustradores ', 1, 0),
(22, 109, 'FILEUPLOAD', 'ZyogLjakNsUCrRdWKSFHmtuAEe4bP83x.jpg', 2, NULL),
(23, 110, 'TEXTBOX', 'Preparando el material base', 1, 1),
(24, 110, 'TEXTBOX', ' Idea y composición', 2, 1),
(25, 110, 'TEXT', '<p><strong>&iquest;C&Oacute;MO FUNCIONAN LOS CURSOS EN DOMESTIKA?</strong></p>\r\n<p>Todos los cursos de Domestika se imparten online y tienen como objetivo completar un proyecto final que luego podr&aacute;s publicar para recibir feedback de la comunidad creativa de Domestika.</p>\r\n<p>Mediante lecciones en v&iacute;deo que podr&aacute;s ver siempre que quieras, tu profesor te explica paso a paso sus trucos y t&eacute;cnicas, para que adquieras las habilidades necesarias para realizar el proyecto.</p>\r\n<p>Una vez que se abre el curso, puedes empezarlo d&oacute;nde y cu&aacute;ndo quieras. No hay plazos de entrega, ni fecha de finalizaci&oacute;n.</p>\r\n<p>La idea es que aprendas al ritmo que te propongas y que comiences una relaci&oacute;n duradera con la comunidad de tu curso.</p>\r\n<p>Recuerda... &iexcl;&Eacute;ste es el principio de una gran amistad!</p>', 3, NULL),
(26, 110, 'FILEUPLOAD', '1S9oftuMcnExLyaPNT4HRghpUs8zdweC.jpg', 4, NULL),
(27, 111, 'TEXTBOX', 'Retoques y correcciones', 1, 1),
(28, 111, 'TEXTBOX', 'Aplicando una paleta de color', 2, 1),
(29, 111, 'TEXT', '<h3 class="h4 text-uppercase">What includes this course ?</h3>\r\n<p>Comenzar&aacute;s conociendo el trabajo y las influencias art&iacute;sticas de Gonzalo Cordero y realizar&aacute;s un recorrido por la historia de la rotoscopia, su funci&oacute;n y su uso tradicional.</p>\r\n<p>A continuaci&oacute;n ver&aacute;s las posibilidades que tiene hoy en d&iacute;a sobre diferentes soportes como documentales, videoclips de m&uacute;sica, cabeceras, t&iacute;tulos de cr&eacute;dito, publicidad, etc.</p>\r\n<p>Despu&eacute;s, descubrir&aacute;s c&oacute;mo elegir el clip de v&iacute;deo sobre el que trabajar&aacute;s, sus caracter&iacute;sticas, c&oacute;mo potenciar el efecto de dibujo, c&oacute;mo seleccionar y editar para conseguir el mejor material y prepararlo de forma c&oacute;moda y ordenada.</p>\r\n<p>En este punto, Gonzalo te ense&ntilde;ar&aacute; la t&eacute;cnica b&aacute;sica de la rotoscopia con Photoshop. Ver&aacute;s c&oacute;mo utilizar la tira de v&iacute;deo en Photoshop trabajando imagen a imagen con brochas y pruebas de color. Aprender&aacute;s a seleccionar lo importante y a eliminar lo superfluo para potenciar el movimiento por medio del dibujo.</p>\r\n<p>Una vez que conozcas el procedimiento b&aacute;sico, lo complicar&aacute;s mediante Art Rage, un programa de dibujo muy intuitivo con el que experimentar&aacute;s con materiales, colores, texturas, grados de definici&oacute;n. etc.</p>\r\n<p>M&aacute;s tarde en After Effects, aprender&aacute;s a editar de forma sencilla todo el material, volcarlo, colgarlo y promocionarlo.</p>', 3, NULL),
(30, 111, 'FILEUPLOAD', '7SHdfYW6RBizIgnj1XyDaobkVrmKtG5s.jpg', 4, NULL),
(31, 112, 'TEXTBOX', 'Secretos del fotomontaje y el retoque creativo', 1, 1),
(32, 113, 'TEXTBOX', 'Enlace de email', 1, 1),
(33, 113, 'TEXTBOX', 'Transiciones en CSS', 2, 1),
(34, 113, 'TEXTBOX', 'Vincular un archivo JavaScript', 3, 1),
(35, 115, 'TEXTBOX', 'Validación lingüística y cultural', 1, 1),
(36, 115, 'TEXTBOX', 'Validación jurídica', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `email_tempalete`
--

CREATE TABLE `email_tempalete` (
  `ID` int(11) NOT NULL,
  `EMAIL_CONTENT` mediumtext,
  `EMAIL` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

--
-- Dumping data for table `email_tempalete`
--

INSERT INTO `email_tempalete` (`ID`, `EMAIL_CONTENT`, `EMAIL`) VALUES
(1, '<html lang="en-US">\r\n	<head>\r\n		<meta charset="utf-8">\r\n	</head>\r\n	<body>\r\n		<h2>Password Reset </h2>\r\n\r\n		<div>\r\n			To reset your password, complete this form: \r\n<a target="_blank" href="<?php echo site_url(''auth/edit?reset_password_token=''.$token);?>">Click Here</a>\r\n\r\n		</div>\r\n	</body>\r\n</html>', 'forget_password'),
(2, '<!DOCTYPE html>\r\n<html lang="en-US">\r\n	<head>\r\n		<meta charset="utf-8">\r\n	</head>\r\n	<body>\r\n		<h2>Hello <?php echo $NICK_NAME ;?> , </h2>\r\n		<p> Thank your for joining with our site </p>\r\n		<p> Bellow is your account Info </p>\r\n		<p>\r\n			Email :  <?php echo $USER_NAME ?> <br />\r\n			Password :  <?php echo $PWD ?><br />\r\n		</p>\r\n		<p> Please follow link activation  <a href="<?php //echo site_url(''user/activation?code=''.$code) ?>."> Active my account now</a></p>\r\n		<p> If the link now working , copy and paste link bellow </p>\r\n		<p>  <?php //echo site_url(''user/activation?code=''.$code) ?> </p> \r\n		<br /><br /><p> Thank You </p><br /><br />\r\n		\r\n		 <?php //echo CNF_APPNAME ?> \r\n	</body>\r\n</html>', 'register');

-- --------------------------------------------------------

--
-- Table structure for table `module_master`
--

CREATE TABLE `module_master` (
  `module_id` int(11) NOT NULL,
  `module_name` varchar(100) DEFAULT NULL,
  `module_title` varchar(100) DEFAULT NULL,
  `module_note` varchar(255) DEFAULT NULL,
  `module_created` timestamp NULL DEFAULT NULL,
  `module_desc` text,
  `module_db` varchar(255) DEFAULT NULL,
  `module_db_key` varchar(100) DEFAULT NULL,
  `module_type` enum('master','report','proccess','core','generic','addon') DEFAULT 'master',
  `module_config` text,
  `module_lang` text
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

--
-- Dumping data for table `module_master`
--

INSERT INTO `module_master` (`module_id`, `module_name`, `module_title`, `module_note`, `module_created`, `module_desc`, `module_db`, `module_db_key`, `module_type`, `module_config`, `module_lang`) VALUES
(1, 'area', 'Area', 'Area Lists', '2016-09-07 10:06:19', NULL, 'area_master', 'AREA_ID', 'addon', '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', NULL),
(2, 'software', 'Software', 'Software Lists', '2016-09-07 10:24:16', NULL, 'software_master', 'SOFTWARE_ID', 'addon', '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', NULL),
(3, 'banner', 'banner', 'Banner Lists', '2016-09-07 10:24:45', NULL, 'banner', 'BANNER_ID', 'addon', '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', NULL),
(4, 'category', 'Category', 'Category Lists', '2016-09-07 10:25:13', NULL, 'category_master', 'CATEGORY_ID', 'addon', 'eyJzcWxfciVsZWN0oj24oFNFTEVDVCBjYXR3Zi9yeV9tYXN0ZXouK4BGUk9NoGNhdGVnbgJmXilhcgR3c4A4LCJzcWxfdih3cpU4O4o5V0hFUkU5YiF0ZWdvcn3fbWFzdGVyLkNBVEVHTlJZX03EoE3ToEmPVCBOVUxMo4w4cgFsXidybgVwoj24o4w4dGF4bGVfZGo4O4JjYXR3Zi9yeV9tYXN0ZXo4LCJwcp3tYXJmXit3eSoIokNBVEVHTlJZX03Eo4w4ZgJ1ZCoIWgs4Zp33bGQ4O4JDQVRFR09SWV9JRCosopFs6WFzoj24YiF0ZWdvcn3fbWFzdGVyo4w4bGFuZgVhZiU4O3tdLCJsYWJ3bCoIokNBVEVHTlJZoE3Eo4w4dp33dyoIMCw4ZGV0YW3soj2wLCJzbgJ0YWJsZSoIMSw4ciVhcpN2oj2xLCJkbgdubG9hZCoIMSw4ZnJvepVuoj2xLCJg6WR06CoIojEwMCosopFs6Wduoj24bGVpdCosonNvcnRs6XN0oj24MCosopNvbpa4Ons4dpFs6WQ4O4owo4w4ZGo4O4o4LCJrZXk4O4o4LCJk6XNwbGFmoj24on0sopF0dHJ1YnV0ZSoIeyJ2eXB3cpx1bps4Ons4YWN06XZ3oj2xLCJs6Wmroj24o4w4dGFyZiV0oj24o4w46HRtbCoIo4J9LCJ1bWFnZSoIeyJhYgR1dpU4OjAsonBhdG54O4o4LCJz6X13Xg54O4o4LCJz6X13Xgk4O4o4LCJ2dGlsoj24onl9fSx7opZ1ZWxkoj24Q0FURUdPU33fTkFNRV9FT4osopFs6WFzoj24YiF0ZWdvcn3fbWFzdGVyo4w4bGFuZgVhZiU4O3tdLCJsYWJ3bCoIokmhbWU2RUa1o4w4dp33dyoIMSw4ZGV0YW3soj2xLCJzbgJ0YWJsZSoIMSw4ciVhcpN2oj2xLCJkbgdubG9hZCoIMSw4ZnJvepVuoj2xLCJg6WR06CoIojEwMCosopFs6Wduoj24bGVpdCosonNvcnRs6XN0oj24MSosopNvbpa4Ons4dpFs6WQ4O4owo4w4ZGo4O4o4LCJrZXk4O4o4LCJk6XNwbGFmoj24on0sopF0dHJ1YnV0ZSoIeyJ2eXB3cpx1bps4Ons4YWN06XZ3oj2xLCJs6Wmroj24o4w4dGFyZiV0oj24o4w46HRtbCoIo4J9LCJ1bWFnZSoIeyJhYgR1dpU4OjAsonBhdG54O4o4LCJz6X13Xg54O4o4LCJz6X13Xgk4O4o4LCJ2dGlsoj24onl9fSx7opZ1ZWxkoj24Q0FURUdPU33fTkFNRV9TUCosopFs6WFzoj24YiF0ZWdvcn3fbWFzdGVyo4w4bGFuZgVhZiU4O3tdLCJsYWJ3bCoIokmhbWU2RVM1o4w4dp33dyoIMSw4ZGV0YW3soj2xLCJzbgJ0YWJsZSoIMSw4ciVhcpN2oj2xLCJkbgdubG9hZCoIMSw4ZnJvepVuoj2xLCJg6WR06CoIojEwMCosopFs6Wduoj24bGVpdCosonNvcnRs6XN0oj24M4osopNvbpa4Ons4dpFs6WQ4O4owo4w4ZGo4O4o4LCJrZXk4O4o4LCJk6XNwbGFmoj24on0sopF0dHJ1YnV0ZSoIeyJ2eXB3cpx1bps4Ons4YWN06XZ3oj2xLCJs6Wmroj24o4w4dGFyZiV0oj24o4w46HRtbCoIo4J9LCJ1bWFnZSoIeyJhYgR1dpU4OjAsonBhdG54O4o4LCJz6X13Xg54O4o4LCJz6X13Xgk4O4o4LCJ2dGlsoj24onl9fSx7opZ1ZWxkoj24SUmBQlRJVkU4LCJhbG3hcyoIopNhdGVnbgJmXilhcgR3c4osopxhbpdlYWd3oj1bXSw4bGF4ZWw4O4JTdGF0dXM4LCJi6WVgoj2xLCJkZXRh6Ww4OjEsonNvcnRhYpx3oj2xLCJzZWFyYi54OjEsopRvdimsbiFkoj2xLCJpcp9IZWa4OjEsond1ZHR2oj24MTAwo4w4YWx1Zia4O4JsZWZ0o4w4ci9ydGx1cgQ4O4ozo4w4Yi9ub4oIeyJiYWx1ZCoIojA4LCJkY4oIo4osopt3eSoIo4osopR1cgBsYXk4O4o4fSw4YXR0cp34dXR3oj17ophmcGVybG3u6yoIeyJhYgR1dpU4OjEsopx1bps4O4o4LCJ0YXJnZXQ4O4o4LCJ2dGlsoj24on0sop3tYWd3oj17opFjdG3iZSoIMCw4cGF06CoIo4osonN1epVfeCoIo4osonN1epVfeSoIo4osoph0bWw4O4o4fXl9LHs4Zp33bGQ4O4JDUkVBVEVEX0JZo4w4YWx1YXM4O4JjYXR3Zi9yeV9tYXN0ZXo4LCJsYWmndWFnZSoIWl0sopxhYpVsoj24QlJFQVRFRCBCWSosonZ1ZXc4OjAsopR3dGF1bCoIMCw4ci9ydGF4bGU4OjEsonN3YXJj6CoIMSw4ZG9gbpxvYWQ4OjEsopZybg13b4oIMSw4di3kdG54O4oxMDA4LCJhbG3nb4oIopx3ZnQ4LCJzbgJ0bG3zdCoIojQ4LCJjbimuoj17onZhbG3koj24MCosopR4oj24o4w46iVmoj24o4w4ZG3zcGxheSoIo4J9LCJhdHRy6WJldGU4Ons46H3wZXJs6Wmroj17opFjdG3iZSoIMSw4bG3u6yoIo4osonRhcpd3dCoIo4osoph0bWw4O4o4fSw46WlhZiU4Ons4YWN06XZ3oj2wLCJwYXR2oj24o4w4ci3IZV9aoj24o4w4ci3IZV9moj24o4w46HRtbCoIo4J9fX0seyJp6WVsZCoIokNSRUFURURfREFURSosopFs6WFzoj24YiF0ZWdvcn3fbWFzdGVyo4w4bGFuZgVhZiU4O3tdLCJsYWJ3bCoIokNSRUFURUQ5REFURSosonZ1ZXc4OjAsopR3dGF1bCoIMCw4ci9ydGF4bGU4OjEsonN3YXJj6CoIMSw4ZG9gbpxvYWQ4OjEsopZybg13b4oIMSw4di3kdG54O4oxMDA4LCJhbG3nb4oIopx3ZnQ4LCJzbgJ0bG3zdCoIojU4LCJjbimuoj17onZhbG3koj24MCosopR4oj24o4w46iVmoj24o4w4ZG3zcGxheSoIo4J9LCJhdHRy6WJldGU4Ons46H3wZXJs6Wmroj17opFjdG3iZSoIMSw4bG3u6yoIo4osonRhcpd3dCoIo4osoph0bWw4O4o4fSw46WlhZiU4Ons4YWN06XZ3oj2wLCJwYXR2oj24o4w4ci3IZV9aoj24o4w4ci3IZV9moj24o4w46HRtbCoIo4J9fX0seyJp6WVsZCoIo3VQREFURURfQ3k4LCJhbG3hcyoIopNhdGVnbgJmXilhcgR3c4osopxhbpdlYWd3oj1bXSw4bGF4ZWw4O4JVUERBVEVEoEJZo4w4dp33dyoIMCw4ZGV0YW3soj2wLCJzbgJ0YWJsZSoIMSw4ciVhcpN2oj2xLCJkbgdubG9hZCoIMSw4ZnJvepVuoj2xLCJg6WR06CoIojEwMCosopFs6Wduoj24bGVpdCosonNvcnRs6XN0oj24N4osopNvbpa4Ons4dpFs6WQ4O4owo4w4ZGo4O4o4LCJrZXk4O4o4LCJk6XNwbGFmoj24on0sopF0dHJ1YnV0ZSoIeyJ2eXB3cpx1bps4Ons4YWN06XZ3oj2xLCJs6Wmroj24o4w4dGFyZiV0oj24o4w46HRtbCoIo4J9LCJ1bWFnZSoIeyJhYgR1dpU4OjAsonBhdG54O4o4LCJz6X13Xg54O4o4LCJz6X13Xgk4O4o4LCJ2dGlsoj24onl9fSx7opZ1ZWxkoj24VVBEQVRFRF9EQVRFo4w4YWx1YXM4O4JjYXR3Zi9yeV9tYXN0ZXo4LCJsYWmndWFnZSoIWl0sopxhYpVsoj24VVBEQVRFRCBEQVRFo4w4dp33dyoIMCw4ZGV0YW3soj2wLCJzbgJ0YWJsZSoIMSw4ciVhcpN2oj2xLCJkbgdubG9hZCoIMSw4ZnJvepVuoj2xLCJg6WR06CoIojEwMCosopFs6Wduoj24bGVpdCosonNvcnRs6XN0oj24NyosopNvbpa4Ons4dpFs6WQ4O4owo4w4ZGo4O4o4LCJrZXk4O4o4LCJk6XNwbGFmoj24on0sopF0dHJ1YnV0ZSoIeyJ2eXB3cpx1bps4Ons4YWN06XZ3oj2xLCJs6Wmroj24o4w4dGFyZiV0oj24o4w46HRtbCoIo4J9LCJ1bWFnZSoIeyJhYgR1dpU4OjAsonBhdG54O4o4LCJz6X13Xg54O4o4LCJz6X13Xgk4O4o4LCJ2dGlsoj24onl9fV0sopZvcplzoj1beyJp6WVsZCoIokNBVEVHTlJZX03Eo4w4YWx1YXM4O4JjYXR3Zi9yeV9tYXN0ZXo4LCJsYWJ3bCoIokNBVEVHTlJZoE3Eo4w4Zp9ybV9ncp9lcCoIo4osonJ3cXV1cpVkoj24MCosonZ1ZXc4OjEsonRmcGU4O4J26WRkZWa4LCJhZGQ4OjEsopVk6XQ4OjEsonN3YXJj6CoIojE4LCJz6X13oj24o4w4ci9ydGx1cgQ4O4owo4w4bgB06W9uoj17op9wdF90eXB3oj1udWxsLCJsbi9rdXBfcXV3cnk4O4o4LCJsbi9rdXBfdGF4bGU4OpmlbGwsopxvbitlcF9rZXk4OpmlbGwsopxvbitlcF9iYWxlZSoIo4osop3zXiR3cGVuZGVuYgk4OpmlbGwsop3zXillbHR1cGx3oj1udWxsLCJsbi9rdXBfZGVwZWmkZWmjeV9rZXk4OpmlbGwsonBhdGhfdG9fdXBsbiFkoj24o4w4dXBsbiFkXgRmcGU4OpmlbGwsonJ3ci3IZV9g6WR06CoIo4osonJ3ci3IZV92ZW3n6HQ4O4o4LCJ0bi9sdG3woj24o4w4YXR0cp34dXR3oj24o4w4ZXh0ZWmkXiNsYXNzoj24onl9LHs4Zp33bGQ4O4JDQVRFR09SWV9OQUlFX0VOo4w4YWx1YXM4O4JjYXR3Zi9yeV9tYXN0ZXo4LCJsYWmndWFnZSoIWl0sopxhYpVsoj24TpFtZShFT4k4LCJpbgJtXidybgVwoj24o4w4cpVxdW3yZWQ4O4JyZXFl6XJ3ZCosonZ1ZXc4OjEsonRmcGU4O4J0ZXh0o4w4YWRkoj2xLCJz6X13oj24MCosopVk6XQ4OjEsonN3YXJj6CoIojE4LCJzbgJ0bG3zdCoIojE4LCJvcHR1bia4Ons4bgB0XgRmcGU4O4o4LCJsbi9rdXBfcXV3cnk4O4o4LCJsbi9rdXBfdGF4bGU4O4o4LCJsbi9rdXBf6iVmoj24o4w4bG9v6gVwXgZhbHV3oj24o4w46XNfZGVwZWmkZWmjeSoIo4osop3zXillbHR1cGx3oj24o4w4bG9v6gVwXiR3cGVuZGVuYg3f6iVmoj24o4w4cGF06F90bl9lcGxvYWQ4O4o4LCJyZXN1epVfdi3kdG54O4o4LCJyZXN1epVf6GV1Zih0oj24o4w4dXBsbiFkXgRmcGU4O4o4LCJ0bi9sdG3woj24o4w4YXR0cp34dXR3oj24o4w4ZXh0ZWmkXiNsYXNzoj24onl9LHs4Zp33bGQ4O4JDQVRFR09SWV9OQUlFXlNQo4w4YWx1YXM4O4JjYXR3Zi9yeV9tYXN0ZXo4LCJsYWmndWFnZSoIWl0sopxhYpVsoj24TpFtZShFUyk4LCJpbgJtXidybgVwoj24o4w4cpVxdW3yZWQ4O4JyZXFl6XJ3ZCosonZ1ZXc4OjEsonRmcGU4O4J0ZXh0o4w4YWRkoj2xLCJz6X13oj24MCosopVk6XQ4OjEsonN3YXJj6CoIojE4LCJzbgJ0bG3zdCoIojo4LCJvcHR1bia4Ons4bgB0XgRmcGU4O4o4LCJsbi9rdXBfcXV3cnk4O4o4LCJsbi9rdXBfdGF4bGU4O4o4LCJsbi9rdXBf6iVmoj24o4w4bG9v6gVwXgZhbHV3oj24o4w46XNfZGVwZWmkZWmjeSoIo4osop3zXillbHR1cGx3oj24o4w4bG9v6gVwXiR3cGVuZGVuYg3f6iVmoj24o4w4cGF06F90bl9lcGxvYWQ4O4o4LCJyZXN1epVfdi3kdG54O4o4LCJyZXN1epVf6GV1Zih0oj24o4w4dXBsbiFkXgRmcGU4O4o4LCJ0bi9sdG3woj24o4w4YXR0cp34dXR3oj24o4w4ZXh0ZWmkXiNsYXNzoj24onl9LHs4Zp33bGQ4O4JJTkFDVE3WRSosopFs6WFzoj24YiF0ZWdvcn3fbWFzdGVyo4w4bGF4ZWw4O4JTdGF0dXM4LCJpbgJtXidybgVwoj24o4w4cpVxdW3yZWQ4O4owo4w4dp33dyoIMSw4dH3wZSoIonJhZG3vo4w4YWRkoj2xLCJ3ZG30oj2xLCJzZWFyYi54O4oxo4w4ci3IZSoIo4osonNvcnRs6XN0oj24Myosop9wdG3vb4oIeyJvcHRfdH3wZSoIopRhdGFs6XN0o4w4bG9v6gVwXgFlZXJmoj24MT1BYgR1dpV8MD1JbpFjdG3iZSosopxvbitlcF90YWJsZSoIbnVsbCw4bG9v6gVwXit3eSoIbnVsbCw4bG9v6gVwXgZhbHV3oj24o4w46XNfZGVwZWmkZWmjeSoIbnVsbCw46XNfbXVsdG3wbGU4OpmlbGwsopxvbitlcF9kZXB3bpR3bpNmXit3eSoIbnVsbCw4cGF06F90bl9lcGxvYWQ4O4o4LCJlcGxvYWRfdH3wZSoIbnVsbCw4cpVz6X13Xgd1ZHR2oj24o4w4cpVz6X13Xih36Wd2dCoIo4osonRvbix06XA4O4o4LCJhdHRy6WJldGU4O4o4LCJ3eHR3bpRfYixhcgM4O4o4fX0seyJp6WVsZCoIokNSRUFURURfQ3k4LCJhbG3hcyoIopNhdGVnbgJmXilhcgR3c4osopxhbpdlYWd3oj1bXSw4bGF4ZWw4O4JDUkVBVEVEoEJZo4w4Zp9ybV9ncp9lcCoIo4osonJ3cXV1cpVkoj24MCosonZ1ZXc4OjAsonRmcGU4O4J0ZXh0o4w4YWRkoj2xLCJz6X13oj24MCosopVk6XQ4OjEsonN3YXJj6CoIMCw4ci9ydGx1cgQ4O4o0o4w4bgB06W9uoj17op9wdF90eXB3oj24o4w4bG9v6gVwXgFlZXJmoj24o4w4bG9v6gVwXgRhYpx3oj24o4w4bG9v6gVwXit3eSoIo4osopxvbitlcF9iYWxlZSoIo4osop3zXiR3cGVuZGVuYgk4O4o4LCJ1cl9tdWx06XBsZSoIo4osopxvbitlcF9kZXB3bpR3bpNmXit3eSoIo4osonBhdGhfdG9fdXBsbiFkoj24o4w4cpVz6X13Xgd1ZHR2oj24o4w4cpVz6X13Xih36Wd2dCoIo4osonVwbG9hZF90eXB3oj24o4w4dG9vbHR1cCoIo4osopF0dHJ1YnV0ZSoIo4osopVadGVuZF9jbGFzcyoIo4J9fSx7opZ1ZWxkoj24QlJFQVRFRF9EQVRFo4w4YWx1YXM4O4JjYXR3Zi9yeV9tYXN0ZXo4LCJsYWmndWFnZSoIWl0sopxhYpVsoj24QlJFQVRFRCBEQVRFo4w4Zp9ybV9ncp9lcCoIo4osonJ3cXV1cpVkoj24MCosonZ1ZXc4OjAsonRmcGU4O4J0ZXh0XiRhdGV06Wl3o4w4YWRkoj2xLCJz6X13oj24MCosopVk6XQ4OjEsonN3YXJj6CoIMCw4ci9ydGx1cgQ4O4olo4w4bgB06W9uoj17op9wdF90eXB3oj24o4w4bG9v6gVwXgFlZXJmoj24o4w4bG9v6gVwXgRhYpx3oj24o4w4bG9v6gVwXit3eSoIo4osopxvbitlcF9iYWxlZSoIo4osop3zXiR3cGVuZGVuYgk4O4o4LCJ1cl9tdWx06XBsZSoIo4osopxvbitlcF9kZXB3bpR3bpNmXit3eSoIo4osonBhdGhfdG9fdXBsbiFkoj24o4w4cpVz6X13Xgd1ZHR2oj24o4w4cpVz6X13Xih36Wd2dCoIo4osonVwbG9hZF90eXB3oj24o4w4dG9vbHR1cCoIo4osopF0dHJ1YnV0ZSoIo4osopVadGVuZF9jbGFzcyoIo4J9fSx7opZ1ZWxkoj24VVBEQVRFRF9CWSosopFs6WFzoj24YiF0ZWdvcn3fbWFzdGVyo4w4bGFuZgVhZiU4O3tdLCJsYWJ3bCoIo3VQREFURUQ5Q3k4LCJpbgJtXidybgVwoj24o4w4cpVxdW3yZWQ4O4owo4w4dp33dyoIMCw4dH3wZSoIonR3eHQ4LCJhZGQ4OjEsonN1epU4O4owo4w4ZWR1dCoIMSw4ciVhcpN2oj2wLCJzbgJ0bG3zdCoIojY4LCJvcHR1bia4Ons4bgB0XgRmcGU4O4o4LCJsbi9rdXBfcXV3cnk4O4o4LCJsbi9rdXBfdGF4bGU4O4o4LCJsbi9rdXBf6iVmoj24o4w4bG9v6gVwXgZhbHV3oj24o4w46XNfZGVwZWmkZWmjeSoIo4osop3zXillbHR1cGx3oj24o4w4bG9v6gVwXiR3cGVuZGVuYg3f6iVmoj24o4w4cGF06F90bl9lcGxvYWQ4O4o4LCJyZXN1epVfdi3kdG54O4o4LCJyZXN1epVf6GV1Zih0oj24o4w4dXBsbiFkXgRmcGU4O4o4LCJ0bi9sdG3woj24o4w4YXR0cp34dXR3oj24o4w4ZXh0ZWmkXiNsYXNzoj24onl9LHs4Zp33bGQ4O4JVUERBVEVEX0RBVEU4LCJhbG3hcyoIopNhdGVnbgJmXilhcgR3c4osopxhbpdlYWd3oj1bXSw4bGF4ZWw4O4JVUERBVEVEoERBVEU4LCJpbgJtXidybgVwoj24o4w4cpVxdW3yZWQ4O4owo4w4dp33dyoIMCw4dH3wZSoIonR3eHRfZGF0ZXR1bWU4LCJhZGQ4OjEsonN1epU4O4owo4w4ZWR1dCoIMSw4ciVhcpN2oj2wLCJzbgJ0bG3zdCoIojc4LCJvcHR1bia4Ons4bgB0XgRmcGU4O4o4LCJsbi9rdXBfcXV3cnk4O4o4LCJsbi9rdXBfdGF4bGU4O4o4LCJsbi9rdXBf6iVmoj24o4w4bG9v6gVwXgZhbHV3oj24o4w46XNfZGVwZWmkZWmjeSoIo4osop3zXillbHR1cGx3oj24o4w4bG9v6gVwXiR3cGVuZGVuYg3f6iVmoj24o4w4cGF06F90bl9lcGxvYWQ4O4o4LCJyZXN1epVfdi3kdG54O4o4LCJyZXN1epVf6GV1Zih0oj24o4w4dXBsbiFkXgRmcGU4O4o4LCJ0bi9sdG3woj24o4w4YXR0cp34dXR3oj24o4w4ZXh0ZWmkXiNsYXNzoj24onl9XX0=', NULL);
INSERT INTO `module_master` (`module_id`, `module_name`, `module_title`, `module_note`, `module_created`, `module_desc`, `module_db`, `module_db_key`, `module_type`, `module_config`, `module_lang`) VALUES
(5, 'users', 'Users', 'Users Lists', '2016-09-07 10:25:33', NULL, 'user_master', 'USER_ID', 'addon', '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dHJ1YnV0ZSoIeyJ2eXB3cpx1bps4Ons4YWN06XZ3oj2xLCJs6Wmroj24o4w4dGFyZiV0oj24o4w46HRtbCoIo4J9LCJ1bWFnZSoIeyJhYgR1dpU4OjAsonBhdG54O4o4LCJz6X13Xg54O4o4LCJz6X13Xgk4O4o4LCJ2dGlsoj24onl9fSx7opZ1ZWxkoj24Q09VT3RSWSosopFs6WFzoj24dXN3c39tYXN0ZXo4LCJsYWmndWFnZSoIWl0sopxhYpVsoj24Q09VT3RSWSosonZ1ZXc4OjAsopR3dGF1bCoIMCw4ci9ydGF4bGU4OjEsonN3YXJj6CoIMSw4ZG9gbpxvYWQ4OjEsopZybg13b4oIMSw4di3kdG54O4oxMDA4LCJhbG3nb4oIopx3ZnQ4LCJzbgJ0bG3zdCoIoj54LCJjbimuoj17onZhbG3koj24MCosopR4oj24o4w46iVmoj24o4w4ZG3zcGxheSoIo4J9LCJhdHRy6WJldGU4Ons46H3wZXJs6Wmroj17opFjdG3iZSoIMSw4bG3u6yoIo4osonRhcpd3dCoIo4osoph0bWw4O4o4fSw46WlhZiU4Ons4YWN06XZ3oj2wLCJwYXR2oj24o4w4ci3IZV9aoj24o4w4ci3IZV9moj24o4w46HRtbCoIo4J9fX0seyJp6WVsZCoIokRPQ4osopFs6WFzoj24dXN3c39tYXN0ZXo4LCJsYWmndWFnZSoIWl0sopxhYpVsoj24RE9Co4w4dp33dyoIMCw4ZGV0YW3soj2wLCJzbgJ0YWJsZSoIMSw4ciVhcpN2oj2xLCJkbgdubG9hZCoIMSw4ZnJvepVuoj2xLCJg6WR06CoIojEwMCosopFs6Wduoj24bGVpdCosonNvcnRs6XN0oj24OSosopNvbpa4Ons4dpFs6WQ4O4owo4w4ZGo4O4o4LCJrZXk4O4o4LCJk6XNwbGFmoj24on0sopF0dHJ1YnV0ZSoIeyJ2eXB3cpx1bps4Ons4YWN06XZ3oj2xLCJs6Wmroj24o4w4dGFyZiV0oj24o4w46HRtbCoIo4J9LCJ1bWFnZSoIeyJhYgR1dpU4OjAsonBhdG54O4o4LCJz6X13Xg54O4o4LCJz6X13Xgk4O4o4LCJ2dGlsoj24onl9fSx7opZ1ZWxkoj24VEVMTF9BQk9VVF9ZTlVSU0VM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', NULL),
(8, 'managecms', 'Manage CMS', 'CMS Lists', '2016-09-08 01:20:17', NULL, 'cms', 'CMS_ID', 'addon', 'eyJzcWxfciVsZWN0oj24oFNFTEVDVCBjbXMuK4BGUk9NoGNtcyA4LCJzcWxfdih3cpU4O4o5V0hFUkU5YilzLkNNUl9JRCBJUyBOTlQ5T3VMTCosonNxbF9ncp9lcCoIo4osonRhYpx3XiR4oj24Yilzo4w4cHJ1bWFyeV9rZXk4O4JDTVNfSUQ4LCJncp3koj1beyJp6WVsZCoIokNNUl9JRCosopFs6WFzoj24Yilzo4w4bGFuZgVhZiU4O3tdLCJsYWJ3bCoIokNNUyBJRCosonZ1ZXc4OjAsopR3dGF1bCoIMCw4ci9ydGF4bGU4OjEsonN3YXJj6CoIMSw4ZG9gbpxvYWQ4OjEsopZybg13b4oIMSw4di3kdG54O4oxMDA4LCJhbG3nb4oIopx3ZnQ4LCJzbgJ0bG3zdCoIojE4LCJjbimuoj17onZhbG3koj24MCosopR4oj24o4w46iVmoj24o4w4ZG3zcGxheSoIo4J9LCJhdHRy6WJldGU4Ons46H3wZXJs6Wmroj17opFjdG3iZSoIMSw4bG3u6yoIo4osonRhcpd3dCoIo4osoph0bWw4O4o4fSw46WlhZiU4Ons4YWN06XZ3oj2wLCJwYXR2oj24o4w4ci3IZV9aoj24o4w4ci3IZV9moj24o4w46HRtbCoIo4J9fX0seyJp6WVsZCoIokNNUl9UWVBFo4w4YWx1YXM4O4JjbXM4LCJsYWmndWFnZSoIWl0sopxhYpVsoj24VH3wZSosonZ1ZXc4OjEsopR3dGF1bCoIMSw4ci9ydGF4bGU4OjEsonN3YXJj6CoIMSw4ZG9gbpxvYWQ4OjEsopZybg13b4oIMSw4di3kdG54O4oxMDA4LCJhbG3nb4oIopx3ZnQ4LCJzbgJ0bG3zdCoIojo4LCJjbimuoj17onZhbG3koj24MCosopR4oj24o4w46iVmoj24o4w4ZG3zcGxheSoIo4J9LCJhdHRy6WJldGU4Ons46H3wZXJs6Wmroj17opFjdG3iZSoIMSw4bG3u6yoIo4osonRhcpd3dCoIo4osoph0bWw4O4o4fSw46WlhZiU4Ons4YWN06XZ3oj2wLCJwYXR2oj24o4w4ci3IZV9aoj24o4w4ci3IZV9moj24o4w46HRtbCoIo4J9fX0seyJp6WVsZCoIokNNUl9USVRMRV9FT4osopFs6WFzoj24Yilzo4w4bGFuZgVhZiU4O3tdLCJsYWJ3bCoIokmhbWU5KEVOKSosonZ1ZXc4OjEsopR3dGF1bCoIMSw4ci9ydGF4bGU4OjEsonN3YXJj6CoIMSw4ZG9gbpxvYWQ4OjEsopZybg13b4oIMSw4di3kdG54O4oxMDA4LCJhbG3nb4oIopx3ZnQ4LCJzbgJ0bG3zdCoIojM4LCJjbimuoj17onZhbG3koj24MCosopR4oj24o4w46iVmoj24o4w4ZG3zcGxheSoIo4J9LCJhdHRy6WJldGU4Ons46H3wZXJs6Wmroj17opFjdG3iZSoIMSw4bG3u6yoIo4osonRhcpd3dCoIo4osoph0bWw4O4o4fSw46WlhZiU4Ons4YWN06XZ3oj2wLCJwYXR2oj24o4w4ci3IZV9aoj24o4w4ci3IZV9moj24o4w46HRtbCoIo4J9fX0seyJp6WVsZCoIokNNUl9USVRMRV9TUCosopFs6WFzoj24Yilzo4w4bGFuZgVhZiU4O3tdLCJsYWJ3bCoIokmhbWU5KFNQKSosonZ1ZXc4OjEsopR3dGF1bCoIMSw4ci9ydGF4bGU4OjEsonN3YXJj6CoIMSw4ZG9gbpxvYWQ4OjEsopZybg13b4oIMSw4di3kdG54O4oxMDA4LCJhbG3nb4oIopx3ZnQ4LCJzbgJ0bG3zdCoIojQ4LCJjbimuoj17onZhbG3koj24MCosopR4oj24o4w46iVmoj24o4w4ZG3zcGxheSoIo4J9LCJhdHRy6WJldGU4Ons46H3wZXJs6Wmroj17opFjdG3iZSoIMSw4bG3u6yoIo4osonRhcpd3dCoIo4osoph0bWw4O4o4fSw46WlhZiU4Ons4YWN06XZ3oj2wLCJwYXR2oj24o4w4ci3IZV9aoj24o4w4ci3IZV9moj24o4w46HRtbCoIo4J9fX0seyJp6WVsZCoIokNNUl9ERVNDX0VOo4w4YWx1YXM4O4JjbXM4LCJsYWmndWFnZSoIWl0sopxhYpVsoj24RGVzYgJ1cHR1bia5KEVOKSosonZ1ZXc4OjAsopR3dGF1bCoIMCw4ci9ydGF4bGU4OjEsonN3YXJj6CoIMSw4ZG9gbpxvYWQ4OjEsopZybg13b4oIMSw4di3kdG54O4oxMDA4LCJhbG3nb4oIopx3ZnQ4LCJzbgJ0bG3zdCoIojU4LCJjbimuoj17onZhbG3koj24MCosopR4oj24o4w46iVmoj24o4w4ZG3zcGxheSoIo4J9LCJhdHRy6WJldGU4Ons46H3wZXJs6Wmroj17opFjdG3iZSoIMSw4bG3u6yoIo4osonRhcpd3dCoIo4osoph0bWw4O4o4fSw46WlhZiU4Ons4YWN06XZ3oj2wLCJwYXR2oj24o4w4ci3IZV9aoj24o4w4ci3IZV9moj24o4w46HRtbCoIo4J9fX0seyJp6WVsZCoIokNNUl9ERVNDXlNQo4w4YWx1YXM4O4JjbXM4LCJsYWmndWFnZSoIWl0sopxhYpVsoj24RGVzYgJ1cHR1bia5KEVTKSosonZ1ZXc4OjAsopR3dGF1bCoIMCw4ci9ydGF4bGU4OjEsonN3YXJj6CoIMSw4ZG9gbpxvYWQ4OjEsopZybg13b4oIMSw4di3kdG54O4oxMDA4LCJhbG3nb4oIopx3ZnQ4LCJzbgJ0bG3zdCoIojY4LCJjbimuoj17onZhbG3koj24MCosopR4oj24o4w46iVmoj24o4w4ZG3zcGxheSoIo4J9LCJhdHRy6WJldGU4Ons46H3wZXJs6Wmroj17opFjdG3iZSoIMSw4bG3u6yoIo4osonRhcpd3dCoIo4osoph0bWw4O4o4fSw46WlhZiU4Ons4YWN06XZ3oj2wLCJwYXR2oj24o4w4ci3IZV9aoj24o4w4ci3IZV9moj24o4w46HRtbCoIo4J9fX0seyJp6WVsZCoIokNNUl9JTUFHRSosopFs6WFzoj24Yilzo4w4bGFuZgVhZiU4O3tdLCJsYWJ3bCoIok3tYWd3o4w4dp33dyoIMCw4ZGV0YW3soj2wLCJzbgJ0YWJsZSoIMSw4ciVhcpN2oj2xLCJkbgdubG9hZCoIMSw4ZnJvepVuoj2xLCJg6WR06CoIojEwMCosopFs6Wduoj24bGVpdCosonNvcnRs6XN0oj24NyosopNvbpa4Ons4dpFs6WQ4O4owo4w4ZGo4O4o4LCJrZXk4O4o4LCJk6XNwbGFmoj24on0sopF0dHJ1YnV0ZSoIeyJ2eXB3cpx1bps4Ons4YWN06XZ3oj2xLCJs6Wmroj24o4w4dGFyZiV0oj24o4w46HRtbCoIo4J9LCJ1bWFnZSoIeyJhYgR1dpU4OjAsonBhdG54O4o4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OjEsonN3YXJj6CoIMCw4ci9ydGx1cgQ4O4omo4w4bgB06W9uoj17op9wdF90eXB3oj24o4w4bG9v6gVwXgFlZXJmoj24o4w4bG9v6gVwXgRhYpx3oj24o4w4bG9v6gVwXit3eSoIo4osopxvbitlcF9iYWxlZSoIo4osop3zXiR3cGVuZGVuYgk4O4o4LCJ1cl9tdWx06XBsZSoIo4osopxvbitlcF9kZXB3bpR3bpNmXit3eSoIo4osonBhdGhfdG9fdXBsbiFkoj24o4w4cpVz6X13Xgd1ZHR2oj24o4w4cpVz6X13Xih36Wd2dCoIo4osonVwbG9hZF90eXB3oj24o4w4dG9vbHR1cCoIo4osopF0dHJ1YnV0ZSoIo4osopVadGVuZF9jbGFzcyoIo4J9fSx7opZ1ZWxkoj24VVBEQVRFRF9CWSosopFs6WFzoj24Yilzo4w4bGFuZgVhZiU4O3tdLCJsYWJ3bCoIo3VQREFURUQ5Q3k4LCJpbgJtXidybgVwoj24o4w4cpVxdW3yZWQ4O4owo4w4dp33dyoIMCw4dH3wZSoIonR3eHQ4LCJhZGQ4OjEsonN1epU4O4owo4w4ZWR1dCoIMSw4ciVhcpN2oj2wLCJzbgJ0bG3zdCoIojEwo4w4bgB06W9uoj17op9wdF90eXB3oj24o4w4bG9v6gVwXgFlZXJmoj24o4w4bG9v6gVwXgRhYpx3oj24o4w4bG9v6gVwXit3eSoIo4osopxvbitlcF9iYWxlZSoIo4osop3zXiR3cGVuZGVuYgk4O4o4LCJ1cl9tdWx06XBsZSoIo4osopxvbitlcF9kZXB3bpR3bpNmXit3eSoIo4osonBhdGhfdG9fdXBsbiFkoj24o4w4cpVz6X13Xgd1ZHR2oj24o4w4cpVz6X13Xih36Wd2dCoIo4osonVwbG9hZF90eXB3oj24o4w4dG9vbHR1cCoIo4osopF0dHJ1YnV0ZSoIo4osopVadGVuZF9jbGFzcyoIo4J9fSx7opZ1ZWxkoj24VVBEQVRFRF9EQVRFo4w4YWx1YXM4O4JjbXM4LCJsYWmndWFnZSoIWl0sopxhYpVsoj24VVBEQVRFRCBEQVRFo4w4Zp9ybV9ncp9lcCoIo4osonJ3cXV1cpVkoj24MCosonZ1ZXc4OjAsonRmcGU4O4J0ZXh0XiRhdGV06Wl3o4w4YWRkoj2xLCJz6X13oj24MCosopVk6XQ4OjEsonN3YXJj6CoIMCw4ci9ydGx1cgQ4O4oxMSosop9wdG3vb4oIeyJvcHRfdH3wZSoIo4osopxvbitlcF9xdWVyeSoIo4osopxvbitlcF90YWJsZSoIo4osopxvbitlcF9rZXk4O4o4LCJsbi9rdXBfdpFsdWU4O4o4LCJ1cl9kZXB3bpR3bpNmoj24o4w46XNfbXVsdG3wbGU4O4o4LCJsbi9rdXBfZGVwZWmkZWmjeV9rZXk4O4o4LCJwYXR2XgRvXgVwbG9hZCoIo4osonJ3ci3IZV9g6WR06CoIo4osonJ3ci3IZV92ZW3n6HQ4O4o4LCJlcGxvYWRfdH3wZSoIo4osonRvbix06XA4O4o4LCJhdHRy6WJldGU4O4o4LCJ3eHR3bpRfYixhcgM4O4o4fXldfQ==', NULL),
(12, 'course', 'Couser', 'Course Lists', '2016-09-14 01:04:36', NULL, 'course_master', 'COURSE_ID', 'addon', 'eyJzcWxfciVsZWN0oj24oFNFTEVDVCBjbgVyciVfbWFzdGVyL425R3JPTSBjbgVyciVfbWFzdGVyoCosonNxbF9g6GVyZSoIo4BXSEVSRSBjbgVyciVfbWFzdGVyLkNPVVJTRV9JRCBJUyBOTlQ5T3VMTCosonNxbF9ncp9lcCoIo4osonRhYpx3XiR4oj24Yi9lcnN3XilhcgR3c4osonBy6Wlhcn3f6iVmoj24Q09VU3NFX03Eo4w4ZgJ1ZCoIWgs4Zp33bGQ4O4JDTlVSU0VfSUQ4LCJhbG3hcyoIopNvdXJzZV9tYXN0ZXo4LCJsYWmndWFnZSoIWl0sopxhYpVsoj24Q09VU3NFoE3Eo4w4dp33dyoIMCw4ZGV0YW3soj2wLCJzbgJ0YWJsZSoIMSw4ciVhcpN2oj2xLCJkbgdubG9hZCoIMSw4ZnJvepVuoj2xLCJg6WR06CoIojEwMCosopFs6Wduoj24bGVpdCosonNvcnRs6XN0oj24MCosopNvbpa4Ons4dpFs6WQ4O4owo4w4ZGo4O4o4LCJrZXk4O4o4LCJk6XNwbGFmoj24on0sopF0dHJ1YnV0ZSoIeyJ2eXB3cpx1bps4Ons4YWN06XZ3oj2xLCJs6Wmroj24o4w4dGFyZiV0oj24o4w46HRtbCoIo4J9LCJ1bWFnZSoIeyJhYgR1dpU4OjAsonBhdG54O4o4LCJz6X13Xg54O4o4LCJz6X13Xgk4O4o4LCJ2dGlsoj24onl9fSx7opZ1ZWxkoj24Q09VU3NFX0mBTUU4LCJhbG3hcyoIopNvdXJzZV9tYXN0ZXo4LCJsYWmndWFnZSoIWl0sopxhYpVsoj24TpFtZSosonZ1ZXc4OjEsopR3dGF1bCoIMSw4ci9ydGF4bGU4OjEsonN3YXJj6CoIMSw4ZG9gbpxvYWQ4OjEsopZybg13b4oIMSw4di3kdG54O4oxMDA4LCJhbG3nb4oIopx3ZnQ4LCJzbgJ0bG3zdCoIojE4LCJjbimuoj17onZhbG3koj24MCosopR4oj24o4w46iVmoj24o4w4ZG3zcGxheSoIo4J9LCJhdHRy6WJldGU4Ons46H3wZXJs6Wmroj17opFjdG3iZSoIMSw4bG3u6yoIo4osonRhcpd3dCoIo4osoph0bWw4O4o4fSw46WlhZiU4Ons4YWN06XZ3oj2wLCJwYXR2oj24o4w4ci3IZV9aoj24o4w4ci3IZV9moj24o4w46HRtbCoIo4J9fX0seyJp6WVsZCoIokNPVVJTRV9UTlRfVk3ERU84LCJhbG3hcyoIopNvdXJzZV9tYXN0ZXo4LCJsYWmndWFnZSoIWl0sopxhYpVsoj24VG90YWw5Vp3kZW84LCJi6WVgoj2xLCJkZXRh6Ww4OjEsonNvcnRhYpx3oj2xLCJzZWFyYi54OjEsopRvdimsbiFkoj2xLCJpcp9IZWa4OjEsond1ZHR2oj24MTAwo4w4YWx1Zia4O4JsZWZ0o4w4ci9ydGx1cgQ4O4oyo4w4Yi9ub4oIeyJiYWx1ZCoIojA4LCJkY4oIo4osopt3eSoIo4osopR1cgBsYXk4O4o4fSw4YXR0cp34dXR3oj17ophmcGVybG3u6yoIeyJhYgR1dpU4OjEsopx1bps4O4o4LCJ0YXJnZXQ4O4o4LCJ2dGlsoj24on0sop3tYWd3oj17opFjdG3iZSoIMCw4cGF06CoIo4osonN1epVfeCoIo4osonN1epVfeSoIo4osoph0bWw4O4o4fXl9LHs4Zp33bGQ4O4JVU0VSXlRPVF9FT3JPTEw4LCJhbG3hcyoIopNvdXJzZV9tYXN0ZXo4LCJsYWmndWFnZSoIWl0sopxhYpVsoj24VVNFU4BUTlQ5RUmST0xMo4w4dp33dyoIMCw4ZGV0YW3soj2wLCJzbgJ0YWJsZSoIMSw4ciVhcpN2oj2xLCJkbgdubG9hZCoIMSw4ZnJvepVuoj2xLCJg6WR06CoIojEwMCosopFs6Wduoj24bGVpdCosonNvcnRs6XN0oj24MyosopNvbpa4Ons4dpFs6WQ4O4owo4w4ZGo4O4o4LCJrZXk4O4o4LCJk6XNwbGFmoj24on0sopF0dHJ1YnV0ZSoIeyJ2eXB3cpx1bps4Ons4YWN06XZ3oj2xLCJs6Wmroj24o4w4dGFyZiV0oj24o4w46HRtbCoIo4J9LCJ1bWFnZSoIeyJhYgR1dpU4OjAsonBhdG54O4o4LCJz6X13Xg54O4o4LCJz6X13Xgk4O4o4LCJ2dGlsoj24onl9fSx7opZ1ZWxkoj24VVNFU39UTlRfQ09NTUVOVCosopFs6WFzoj24Yi9lcnN3XilhcgR3c4osopxhbpdlYWd3oj1bXSw4bGF4ZWw4O4JVU0VSoFRPVCBDT0lNRUmUo4w4dp33dyoIMCw4ZGV0YW3soj2wLCJzbgJ0YWJsZSoIMSw4ciVhcpN2oj2xLCJkbgdubG9hZCoIMSw4ZnJvepVuoj2xLCJg6WR06CoIojEwMCosopFs6Wduoj24bGVpdCosonNvcnRs6XN0oj24NCosopNvbpa4Ons4dpFs6WQ4O4owo4w4ZGo4O4o4LCJrZXk4O4o4LCJk6XNwbGFmoj24on0sopF0dHJ1YnV0ZSoIeyJ2eXB3cpx1bps4Ons4YWN06XZ3oj2xLCJs6Wmroj24o4w4dGFyZiV0oj24o4w46HRtbCoIo4J9LCJ1bWFnZSoIeyJhYgR1dpU4OjAsonBhdG54O4o4LCJz6X13Xg54O4o4LCJz6X13Xgk4O4o4LCJ2dGlsoj24onl9fSx7opZ1ZWxkoj24SUmBQlRJVkU4LCJhbG3hcyoIopNvdXJzZV9tYXN0ZXo4LCJsYWmndWFnZSoIWl0sopxhYpVsoj24UgRhdHVzo4w4dp33dyoIMSw4ZGV0YW3soj2xLCJzbgJ0YWJsZSoIMSw4ciVhcpN2oj2xLCJkbgdubG9hZCoIMSw4ZnJvepVuoj2xLCJg6WR06CoIojEwMCosopFs6Wduoj24bGVpdCosonNvcnRs6XN0oj24NSosopNvbpa4Ons4dpFs6WQ4O4owo4w4ZGo4O4o4LCJrZXk4O4o4LCJk6XNwbGFmoj24on0sopF0dHJ1YnV0ZSoIeyJ2eXB3cpx1bps4Ons4YWN06XZ3oj2xLCJs6Wmroj24o4w4dGFyZiV0oj24o4w46HRtbCoIo4J9LCJ1bWFnZSoIeyJhYgR1dpU4OjAsonBhdG54O4o4LCJz6X13Xg54O4o4LCJz6X13Xgk4O4o4LCJ2dGlsoj24onl9fSx7opZ1ZWxkoj24QlJFQVRFRF9CWSosopFs6WFzoj24Yi9lcnN3XilhcgR3c4osopxhbpdlYWd3oj1bXSw4bGF4ZWw4O4JDUkVBVEVEoEJZo4w4dp33dyoIMCw4ZGV0YW3soj2wLCJzbgJ0YWJsZSoIMSw4ciVhcpN2oj2xLCJkbgdubG9hZCoIMSw4ZnJvepVuoj2xLCJg6WR06CoIojEwMCosopFs6Wduoj24bGVpdCosonNvcnRs6XN0oj24N4osopNvbpa4Ons4dpFs6WQ4O4owo4w4ZGo4O4o4LCJrZXk4O4o4LCJk6XNwbGFmoj24on0sopF0dHJ1YnV0ZSoIeyJ2eXB3cpx1bps4Ons4YWN06XZ3oj2xLCJs6Wmroj24o4w4dGFyZiV0oj24o4w46HRtbCoIo4J9LCJ1bWFnZSoIeyJhYgR1dpU4OjAsonBhdG54O4o4LCJz6X13Xg54O4o4LCJz6X13Xgk4O4o4LCJ2dGlsoj24onl9fSx7opZ1ZWxkoj24QlJFQVRFRF9EQVRFo4w4YWx1YXM4O4JjbgVyciVfbWFzdGVyo4w4bGFuZgVhZiU4O3tdLCJsYWJ3bCoIokNSRUFURUQ5REFURSosonZ1ZXc4OjAsopR3dGF1bCoIMCw4ci9ydGF4bGU4OjEsonN3YXJj6CoIMSw4ZG9gbpxvYWQ4OjEsopZybg13b4oIMSw4di3kdG54O4oxMDA4LCJhbG3nb4oIopx3ZnQ4LCJzbgJ0bG3zdCoIojc4LCJjbimuoj17onZhbG3koj24MCosopR4oj24o4w46iVmoj24o4w4ZG3zcGxheSoIo4J9LCJhdHRy6WJldGU4Ons46H3wZXJs6Wmroj17opFjdG3iZSoIMSw4bG3u6yoIo4osonRhcpd3dCoIo4osoph0bWw4O4o4fSw46WlhZiU4Ons4YWN06XZ3oj2wLCJwYXR2oj24o4w4ci3IZV9aoj24o4w4ci3IZV9moj24o4w46HRtbCoIo4J9fX0seyJp6WVsZCoIo3VQREFURURfQ3k4LCJhbG3hcyoIopNvdXJzZV9tYXN0ZXo4LCJsYWmndWFnZSoIWl0sopxhYpVsoj24VVBEQVRFRCBCWSosonZ1ZXc4OjAsopR3dGF1bCoIMCw4ci9ydGF4bGU4OjEsonN3YXJj6CoIMSw4ZG9gbpxvYWQ4OjEsopZybg13b4oIMSw4di3kdG54O4oxMDA4LCJhbG3nb4oIopx3ZnQ4LCJzbgJ0bG3zdCoIoj54LCJjbimuoj17onZhbG3koj24MCosopR4oj24o4w46iVmoj24o4w4ZG3zcGxheSoIo4J9LCJhdHRy6WJldGU4Ons46H3wZXJs6Wmroj17opFjdG3iZSoIMSw4bG3u6yoIo4osonRhcpd3dCoIo4osoph0bWw4O4o4fSw46WlhZiU4Ons4YWN06XZ3oj2wLCJwYXR2oj24o4w4ci3IZV9aoj24o4w4ci3IZV9moj24o4w46HRtbCoIo4J9fX0seyJp6WVsZCoIo3VQREFURURfREFURSosopFs6WFzoj24Yi9lcnN3XilhcgR3c4osopxhbpdlYWd3oj1bXSw4bGF4ZWw4O4JVUERBVEVEoERBVEU4LCJi6WVgoj2wLCJkZXRh6Ww4OjAsonNvcnRhYpx3oj2xLCJzZWFyYi54OjEsopRvdimsbiFkoj2xLCJpcp9IZWa4OjEsond1ZHR2oj24MTAwo4w4YWx1Zia4O4JsZWZ0o4w4ci9ydGx1cgQ4O4omo4w4Yi9ub4oIeyJiYWx1ZCoIojA4LCJkY4oIo4osopt3eSoIo4osopR1cgBsYXk4O4o4fSw4YXR0cp34dXR3oj17ophmcGVybG3u6yoIeyJhYgR1dpU4OjEsopx1bps4O4o4LCJ0YXJnZXQ4O4o4LCJ2dGlsoj24on0sop3tYWd3oj17opFjdG3iZSoIMCw4cGF06CoIo4osonN1epVfeCoIo4osonN1epVfeSoIo4osoph0bWw4O4o4fXl9XSw4Zp9ybXM4O3t7opZ1ZWxkoj24Q09VU3NFX03Eo4w4YWx1YXM4O4JjbgVyciVfbWFzdGVyo4w4bGFuZgVhZiU4O3tdLCJsYWJ3bCoIokNPVVJTRSBJRCosopZvcplfZgJvdXA4O4o4LCJyZXFl6XJ3ZCoIojA4LCJi6WVgoj2xLCJ0eXB3oj246G3kZGVuo4w4YWRkoj2xLCJz6X13oj24MCosopVk6XQ4OjEsonN3YXJj6CoIMCw4ci9ydGx1cgQ4O4owo4w4bgB06W9uoj17op9wdF90eXB3oj24o4w4bG9v6gVwXgFlZXJmoj24o4w4bG9v6gVwXgRhYpx3oj24o4w4bG9v6gVwXit3eSoIo4osopxvbitlcF9iYWxlZSoIo4osop3zXiR3cGVuZGVuYgk4O4o4LCJ1cl9tdWx06XBsZSoIo4osopxvbitlcF9kZXB3bpR3bpNmXit3eSoIo4osonBhdGhfdG9fdXBsbiFkoj24o4w4cpVz6X13Xgd1ZHR2oj24o4w4cpVz6X13Xih36Wd2dCoIo4osonVwbG9hZF90eXB3oj24o4w4dG9vbHR1cCoIo4osopF0dHJ1YnV0ZSoIo4osopVadGVuZF9jbGFzcyoIo4J9fSx7opZ1ZWxkoj24Q09VU3NFX0mBTUU4LCJhbG3hcyoIopNvdXJzZV9tYXN0ZXo4LCJsYWmndWFnZSoIWl0sopxhYpVsoj24TpFtZSosopZvcplfZgJvdXA4O4o4LCJyZXFl6XJ3ZCoIonJ3cXV1cpVko4w4dp33dyoIMSw4dH3wZSoIonR3eHQ4LCJhZGQ4OjEsonN1epU4O4owo4w4ZWR1dCoIMSw4ciVhcpN2oj2wLCJzbgJ0bG3zdCoIojE4LCJvcHR1bia4Ons4bgB0XgRmcGU4O4o4LCJsbi9rdXBfcXV3cnk4O4o4LCJsbi9rdXBfdGF4bGU4O4o4LCJsbi9rdXBf6iVmoj24o4w4bG9v6gVwXgZhbHV3oj24o4w46XNfZGVwZWmkZWmjeSoIo4osop3zXillbHR1cGx3oj24o4w4bG9v6gVwXiR3cGVuZGVuYg3f6iVmoj24o4w4cGF06F90bl9lcGxvYWQ4O4o4LCJyZXN1epVfdi3kdG54O4o4LCJyZXN1epVf6GV1Zih0oj24o4w4dXBsbiFkXgRmcGU4O4o4LCJ0bi9sdG3woj24o4w4YXR0cp34dXR3oj24o4w4ZXh0ZWmkXiNsYXNzoj24onl9LHs4Zp33bGQ4O4JDTlVSU0VfVE9UXlZJREVPo4w4YWx1YXM4O4JjbgVyciVfbWFzdGVyo4w4bGFuZgVhZiU4O3tdLCJsYWJ3bCoIokNPVVJTRSBUTlQ5Vk3ERU84LCJpbgJtXidybgVwoj24o4w4cpVxdW3yZWQ4O4owo4w4dp33dyoIMCw4dH3wZSoIonR3eHQ4LCJhZGQ4OjEsonN1epU4O4owo4w4ZWR1dCoIMSw4ciVhcpN2oj2wLCJzbgJ0bG3zdCoIojo4LCJvcHR1bia4Ons4bgB0XgRmcGU4O4o4LCJsbi9rdXBfcXV3cnk4O4o4LCJsbi9rdXBfdGF4bGU4O4o4LCJsbi9rdXBf6iVmoj24o4w4bG9v6gVwXgZhbHV3oj24o4w46XNfZGVwZWmkZWmjeSoIo4osop3zXillbHR1cGx3oj24o4w4bG9v6gVwXiR3cGVuZGVuYg3f6iVmoj24o4w4cGF06F90bl9lcGxvYWQ4O4o4LCJyZXN1epVfdi3kdG54O4o4LCJyZXN1epVf6GV1Zih0oj24o4w4dXBsbiFkXgRmcGU4O4o4LCJ0bi9sdG3woj24o4w4YXR0cp34dXR3oj24o4w4ZXh0ZWmkXiNsYXNzoj24onl9LHs4Zp33bGQ4O4JVU0VSXlRPVF9FT3JPTEw4LCJhbG3hcyoIopNvdXJzZV9tYXN0ZXo4LCJsYWmndWFnZSoIWl0sopxhYpVsoj24VVNFU4BUTlQ5RUmST0xMo4w4Zp9ybV9ncp9lcCoIo4osonJ3cXV1cpVkoj24MCosonZ1ZXc4OjAsonRmcGU4O4J0ZXh0o4w4YWRkoj2xLCJz6X13oj24MCosopVk6XQ4OjEsonN3YXJj6CoIMCw4ci9ydGx1cgQ4O4ozo4w4bgB06W9uoj17op9wdF90eXB3oj24o4w4bG9v6gVwXgFlZXJmoj24o4w4bG9v6gVwXgRhYpx3oj24o4w4bG9v6gVwXit3eSoIo4osopxvbitlcF9iYWxlZSoIo4osop3zXiR3cGVuZGVuYgk4O4o4LCJ1cl9tdWx06XBsZSoIo4osopxvbitlcF9kZXB3bpR3bpNmXit3eSoIo4osonBhdGhfdG9fdXBsbiFkoj24o4w4cpVz6X13Xgd1ZHR2oj24o4w4cpVz6X13Xih36Wd2dCoIo4osonVwbG9hZF90eXB3oj24o4w4dG9vbHR1cCoIo4osopF0dHJ1YnV0ZSoIo4osopVadGVuZF9jbGFzcyoIo4J9fSx7opZ1ZWxkoj24VVNFU39UTlRfQ09NTUVOVCosopFs6WFzoj24Yi9lcnN3XilhcgR3c4osopxhbpdlYWd3oj1bXSw4bGF4ZWw4O4JVU0VSoFRPVCBDT0lNRUmUo4w4Zp9ybV9ncp9lcCoIo4osonJ3cXV1cpVkoj24MCosonZ1ZXc4OjAsonRmcGU4O4J0ZXh0o4w4YWRkoj2xLCJz6X13oj24MCosopVk6XQ4OjEsonN3YXJj6CoIMCw4ci9ydGx1cgQ4O4o0o4w4bgB06W9uoj17op9wdF90eXB3oj24o4w4bG9v6gVwXgFlZXJmoj24o4w4bG9v6gVwXgRhYpx3oj24o4w4bG9v6gVwXit3eSoIo4osopxvbitlcF9iYWxlZSoIo4osop3zXiR3cGVuZGVuYgk4O4o4LCJ1cl9tdWx06XBsZSoIo4osopxvbitlcF9kZXB3bpR3bpNmXit3eSoIo4osonBhdGhfdG9fdXBsbiFkoj24o4w4cpVz6X13Xgd1ZHR2oj24o4w4cpVz6X13Xih36Wd2dCoIo4osonVwbG9hZF90eXB3oj24o4w4dG9vbHR1cCoIo4osopF0dHJ1YnV0ZSoIo4osopVadGVuZF9jbGFzcyoIo4J9fSx7opZ1ZWxkoj24SUmBQlRJVkU4LCJhbG3hcyoIopNvdXJzZV9tYXN0ZXo4LCJsYWmndWFnZSoIWl0sopxhYpVsoj24UgRhdHVzo4w4Zp9ybV9ncp9lcCoIo4osonJ3cXV1cpVkoj24MCosonZ1ZXc4OjEsonRmcGU4O4JyYWR1byosopFkZCoIMSw4ci3IZSoIojA4LCJ3ZG30oj2xLCJzZWFyYi54OjAsonNvcnRs6XN0oj24NSosop9wdG3vb4oIeyJvcHRfdH3wZSoIopRhdGFs6XN0o4w4bG9v6gVwXgFlZXJmoj24MD1JbpFjdG3iZXwxOkFjdG3iZSosopxvbitlcF90YWJsZSoIo4osopxvbitlcF9rZXk4O4o4LCJsbi9rdXBfdpFsdWU4O4o4LCJ1cl9kZXB3bpR3bpNmoj24o4w46XNfbXVsdG3wbGU4O4o4LCJsbi9rdXBfZGVwZWmkZWmjeV9rZXk4O4o4LCJwYXR2XgRvXgVwbG9hZCoIo4osonJ3ci3IZV9g6WR06CoIo4osonJ3ci3IZV92ZW3n6HQ4O4o4LCJlcGxvYWRfdH3wZSoIo4osonRvbix06XA4O4o4LCJhdHRy6WJldGU4O4o4LCJ3eHR3bpRfYixhcgM4O4o4fX0seyJp6WVsZCoIokNSRUFURURfQ3k4LCJhbG3hcyoIopNvdXJzZV9tYXN0ZXo4LCJsYWmndWFnZSoIWl0sopxhYpVsoj24QlJFQVRFRCBCWSosopZvcplfZgJvdXA4O4o4LCJyZXFl6XJ3ZCoIojA4LCJi6WVgoj2wLCJ0eXB3oj24dGVadCosopFkZCoIMSw4ci3IZSoIojA4LCJ3ZG30oj2xLCJzZWFyYi54OjAsonNvcnRs6XN0oj24N4osop9wdG3vb4oIeyJvcHRfdH3wZSoIo4osopxvbitlcF9xdWVyeSoIo4osopxvbitlcF90YWJsZSoIo4osopxvbitlcF9rZXk4O4o4LCJsbi9rdXBfdpFsdWU4O4o4LCJ1cl9kZXB3bpR3bpNmoj24o4w46XNfbXVsdG3wbGU4O4o4LCJsbi9rdXBfZGVwZWmkZWmjeV9rZXk4O4o4LCJwYXR2XgRvXgVwbG9hZCoIo4osonJ3ci3IZV9g6WR06CoIo4osonJ3ci3IZV92ZW3n6HQ4O4o4LCJlcGxvYWRfdH3wZSoIo4osonRvbix06XA4O4o4LCJhdHRy6WJldGU4O4o4LCJ3eHR3bpRfYixhcgM4O4o4fX0seyJp6WVsZCoIokNSRUFURURfREFURSosopFs6WFzoj24Yi9lcnN3XilhcgR3c4osopxhbpdlYWd3oj1bXSw4bGF4ZWw4O4JDUkVBVEVEoERBVEU4LCJpbgJtXidybgVwoj24o4w4cpVxdW3yZWQ4O4owo4w4dp33dyoIMCw4dH3wZSoIonR3eHRfZGF0ZXR1bWU4LCJhZGQ4OjEsonN1epU4O4owo4w4ZWR1dCoIMSw4ciVhcpN2oj2wLCJzbgJ0bG3zdCoIojc4LCJvcHR1bia4Ons4bgB0XgRmcGU4O4o4LCJsbi9rdXBfcXV3cnk4O4o4LCJsbi9rdXBfdGF4bGU4O4o4LCJsbi9rdXBf6iVmoj24o4w4bG9v6gVwXgZhbHV3oj24o4w46XNfZGVwZWmkZWmjeSoIo4osop3zXillbHR1cGx3oj24o4w4bG9v6gVwXiR3cGVuZGVuYg3f6iVmoj24o4w4cGF06F90bl9lcGxvYWQ4O4o4LCJyZXN1epVfdi3kdG54O4o4LCJyZXN1epVf6GV1Zih0oj24o4w4dXBsbiFkXgRmcGU4O4o4LCJ0bi9sdG3woj24o4w4YXR0cp34dXR3oj24o4w4ZXh0ZWmkXiNsYXNzoj24onl9LHs4Zp33bGQ4O4JVUERBVEVEX0JZo4w4YWx1YXM4O4JjbgVyciVfbWFzdGVyo4w4bGFuZgVhZiU4O3tdLCJsYWJ3bCoIo3VQREFURUQ5Q3k4LCJpbgJtXidybgVwoj24o4w4cpVxdW3yZWQ4O4owo4w4dp33dyoIMCw4dH3wZSoIonR3eHQ4LCJhZGQ4OjEsonN1epU4O4owo4w4ZWR1dCoIMSw4ciVhcpN2oj2wLCJzbgJ0bG3zdCoIoj54LCJvcHR1bia4Ons4bgB0XgRmcGU4O4o4LCJsbi9rdXBfcXV3cnk4O4o4LCJsbi9rdXBfdGF4bGU4O4o4LCJsbi9rdXBf6iVmoj24o4w4bG9v6gVwXgZhbHV3oj24o4w46XNfZGVwZWmkZWmjeSoIo4osop3zXillbHR1cGx3oj24o4w4bG9v6gVwXiR3cGVuZGVuYg3f6iVmoj24o4w4cGF06F90bl9lcGxvYWQ4O4o4LCJyZXN1epVfdi3kdG54O4o4LCJyZXN1epVf6GV1Zih0oj24o4w4dXBsbiFkXgRmcGU4O4o4LCJ0bi9sdG3woj24o4w4YXR0cp34dXR3oj24o4w4ZXh0ZWmkXiNsYXNzoj24onl9LHs4Zp33bGQ4O4JVUERBVEVEX0RBVEU4LCJhbG3hcyoIopNvdXJzZV9tYXN0ZXo4LCJsYWmndWFnZSoIWl0sopxhYpVsoj24VVBEQVRFRCBEQVRFo4w4Zp9ybV9ncp9lcCoIo4osonJ3cXV1cpVkoj24MCosonZ1ZXc4OjAsonRmcGU4O4J0ZXh0XiRhdGV06Wl3o4w4YWRkoj2xLCJz6X13oj24MCosopVk6XQ4OjEsonN3YXJj6CoIMCw4ci9ydGx1cgQ4O4omo4w4bgB06W9uoj17op9wdF90eXB3oj24o4w4bG9v6gVwXgFlZXJmoj24o4w4bG9v6gVwXgRhYpx3oj24o4w4bG9v6gVwXit3eSoIo4osopxvbitlcF9iYWxlZSoIo4osop3zXiR3cGVuZGVuYgk4O4o4LCJ1cl9tdWx06XBsZSoIo4osopxvbitlcF9kZXB3bpR3bpNmXit3eSoIo4osonBhdGhfdG9fdXBsbiFkoj24o4w4cpVz6X13Xgd1ZHR2oj24o4w4cpVz6X13Xih36Wd2dCoIo4osonVwbG9hZF90eXB3oj24o4w4dG9vbHR1cCoIo4osopF0dHJ1YnV0ZSoIo4osopVadGVuZF9jbGFzcyoIo4J9fVl9', NULL);
INSERT INTO `module_master` (`module_id`, `module_name`, `module_title`, `module_note`, `module_created`, `module_desc`, `module_db`, `module_db_key`, `module_type`, `module_config`, `module_lang`) VALUES
(13, 'unit', 'units', 'Unit List', '2016-09-14 06:20:50', NULL, 'course_unit', 'UNIT_ID', 'addon', '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', NULL),
(21, 'comment', 'Comment', 'Comment List', '2016-09-23 04:01:22', NULL, 'course_review', 'ID', 'addon', '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', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `role_master`
--

CREATE TABLE `role_master` (
  `ROLE_ID` int(10) NOT NULL,
  `ROLE_NAME` varchar(100) DEFAULT NULL,
  `INACTIVE` tinyint(1) DEFAULT NULL,
  `CREATED_DATE` datetime DEFAULT NULL,
  `UPDATE_DATE` datetime DEFAULT NULL,
  `CREATED_BY` varchar(50) DEFAULT NULL,
  `UPDATED_BY` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

--
-- Dumping data for table `role_master`
--

INSERT INTO `role_master` (`ROLE_ID`, `ROLE_NAME`, `INACTIVE`, `CREATED_DATE`, `UPDATE_DATE`, `CREATED_BY`, `UPDATED_BY`) VALUES
(1, 'admin', NULL, NULL, NULL, NULL, NULL),
(2, 'user', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `software_master`
--

CREATE TABLE `software_master` (
  `SOFTWARE_ID` int(10) NOT NULL,
  `SOFTWARE_NAME_EN` varchar(300) DEFAULT NULL,
  `SOFTWARE_NAME_SP` varchar(300) DEFAULT NULL,
  `URL_REWRITE_EN` varchar(300) DEFAULT NULL,
  `URL_REWRITE_SP` varchar(300) DEFAULT NULL,
  `INACTIVE` tinyint(1) DEFAULT NULL,
  `CREATED_BY` varchar(100) DEFAULT NULL,
  `CREATED_DATE` datetime DEFAULT NULL,
  `UPDATED_BY` varchar(100) DEFAULT NULL,
  `UPDATED_DATE` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

--
-- Dumping data for table `software_master`
--

INSERT INTO `software_master` (`SOFTWARE_ID`, `SOFTWARE_NAME_EN`, `SOFTWARE_NAME_SP`, `URL_REWRITE_EN`, `URL_REWRITE_SP`, `INACTIVE`, `CREATED_BY`, `CREATED_DATE`, `UPDATED_BY`, `UPDATED_DATE`) VALUES
(8, 'Graphic Design', 'Diseño gráfico', '8-graphic-design', '8-diseno-grafico', 1, NULL, '2016-10-05 10:43:52', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_course_enroll`
--

CREATE TABLE `user_course_enroll` (
  `COURSE_ENROLL_ID` int(10) NOT NULL,
  `COURSE_ID` int(10) DEFAULT NULL,
  `USER_ID` int(10) DEFAULT NULL,
  `COURSE_ENROLL_DATE` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

-- --------------------------------------------------------

--
-- Table structure for table `user_interest_mapping`
--

CREATE TABLE `user_interest_mapping` (
  `MAPPING_ID` int(10) NOT NULL,
  `USER_ID` int(10) DEFAULT NULL,
  `CATEGORY_AREA_ID` int(10) DEFAULT NULL,
  `TYPE` enum('CATEGORY','AREA','SOFTWARE') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

-- --------------------------------------------------------

--
-- Table structure for table `user_master`
--

CREATE TABLE `user_master` (
  `USER_ID` int(10) NOT NULL,
  `USER_NAME` varchar(100) DEFAULT NULL,
  `PASSWORD` varchar(100) DEFAULT NULL,
  `FIRST_NAME` varchar(100) DEFAULT NULL,
  `LAST_NAME` varchar(100) DEFAULT NULL,
  `NICK_NAME` varchar(100) DEFAULT NULL,
  `PROFESSIONAL_HEADLINE` varchar(300) DEFAULT NULL,
  `COUNTRY` int(10) DEFAULT NULL,
  `DOB` date DEFAULT NULL,
  `TELL_ABOUT_YOURSELF` mediumtext,
  `WEBSITE` varchar(150) DEFAULT NULL,
  `PHONE` varchar(60) DEFAULT NULL,
  `USER_IMAGE` varchar(100) DEFAULT NULL,
  `INACTIVE` tinyint(1) DEFAULT NULL,
  `ACTIVATION` varchar(50) DEFAULT NULL,
  `ROLE_ID` int(10) DEFAULT NULL,
  `CREATED_BY` varchar(100) DEFAULT NULL,
  `REMEMBER_TOKEN` varchar(100) DEFAULT NULL,
  `CREATED_DATE` timestamp NULL DEFAULT NULL,
  `UPDATED_BY` varchar(100) DEFAULT NULL,
  `UPDATED_DATE` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

--
-- Dumping data for table `user_master`
--

INSERT INTO `user_master` (`USER_ID`, `USER_NAME`, `PASSWORD`, `FIRST_NAME`, `LAST_NAME`, `NICK_NAME`, `PROFESSIONAL_HEADLINE`, `COUNTRY`, `DOB`, `TELL_ABOUT_YOURSELF`, `WEBSITE`, `PHONE`, `USER_IMAGE`, `INACTIVE`, `ACTIVATION`, `ROLE_ID`, `CREATED_BY`, `REMEMBER_TOKEN`, `CREATED_DATE`, `UPDATED_BY`, `UPDATED_DATE`) VALUES
(1, 'admin@ikraftsolutions.com', '21232f297a57a5a743894a0e4a801fc3', '', '', 'ADMIN', '', NULL, NULL, '', '', '', 'd73c01e61279ffa730f34a6491f475fe.jpg', 1, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(5, 'kapil@ikraftsolutions.com', '21232f297a57a5a743894a0e4a801fc3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '', 2, NULL, NULL, NULL, NULL, NULL),
(9, 'haribhajan101@gmail.com', 'ceb6c970658f31504a901b89dcd3e461', 'Hari', 'kapil', 'Hari Bhajan', 'tester', NULL, NULL, '', 'http://google.com', '123456789', '8aab80959dce62e2407bc0b627d06240.jpg', 1, NULL, 2, NULL, 'c7dcb9aa05f4c65deff70f1aca569e13', NULL, NULL, NULL),
(10, 'test@gmail.com', '21232f297a57a5a743894a0e4a801fc3', NULL, NULL, 'Test', NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '', 2, NULL, NULL, NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `area_master`
--
ALTER TABLE `area_master`
  ADD PRIMARY KEY (`AREA_ID`);

--
-- Indexes for table `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`BANNER_ID`);

--
-- Indexes for table `category_master`
--
ALTER TABLE `category_master`
  ADD PRIMARY KEY (`CATEGORY_ID`);

--
-- Indexes for table `cms`
--
ALTER TABLE `cms`
  ADD PRIMARY KEY (`CMS_ID`);

--
-- Indexes for table `country_master`
--
ALTER TABLE `country_master`
  ADD PRIMARY KEY (`COUNTRY_ID`);

--
-- Indexes for table `course_area_category_mapping`
--
ALTER TABLE `course_area_category_mapping`
  ADD KEY `FK_course_area_category_mapping_course_master` (`COURSE_ID`);

--
-- Indexes for table `course_information`
--
ALTER TABLE `course_information`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `course_master`
--
ALTER TABLE `course_master`
  ADD PRIMARY KEY (`COURSE_ID`);

--
-- Indexes for table `course_review`
--
ALTER TABLE `course_review`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `FK_course_review_user_master` (`USER_ID`),
  ADD KEY `FK_course_review_course_master` (`COURSE_ID`);

--
-- Indexes for table `course_unit`
--
ALTER TABLE `course_unit`
  ADD PRIMARY KEY (`UNIT_ID`),
  ADD KEY `FK_course_unit_course_master` (`COURSE_ID`);

--
-- Indexes for table `course_unit_information`
--
ALTER TABLE `course_unit_information`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `FK_course_unit_information_course_unit` (`UNIT_ID`);

--
-- Indexes for table `email_tempalete`
--
ALTER TABLE `email_tempalete`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `module_master`
--
ALTER TABLE `module_master`
  ADD PRIMARY KEY (`module_id`);

--
-- Indexes for table `role_master`
--
ALTER TABLE `role_master`
  ADD PRIMARY KEY (`ROLE_ID`);

--
-- Indexes for table `software_master`
--
ALTER TABLE `software_master`
  ADD PRIMARY KEY (`SOFTWARE_ID`);

--
-- Indexes for table `user_course_enroll`
--
ALTER TABLE `user_course_enroll`
  ADD PRIMARY KEY (`COURSE_ENROLL_ID`),
  ADD KEY `FK_user_course_enroll_user_master` (`USER_ID`);

--
-- Indexes for table `user_interest_mapping`
--
ALTER TABLE `user_interest_mapping`
  ADD PRIMARY KEY (`MAPPING_ID`),
  ADD KEY `FK_user_interest_mapping_user_master` (`USER_ID`);

--
-- Indexes for table `user_master`
--
ALTER TABLE `user_master`
  ADD PRIMARY KEY (`USER_ID`),
  ADD KEY `FK_user_master_role_master` (`ROLE_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `area_master`
--
ALTER TABLE `area_master`
  MODIFY `AREA_ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `banner`
--
ALTER TABLE `banner`
  MODIFY `BANNER_ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;
--
-- AUTO_INCREMENT for table `category_master`
--
ALTER TABLE `category_master`
  MODIFY `CATEGORY_ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `cms`
--
ALTER TABLE `cms`
  MODIFY `CMS_ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `country_master`
--
ALTER TABLE `country_master`
  MODIFY `COUNTRY_ID` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `course_information`
--
ALTER TABLE `course_information`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=519;
--
-- AUTO_INCREMENT for table `course_master`
--
ALTER TABLE `course_master`
  MODIFY `COURSE_ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=136;
--
-- AUTO_INCREMENT for table `course_review`
--
ALTER TABLE `course_review`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `course_unit`
--
ALTER TABLE `course_unit`
  MODIFY `UNIT_ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=117;
--
-- AUTO_INCREMENT for table `course_unit_information`
--
ALTER TABLE `course_unit_information`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
--
-- AUTO_INCREMENT for table `email_tempalete`
--
ALTER TABLE `email_tempalete`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `module_master`
--
ALTER TABLE `module_master`
  MODIFY `module_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `role_master`
--
ALTER TABLE `role_master`
  MODIFY `ROLE_ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `software_master`
--
ALTER TABLE `software_master`
  MODIFY `SOFTWARE_ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `user_course_enroll`
--
ALTER TABLE `user_course_enroll`
  MODIFY `COURSE_ENROLL_ID` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `user_interest_mapping`
--
ALTER TABLE `user_interest_mapping`
  MODIFY `MAPPING_ID` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `user_master`
--
ALTER TABLE `user_master`
  MODIFY `USER_ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `course_area_category_mapping`
--
ALTER TABLE `course_area_category_mapping`
  ADD CONSTRAINT `FK_course_area_category_mapping_course_master` FOREIGN KEY (`COURSE_ID`) REFERENCES `course_master` (`COURSE_ID`);

--
-- Constraints for table `course_review`
--
ALTER TABLE `course_review`
  ADD CONSTRAINT `FK_course_review_course_master` FOREIGN KEY (`COURSE_ID`) REFERENCES `course_master` (`COURSE_ID`),
  ADD CONSTRAINT `FK_course_review_user_master` FOREIGN KEY (`USER_ID`) REFERENCES `user_master` (`USER_ID`);

--
-- Constraints for table `course_unit`
--
ALTER TABLE `course_unit`
  ADD CONSTRAINT `FK_course_unit_course_master` FOREIGN KEY (`COURSE_ID`) REFERENCES `course_master` (`COURSE_ID`);

--
-- Constraints for table `course_unit_information`
--
ALTER TABLE `course_unit_information`
  ADD CONSTRAINT `FK_course_unit_information_course_unit` FOREIGN KEY (`UNIT_ID`) REFERENCES `course_unit` (`UNIT_ID`);

--
-- Constraints for table `user_course_enroll`
--
ALTER TABLE `user_course_enroll`
  ADD CONSTRAINT `FK_user_course_enroll_user_master` FOREIGN KEY (`USER_ID`) REFERENCES `user_master` (`USER_ID`);

--
-- Constraints for table `user_interest_mapping`
--
ALTER TABLE `user_interest_mapping`
  ADD CONSTRAINT `FK_user_interest_mapping_user_master` FOREIGN KEY (`USER_ID`) REFERENCES `user_master` (`USER_ID`);

--
-- Constraints for table `user_master`
--
ALTER TABLE `user_master`
  ADD CONSTRAINT `FK_user_master_role_master` FOREIGN KEY (`ROLE_ID`) REFERENCES `role_master` (`ROLE_ID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
