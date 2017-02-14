-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 14-02-2017 a las 15:58:21
-- Versión del servidor: 5.6.17
-- Versión de PHP: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `gestionamdocs`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `anotaciones`
--

CREATE TABLE IF NOT EXISTS `anotaciones` (
  `idanotaciones` int(30) NOT NULL AUTO_INCREMENT,
  `idProblema` int(30) NOT NULL,
  `descripcion` varchar(2000) NOT NULL,
  `fechaAnotacion` varchar(50) NOT NULL,
  PRIMARY KEY (`idanotaciones`),
  KEY `anotaciones_problemas_FK` (`idProblema`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=40 ;

--
-- Volcado de datos para la tabla `anotaciones`
--

INSERT INTO `anotaciones` (`idanotaciones`, `idProblema`, `descripcion`, `fechaAnotacion`) VALUES
(1, 28346, 'Problema esta bajo investigación por parte de IBM', '06-02-2017 00:00:00'),
(11, 28579, 'Pendiente, incidente aun abierto', '25/01/2017 00:00:00'),
(12, 28579, 'Incidencia origen aún está abierta y se corrige con HF#100012856 ya desplegado en producción pero está a la espera de una prueba adicional solicitada al usuario dado que la última prueba efectuada por el usuario no estaba correcta.', '03/02/2017 00:00:00'),
(13, 28661, 'Causa Raíz aun pendiente, el monitoreo es validado un minuto después, ya que retoma la conexión.', '25/01/2017 00:00:00'),
(14, 28661, 'AMDOCS no tiene información adicional ni avances por este tema.', '03/02/2017 00:00:00'),
(15, 28664, 'ODS Corresponde a Legado,se debe validar con el equipo de Soporte SWF.', '25/01/2017 00:00:00'),
(16, 28674, 'Problema esta bajo investigacion por parte de IBM.', '25/01/2017 00:00:00'),
(17, 28680, 'Asociado a PBI000000028661.', '25/01/2017 00:00:00'),
(18, 28680, 'AMDOCS indica que no queda claro a qué error se hace referencia. Existe algún código de incidencia relacionado? No se ve en Remedy.', '03/02/2017 00:00:00'),
(19, 28683, 'Validar cambio en política/procedimiento de respaldo.', '25/01/2017 00:00:00'),
(20, 28683, 'Validar que grupo hace los respaldos.', '25/01/2017 00:00:00'),
(21, 28686, 'AMDOCS indica que este problema no debe estar relacionado a Amdocs pues las cancelaciones a las que hace referencia el CRQ000000122723 fueron atendidas y resueltas por IBM sin intervención de Amdocs', '03/02/2017 00:00:00'),
(22, 28708, 'se entrega a Nora para que lo sume a su planilla. La mayoria de las incidencias asociadas, fueron asignadas a DPOBLETE.', '13/01/2017'),
(23, 28708, 'Dpoblete indica que normalmente se debe a problemas en las mallas de procesos, pero que la acción es sólo volver a subir el servicio (previa validación).', '13/01/2017 00:00:00'),
(24, 28834, 'Incidencia relacionada con PBI000000029538', '06/02/2017 00:00:00'),
(25, 29043, 'Falta validación de Procedimiento por parte de AMDOCS.', '13/01/2017 00:00:00'),
(26, 29043, 'Andrés Gallardo, realizará la validación e informará.', '25/01/2017 00:00:00'),
(27, 29043, 'Andres Gallarado valida los procedimientos de aplicacion de HF EPC - V2.', '31/01/2017 00:00:00'),
(28, 29538, 'Correo Enviado, solicitando validación', '06/02/2017 00:00:00'),
(29, 29637, 'Indiencia se encuentra bajo investigacion por parte de IBM', '06/02/2017 00:00:00'),
(33, 28579, 'se chequearon servidores que llegaran a la misma hora y se espera validacion por parte de telefonica de los servidores.', '09/02/2017 11:10:42'),
(34, 28661, 'Se debe ver plataforma weblogic de IBM para verificar que ande bien, luego se pasa a AMDOCS si esto falla.', '09/02/2017 11:11:57'),
(36, 28680, 'Se verifica que no esta asociado a PBI000000028661 y aun no se tiene claro a que se debe incidencia.', '09/02/2017 11:13:59'),
(37, 28683, 'PBI esta por parte de TCH', '09/02/2017 11:14:37'),
(38, 28708, 'Se envian incidencias asociadas al PBI a andres para validacion (INC000000745626, INC000000746513, INC000000751351, INC000000752563, INC000000753522)', '09/02/2017 11:17:44'),
(39, 29953, 'Se envia correo AndrÃ©s Gallardo para resolucion de casos pendientes con el problema', '13/02/2017 12:44:57');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `preventiveactions`
--

CREATE TABLE IF NOT EXISTS `preventiveactions` (
  `idpa` int(50) NOT NULL AUTO_INCREMENT,
  `idproblema` int(50) NOT NULL,
  `descripcion` varchar(2000) NOT NULL,
  `responsable` varchar(50) NOT NULL,
  `personaresponsable` varchar(50) NOT NULL,
  `lineaservicio` varchar(50) NOT NULL,
  `fechatermino` varchar(50) NOT NULL,
  `estado` varchar(30) NOT NULL,
  PRIMARY KEY (`idpa`),
  KEY `preventiveactions_problemasibm_FK` (`idproblema`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `preventiveactions`
--

INSERT INTO `preventiveactions` (`idpa`, `idproblema`, `descripcion`, `responsable`, `personaresponsable`, `lineaservicio`, `fechatermino`, `estado`) VALUES
(1, 20654, 'Mejoramiento de procesos batch para que corran por nombre de instancia y no por llamado directo a IP', 'TCH', 'Jorge Garcia', 'TCH', ' ', 'Vencida');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `problemas`
--

CREATE TABLE IF NOT EXISTS `problemas` (
  `idProblema` int(30) NOT NULL,
  `estado` varchar(30) NOT NULL,
  `resumen` varchar(2000) NOT NULL,
  `grupoAsignado` varchar(40) NOT NULL,
  `usuarioAsignado` varchar(40) DEFAULT NULL,
  `fechaEnvio` varchar(50) NOT NULL,
  `fechaDeseada` varchar(50) DEFAULT NULL,
  `prioridad` varchar(15) NOT NULL,
  `fechaUltimaMod` varchar(50) NOT NULL,
  PRIMARY KEY (`idProblema`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `problemas`
--

INSERT INTO `problemas` (`idProblema`, `estado`, `resumen`, `grupoAsignado`, `usuarioAsignado`, `fechaEnvio`, `fechaDeseada`, `prioridad`, `fechaUltimaMod`) VALUES
(28346, 'Bajo investigacion', 'INC 688796 - CRM Belive - NW', 'IBM_NETWORKING', 'NELSON CARVAJAL', '29/09/2016 19:40:07', '21/10/2016 0:00:00', 'Alta', '29/09/2016 20:03:38'),
(28579, 'En revisión', 'Incidencia en compra de bolsas con opción DCO', 'FULLSTACK_TRIAGE', 'ANDRES GALLARDO HEYRAUD', '08/11/2016 10:02:29', '15/11/2016 0:00:00', 'Crítica', '08/11/2016 10:02:29'),
(28661, 'En revisión', 'desincronización entre AMC y sistema operativo', 'FULLSTACK_TRIAGE', 'ANDRES GALLARDO HEYRAUD', '06/02/2017 16:23:38', '2016-12-08', 'Crítica', '06/02/2017 16:23:38'),
(28664, 'En revisión', 'Cancela  910000_ODS  de la malla  ODS /  TEF_CHILE del  161112\r\n', 'FULLSTACK_TRIAGE', 'ANDRES GALLARDO HEYRAUD', '06/02/2017 16:25:06', '2016-12-08', 'Crítica', '06/02/2017 16:25:06'),
(28674, 'Bajo investigación', 'Indisponibilidad Turbo Charging\r\n', 'SOPORTE APLICACIONES WEBSPHERE', 'MURCIA MARGARITA GUZMAN RIVERA', '06/02/2017 16:26:42', '2016-12-30', 'Crítica', '06/02/2017 16:26:42'),
(28680, 'Bajo investigación', 'No se pueden hacer llamadas durante puebas comerciales', 'FULLSTACK_TRIAGE', 'ANDRES GALLARDO HEYRAUD', '06/02/2017 16:27:48', '2016-12-16', 'Crítica', '06/02/2017 16:27:48'),
(28683, 'En revisión', 'Clientes no pueden hacer llamadas', 'FULLSTACK_TRIAGE', 'ANDRES GALLARDO HEYRAUD', '06/02/2017 16:28:59', '2016-12-16', 'Crítica', '06/02/2017 16:28:59'),
(28686, 'En revisión', 'Incidenci ocurrida tras PaP EPC', 'FULLSTACK_TRIAGE', 'ANDRES GALLARDO HEYRAUD', '06/02/2017 16:30:43', '2016-12-16', 'Crítica', '06/02/2017 16:30:43'),
(28708, 'En revisión', 'BELIEVE: Constantes caÃ­das de proceso de Turbo Charging JMS', 'SOPORTE APLICACIONES WEBSPHERE', '', '06/02/2017 16:32:30', '2017-02-06', 'Alta', '06/02/2017 16:32:30'),
(28834, 'En revisión', 'Se levanta incidencia ya que proceso de EOD demora mas de la habitual. duro 2:07 hoy.', 'FULLSTACK_TRIAGE', 'ANDRES GALLARDO HEYRAUD', '06/02/2017 16:34:07', '2016-11-29', 'Crítica', '06/02/2017 16:34:07'),
(29043, 'Bajo investigación', 'HF EPC - IMPOSIBILIDAD DE REALIZAR LLAMADAS', 'ADMINISTRACION BD', 'CRISTIAN DIAZ OLMEDO', '06/02/2017 16:35:49', '2016-12-30', 'Alta', '06/02/2017 16:35:49'),
(29538, 'Bajo investigación', 'CANCELACION EOD', 'FULLSTACK_TRIAGE', 'ANDRES GALLARDO HEYRAUD', '06/02/2017 16:37:32', '2017-01-21', 'Alta', '06/02/2017 16:37:32'),
(29637, 'Bajo investigación', 'INDISPONIBILIDAD ESB', 'ADMINISTRACION BD', 'JUAN C VASQUEZ AYALA', '06/02/2017 16:41:08', '2017-02-17', 'Crítica', '06/02/2017 16:41:08'),
(29953, 'Bajo investigaciÃ³n', 'CRM_APP server seems down', 'FULLSTACK_TRIAGE', 'ANDRES GALLARDO HEYRAUD', '07/02/2017 17:23:45\n', '2017-02-24 12:28:44', 'Critica', '13/02/2017 12:28:44');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `problemasibm`
--

CREATE TABLE IF NOT EXISTS `problemasibm` (
  `idproblema` int(30) NOT NULL,
  `mesproblema` varchar(50) NOT NULL,
  `estado` varchar(40) NOT NULL,
  `descripcion` varchar(2000) NOT NULL,
  `fechaentregareal` varchar(50) NOT NULL,
  `fechainicioincidente` varchar(50) NOT NULL,
  `fechaterminoincidente` varchar(50) NOT NULL,
  `servicioafectado` varchar(40) NOT NULL,
  PRIMARY KEY (`idproblema`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `problemasibm`
--

INSERT INTO `problemasibm` (`idproblema`, `mesproblema`, `estado`, `descripcion`, `fechaentregareal`, `fechainicioincidente`, `fechaterminoincidente`, `servicioafectado`) VALUES
(20654, 'AGOSTO 2015', 'En revisiÃ³n por parte de TCH', 'Telefonica -Problema con mÃ¡quina PDB2164', '2015-08-11 16:55:04', '2015-08-11 16:55:04', '2015-08-11 16:55:04', 'Unifica'),
(21048, 'AGOSTO 2015', 'En revisiÃ³n por parte de TCH', 'Indisponibilidad en GUF - Repositorio de boletas  y COL', '2015-08-24 16:57:47', '2015-08-14 16:57:47', '2015-08-14 16:57:47', 'GUF y COL'),
(21350, 'SEPTIEMBRE 2015', 'En revisiÃ³n por parte de TCH', 'Unifica Front End sin reclamos tÃ©cnicos', '2015-09-16 16:59:55', '2015-09-09 16:59:55', '2015-09-09 16:59:55', 'GDTH');

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `anotaciones`
--
ALTER TABLE `anotaciones`
  ADD CONSTRAINT `anotaciones_problemas_FK` FOREIGN KEY (`idProblema`) REFERENCES `problemas` (`idProblema`);

--
-- Filtros para la tabla `preventiveactions`
--
ALTER TABLE `preventiveactions`
  ADD CONSTRAINT `preventiveactions_problemasibm_FK` FOREIGN KEY (`idproblema`) REFERENCES `problemasibm` (`idproblema`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
