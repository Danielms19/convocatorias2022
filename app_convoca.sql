/*
Navicat MySQL Data Transfer

Source Server         : con
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : app_convoca

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2018-11-10 10:53:40
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for ci_sessions
-- ----------------------------
DROP TABLE IF EXISTS `ci_sessions`;
CREATE TABLE `ci_sessions` (
  `id` varchar(40) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) unsigned NOT NULL DEFAULT '0',
  `data` blob NOT NULL,
  KEY `ci_sessions_timestamp` (`timestamp`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of ci_sessions
-- ----------------------------
INSERT INTO `ci_sessions` VALUES ('aa933069d5c8e02b61da687a5e3206e236ac4707', '192.168.2.10', '1541863204', 0x63617074636861576F72647C733A343A2234303339223B757365727C733A353A2261646D696E223B6E6F6D627265737C733A353A2261646D696E223B76697374617C693A303B);
INSERT INTO `ci_sessions` VALUES ('bb3e24ae8401bc7f5703bba50d4dc4d1904bf342', '192.168.2.10', '1541865163', '');

-- ----------------------------
-- Table structure for convocatoria
-- ----------------------------
DROP TABLE IF EXISTS `convocatoria`;
CREATE TABLE `convocatoria` (
  `IDconvocatoria` int(11) NOT NULL AUTO_INCREMENT,
  `IDtipo` int(11) DEFAULT NULL,
  `numero` varchar(20) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `cantidad` int(11) DEFAULT NULL,
  `asuntoContrato` text,
  `estado` int(11) DEFAULT NULL,
  `registradoPor` varchar(20) DEFAULT NULL,
  `fechaRegistro` datetime DEFAULT NULL,
  `modificadoPor` varchar(20) DEFAULT NULL,
  `fechaModificacion` datetime DEFAULT NULL,
  PRIMARY KEY (`IDconvocatoria`),
  KEY `fk_idtipo_idx` (`IDtipo`),
  CONSTRAINT `fk_idtipo` FOREIGN KEY (`IDtipo`) REFERENCES `tipo` (`IDtipo`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=499 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of convocatoria
-- ----------------------------
INSERT INTO `convocatoria` VALUES ('1', '1', '001-I', '2016-01-13', '206', 'DOCENTES FORTALEZA', '3', 'admin', '2016-08-07 17:46:19', null, '2016-08-07 17:49:08');
INSERT INTO `convocatoria` VALUES ('2', '1', '002-I', '2016-01-13', '63', 'ACOMPAÑANTES PEDAGÓGICOS DE PRIMARIA', '3', 'admin', '2016-08-07 17:56:52', null, null);
INSERT INTO `convocatoria` VALUES ('3', '1', '003-I', '2016-01-13', '7', 'COORDINADORES INNOVACIÓN SOPORTE TECNOLOGÍAS', '3', 'admin', '2016-08-07 18:01:01', null, null);
INSERT INTO `convocatoria` VALUES ('4', '1', '004-I', '2016-01-13', '7', 'PSICÓLOGOS O TRABAJADOR SOCIAL', '3', 'admin', '2016-08-07 18:03:23', null, null);
INSERT INTO `convocatoria` VALUES ('5', '1', '005-I', '2016-01-13', '7', 'COORDINADORES ADMINISTRATIVOS Y DE RECURSOS EDUCATIVOS', '3', 'admin', '2016-08-07 18:04:16', null, null);
INSERT INTO `convocatoria` VALUES ('6', '1', '007-I', '2016-01-13', '1', 'PERSONAL DE MANTENIMIENTO', '3', 'admin', '2016-08-07 18:05:19', null, null);
INSERT INTO `convocatoria` VALUES ('7', '1', '008-I', '2016-01-13', '5', 'PERSONAL DE SECRETARÍA', '3', 'admin', '2016-08-07 18:06:11', null, null);
INSERT INTO `convocatoria` VALUES ('8', '1', '009-I', '2016-01-13', '4', 'PERSONAL DE APOYO EDUCATIVO', '3', 'admin', '2016-08-07 18:07:00', null, null);
INSERT INTO `convocatoria` VALUES ('9', '1', '010-I', '2016-01-15', '10', 'PROFESIONALES EN EDUCACIÓN', '3', 'admin', '2016-08-07 18:08:10', null, null);
INSERT INTO `convocatoria` VALUES ('10', '1', '012-I', '2016-01-21', '7', 'COORDINADORES INNOVACIÓN SOPORTE TECNOLOGÍAS', '3', 'admin', '2016-08-07 18:13:48', null, null);
INSERT INTO `convocatoria` VALUES ('11', '1', '013-I', '2016-01-21', '7', 'COORDINADORES ADMINISTRATIVOS Y DE RECURSOS EDUCATIVOS', '3', 'admin', '2016-08-07 18:15:43', null, null);
INSERT INTO `convocatoria` VALUES ('12', '1', '014-I', '2016-01-21', '7', 'PSICÓLOGO O TRABAJADOR SOCIAL', '3', 'admin', '2016-08-07 18:17:31', null, null);
INSERT INTO `convocatoria` VALUES ('13', '1', '015-I', '2016-01-21', '7', 'PERSONAL DE APOYO EDUCATIVO', '3', 'admin', '2016-08-07 18:19:46', null, null);
INSERT INTO `convocatoria` VALUES ('14', '1', '016-I', '2016-01-21', '5', 'PERSONAL DE SECRETARÍA', '3', 'admin', '2016-08-07 18:21:13', null, null);
INSERT INTO `convocatoria` VALUES ('15', '1', '017-I', '2016-01-21', '3', 'PERSONAL DE VIGILANCIA', '3', 'admin', '2016-08-07 18:23:04', null, null);
INSERT INTO `convocatoria` VALUES ('16', '1', '011-I', '2016-01-22', '11', 'ACOMPAÑANTES DE REDES DE EDUCACIÓN FÍSICA', '3', 'admin', '2016-08-07 18:28:17', null, null);
INSERT INTO `convocatoria` VALUES ('17', '1', '018-II', '2016-01-29', '19', 'ACOMPAÑANTES DE SOPORTE PEDAGÓGICO', '3', 'admin', '2016-08-07 18:31:55', null, null);
INSERT INTO `convocatoria` VALUES ('18', '1', '022-II', '2016-02-04', '10', 'ACOMPAÑANTES DE REDES EN EDUCACIÓN FÍSICA', '3', 'admin', '2016-08-07 18:33:37', null, null);
INSERT INTO `convocatoria` VALUES ('19', '1', '027-II', '2016-02-12', '5', 'DOCENTES FORTALEZA', '3', 'admin', '2016-08-07 18:37:03', null, null);
INSERT INTO `convocatoria` VALUES ('20', '1', '019-I', '2016-02-22', '1', 'TÉCNICO LEGAL PARA EL ÁREA DE RECURSOS HUMANOS', '3', 'admin', '2016-08-07 18:39:12', null, null);
INSERT INTO `convocatoria` VALUES ('21', '1', '020-I', '2016-02-22', '1', 'TÉCNICO ADMINISTRATIVO', '3', 'admin', '2016-08-07 18:41:14', null, null);
INSERT INTO `convocatoria` VALUES ('22', '1', '015-II', '2016-02-22', '1', 'PERSONAL DE APOYO EDUCATIVO', '3', 'admin', '2016-08-07 18:43:08', null, '2016-08-07 18:46:49');
INSERT INTO `convocatoria` VALUES ('23', '1', '016-II', '2016-02-22', '1', 'PERSONAL DE SECRETARIA', '3', 'admin', '2016-08-07 18:44:33', null, null);
INSERT INTO `convocatoria` VALUES ('24', '1', '022-III', '2016-02-22', '2', 'ACOMPAÑANTES DE REDES DE EDUCACIÓN FÍSICA', '3', 'admin', '2016-08-07 18:47:26', null, null);
INSERT INTO `convocatoria` VALUES ('25', '1', '021-I', '2016-02-22', '1', 'AGENTE DE SIAGIE', '3', 'admin', '2016-08-07 18:49:13', null, null);
INSERT INTO `convocatoria` VALUES ('26', '1', '023-I', '2016-02-23', '2', 'DOCENTES FORTALEZA', '3', 'admin', '2016-08-07 18:52:57', null, null);
INSERT INTO `convocatoria` VALUES ('27', '1', '036-I', '2016-02-26', '1', 'COORDINADOR DE INNOVACIÓN SOPORTE TECNOLOGÍAS', '3', 'admin', '2016-08-07 18:55:19', null, null);
INSERT INTO `convocatoria` VALUES ('28', '1', '024-I', '2016-03-03', '2', 'CHOFERES', '3', 'admin', '2016-08-07 18:58:18', null, null);
INSERT INTO `convocatoria` VALUES ('29', '1', '025-I', '2016-03-03', '1', 'PROFESIONAL EN CONTABILIDAD PARA EL EQUIPO DE TESORERÍA', '3', 'admin', '2016-08-07 19:01:38', null, null);
INSERT INTO `convocatoria` VALUES ('30', '1', '026-I', '2016-03-03', '1', 'ABOGADO PARA LA SECRETARÍA TÉCNICA DEL PROCEDIMIENTO ADMINISTRATIVO DISCIPLINARIO - LEY DEL SERVICIO CIVIL', '3', 'admin', '2016-08-07 19:03:38', null, null);
INSERT INTO `convocatoria` VALUES ('31', '1', '028-I', '2016-03-03', '1', 'TÉCNICO ADMINISTRATIVO PARA INTERVENCIONES PEDAGÓGICAS', '3', 'admin', '2016-08-07 19:05:28', null, '2016-08-08 08:11:05');
INSERT INTO `convocatoria` VALUES ('32', '1', '029-I', '2016-03-03', '1', 'TÉCNICO LEGAL PARA EL ÓRGANO DE ASESORÍA JURÍDICA', '3', 'admin', '2016-08-07 19:07:26', null, null);
INSERT INTO `convocatoria` VALUES ('33', '1', '030-I', '2016-03-03', '1', 'TÉCNICO ADMINISTRATIVO PARA RECURSOS HUMANOS', '3', 'admin', '2016-08-07 19:12:02', null, null);
INSERT INTO `convocatoria` VALUES ('34', '1', '031-I', '2016-03-03', '1', 'ASISTENTE ADMINISTRATIVO PARA RECURSOS HUMANOS', '3', 'admin', '2016-08-07 19:12:49', null, '2016-08-08 13:11:59');
INSERT INTO `convocatoria` VALUES ('35', '1', '032-I', '2016-03-03', '1', 'ASISTENTE ADMINISTRATIVO PARA EL ÁREA DE RECURSOS HUMANOS', '3', 'admin', '2016-08-07 19:13:27', null, null);
INSERT INTO `convocatoria` VALUES ('36', '1', '033-I', '2016-03-03', '1', 'ESPECIALISTA EN INNOVACIÓN PEDAGÓGICA', '3', 'admin', '2016-08-07 19:20:03', null, null);
INSERT INTO `convocatoria` VALUES ('38', '1', '022-IV', '2016-03-07', '1', 'ACOMPAÑANTES DE REDES DE EDUCACIÓN FÍSICA', '3', 'admin', '2016-08-07 19:21:57', null, null);
INSERT INTO `convocatoria` VALUES ('43', '1', '022-V', '2016-03-16', '1', 'ACOMPAÑANTE DE REDES DE EDUCACIÓN FÍSICA', '3', 'admin', '2016-08-07 19:33:50', null, null);
INSERT INTO `convocatoria` VALUES ('44', '1', '035-I', '2016-03-18', '1', 'TÉCNICO LEGAL PARA EL ÁREA DE RECURSOS HUMANOS', '3', 'admin', '2016-08-07 19:34:24', null, '2016-08-08 08:10:38');
INSERT INTO `convocatoria` VALUES ('45', '1', '34-II', '2016-04-19', '1', 'ABOGADO PARA LA SECRETARIA TÉCNICA DEL PROCEDIMIENTO ADMINISTRATIVO DISCIPLINARIO - LEY DEL SERVICIO CIVIL', '3', 'admin', '2016-08-08 08:12:23', null, null);
INSERT INTO `convocatoria` VALUES ('46', '1', '032-II', '2016-04-19', '1', 'ASISTENTE ADMINISTRATIVO', '3', 'admin', '2016-08-08 08:12:55', null, null);
INSERT INTO `convocatoria` VALUES ('47', '1', '026-II', '2016-04-19', '1', 'ABOGADO PARA LA SECRETARÍA TÉCNICA DEL PROCEDIMIENTO ADMINISTRATIVO DISCIPLINARIO - LEY DEL SERVICIO CIVIL', '3', 'admin', '2016-08-08 08:13:21', null, null);
INSERT INTO `convocatoria` VALUES ('48', '1', '037-I', '2016-04-19', '1', 'TÉCNICO ADMINISTRATIVO PARA EL EQUIPO DE PLANILLAS Y PENSIONES', '3', 'admin', '2016-08-08 08:13:48', null, '2016-08-08 08:17:46');
INSERT INTO `convocatoria` VALUES ('49', '1', '038-I', '2016-04-19', '1', 'TÉCNICO ADMINISTRATIVO DE PLANILLA', '3', 'admin', '2016-08-08 08:17:17', null, null);
INSERT INTO `convocatoria` VALUES ('50', '1', '039-I', '2016-04-19', '18', 'PERSONAL DE VIGILANCIA', '3', 'admin', '2016-08-08 08:18:16', null, null);
INSERT INTO `convocatoria` VALUES ('51', '1', '12-III', '2016-04-22', '1', 'COORDINADOR INNOVACIÓN SOPORTE TECNOLOGÍAS', '3', 'admin', '2016-08-08 08:18:53', null, null);
INSERT INTO `convocatoria` VALUES ('52', '1', '002-III', '2016-04-26', '6', 'ACOMPAñANTES DE SOPORTE PEDAGÓGICO DE PRIMARIA', '3', 'admin', '2016-08-08 08:20:03', null, null);
INSERT INTO `convocatoria` VALUES ('53', '1', '023-III', '2016-05-05', '5', 'DOCENTES FORTALEZAS', '3', 'admin', '2016-08-08 08:34:13', null, '2016-08-12 16:44:24');
INSERT INTO `convocatoria` VALUES ('54', '1', '044-I', '2016-05-12', '1', 'ESPECIALISTA EN CONTABILIDAD', '3', 'admin', '2016-08-08 08:35:48', null, null);
INSERT INTO `convocatoria` VALUES ('55', '1', '043-I', '2016-05-12', '1', 'TÉCNICO ADMINISTRATIVO PARA EL COMITÉ DE CONTROL INTERNO', '3', 'admin', '2016-08-08 08:36:25', null, null);
INSERT INTO `convocatoria` VALUES ('56', '1', '042-I', '2016-05-12', '1', 'ASISTENTE ADMINISTRATIVO PARA EL EQUIPO TRÁMITE DOCUMENTARIO', '3', 'admin', '2016-08-08 08:36:51', null, null);
INSERT INTO `convocatoria` VALUES ('57', '1', '041-I', '2016-05-12', '1', 'ASISTENTE ADMINISTRATIVO', '3', 'admin', '2016-08-08 08:37:13', null, null);
INSERT INTO `convocatoria` VALUES ('58', '1', '040-I', '2016-05-12', '1', 'ASISTENTE ADMINISTRATIVO', '3', 'admin', '2016-08-08 08:41:09', null, null);
INSERT INTO `convocatoria` VALUES ('59', '1', '058-I', '2016-05-18', '2', 'TÉCNICOS ADMINISTRATIVO ORIENTADOR', '3', 'admin', '2016-08-08 08:42:42', null, null);
INSERT INTO `convocatoria` VALUES ('60', '1', '054-I', '2016-05-18', '8', 'TÉCNICOS DE ESCALAFÓN', '3', 'admin', '2016-08-08 08:50:45', null, null);
INSERT INTO `convocatoria` VALUES ('61', '1', '056-I', '2016-05-18', '2', 'NOTIFICADORES', '3', 'admin', '2016-08-08 08:51:32', null, null);
INSERT INTO `convocatoria` VALUES ('62', '1', '052-I', '2016-05-18', '1', 'ESPECIALISTA EN RECURSOS HUMANOS', '3', 'admin', '2016-08-08 08:52:18', null, null);
INSERT INTO `convocatoria` VALUES ('63', '1', '050-I', '2016-05-18', '1', 'MÉDICO', '3', 'admin', '2016-08-08 08:53:15', null, null);
INSERT INTO `convocatoria` VALUES ('64', '1', '048-I', '2016-05-18', '1', 'ESPECIALISTA EN MONITOREO', '3', 'admin', '2016-08-08 08:54:13', null, null);
INSERT INTO `convocatoria` VALUES ('65', '1', '046-I', '2016-05-18', '2', 'ANALISTAS DE RACIONALIZACIÓN', '3', 'admin', '2016-08-08 08:54:53', null, null);
INSERT INTO `convocatoria` VALUES ('66', '1', '057-I', '2016-05-18', '6', 'TÉCNICOS ADMINISTRATIVOS', '3', 'admin', '2016-08-08 08:55:37', null, null);
INSERT INTO `convocatoria` VALUES ('67', '1', '055-I', '2016-05-18', '4', 'TÉCNICOS EN RECURSOS HUMANOS', '3', 'admin', '2016-08-08 08:56:28', null, null);
INSERT INTO `convocatoria` VALUES ('68', '1', '053-I', '2016-05-18', '2', 'OFICINISTAS PARA EL EQUIPO DE ESCALAFÓN Y LEGAJOS', '3', 'admin', '2016-08-08 08:57:19', null, null);
INSERT INTO `convocatoria` VALUES ('69', '1', '049-I', '2016-05-18', '2', 'ABOGADOS PARA ASESORÍA JURÍDICA', '3', 'admin', '2016-08-08 08:58:13', null, null);
INSERT INTO `convocatoria` VALUES ('70', '1', '051-I', '2016-05-18', '1', 'ASISTENTE SOCIAL PARA EL EQUIPO DE DESARROLLO Y BIENESTAR SOCIAL', '3', 'admin', '2016-08-08 08:59:37', null, null);
INSERT INTO `convocatoria` VALUES ('71', '1', '045-I', '2016-05-18', '1', 'ESPECIALISTA DE PRESUPUESTO', '3', 'admin', '2016-08-08 09:00:15', null, null);
INSERT INTO `convocatoria` VALUES ('72', '1', '047-I', '2016-05-18', '1', 'COORDINADOR DEL EQUIPO DE ESTADÍSTICA Y MONITOREO', '3', 'admin', '2016-08-08 09:00:46', null, null);
INSERT INTO `convocatoria` VALUES ('73', '1', '39-II', '2016-05-19', '12', 'PERSONAL DE VIGILANCIA', '3', 'admin', '2016-08-08 09:01:44', null, null);
INSERT INTO `convocatoria` VALUES ('74', '1', '013-II', '2016-05-30', '1', 'COORDINADOR ADMINISTRATIVO Y DE RECURSOS EDUCATIVOS', '3', 'admin', '2016-08-08 09:27:10', null, null);
INSERT INTO `convocatoria` VALUES ('75', '1', '002-IV', '2016-05-31', '4', 'ACOMPAñANTES PEDAGÓGICOS DE PRIMARIA', '3', 'admin', '2016-08-08 09:28:05', null, null);
INSERT INTO `convocatoria` VALUES ('76', '1', '059-I', '2016-06-10', '1', 'ESPECIALISTA DE PRESUPUESTO', '3', 'admin', '2016-08-08 09:28:49', null, null);
INSERT INTO `convocatoria` VALUES ('77', '1', '060-I', '2016-06-10', '1', 'MÉDICO OCUPACIONAL', '3', 'admin', '2016-08-08 09:29:31', null, null);
INSERT INTO `convocatoria` VALUES ('78', '1', '061-I', '2016-06-10', '1', 'ASISTENTE SOCIAL', '3', 'admin', '2016-08-08 09:30:05', null, null);
INSERT INTO `convocatoria` VALUES ('79', '1', '062-I', '2016-06-10', '1', 'ESPECIALISTA EN RECURSOS HUMANOS', '3', 'admin', '2016-08-08 09:30:44', null, null);
INSERT INTO `convocatoria` VALUES ('80', '1', '063-I', '2016-06-10', '2', 'OFICINISTAS PARA EL EQUIPO DE ESCALAFÓN Y LEGAJOS', '3', 'admin', '2016-08-08 09:31:46', null, null);
INSERT INTO `convocatoria` VALUES ('81', '1', '064-I', '2016-06-10', '2', 'TÉCNICOS PARA EL EQUIPO DE ADMINISTRACIÓN DE PERSONAL', '3', 'admin', '2016-08-08 09:32:50', null, null);
INSERT INTO `convocatoria` VALUES ('82', '1', '071-I', '2016-06-16', '4', 'ABOGADOS', '3', 'admin', '2016-08-08 09:34:16', null, '2016-08-08 09:51:09');
INSERT INTO `convocatoria` VALUES ('83', '1', '069-I', '2016-06-16', '1', 'AUDITOR DE INGENIERÍA CIVIL', '3', 'admin', '2016-08-08 09:35:04', null, null);
INSERT INTO `convocatoria` VALUES ('84', '1', '068-I', '2016-06-16', '1', 'AUDITOR COMO CONTADOR PÚBLICO', '3', 'admin', '2016-08-08 09:35:57', null, null);
INSERT INTO `convocatoria` VALUES ('85', '1', '067-I', '2016-06-16', '1', 'ABOGADO PARA SECRETARÍA TÉCNICA DE SERVIR', '3', 'admin', '2016-08-08 09:36:52', null, null);
INSERT INTO `convocatoria` VALUES ('86', '1', '066-I', '2016-06-16', '1', 'ABOGADO PARA RECURSOS HUMANOS', '3', 'admin', '2016-08-08 09:37:38', null, null);
INSERT INTO `convocatoria` VALUES ('87', '1', '070-I', '2016-06-16', '1', 'COORDINADOR PARA EL EQUIPO DE SUPERVISIÓN DE II.EE. ', '3', 'admin', '2016-08-08 09:38:22', null, null);
INSERT INTO `convocatoria` VALUES ('88', '1', '065-I', '2016-06-16', '1', 'ABOGADO COMO SECRETARIO TÉCNICO DE SERVIR', '3', 'admin', '2016-08-08 09:39:10', null, '2016-08-08 13:36:47');
INSERT INTO `convocatoria` VALUES ('89', '1', '076-I', '2016-06-21', '1', 'ESPECIALISTA EN CONTABILIDAD', '3', 'admin', '2016-08-08 09:40:06', null, null);
INSERT INTO `convocatoria` VALUES ('90', '1', '075-I', '2016-06-21', '1', 'RESPONSABLE PARA EL EQUIPO DE ESCALAFÓN Y LEGAJOS', '3', 'admin', '2016-08-08 09:40:50', null, null);
INSERT INTO `convocatoria` VALUES ('91', '1', '073-I', '2016-06-21', '1', 'ANALISTA EN RACIONALIZACIÓN', '3', 'admin', '2016-08-08 09:41:52', null, null);
INSERT INTO `convocatoria` VALUES ('92', '1', '072-I', '2016-06-21', '7', 'TÉCNICOS EN ESCALAFÓN', '3', 'admin', '2016-08-08 09:42:45', null, null);
INSERT INTO `convocatoria` VALUES ('93', '1', '081-I', '2016-06-27', '9', 'TERAPISTA OCUPACIONAL PARA CEBE', '3', 'admin', '2016-08-08 09:56:58', null, null);
INSERT INTO `convocatoria` VALUES ('94', '1', '080-I', '2016-06-27', '1', 'MODELO LINGUISTICO DE LENGUA DE SEñAS PERUANA PARA EBR/EBA', '3', 'admin', '2016-08-08 09:58:42', null, null);
INSERT INTO `convocatoria` VALUES ('95', '1', '079-I', '2016-06-27', '1', 'INTÉRPRETE DE LENGUA DE SEñAS PERUANA PARA EBR/EBA ', '3', 'admin', '2016-08-08 09:59:22', null, null);
INSERT INTO `convocatoria` VALUES ('96', '1', '078-I', '2016-06-27', '1', 'TÉCNICO ADMINISTRATIVO PARA EL COMITÉ DE CONTROL INTERNO', '3', 'admin', '2016-08-08 10:00:24', null, null);
INSERT INTO `convocatoria` VALUES ('97', '1', '077-I', '2016-06-27', '1', 'ABOGADO', '3', 'admin', '2016-08-08 10:00:55', null, null);
INSERT INTO `convocatoria` VALUES ('98', '1', '082-I', '2016-07-06', '1', 'ESPECIALISTA PARA LA GESTIÓN DEL INCREMENTO EN EL ACCESO I', '3', 'admin', '2016-08-08 10:01:32', null, null);
INSERT INTO `convocatoria` VALUES ('99', '1', '023-IV', '2016-07-06', '3', 'DOCENTES FORTALEZA', '3', 'admin', '2016-08-08 10:03:11', null, null);
INSERT INTO `convocatoria` VALUES ('100', '1', '063-II', '2016-07-11', '2', 'OFICINISTAS PARA EL EQUIPO DE ESCALAFÓN Y LEGAJOS', '3', 'admin', '2016-08-08 10:04:27', null, null);
INSERT INTO `convocatoria` VALUES ('101', '1', '061-II', '2016-07-11', '1', 'ASISTENTE SOCIAL', '3', 'admin', '2016-08-08 10:05:16', null, null);
INSERT INTO `convocatoria` VALUES ('102', '1', '060-II', '2016-07-11', '1', 'MEDICO OCUPACIONAL', '3', 'admin', '2016-08-08 10:06:29', null, null);
INSERT INTO `convocatoria` VALUES ('103', '1', '059-II', '2016-07-11', '1', 'ESPECIALISTA DE PRESUPUESTO', '3', 'admin', '2016-08-08 10:07:13', null, null);
INSERT INTO `convocatoria` VALUES ('104', '1', '002-V', '2016-07-13', '4', 'ACOMPAñANTES PEDAGÓGICOS DE PRIMARIA', '3', 'admin', '2016-08-08 10:07:52', null, null);
INSERT INTO `convocatoria` VALUES ('105', '1', '071-II', '2016-07-15', '2', 'ABOGADOS', '3', 'admin', '2016-08-08 10:09:59', null, null);
INSERT INTO `convocatoria` VALUES ('106', '1', '083-I', '2016-07-19', '1', 'TÉCNICO ADMINISTRATIVO', '3', 'admin', '2016-08-08 10:11:04', null, null);
INSERT INTO `convocatoria` VALUES ('107', '1', '082-II', '2016-07-19', '1', 'ESPECIALISTA PARA LA GESTIÓN DEL INCREMENTO EN EL ACCESO I', '3', 'admin', '2016-08-08 10:12:07', null, null);
INSERT INTO `convocatoria` VALUES ('108', '1', '084-I', '2016-07-25', '1', 'TÉCNICO ADMINISTRATIVO PARA EL COMITÉ DE CONTROL INTERNO', '3', 'admin', '2016-08-08 10:41:49', null, '2016-08-08 10:48:51');
INSERT INTO `convocatoria` VALUES ('109', '1', '086-I', '2016-07-25', '1', 'ANALISTA CONTABLE', '3', 'admin', '2016-08-08 10:42:31', null, null);
INSERT INTO `convocatoria` VALUES ('110', '1', '085-I', '2016-07-25', '1', 'ABOGADO', '3', 'admin', '2016-08-08 10:43:35', null, null);
INSERT INTO `convocatoria` VALUES ('111', '1', '087-I', '2016-07-25', '1', 'RESPONSABLE DE LA OFICINA DE CONSTANCIA DE PAGOS', '3', 'admin', '2016-08-08 10:49:35', null, null);
INSERT INTO `convocatoria` VALUES ('112', '1', '089-I', '2016-08-02', '1', 'COORDINADOR ADMINISTRATIVO Y DE RECURSOS EDUCATIVOS', '3', 'admin', '2016-08-08 10:51:05', 'admin', '2016-08-15 17:27:42');
INSERT INTO `convocatoria` VALUES ('113', '1', '088-I', '2016-08-02', '1', 'ARQUITECTO O INGENIERO CIVIL', '3', 'admin', '2016-08-08 10:51:52', null, '2016-08-12 11:14:49');
INSERT INTO `convocatoria` VALUES ('114', '1', '090-I', '2016-08-04', '1', 'ABOGADO PARA COPROA', '3', 'admin', '2016-08-08 10:52:20', 'admin', '2016-08-15 22:20:47');
INSERT INTO `convocatoria` VALUES ('115', '1', '093-I', '2016-08-04', '1', 'ANALISTA DE RACIONALIZACIÓN', '3', 'admin', '2016-08-08 10:53:03', 'admin', '2016-08-15 22:20:17');
INSERT INTO `convocatoria` VALUES ('116', '1', '061-III', '2016-08-08', '1', 'ASISTENTE SOCIAL', '3', 'admin', '2016-08-08 11:01:51', 'admin', '2016-08-24 12:45:07');
INSERT INTO `convocatoria` VALUES ('117', '1', '012-IV', '2016-08-05', '1', 'COORDINADOR DE INNOVACIÓN SOPORTE TECNOLOGÍAS', '3', 'admin', '2016-08-08 11:03:05', 'admin', '2016-08-16 15:15:42');
INSERT INTO `convocatoria` VALUES ('118', '1', '023-V', '2016-08-05', '3', 'DOCENTE FORTALEZA', '3', 'admin', '2016-08-08 11:03:47', 'admin', '2016-08-15 17:27:20');
INSERT INTO `convocatoria` VALUES ('119', '1', '022-VI', '2016-08-05', '2', 'ACOMPAñANTES DE REDES DE EDUCACIÓN FÍSICA', '3', 'admin', '2016-08-08 11:04:41', 'admin', '2016-08-15 17:26:52');
INSERT INTO `convocatoria` VALUES ('120', '1', '002-VI', '2016-08-05', '10', 'ACOMPAñANTES PEDAGÓGICOS DE PRIMARIA', '3', 'admin', '2016-08-08 11:05:12', 'admin', '2016-08-16 14:43:05');
INSERT INTO `convocatoria` VALUES ('121', '1', '087-II', '2016-08-08', '1', 'RESPONSABLE DE LA OFICINA DE CONSTANCIA DE PAGOS', '3', 'admin', '2016-08-08 11:23:29', 'admin', '2016-08-24 12:44:52');
INSERT INTO `convocatoria` VALUES ('122', '1', '094-I', '2016-08-09', '1', 'Técnico administrativo', '3', 'admin', '2016-08-09 15:40:19', 'admin', '2016-08-20 00:04:21');
INSERT INTO `convocatoria` VALUES ('123', '1', '095-I', '2016-08-09', '4', 'Técnicos administrativos', '3', 'admin', '2016-08-09 15:41:17', 'admin', '2016-08-20 00:07:18');
INSERT INTO `convocatoria` VALUES ('124', '1', '096-I', '2016-08-09', '1', 'Técnico administrativo', '3', 'admin', '2016-08-09 15:41:59', 'admin', '2016-08-20 00:06:40');
INSERT INTO `convocatoria` VALUES ('125', '1', '097-I', '2016-08-09', '1', 'Técnico administrativo', '3', 'admin', '2016-08-09 15:43:23', 'admin', '2016-08-19 23:57:11');
INSERT INTO `convocatoria` VALUES ('126', '1', '098-I', '2016-08-09', '1', 'Técnico administrativo', '3', 'admin', '2016-08-09 15:44:15', 'admin', '2016-08-19 23:56:19');
INSERT INTO `convocatoria` VALUES ('127', '1', '099-I', '2016-08-09', '2', 'Abogados para la Secretaría Técnica de Servir', '3', 'admin', '2016-08-09 15:47:21', 'admin', '2016-08-19 23:55:21');
INSERT INTO `convocatoria` VALUES ('128', '1', '100-I', '2016-08-09', '2', 'Abogados', '3', 'admin', '2016-08-09 15:47:58', 'admin', '2016-08-19 23:52:15');
INSERT INTO `convocatoria` VALUES ('129', '2', '001-I', '2016-08-12', '1', 'Practicante para el Equipo de Tecnologías de la Información', '3', 'admin', '2016-08-12 17:59:29', 'admin', '2016-09-05 11:39:19');
INSERT INTO `convocatoria` VALUES ('130', '1', '023-VI', '2016-08-22', '11', 'Docentes Fortaleza', '3', 'admin', '2016-08-23 00:32:45', 'admin', '2016-09-03 09:29:53');
INSERT INTO `convocatoria` VALUES ('131', '1', '002-VII', '2016-08-22', '10', 'Acompañantes Pedagógicos de Primaria', '3', 'admin', '2016-08-23 00:35:22', 'admin', '2016-09-03 09:30:35');
INSERT INTO `convocatoria` VALUES ('132', '1', '023-VII', '2016-08-24', '2', 'Docentes Fortaleza', '3', 'admin', '2016-08-24 12:42:12', 'admin', '2016-09-03 09:29:27');
INSERT INTO `convocatoria` VALUES ('133', '1', '014-II', '2016-08-24', '1', 'Psicólogo o Trabajador Social', '3', 'admin', '2016-08-24 12:43:40', 'admin', '2016-09-06 07:34:44');
INSERT INTO `convocatoria` VALUES ('134', '1', '101-I', '2016-08-26', '1', 'Asistente Administrativo', '3', 'admin', '2016-08-26 12:05:56', 'admin', '2016-09-06 12:08:06');
INSERT INTO `convocatoria` VALUES ('135', '1', '091-I', '2016-09-05', '1', 'Gestor Local de Intervenciones en IIEE Polidocentes completas', '3', 'admin', '2016-09-05 11:24:11', 'admin', '2016-09-14 08:07:00');
INSERT INTO `convocatoria` VALUES ('136', '1', '092-I', '2016-09-05', '1', 'Responsable Local de Calidad de la Información', '3', 'admin', '2016-09-05 11:25:03', 'admin', '2016-09-14 08:06:52');
INSERT INTO `convocatoria` VALUES ('137', '1', '087-III', '2016-09-05', '1', 'Responsable de la Oficina de Constancia de Pago', '3', 'admin', '2016-09-05 11:25:50', 'admin', '2016-09-12 22:34:55');
INSERT INTO `convocatoria` VALUES ('138', '1', '062-II', '2016-09-05', '1', 'Especialista en RRHH', '3', 'admin', '2016-09-05 11:26:23', 'admin', '2016-09-14 11:16:49');
INSERT INTO `convocatoria` VALUES ('139', '1', '103-I', '2016-09-05', '1', 'Modelo Lingüístico de lengua de señas peruanas para EBR/EBA', '3', 'admin', '2016-09-05 11:27:22', 'admin', '2016-09-12 22:28:19');
INSERT INTO `convocatoria` VALUES ('140', '1', '102-I', '2016-09-05', '1', 'Intérprete de lengua de señas peruanas para EBR/EBA', '3', 'admin', '2016-09-05 11:29:35', 'admin', '2016-09-12 22:27:57');
INSERT INTO `convocatoria` VALUES ('141', '1', '104-I', '2016-09-05', '9', 'Profesional no docente - terapista ocupacional para CEBE', '3', 'admin', '2016-09-05 11:30:51', 'admin', '2016-09-12 22:28:33');
INSERT INTO `convocatoria` VALUES ('142', '2', '001', '2016-09-09', '1', 'Practicante para el Equipo de Tecnologías de la Información', '3', 'admin', '2016-09-09 11:46:54', 'admin', '2016-09-20 09:46:52');
INSERT INTO `convocatoria` VALUES ('144', '1', '061-IV', '2016-09-14', '1', 'Asistente Social', '3', 'admin', '2016-09-14 23:45:50', 'admin', '2016-09-23 17:42:30');
INSERT INTO `convocatoria` VALUES ('145', '1', '105-I', '2016-09-20', '1', 'Asesor de Dirección', '3', 'admin', '2016-09-20 18:01:14', 'admin', '2016-09-29 18:52:57');
INSERT INTO `convocatoria` VALUES ('146', '1', '023-VIII', '2016-09-21', '1', 'Docente fortaleza', '3', 'admin', '2016-09-21 11:25:40', 'admin', '2016-09-30 08:46:32');
INSERT INTO `convocatoria` VALUES ('147', '1', '015-III', '2016-09-21', '1', 'Personal de apoyo educativo', '3', 'admin', '2016-09-21 11:45:27', 'admin', '2016-10-03 10:52:26');
INSERT INTO `convocatoria` VALUES ('148', '1', '106-I', '2016-09-21', '1', 'Especialista para la gestión del incremento en el acceso I', '3', 'admin', '2016-09-21 19:48:58', 'admin', '2016-09-28 22:37:45');
INSERT INTO `convocatoria` VALUES ('149', '1', '107-I', '2016-09-23', '1', 'Chofer', '3', 'admin', '2016-09-23 15:59:34', 'admin', '2016-10-04 12:52:21');
INSERT INTO `convocatoria` VALUES ('150', '1', '071-III', '2016-09-23', '1', 'Abogado', '3', 'admin', '2016-09-23 17:50:12', 'admin', '2016-10-04 12:53:32');
INSERT INTO `convocatoria` VALUES ('151', '2', '002-', '2016-09-26', '1', 'Practicante Pre Profesional para el Equipo de Participación y Comunicación', '3', 'admin', '2016-09-27 12:57:02', 'admin', '2016-10-06 17:35:41');
INSERT INTO `convocatoria` VALUES ('152', '1', '102-II', '2016-09-28', '1', 'Interprete de lengua de señas peruanas para EBR/EBA', '3', 'admin', '2016-09-28 18:22:28', 'admin', '2016-10-06 08:16:33');
INSERT INTO `convocatoria` VALUES ('153', '1', '103-II', '2016-09-28', '1', 'Modelo lingüistico de lengua de señas peruanas para EBR/EBA', '3', 'admin', '2016-09-28 18:23:45', 'admin', '2016-10-06 08:16:19');
INSERT INTO `convocatoria` VALUES ('154', '1', '104-II', '2016-09-28', '9', 'Terapistas ocupacionales para CEBE', '3', 'admin', '2016-09-28 18:24:33', 'admin', '2016-10-04 20:10:50');
INSERT INTO `convocatoria` VALUES ('155', '1', '108-I', '2016-09-28', '1', 'Responsable de la Oficina de Constancia de Pago', '3', 'admin', '2016-09-28 18:25:17', 'admin', '2016-10-08 05:49:54');
INSERT INTO `convocatoria` VALUES ('158', '1', '109-I', '2016-10-05', '1', 'Jefe del Área de Gestión de la Educación Básica Alternativa y Técnico Productiva', '3', 'admin', '2016-10-05 17:00:18', 'admin', '2016-10-05 17:01:23');
INSERT INTO `convocatoria` VALUES ('159', '1', '110-I', '2016-10-04', '1', 'Jefe del Área de Supervisión y Gestión del Servicio Educativo', '3', 'admin', '2016-10-05 17:02:29', null, null);
INSERT INTO `convocatoria` VALUES ('160', '1', '015-IV', '2016-10-06', '1', 'Personal de apoyo educativo', '3', 'admin', '2016-10-06 17:27:10', 'admin', '2016-10-21 16:02:07');
INSERT INTO `convocatoria` VALUES ('161', '1', '012-V', '2016-10-06', '1', 'Coordinador de Innovación y Soporte Tecnologías', '3', 'admin', '2016-10-06 17:29:11', 'admin', '2016-10-21 16:01:21');
INSERT INTO `convocatoria` VALUES ('162', '2', '002-II', '2016-10-06', '1', 'Practicante Pre Profesional para el Equipo de Participación y Comunicación', '3', 'admin', '2016-10-06 17:37:56', 'admin', '2016-10-14 17:45:19');
INSERT INTO `convocatoria` VALUES ('163', '1', '023-IX', '2016-10-10', '1', 'Docente fortaleza', '3', 'admin', '2016-10-10 17:29:02', 'admin', '2016-10-18 11:51:45');
INSERT INTO `convocatoria` VALUES ('164', '1', '111-I', '2016-10-12', '1', 'Profesional SIGA', '3', 'admin', '2016-10-12 21:05:53', 'admin', '2016-10-21 16:00:48');
INSERT INTO `convocatoria` VALUES ('165', '1', '112-I', '2016-10-18', '1', 'Especialista para la Gestión del Incremento en el Acceso I', '3', 'admin', '2016-10-18 12:59:11', 'admin', '2016-10-27 18:07:28');
INSERT INTO `convocatoria` VALUES ('166', '1', '113-I', '2016-10-19', '1', 'Técnico administrativo', '3', 'admin', '2016-10-19 23:02:01', 'admin', '2016-11-01 22:01:49');
INSERT INTO `convocatoria` VALUES ('167', '1', '015-V', '2016-10-19', '1', 'Personal de apoyo educativo', '3', 'admin', '2016-10-19 23:04:34', 'admin', '2016-11-02 18:14:59');
INSERT INTO `convocatoria` VALUES ('168', '1', '114-I', '2016-10-20', '1', 'Técnico de sistemas', '3', 'admin', '2016-10-20 23:09:46', 'admin', '2016-11-01 22:00:33');
INSERT INTO `convocatoria` VALUES ('169', '1', '115-I', '2016-10-20', '1', 'Técnico de archivo II', '3', 'admin', '2016-10-20 23:10:44', 'admin', '2016-11-01 21:59:29');
INSERT INTO `convocatoria` VALUES ('170', '1', '116-I', '2016-10-20', '1', 'Especialista contable', '3', 'admin', '2016-10-20 23:11:49', 'admin', '2016-11-01 21:58:38');
INSERT INTO `convocatoria` VALUES ('171', '1', '012-VI', '2016-10-25', '1', 'Coordinador de Innovación Soporte Tecnologías', '3', 'admin', '2016-10-25 13:05:43', 'admin', '2016-11-07 16:04:26');
INSERT INTO `convocatoria` VALUES ('172', '1', '002-VIII', '2016-11-02', '1', 'Acompañante Pedagógico de Primaria', '3', 'admin', '2016-11-02 18:15:35', 'admin', '2016-11-11 08:02:33');
INSERT INTO `convocatoria` VALUES ('173', '1', '117-I', '2016-11-03', '1', 'Asistente administrativo', '3', 'admin', '2016-11-04 08:13:13', 'admin', '2016-11-16 00:32:33');
INSERT INTO `convocatoria` VALUES ('175', '1', '12-VII', '2016-11-07', '1', 'Coordinador de innovación soporte tecnologías ', '3', 'admin', '2016-11-07 16:06:07', 'admin', '2016-11-17 19:20:36');
INSERT INTO `convocatoria` VALUES ('176', '1', '012-VIII', '2016-11-22', '1', 'Coordinador de innovación soporte tecnologías', '3', 'admin', '2016-11-23 14:18:33', 'admin', '2016-12-04 14:07:17');
INSERT INTO `convocatoria` VALUES ('177', '2', '003', '2016-12-13', '1', 'Practicante para el Equipo de Contabilidad', '3', 'admin', '2016-12-14 08:52:26', 'admin', '2016-12-19 18:39:01');
INSERT INTO `convocatoria` VALUES ('178', '1', '118-I', '2016-12-15', '1', 'Jefe del Área de Gestión de la Educación Básica Alternativa y Técnico Productiva', '3', 'admin', '2016-12-15 17:23:49', 'admin', '2016-12-27 17:17:43');
INSERT INTO `convocatoria` VALUES ('179', '1', '119-I', '2016-12-15', '1', 'Jefe del Área de Supervisión y Gestión del Servicio Educativo', '3', 'admin', '2016-12-15 17:24:37', 'admin', '2016-12-27 17:17:38');
INSERT INTO `convocatoria` VALUES ('180', '1', '120-I', '2016-12-15', '1', 'Asistente Administrativo para el Equipo de Trámite Documentario', '3', 'admin', '2016-12-15 17:25:36', 'admin', '2016-12-27 10:35:17');
INSERT INTO `convocatoria` VALUES ('181', '1', '001-I-2017', '2016-12-20', '1', 'Asesor de Dirección', '3', 'admin', '2016-12-20 18:24:17', 'admin', '2016-12-30 18:53:10');
INSERT INTO `convocatoria` VALUES ('182', '1', '002-2017', '2016-12-20', '1', 'Técnico Administrativo', '3', 'admin', '2016-12-20 18:25:17', 'admin', '2016-12-30 18:53:03');
INSERT INTO `convocatoria` VALUES ('183', '1', '003-I-2017', '2016-12-20', '1', 'Asistente Administrativo', '3', 'admin', '2016-12-20 18:26:20', 'admin', '2016-12-30 18:52:52');
INSERT INTO `convocatoria` VALUES ('184', '1', '004-I-2017', '2016-12-20', '1', 'Abogado', '3', 'admin', '2016-12-20 18:27:10', 'admin', '2016-12-30 18:52:40');
INSERT INTO `convocatoria` VALUES ('185', '1', '006-I-2017', '2016-12-20', '1', 'Abogado para Secretaría Técnica', '3', 'admin', '2016-12-20 18:28:00', 'admin', '2016-12-30 18:52:14');
INSERT INTO `convocatoria` VALUES ('186', '1', '007-I-2017', '2016-12-20', '1', 'Analista de Racionalización', '3', 'admin', '2016-12-20 18:28:42', 'admin', '2016-12-30 18:51:48');
INSERT INTO `convocatoria` VALUES ('187', '1', '008-I-2017', '2016-12-20', '1', 'Técnico Administrativo', '3', 'admin', '2016-12-20 18:29:18', 'admin', '2016-12-30 18:51:30');
INSERT INTO `convocatoria` VALUES ('188', '1', '009-I-2017', '2016-12-20', '5', 'Profesionales en Educación', '3', 'admin', '2016-12-20 18:30:05', 'admin', '2017-01-02 17:54:24');
INSERT INTO `convocatoria` VALUES ('189', '1', '010-I-2017', '2016-12-20', '1', 'Gestor(a) Local de Intervenciones en IIEE', '3', 'admin', '2016-12-20 18:30:53', 'admin', '2016-12-21 18:09:00');
INSERT INTO `convocatoria` VALUES ('190', '1', '005-I-2017', '2016-12-20', '1', 'Técnico Legal', '3', 'admin', '2016-12-20 18:32:45', 'admin', '2016-12-30 18:52:22');
INSERT INTO `convocatoria` VALUES ('192', '1', '012-I-2017', '2016-12-27', '1', 'Notificador', '3', 'admin', '2016-12-27 10:19:33', 'admin', '2017-01-06 16:40:01');
INSERT INTO `convocatoria` VALUES ('193', '1', '013-I-2017', '2016-12-27', '1', 'Responsable de la Oficina de Constancias de Pago', '3', 'admin', '2016-12-27 10:22:54', 'admin', '2017-01-06 16:40:16');
INSERT INTO `convocatoria` VALUES ('195', '1', '015-I-2017', '2016-12-27', '1', 'Técnico Administrativo', '3', 'admin', '2016-12-27 10:28:28', 'admin', '2017-01-06 16:40:35');
INSERT INTO `convocatoria` VALUES ('197', '1', '011-I-2017', '2016-12-27', '1', 'Técnico Administrativo', '3', 'admin', '2016-12-27 10:44:35', 'admin', '2017-01-06 16:39:34');
INSERT INTO `convocatoria` VALUES ('198', '2', '001-I-2017', '2016-12-29', '1', 'Practicante Pre Profesional para el Equipo de Tecnologías de la Información', '3', 'admin', '2016-12-29 18:24:31', 'admin', '2017-01-06 16:46:07');
INSERT INTO `convocatoria` VALUES ('199', '1', '002-2017', '2017-01-06', '1', 'Practicante Pre Profesional para el Equipo de Reclutamiento y Selección', '3', 'admin', '2017-01-06 16:54:14', 'admin', '2017-01-16 22:59:27');
INSERT INTO `convocatoria` VALUES ('200', '1', '019-I-2017', '2017-01-12', '1', 'Arquitecto o Ingeniero Civil', '3', 'admin', '2017-01-13 06:33:45', 'admin', '2017-01-30 17:02:30');
INSERT INTO `convocatoria` VALUES ('201', '1', '018-I-2017', '2017-01-12', '1', 'Técnico en Sistemas', '3', 'admin', '2017-01-13 06:35:07', 'admin', '2017-01-30 17:02:44');
INSERT INTO `convocatoria` VALUES ('202', '1', '017-I-2017', '2017-01-12', '1', 'Técnico en SIAGIE', '3', 'admin', '2017-01-13 06:36:30', 'admin', '2017-01-30 17:03:32');
INSERT INTO `convocatoria` VALUES ('203', '1', 'P003-I-2017', '2017-01-12', '1', 'Practicante Pre Profesional para el Equipo de Participación y Comunicaciòn', '3', 'admin', '2017-01-13 06:42:33', 'admin', '2017-01-20 17:44:02');
INSERT INTO `convocatoria` VALUES ('204', '1', '020-I-2017', '2017-01-24', '1', 'Médico ocupacional', '3', 'admin', '2017-01-25 07:57:28', 'admin', '2017-02-03 17:40:12');
INSERT INTO `convocatoria` VALUES ('205', '1', '021-I-2017', '2017-01-25', '4', 'Personal de vigilancia', '3', 'admin', '2017-01-25 15:26:26', 'admin', '2017-02-21 14:14:17');
INSERT INTO `convocatoria` VALUES ('206', '1', '022-I-2017', '2017-01-25', '4', 'Personal de secretaria', '3', 'admin', '2017-01-25 15:27:28', 'admin', '2017-02-23 16:51:08');
INSERT INTO `convocatoria` VALUES ('207', '1', '023-I-2017', '2017-01-25', '1', 'Coordinador de Innovación de Soporte Tecnológico', '3', 'admin', '2017-01-25 15:28:25', 'admin', '2017-02-23 16:50:44');
INSERT INTO `convocatoria` VALUES ('208', '1', '024-I-2017', '2017-01-25', '1', 'Personal de Apoyo Educativo', '3', 'admin', '2017-01-25 15:29:10', 'admin', '2017-02-21 14:13:24');
INSERT INTO `convocatoria` VALUES ('209', '1', '025-I-2017', '2017-01-25', '2', 'Psicólogos o Trabajadores Sociales', '3', 'admin', '2017-01-25 15:29:57', 'admin', '2017-02-23 16:50:32');
INSERT INTO `convocatoria` VALUES ('210', '1', '026-I-2017', '2017-01-25', '1', 'Especialista en Educación', '3', 'admin', '2017-01-25 15:30:55', 'admin', '2017-02-06 09:06:28');
INSERT INTO `convocatoria` VALUES ('211', '2', '001-II-2017', '2017-01-25', '1', 'Practicante Pre Profesional para el Equipo de Tecnologías de la Información', '3', 'admin', '2017-01-25 15:33:26', 'admin', '2017-01-31 18:33:48');
INSERT INTO `convocatoria` VALUES ('212', '1', '027-I-2017', '2017-01-27', '13', 'Acompañantes Pedagógicos de Primaria', '3', 'admin', '2017-01-29 01:11:13', 'admin', '2017-02-09 18:13:18');
INSERT INTO `convocatoria` VALUES ('213', '1', '028-I', '2017-01-31', '1', 'Técnico Administrativo', '3', 'admin', '2017-01-31 18:32:05', 'admin', '2017-02-09 15:47:45');
INSERT INTO `convocatoria` VALUES ('215', '2', '004-I', '2017-02-03', '1', 'Practicante Pre Profesional para el Área de Asesoría Jurídica', '3', 'admin', '2017-02-03 17:41:21', 'admin', '2017-02-13 14:48:05');
INSERT INTO `convocatoria` VALUES ('216', '1', '027-II', '2017-02-06', '2', 'Acompañantes Pedagógicos de Primaria', '3', 'admin', '2017-02-06 10:19:21', 'admin', '2017-02-17 07:36:39');
INSERT INTO `convocatoria` VALUES ('217', '1', '021-II', '2017-02-06', '18', 'Personal de vigilancia', '3', 'admin', '2017-02-06 10:20:14', 'admin', '2017-02-21 14:13:04');
INSERT INTO `convocatoria` VALUES ('218', '1', '022-II', '2017-02-06', '1', 'Personal de secretaria', '3', 'admin', '2017-02-06 10:21:13', 'admin', '2017-02-23 16:49:43');
INSERT INTO `convocatoria` VALUES ('219', '1', '023-II', '2017-02-06', '6', 'Coordinadores de Innovación y Soporte Tecnológico', '3', 'admin', '2017-02-06 10:21:59', 'admin', '2017-02-23 16:49:30');
INSERT INTO `convocatoria` VALUES ('220', '1', '024-II', '2017-02-06', '5', 'Personal de Apoyo Educativo', '3', 'admin', '2017-02-06 10:23:36', 'admin', '2017-02-21 14:11:53');
INSERT INTO `convocatoria` VALUES ('221', '1', '025-II', '2017-02-06', '3', 'Psicólogos o Trabajadores Sociales', '3', 'admin', '2017-02-06 10:24:34', 'admin', '2017-02-23 16:49:59');
INSERT INTO `convocatoria` VALUES ('222', '1', '029-I', '2017-02-06', '10', 'Coordinadores Administrativos y de Recursos Educativos', '3', 'admin', '2017-02-06 10:25:25', 'admin', '2017-02-23 16:49:07');
INSERT INTO `convocatoria` VALUES ('223', '1', '030-I', '2017-02-13', '1', 'Asesor de Dirección', '3', 'admin', '2017-02-13 10:00:11', 'admin', '2017-02-20 21:53:55');
INSERT INTO `convocatoria` VALUES ('224', '1', '031-I', '2017-02-16', '1', 'Gestor Local', '3', 'admin', '2017-02-17 07:37:50', 'admin', '2017-02-28 09:19:18');
INSERT INTO `convocatoria` VALUES ('225', '1', '032-I', '2017-02-21', '1', 'Técnico administrativo', '3', 'admin', '2017-02-21 10:54:35', 'admin', '2017-03-07 16:12:36');
INSERT INTO `convocatoria` VALUES ('226', '1', '033-I', '2017-02-21', '1', 'Abogado para secretaría técnica', '3', 'admin', '2017-02-21 10:55:16', 'admin', '2017-03-01 22:58:34');
INSERT INTO `convocatoria` VALUES ('227', '1', '021-III', '2017-02-24', '1', 'Personal de vigilancia', '3', 'admin', '2017-02-24 14:36:06', 'admin', '2017-03-08 15:18:11');
INSERT INTO `convocatoria` VALUES ('228', '1', '023-III', '2017-02-24', '1', 'Coordinador de Innovación y Soporte Tecnológico', '3', 'admin', '2017-02-24 14:37:24', 'admin', '2017-03-08 15:18:21');
INSERT INTO `convocatoria` VALUES ('229', '1', '27-III', '2017-02-24', '1', 'Acompañantes Pedagógicos de Primaria', '3', 'admin', '2017-02-24 14:38:14', 'admin', '2017-03-08 15:18:33');
INSERT INTO `convocatoria` VALUES ('230', '1', '035-I', '2017-03-09', '1', 'Técnico administrativo', '3', 'admin', '2017-03-09 18:01:33', 'admin', '2017-03-21 18:38:31');
INSERT INTO `convocatoria` VALUES ('231', '1', '036-I', '2017-03-09', '1', 'Asesor de Dirección', '3', 'admin', '2017-03-09 18:02:09', 'admin', '2017-03-21 18:38:18');
INSERT INTO `convocatoria` VALUES ('232', '1', '037-I', '2017-03-09', '1', 'Técnico administrativo para APAFA', '3', 'admin', '2017-03-09 18:02:48', 'admin', '2017-03-21 18:38:05');
INSERT INTO `convocatoria` VALUES ('233', '1', '038-I', '2017-03-09', '1', 'Abogado', '3', 'admin', '2017-03-09 18:03:19', 'admin', '2017-03-21 17:02:02');
INSERT INTO `convocatoria` VALUES ('234', '1', '039-I', '2017-03-09', '1', 'Especialista en Educación', '3', 'admin', '2017-03-09 18:03:54', 'admin', '2017-03-21 16:59:43');
INSERT INTO `convocatoria` VALUES ('235', '1', '040-I', '2017-03-09', '1', 'Técnico administrativo en Escalafón', '3', 'admin', '2017-03-09 18:04:38', 'admin', '2017-03-21 16:58:59');
INSERT INTO `convocatoria` VALUES ('237', '1', '021-IV', '2017-03-13', '11', 'Personales de vigilancia', '3', 'admin', '2017-03-13 16:09:40', 'admin', '2017-03-22 16:03:08');
INSERT INTO `convocatoria` VALUES ('238', '1', '022-III', '2017-03-13', '1', 'Personal de secretaria', '3', 'admin', '2017-03-13 16:11:26', 'admin', '2017-03-20 12:13:39');
INSERT INTO `convocatoria` VALUES ('239', '1', '023-IV', '2017-03-13', '4', 'Coordinador de Innovación y Soporte Tecnológico', '3', 'admin', '2017-03-13 16:12:59', 'admin', '2017-03-24 18:05:24');
INSERT INTO `convocatoria` VALUES ('240', '1', '024-III', '2017-03-13', '2', 'Personales de apoyo educativo', '3', 'admin', '2017-03-13 16:14:16', 'admin', '2017-03-22 16:02:47');
INSERT INTO `convocatoria` VALUES ('241', '1', '034-I', '2017-03-14', '1', 'Especialista para la gestión del incremento en el acceso', '3', 'admin', '2017-03-14 18:11:18', 'admin', '2017-03-24 21:51:27');
INSERT INTO `convocatoria` VALUES ('242', '1', '027-IV', '2017-03-16', '1', 'Acompañante pedagógico de primaria', '3', 'admin', '2017-03-16 16:08:21', 'admin', '2017-03-24 21:52:49');
INSERT INTO `convocatoria` VALUES ('243', '1', '024-IV', '2017-03-16', '1', 'Personal de apoyo educativo', '3', 'admin', '2017-03-16 16:09:08', 'admin', '2017-03-24 18:04:52');
INSERT INTO `convocatoria` VALUES ('244', '1', '022-IV', '2017-03-16', '1', 'Personal de secretaria', '3', 'admin', '2017-03-16 16:09:39', 'admin', '2017-03-30 16:30:53');
INSERT INTO `convocatoria` VALUES ('245', '1', '021-V', '2017-03-16', '3', 'Personales de vigilancia', '3', 'admin', '2017-03-16 16:10:14', 'admin', '2017-03-24 18:05:02');
INSERT INTO `convocatoria` VALUES ('246', '1', '041-I', '2017-03-21', '1', 'Técnico administrativo', '3', 'admin', '2017-03-21 17:03:17', 'admin', '2017-04-01 00:03:11');
INSERT INTO `convocatoria` VALUES ('247', '1', '029-II', '2017-03-30', '2', 'Coordinadores administrativos y de recursos educativos', '3', 'admin', '2017-03-30 16:32:24', 'admin', '2017-04-10 22:09:25');
INSERT INTO `convocatoria` VALUES ('248', '1', '042-I', '2017-03-30', '1', 'Técnico administrativo', '3', 'admin', '2017-03-30 16:33:32', 'admin', '2017-04-07 18:24:46');
INSERT INTO `convocatoria` VALUES ('249', '1', '024-V', '2017-03-31', '2', 'Personales de apoyo educativo', '3', 'admin', '2017-04-01 00:01:01', 'admin', '2017-04-13 08:59:29');
INSERT INTO `convocatoria` VALUES ('250', '1', '043-I', '2017-04-03', '1', 'Analista de racionalización', '3', 'admin', '2017-04-03 18:16:35', 'admin', '2017-04-13 08:57:48');
INSERT INTO `convocatoria` VALUES ('251', '1', '044-I', '2017-04-03', '13', 'Docentes responsables de núcleo', '3', 'admin', '2017-04-03 18:17:33', 'admin', '2017-04-13 08:57:32');
INSERT INTO `convocatoria` VALUES ('252', '1', '045-I', '2017-04-06', '1', 'Profesional en Educación', '3', 'admin', '2017-04-06 16:12:02', 'admin', '2017-04-19 17:22:59');
INSERT INTO `convocatoria` VALUES ('253', '1', '046-I', '2017-04-12', '1', 'Abogado para Secretaría Técnica', '3', 'admin', '2017-04-13 09:41:20', 'admin', '2017-04-26 22:27:33');
INSERT INTO `convocatoria` VALUES ('254', '1', '047-I', '2017-04-12', '1', 'Técnico administrativo orientador', '3', 'admin', '2017-04-13 09:42:40', 'admin', '2017-04-26 11:27:50');
INSERT INTO `convocatoria` VALUES ('255', '1', '048-I', '2017-04-19', '2', 'Modelos lingüísticos de lengua de señas peruana para EBR/EBA', '3', 'admin', '2017-04-19 17:24:13', 'admin', '2017-04-29 01:50:53');
INSERT INTO `convocatoria` VALUES ('256', '1', '049-I', '2017-04-19', '2', 'Intérpretes de lengua de señas peruana para EBR/EBA', '3', 'admin', '2017-04-19 17:25:48', 'admin', '2017-04-29 01:49:47');
INSERT INTO `convocatoria` VALUES ('257', '1', '050-I', '2017-04-19', '2', 'Profesionales no docentes: Terapistas ocupacionales para CEBE', '3', 'admin', '2017-04-19 17:27:05', 'admin', '2017-04-27 23:25:17');
INSERT INTO `convocatoria` VALUES ('258', '1', '027-V', '2017-04-20', '2', 'Acompañante pedagógico de primaria', '3', 'admin', '2017-04-20 18:05:29', 'admin', '2017-05-03 23:42:08');
INSERT INTO `convocatoria` VALUES ('259', '1', '025-III', '2017-04-20', '1', 'Psicólogos o Trabajadores Sociales', '3', 'admin', '2017-04-20 18:06:38', 'admin', '2017-05-03 23:42:55');
INSERT INTO `convocatoria` VALUES ('260', '1', '051-I', '2017-04-27', '1', 'Técnico administrativo', '3', 'admin', '2017-04-27 10:45:44', 'admin', '2017-05-11 08:20:03');
INSERT INTO `convocatoria` VALUES ('261', '1', '024-VI', '2017-05-03', '1', 'Personal de apoyo educativo', '3', 'admin', '2017-05-03 23:50:24', 'admin', '2017-05-13 03:40:35');
INSERT INTO `convocatoria` VALUES ('262', '1', '053-I', '2017-05-03', '1', 'Abogado', '3', 'admin', '2017-05-04 00:02:17', 'admin', '2017-05-18 21:05:34');
INSERT INTO `convocatoria` VALUES ('263', '1', '052-I', '2017-05-03', '1', 'Técnico administrativo', '3', 'admin', '2017-05-04 00:03:55', 'admin', '2017-05-16 16:38:30');
INSERT INTO `convocatoria` VALUES ('264', '1', '054-I', '2017-05-04', '1', 'Personal de secretaria', '3', 'admin', '2017-05-04 17:14:34', 'admin', '2017-05-15 23:03:30');
INSERT INTO `convocatoria` VALUES ('265', '1', '055-I', '2017-05-05', '13', 'Docentes Responsables de Núcleo', '3', 'admin', '2017-05-05 19:17:33', 'admin', '2017-05-30 10:23:43');
INSERT INTO `convocatoria` VALUES ('266', '1', '056-I', '2017-05-10', '1', 'Técnico administrativo', '3', 'admin', '2017-05-10 22:24:00', 'admin', '2017-05-23 17:25:06');
INSERT INTO `convocatoria` VALUES ('267', '1', '057-I', '2017-05-10', '1', 'Técnico administrativo legal', '3', 'admin', '2017-05-10 22:25:37', 'admin', '2017-05-23 17:25:23');
INSERT INTO `convocatoria` VALUES ('268', '1', '058-I', '2017-05-10', '1', 'Auditor - Contador Público', '3', 'admin', '2017-05-10 22:27:04', 'admin', '2017-05-23 17:25:41');
INSERT INTO `convocatoria` VALUES ('269', '1', '059-I', '2017-05-10', '1', 'Técnico administrativo', '3', 'admin', '2017-05-10 22:29:34', 'admin', '2017-05-18 21:04:53');
INSERT INTO `convocatoria` VALUES ('270', '2', 'P005-I', '2017-05-16', '1', 'Practicante Pre Profesional para el Equipo de Contabilidad', '3', 'admin', '2017-05-17 08:05:38', 'admin', '2017-05-24 17:23:59');
INSERT INTO `convocatoria` VALUES ('271', '1', '048--II', '2017-05-23', '1', 'Modelos lingüísticos de lengua de señas peruana para EBR/EBA', '3', 'admin', '2017-05-23 17:26:42', 'admin', '2017-06-02 12:14:50');
INSERT INTO `convocatoria` VALUES ('272', '1', '050-II', '2017-05-23', '2', 'Profesionales no docentes: Terapistas ocupacionales para CEBE', '3', 'admin', '2017-05-23 17:27:37', 'admin', '2017-06-05 15:15:54');
INSERT INTO `convocatoria` VALUES ('273', '1', '021-VI', '2017-05-24', '2', 'Personales de vigilancia', '3', 'admin', '2017-05-24 17:25:06', 'admin', '2017-06-05 23:19:21');
INSERT INTO `convocatoria` VALUES ('274', '1', '027-VI', '2017-05-30', '1', 'Acompañante pedagógico de primaria', '3', 'admin', '2017-05-30 10:59:20', 'admin', '2017-06-09 17:49:22');
INSERT INTO `convocatoria` VALUES ('275', '1', '054-II', '2017-06-07', '1', 'Personal de secretaria', '3', 'admin', '2017-06-07 16:28:31', 'admin', '2017-06-16 17:13:26');
INSERT INTO `convocatoria` VALUES ('276', '1', '060-I', '2017-06-09', '1', 'Abogado', '3', 'admin', '2017-06-09 17:49:45', 'admin', '2017-06-21 17:50:44');
INSERT INTO `convocatoria` VALUES ('277', '1', '031-II', '2017-06-13', '1', 'Gestor(a) local', '3', 'admin', '2017-06-13 17:49:36', 'admin', '2017-06-21 17:51:03');
INSERT INTO `convocatoria` VALUES ('278', '1', '054-III', '2017-06-19', '1', 'Personal de Secretaria', '3', 'admin', '2017-06-19 17:57:05', 'admin', '2017-07-04 09:16:57');
INSERT INTO `convocatoria` VALUES ('279', '1', '061-I', '2017-06-19', '1', 'Asesor de Dirección', '3', 'admin', '2017-06-19 17:58:06', 'admin', '2017-06-28 11:31:52');
INSERT INTO `convocatoria` VALUES ('280', '1', '062-I', '2017-06-20', '1', 'Abogado', '3', 'admin', '2017-06-20 16:52:42', 'admin', '2017-06-28 11:32:07');
INSERT INTO `convocatoria` VALUES ('281', '1', '063-I', '2017-06-20', '4', 'Docentes responsables de núcleo', '3', 'admin', '2017-06-20 16:53:16', 'admin', '2017-06-28 16:18:26');
INSERT INTO `convocatoria` VALUES ('282', '1', '024-VII', '2017-06-22', '1', 'Personal de apoyo educativo', '3', 'admin', '2017-06-22 15:34:06', 'admin', '2017-07-04 17:07:47');
INSERT INTO `convocatoria` VALUES ('283', '1', '065-I', '2017-06-23', '1', 'Técnico administrativo orientador', '3', 'admin', '2017-06-26 09:44:56', 'admin', '2017-07-06 23:08:40');
INSERT INTO `convocatoria` VALUES ('284', '1', '064-I', '2017-06-21', '1', 'Abogado', '3', 'admin', '2017-06-26 12:57:40', 'admin', '2017-07-03 18:13:09');
INSERT INTO `convocatoria` VALUES ('285', '1', '066-I', '2017-06-26', '1', 'Especialista contable', '3', 'admin', '2017-06-26 17:10:41', 'admin', '2017-07-10 17:57:50');
INSERT INTO `convocatoria` VALUES ('286', '2', 'P006-I', '2017-06-26', '1', 'Practicante Pre Profesional para el Área de Administración', '3', 'admin', '2017-06-26 17:49:01', 'admin', '2017-07-11 10:01:53');
INSERT INTO `convocatoria` VALUES ('287', '1', '024-VIII', '2017-07-10', '1', 'Personal de apoyo educativo', '3', 'admin', '2017-07-10 09:06:17', 'admin', '2017-07-17 22:09:53');
INSERT INTO `convocatoria` VALUES ('288', '1', '025-IV', '2017-07-10', '1', 'Psicólogo o trabajador social', '3', 'admin', '2017-07-10 09:07:29', 'admin', '2017-07-19 09:58:40');
INSERT INTO `convocatoria` VALUES ('289', '1', '029-III', '2017-07-10', '1', 'Coordinador administrativo y de recursos educativos', '3', 'admin', '2017-07-10 09:08:50', 'admin', '2017-07-19 09:58:14');
INSERT INTO `convocatoria` VALUES ('290', '1', '023-V', '2017-07-10', '1', 'Coordinador de Innovación y Soporte Tecnológico', '3', 'admin', '2017-07-10 09:09:36', 'admin', '2017-07-22 00:09:29');
INSERT INTO `convocatoria` VALUES ('291', '1', '024-IX', '2017-07-11', '1', 'Personal de Apoyo Educativo', '3', 'admin', '2017-07-11 10:01:33', 'admin', '2017-07-20 23:22:56');
INSERT INTO `convocatoria` VALUES ('292', '1', '067-I', '2017-07-17', '1', 'Técnico Administrativo para APAFA', '3', 'admin', '2017-07-17 17:06:29', 'admin', '2017-07-25 18:27:09');
INSERT INTO `convocatoria` VALUES ('293', '1', '068-I', '2017-07-17', '1', 'Técnico Administrativo', '3', 'admin', '2017-07-17 17:07:05', 'admin', '2017-07-27 08:57:39');
INSERT INTO `convocatoria` VALUES ('294', '1', '069-I', '2017-07-17', '1', 'Profesional en Contabilidad', '3', 'admin', '2017-07-17 17:07:41', 'admin', '2017-08-03 05:28:19');
INSERT INTO `convocatoria` VALUES ('295', '1', '070-I', '2017-07-17', '1', 'Abogado(a) en seguimiento contractual', '3', 'admin', '2017-07-17 17:08:25', 'admin', '2017-07-24 18:44:31');
INSERT INTO `convocatoria` VALUES ('296', '1', '058-II', '2017-07-24', '1', 'Auditor - Contador Público', '3', 'admin', '2017-07-24 18:45:59', 'admin', '2017-08-05 09:10:27');
INSERT INTO `convocatoria` VALUES ('297', '1', '071-I', '2017-07-25', '4', 'Docentes Responsables de Núcleo', '3', 'admin', '2017-07-31 09:10:59', 'admin', '2017-08-11 17:17:41');
INSERT INTO `convocatoria` VALUES ('298', '1', '072-I', '2017-07-25', '1', 'Abogado', '3', 'admin', '2017-07-31 09:11:40', 'admin', '2017-08-05 09:08:29');
INSERT INTO `convocatoria` VALUES ('299', '1', '066-II', '2017-07-31', '1', 'Especialista contable', '3', 'admin', '2017-07-31 09:18:02', 'admin', '2017-08-10 18:00:23');
INSERT INTO `convocatoria` VALUES ('300', '1', '024-X', '2017-08-03', '1', 'Personal de Apoyo Educativo', '3', 'admin', '2017-08-04 07:48:10', 'admin', '2017-08-28 22:35:07');
INSERT INTO `convocatoria` VALUES ('301', '1', '025-V', '2017-08-03', '1', 'Psicólogo o trabajador social', '3', 'admin', '2017-08-04 07:48:37', 'admin', '2017-08-15 23:21:16');
INSERT INTO `convocatoria` VALUES ('302', '1', '073-I', '2017-08-08', '1', 'Responsable de Escalafón y Legajos', '3', 'admin', '2017-08-08 12:21:18', 'admin', '2017-08-17 17:33:38');
INSERT INTO `convocatoria` VALUES ('303', '1', '074-I', '2017-08-08', '1', 'Técnico Administrativo', '3', 'admin', '2017-08-08 12:21:57', 'admin', '2017-08-20 00:07:34');
INSERT INTO `convocatoria` VALUES ('304', '1', '075-I', '2017-08-08', '1', 'Analista en Racionalización', '3', 'admin', '2017-08-08 12:22:26', 'admin', '2017-08-16 18:16:45');
INSERT INTO `convocatoria` VALUES ('305', '1', '027-VII', '2017-08-08', '1', 'Acompañante Pedagógico de Primaria', '3', 'admin', '2017-08-08 12:23:01', 'admin', '2017-08-20 00:17:29');
INSERT INTO `convocatoria` VALUES ('306', '1', '054-IV', '2017-08-11', '1', 'Personal de Secretaria', '3', 'admin', '2017-08-11 17:18:42', 'admin', '2017-08-31 21:13:32');
INSERT INTO `convocatoria` VALUES ('307', '1', '021-VII', '2017-08-16', '1', 'Personal de vigilancia', '3', 'admin', '2017-08-16 16:25:14', 'admin', '2017-08-29 17:25:54');
INSERT INTO `convocatoria` VALUES ('308', '1', '077-I', '2017-08-16', '1', 'Abogado', '3', 'admin', '2017-08-16 16:26:44', 'admin', '2017-08-31 21:10:00');
INSERT INTO `convocatoria` VALUES ('309', '1', '076-I', '2017-08-16', '1', 'Técnico administrativo', '3', 'admin', '2017-08-16 16:27:23', 'admin', '2017-08-31 21:10:20');
INSERT INTO `convocatoria` VALUES ('310', '1', '078-I', '2017-08-18', '1', 'Abogado (a) en seguimiento contractual', '3', 'admin', '2017-08-20 00:21:09', 'admin', '2017-08-28 21:33:38');
INSERT INTO `convocatoria` VALUES ('311', '1', '081-I', '2017-08-22', '1', 'Abogado', '3', 'admin', '2017-08-22 12:18:49', 'admin', '2017-08-31 21:11:38');
INSERT INTO `convocatoria` VALUES ('312', '1', '080-I', '2017-08-22', '1', 'Técnico en Contabilidad', '3', 'admin', '2017-08-22 12:19:35', 'admin', '2017-08-31 21:11:04');
INSERT INTO `convocatoria` VALUES ('313', '1', '079-I', '2017-08-22', '1', 'Auditor Contador Público', '3', 'admin', '2017-08-22 12:24:47', 'admin', '2017-09-04 19:24:56');
INSERT INTO `convocatoria` VALUES ('314', '1', '021-VIII', '2017-08-22', '1', 'Personal de vigilancia', '3', 'admin', '2017-08-22 12:25:39', 'admin', '2017-08-31 21:12:27');
INSERT INTO `convocatoria` VALUES ('315', '1', '082-I', '2017-08-23', '1', 'Técnico Legal', '3', 'admin', '2017-08-24 04:46:52', 'admin', '2017-09-04 19:25:47');
INSERT INTO `convocatoria` VALUES ('316', '2', '007', '2017-08-28', '1', 'Practicante PreProfesional para el Área de Administración', '3', 'admin', '2017-08-28 22:42:15', 'admin', '2017-09-06 20:44:38');
INSERT INTO `convocatoria` VALUES ('317', '1', '023-VI', '2017-08-29', '1', 'Coordinador de Innovación y Soporte Tecnológico', '3', 'admin', '2017-08-29 17:29:00', 'admin', '2017-09-12 23:29:04');
INSERT INTO `convocatoria` VALUES ('318', '1', '083-I', '2017-08-31', '1', 'Técnico Administrativo para APAFA', '3', 'admin', '2017-08-31 12:28:17', 'admin', '2017-09-09 09:08:58');
INSERT INTO `convocatoria` VALUES ('319', '1', '085-I', '2017-09-01', '1', 'Responsable de Escalafón y Legajos', '3', 'admin', '2017-09-01 19:35:21', 'admin', '2017-09-14 06:32:07');
INSERT INTO `convocatoria` VALUES ('320', '1', '084-I', '2017-09-01', '1', 'Técnico Administrativo', '3', 'admin', '2017-09-01 19:35:58', 'admin', '2017-09-14 06:31:45');
INSERT INTO `convocatoria` VALUES ('321', '1', 'N°086', '2017-09-06', '1', 'ANALISTA EN RACIONALIZACIÓN', '3', 'admin', '2017-09-07 08:11:17', 'admin', '2017-09-18 18:10:20');
INSERT INTO `convocatoria` VALUES ('322', '1', '087-I', '2017-09-07', '2', 'Profesionales no docentes - Terapistas ocupacionales para CEBE', '3', 'admin', '2017-09-07 20:16:34', 'admin', '2017-09-19 15:06:51');
INSERT INTO `convocatoria` VALUES ('323', '1', '088-I', '2017-09-14', '1', 'Abogado', '3', 'admin', '2017-09-14 18:16:22', 'admin', '2017-09-16 04:10:48');
INSERT INTO `convocatoria` VALUES ('324', '1', '091-I', '2017-09-27', '1', 'Asistente administrativo', '3', 'admin', '2017-09-28 00:05:20', 'admin', '2017-09-28 17:58:11');
INSERT INTO `convocatoria` VALUES ('325', '1', '090-I', '2017-09-27', '1', 'Abogado', '3', 'admin', '2017-09-28 00:06:15', 'admin', '2017-10-09 17:55:25');
INSERT INTO `convocatoria` VALUES ('326', '1', '089-I', '2017-09-27', '1', 'Técnico en Contabilidad', '3', 'admin', '2017-09-28 00:07:12', 'admin', '2017-10-09 17:55:10');
INSERT INTO `convocatoria` VALUES ('327', '1', '078-II', '2017-09-27', '1', 'Abogado(a) en seguimiento contractual', '3', 'admin', '2017-09-28 00:08:25', 'admin', '2017-10-05 18:01:26');
INSERT INTO `convocatoria` VALUES ('328', '1', '027-VIII', '2017-09-27', '2', 'Acompañante Pedagógico de Primaria', '3', 'admin', '2017-09-28 00:09:37', 'admin', '2017-10-09 17:55:40');
INSERT INTO `convocatoria` VALUES ('329', '1', '024-XI', '2017-09-27', '1', 'Personal de apoyo educativo', '3', 'admin', '2017-09-28 00:10:45', 'admin', '2017-11-07 17:38:55');
INSERT INTO `convocatoria` VALUES ('330', '1', '021-X', '2017-09-27', '1', 'Personal de vigilancia', '3', 'admin', '2017-09-28 00:12:35', 'admin', '2017-10-10 16:04:18');
INSERT INTO `convocatoria` VALUES ('331', '1', '021-IX', '2017-09-27', '1', 'Personal de vigilancia', '3', 'admin', '2017-09-28 00:13:27', 'admin', '2017-10-10 16:04:29');
INSERT INTO `convocatoria` VALUES ('332', '1', '092-I', '2017-10-02', '1', 'Abogado', '3', 'admin', '2017-10-03 08:37:13', 'admin', '2017-10-12 17:25:26');
INSERT INTO `convocatoria` VALUES ('333', '1', '093-I', '2017-10-02', '1', 'Técnico Administrativo para APAFA', '3', 'admin', '2017-10-03 08:38:45', 'admin', '2017-10-12 17:25:08');
INSERT INTO `convocatoria` VALUES ('334', '1', '094-I', '2017-10-03', '1', 'Especialista en Monitoreo', '3', 'admin', '2017-10-03 17:39:18', 'admin', '2017-10-05 17:55:32');
INSERT INTO `convocatoria` VALUES ('335', '1', '095-I', '2017-10-06', '1', 'Abogado', '3', 'admin', '2017-10-06 23:58:33', 'admin', '2017-10-16 17:24:39');
INSERT INTO `convocatoria` VALUES ('336', '1', '096-I', '2017-10-06', '2', 'Técnicos en Escalafón', '3', 'admin', '2017-10-07 00:00:56', 'admin', '2017-10-16 17:24:52');
INSERT INTO `convocatoria` VALUES ('337', '1', '097-I', '2017-10-10', '1', 'Abogado', '3', 'admin', '2017-10-10 16:05:19', 'admin', '2017-10-20 23:10:36');
INSERT INTO `convocatoria` VALUES ('338', '1', '098-I', '2017-10-11', '1', 'Técnico en Comunicaciones', '3', 'admin', '2017-10-11 15:52:33', 'admin', '2017-10-19 17:20:49');
INSERT INTO `convocatoria` VALUES ('339', '1', '027-IX', '2017-10-11', '2', 'Acompañantes Pedagógico de Primaria', '3', 'admin', '2017-10-11 15:53:09', 'admin', '2017-10-23 18:25:20');
INSERT INTO `convocatoria` VALUES ('340', '1', '029-IV', '2017-10-12', '1', 'Coordinador administrativo y de recursos educativos', '3', 'admin', '2017-10-12 17:27:52', 'admin', '2017-10-25 18:28:54');
INSERT INTO `convocatoria` VALUES ('341', '1', '023-VII', '2017-10-17', '1', 'Coordinador de Innovación y Soporte Tecnológico', '3', 'admin', '2017-10-18 08:14:46', 'admin', '2017-10-25 18:28:31');
INSERT INTO `convocatoria` VALUES ('342', '1', 'P008-I', '2017-10-20', '1', 'Practicante Pre Profesional', '3', 'admin', '2017-10-20 23:11:24', 'admin', '2017-10-31 18:59:59');
INSERT INTO `convocatoria` VALUES ('343', '1', '099-I', '2017-10-25', '1', 'Abogado', '3', 'admin', '2017-10-25 18:29:23', 'admin', '2017-11-07 17:36:25');
INSERT INTO `convocatoria` VALUES ('344', '1', '024-XII', '2017-10-26', '2', 'Personales de apoyo educativo', '3', 'admin', '2017-10-26 18:26:27', 'admin', '2017-11-06 17:33:31');
INSERT INTO `convocatoria` VALUES ('345', '1', '025-VI', '2017-11-07', '1', 'Psicólogo o Trabajador Social', '3', 'admin', '2017-11-07 17:37:12', 'admin', '2017-11-21 20:42:56');
INSERT INTO `convocatoria` VALUES ('346', '1', '021-XI', '2017-11-14', '1', 'Personal de vigilancia', '3', 'admin', '2017-11-14 17:29:16', 'admin', '2017-11-23 17:42:41');
INSERT INTO `convocatoria` VALUES ('347', '1', '023-VIII', '2017-11-14', '1', 'Coordinador de Innovación  Soporte  Tecnológico', '3', 'admin', '2017-11-14 17:30:03', 'admin', '2017-11-24 17:31:12');
INSERT INTO `convocatoria` VALUES ('348', '1', '027-X', '2017-11-14', '1', 'Acompañante Pedagógico de Primaria', '3', 'admin', '2017-11-14 17:31:07', 'admin', '2017-11-23 17:42:11');
INSERT INTO `convocatoria` VALUES ('349', '1', '100-I', '2017-11-17', '1', 'Abogado(a) en Seguimiento Contractual', '3', 'admin', '2017-11-17 16:12:37', 'admin', '2017-11-28 17:33:01');
INSERT INTO `convocatoria` VALUES ('350', '1', '101-I', '2017-11-17', '1', ' Secretaria', '3', 'admin', '2017-11-17 16:13:04', 'admin', '2017-12-02 22:30:04');
INSERT INTO `convocatoria` VALUES ('351', '1', '102-I', '2017-11-17', '1', 'Asistente Administrativo', '3', 'admin', '2017-11-17 16:13:34', 'admin', '2017-11-27 18:07:18');
INSERT INTO `convocatoria` VALUES ('352', '1', '103-I', '2017-11-20', '1', 'Responsable de Escalafón y Legajos', '3', 'admin', '2017-11-20 18:21:40', 'admin', '2017-11-28 17:33:12');
INSERT INTO `convocatoria` VALUES ('354', '1', '104-I', '2017-11-24', '1', 'Técnico Administrativo', '3', 'admin', '2017-11-24 17:32:02', 'admin', '2017-12-04 18:18:13');
INSERT INTO `convocatoria` VALUES ('355', '1', '105-I', '2017-11-24', '1', 'Especialista en Monitoreo', '3', 'admin', '2017-11-24 17:32:39', 'admin', '2017-12-04 18:18:00');
INSERT INTO `convocatoria` VALUES ('356', '1', '106-I', '2017-11-27', '1', 'Abogado', '3', 'admin', '2017-11-27 16:41:04', 'admin', '2017-11-30 16:23:58');
INSERT INTO `convocatoria` VALUES ('358', '1', '024-XIII', '2017-11-27', '2', 'Personales de Apoyo Educativo', '3', 'admin', '2017-11-27 16:56:38', 'admin', '2017-12-14 17:08:20');
INSERT INTO `convocatoria` VALUES ('359', '1', '021-XII', '2017-12-01', '1', 'Personal de vigilancia', '3', 'admin', '2017-12-01 14:42:08', 'admin', '2017-12-14 17:08:02');
INSERT INTO `convocatoria` VALUES ('360', '1', '029-V', '2017-12-01', '1', 'Coordinador administrativo y de recursos educativos', '3', 'admin', '2017-12-01 14:42:44', 'admin', '2017-12-12 23:16:55');
INSERT INTO `convocatoria` VALUES ('361', '1', '107-I', '2017-12-14', '1', 'Técnico en Contabilidad', '3', 'admin', '2017-12-15 08:11:53', 'admin', '2017-12-21 04:13:32');
INSERT INTO `convocatoria` VALUES ('362', '1', '122-I', '2017-12-19', '1', 'Técnico en Soporte', '3', 'admin', '2017-12-19 16:17:18', 'admin', '2017-12-29 19:36:13');
INSERT INTO `convocatoria` VALUES ('363', '1', '121-I', '2017-12-19', '1', 'Abogado', '3', 'admin', '2017-12-19 16:18:04', 'admin', '2017-12-29 19:36:25');
INSERT INTO `convocatoria` VALUES ('364', '1', '120-I', '2017-12-19', '1', 'Técnico Administrativo', '3', 'admin', '2017-12-19 16:18:40', 'admin', '2017-12-20 13:56:29');
INSERT INTO `convocatoria` VALUES ('365', '1', '119-I', '2017-12-19', '1', 'Especialista en Recursos Humanos', '3', 'admin', '2017-12-19 16:19:57', 'admin', '2017-12-29 19:36:40');
INSERT INTO `convocatoria` VALUES ('366', '1', '118-I', '2017-12-19', '4', 'Técnicos en Recursos Humanos', '3', 'admin', '2017-12-19 16:20:43', 'admin', '2017-12-20 13:56:44');
INSERT INTO `convocatoria` VALUES ('367', '1', '117-I', '2017-12-19', '1', 'Asistente administrativo', '3', 'admin', '2017-12-19 16:22:21', 'admin', '2017-12-29 19:32:59');
INSERT INTO `convocatoria` VALUES ('368', '1', '116-I', '2017-12-19', '1', 'Asistente administrativo', '3', 'admin', '2017-12-19 16:22:59', 'admin', '2017-12-29 19:52:54');
INSERT INTO `convocatoria` VALUES ('369', '1', '115-I', '2017-12-19', '4', 'Técnicos administrativos', '3', 'admin', '2017-12-19 16:23:40', 'admin', '2017-12-29 19:33:14');
INSERT INTO `convocatoria` VALUES ('370', '1', '114-I', '2017-12-19', '1', 'Técnico administrativo', '3', 'admin', '2017-12-19 16:24:26', 'admin', '2017-12-29 19:33:30');
INSERT INTO `convocatoria` VALUES ('371', '1', '113-I', '2017-12-19', '8', 'Técnicos en escalafón', '3', 'admin', '2017-12-19 16:25:08', 'admin', '2017-12-19 16:33:48');
INSERT INTO `convocatoria` VALUES ('372', '1', '112-I', '2017-12-19', '2', 'Oficinistas para el Equipo de Escalafón y Legajos', '3', 'admin', '2017-12-19 16:25:47', 'admin', '2017-12-19 16:34:00');
INSERT INTO `convocatoria` VALUES ('373', '1', '111-I', '2017-12-19', '1', 'Médico', '3', 'admin', '2017-12-19 16:28:21', 'admin', '2017-12-19 16:34:14');
INSERT INTO `convocatoria` VALUES ('374', '1', '110-I', '2017-12-19', '1', 'Asistenta social', '3', 'admin', '2017-12-19 16:28:51', 'admin', '2017-12-19 16:34:32');
INSERT INTO `convocatoria` VALUES ('375', '1', '109-I', '2017-12-19', '5', 'Técnicos administrativos', '3', 'admin', '2017-12-19 16:29:56', 'admin', '2017-12-29 19:34:08');
INSERT INTO `convocatoria` VALUES ('376', '1', '108-I', '2017-12-19', '1', 'Analista en Recursos Humanos', '3', 'admin', '2017-12-19 16:30:30', 'admin', '2017-12-29 19:34:26');
INSERT INTO `convocatoria` VALUES ('377', '1', '123-I', '2017-12-20', '1', 'Asistente legal', '3', 'admin', '2017-12-20 16:09:51', 'admin', '2017-12-29 19:35:56');
INSERT INTO `convocatoria` VALUES ('378', '1', '124-I', '2017-12-20', '1', 'Abogado', '3', 'admin', '2017-12-20 16:10:43', 'admin', '2017-12-29 19:35:39');
INSERT INTO `convocatoria` VALUES ('379', '1', '125-I', '2017-12-20', '1', 'Secretaria', '3', 'admin', '2017-12-20 16:11:16', 'admin', '2017-12-29 19:35:25');
INSERT INTO `convocatoria` VALUES ('380', '1', '129-I', '2017-12-21', '1', 'Técnico Legal', '3', 'admin', '2017-12-21 19:30:14', 'admin', '2018-01-03 23:31:26');
INSERT INTO `convocatoria` VALUES ('381', '1', '126-I', '2017-12-21', '1', 'Responsable de Escalafón y Legajos', '3', 'admin', '2017-12-21 19:31:35', 'admin', '2018-01-03 23:32:46');
INSERT INTO `convocatoria` VALUES ('382', '1', '128-I', '2017-12-21', '2', 'Abogados', '3', 'admin', '2017-12-21 19:32:13', 'admin', '2018-01-03 23:31:57');
INSERT INTO `convocatoria` VALUES ('383', '1', '127-I', '2017-12-21', '3', 'Abogados', '3', 'admin', '2017-12-21 19:32:40', 'admin', '2018-01-03 23:32:22');
INSERT INTO `convocatoria` VALUES ('384', '1', '130-I', '2017-12-22', '1', 'Especialista en Innovación Pedagógica', '3', 'admin', '2017-12-22 13:15:10', 'admin', '2018-01-05 18:35:23');
INSERT INTO `convocatoria` VALUES ('385', '1', '131-I', '2017-12-22', '1', 'Profesional en Educación Inicial', '3', 'admin', '2017-12-22 13:15:41', 'admin', '2018-01-05 18:35:34');
INSERT INTO `convocatoria` VALUES ('386', '1', '132-I', '2017-12-22', '1', 'Profesional en Educación Secundaria - CTA', '3', 'admin', '2017-12-22 13:16:18', 'admin', '2018-01-05 18:35:44');
INSERT INTO `convocatoria` VALUES ('387', '1', '133-I', '2017-12-26', '1', 'Abogado', '3', 'admin', '2017-12-26 16:42:35', 'admin', '2018-01-05 18:36:03');
INSERT INTO `convocatoria` VALUES ('388', '1', '134-I', '2017-12-26', '1', 'Arquitecto y/o Ingeniero Civil', '3', 'admin', '2017-12-26 16:43:10', 'admin', '2018-01-05 18:36:14');
INSERT INTO `convocatoria` VALUES ('389', '1', '135-I', '2017-12-26', '1', 'Coordinador para el Equipo de Supervisión de IIEE', '3', 'admin', '2017-12-26 16:43:55', 'admin', '2018-01-04 18:57:16');
INSERT INTO `convocatoria` VALUES ('390', '1', '136-I', '2017-12-26', '1', 'Profesional en Educación para Supervisión de IIEE', '3', 'admin', '2017-12-26 16:44:32', 'admin', '2018-01-05 18:37:45');
INSERT INTO `convocatoria` VALUES ('391', '1', '137-I', '2017-12-26', '1', 'Técnico Administrativo para APAFA', '3', 'admin', '2017-12-26 16:45:07', 'admin', '2018-01-05 18:38:00');
INSERT INTO `convocatoria` VALUES ('392', '1', 'P009-I', '2017-12-29', '1', ' Practicante Pre Profesional para el Área de Asesoría Jurídica\r\n', '3', 'admin', '2017-12-29 17:01:31', 'admin', '2018-01-09 15:51:52');
INSERT INTO `convocatoria` VALUES ('393', '1', '138-I', '2018-01-11', '1', 'Arquitecto o Ingeniero Civil', '3', 'admin', '2017-12-31 17:40:36', 'admin', '2018-01-19 19:23:31');
INSERT INTO `convocatoria` VALUES ('394', '1', '139-I', '2018-01-11', '1', 'Especialista para la Gestión del Incremento en el Acceso', '3', 'admin', '2017-12-31 17:41:20', 'admin', '2018-01-19 19:28:44');
INSERT INTO `convocatoria` VALUES ('395', '1', '140-I', '2018-01-11', '1', 'Técnico en Infraestructura', '3', 'admin', '2017-12-31 17:42:16', 'admin', '2018-01-19 19:32:04');
INSERT INTO `convocatoria` VALUES ('396', '1', '141-I', '2018-01-12', '1', 'Notificador', '3', 'admin', '2018-01-12 18:24:15', 'admin', '2018-01-23 17:41:05');
INSERT INTO `convocatoria` VALUES ('397', '1', '142-I', '2018-01-12', '1', 'Coordinador de Actas y Certificados', '3', 'admin', '2018-01-12 18:26:04', 'admin', '2018-01-23 17:41:17');
INSERT INTO `convocatoria` VALUES ('398', '2', '001', '2018-01-16', '1', 'Practicante Pre o Profesional para el Equipo de Reclutamiento y Selección', '3', 'admin', '2018-01-16 15:17:48', 'admin', '2018-01-23 17:41:36');
INSERT INTO `convocatoria` VALUES ('399', '2', '002', '2018-01-16', '1', 'Practicante Pre o Profesional para la Oficina de COPROA', '3', 'admin', '2018-01-16 15:19:40', 'admin', '2018-01-23 17:43:10');
INSERT INTO `convocatoria` VALUES ('400', '2', 'P003-I', '2018-01-18', '1', 'Practicante Pre Profesional para el Órgano de Dirección', '3', 'admin', '2018-01-18 18:01:34', 'admin', '2018-01-24 23:44:10');
INSERT INTO `convocatoria` VALUES ('401', '1', '002-I', '2018-01-23', '1', 'Técnico Administrativo', '3', 'admin', '2018-01-23 23:46:30', 'admin', '2018-01-31 22:57:17');
INSERT INTO `convocatoria` VALUES ('402', '1', '001-I', '2018-01-23', '1', 'Técnico en Escalafón', '3', 'admin', '2018-01-23 23:47:43', 'admin', '2018-01-31 22:58:43');
INSERT INTO `convocatoria` VALUES ('403', '1', '006-I', '2018-01-23', '1', 'Técnico  Administrativo', '3', 'admin', '2018-01-23 23:48:53', 'admin', '2018-01-31 22:55:44');
INSERT INTO `convocatoria` VALUES ('404', '1', '005-I', '2018-01-23', '1', 'Asistente Adminitrativo', '3', 'admin', '2018-01-23 23:50:03', 'admin', '2018-01-31 22:56:19');
INSERT INTO `convocatoria` VALUES ('405', '1', '004-I', '2018-01-23', '1', 'Técnico Administrativo', '3', 'admin', '2018-01-23 23:52:56', 'admin', '2018-01-30 22:18:46');
INSERT INTO `convocatoria` VALUES ('406', '1', '003-I', '2018-01-23', '1', 'Técnico Administrativo', '3', 'admin', '2018-01-23 23:55:56', 'admin', '2018-01-31 22:56:47');
INSERT INTO `convocatoria` VALUES ('407', '1', '007-I', '2018-01-25', '1', 'Abogado', '3', 'admin', '2018-01-25 18:07:16', 'admin', '2018-02-01 18:20:37');
INSERT INTO `convocatoria` VALUES ('408', '1', '008-I', '2018-01-25', '1', 'Técnico Administrativo', '3', 'admin', '2018-01-25 18:07:51', 'admin', '2018-02-02 22:48:32');
INSERT INTO `convocatoria` VALUES ('409', '1', '009-I', '2018-01-25', '1', 'Analista en Racionalización', '3', 'admin', '2018-01-25 18:08:25', 'admin', '2018-02-02 22:47:35');
INSERT INTO `convocatoria` VALUES ('410', '2', '004-I', '2018-01-26', '1', 'Practicante Pre profesional para el Equipo de Tecnologías de la Información', '3', 'admin', '2018-01-26 16:29:36', 'admin', '2018-02-02 22:49:09');
INSERT INTO `convocatoria` VALUES ('411', '1', '010-I', '2018-01-29', '1', 'Jefe de Recursos Humanos', '3', 'admin', '2018-01-29 10:09:41', 'admin', '2018-02-05 21:34:29');
INSERT INTO `convocatoria` VALUES ('412', '1', '011-I', '2018-01-29', '1', 'Coordinador para el Equipo de Supervisión de IIEE', '3', 'admin', '2018-01-29 10:10:16', 'admin', '2018-02-05 08:46:57');
INSERT INTO `convocatoria` VALUES ('413', '1', '012-I', '2018-01-29', '1', 'Médico', '3', 'admin', '2018-01-29 10:10:51', 'admin', '2018-02-05 21:32:44');
INSERT INTO `convocatoria` VALUES ('414', '1', '013-I', '2018-02-08', '4', 'Personales de apoyo educativo', '3', 'admin', '2018-02-08 15:05:07', 'admin', '2018-02-08 15:05:34');
INSERT INTO `convocatoria` VALUES ('415', '1', '014-I', '2018-02-08', '1', 'Personal de Secretaria', '3', 'admin', '2018-02-08 15:06:05', 'admin', '2018-02-08 15:07:07');
INSERT INTO `convocatoria` VALUES ('416', '1', '015-I', '2018-02-08', '10', 'Personales de vigilancia', '3', 'admin', '2018-02-08 15:07:37', 'admin', '2018-02-08 15:08:06');
INSERT INTO `convocatoria` VALUES ('417', '1', '016-I', '2018-02-14', '1', 'Técnico Administrativo', '3', 'admin', '2018-02-14 16:52:32', 'admin', '2018-02-21 18:13:47');
INSERT INTO `convocatoria` VALUES ('418', '1', '017-I', '2018-02-14', '1', 'Asistente Administrativo', '3', 'admin', '2018-02-14 16:53:06', 'admin', '2018-02-26 17:56:35');
INSERT INTO `convocatoria` VALUES ('419', '1', '018-I', '2018-02-19', '1', 'Técnico administrativo', '3', 'admin', '2018-02-19 10:44:14', 'admin', '2018-02-28 18:07:15');
INSERT INTO `convocatoria` VALUES ('420', '2', 'P005-I', '2018-02-19', '1', 'Practicante Pre profesional para el Equipo de Tecnologías de la Información', '3', 'admin', '2018-02-19 10:44:49', 'admin', '2018-02-27 16:19:46');
INSERT INTO `convocatoria` VALUES ('421', '1', '019-I', '2018-02-21', '1', 'Abogado', '3', 'admin', '2018-02-21 18:14:56', 'admin', '2018-03-06 22:24:16');
INSERT INTO `convocatoria` VALUES ('422', '1', '020-I', '2018-02-22', '1', 'Coordinador para el Equipo de Supervisión a IIEE', '3', 'admin', '2018-02-22 09:24:21', 'admin', '2018-03-03 09:09:14');
INSERT INTO `convocatoria` VALUES ('423', '1', '021-I', '2018-02-22', '1', 'Abogado', '3', 'admin', '2018-02-22 09:25:00', 'admin', '2018-03-03 09:09:46');
INSERT INTO `convocatoria` VALUES ('424', '1', '022-I', '2018-02-23', '1', 'Médico', '3', 'admin', '2018-02-23 17:37:49', 'admin', '2018-03-05 22:20:42');
INSERT INTO `convocatoria` VALUES ('425', '1', '023-I', '2018-02-28', '1', 'Profesional en Educación Inicial', '3', 'admin', '2018-02-28 18:08:08', 'admin', '2018-03-08 21:31:32');
INSERT INTO `convocatoria` VALUES ('426', '1', '024-I', '2018-02-28', '1', 'Técnico Administrativo', '3', 'admin', '2018-02-28 18:08:55', 'admin', '2018-03-08 21:32:01');
INSERT INTO `convocatoria` VALUES ('427', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `convocatoria` VALUES ('428', '1', '025-I', '2018-03-06', '1', 'Coordinador de la Oficina de Actas y Certificados', '3', 'admin', '2018-03-06 16:04:34', 'admin', '2018-03-14 17:49:21');
INSERT INTO `convocatoria` VALUES ('429', '1', '027-I-2018', '2018-03-27', '1', 'Técnico Administrativo para apafa', '3', 'admin', '2018-03-27 08:40:15', 'admin', '2018-04-05 21:27:51');
INSERT INTO `convocatoria` VALUES ('430', '1', '026', '2018-03-27', '1', 'TECNICO_ESCALAFON', '3', 'admin', '2018-03-27 17:20:26', 'admin', '2018-04-06 17:17:14');
INSERT INTO `convocatoria` VALUES ('431', '1', '029-I', '2018-04-04', '1', 'Especialista en Tesorería', '3', 'admin', '2018-04-04 17:13:49', 'admin', '2018-04-13 00:19:15');
INSERT INTO `convocatoria` VALUES ('432', '1', '030-I', '2018-04-05', '1', 'Profesional en Educación para Supervisión de IIEE', '3', 'admin', '2018-04-05 17:43:02', 'admin', '2018-04-16 17:05:54');
INSERT INTO `convocatoria` VALUES ('433', '1', '031-I', '2018-04-09', '1', 'Asistente administrativo', '3', 'admin', '2018-04-09 17:23:46', 'admin', '2018-04-18 18:49:59');
INSERT INTO `convocatoria` VALUES ('434', '1', '028-I', '2018-04-10', '1', 'Técnico administrativo', '3', 'admin', '2018-04-10 12:15:48', 'admin', '2018-04-23 11:53:30');
INSERT INTO `convocatoria` VALUES ('435', '1', '032-I', '2018-04-10', '2', 'Personal de secretaria', '3', 'admin', '2018-04-10 12:16:33', 'admin', '2018-04-25 17:51:47');
INSERT INTO `convocatoria` VALUES ('436', '1', '033-I', '2018-04-10', '11', 'Personales de vigilancia', '3', 'admin', '2018-04-10 12:17:06', 'admin', '2018-04-24 18:50:38');
INSERT INTO `convocatoria` VALUES ('437', '1', '034-I', '2018-04-10', '7', 'Personales de apoyo educativo', '3', 'admin', '2018-04-10 12:18:04', 'admin', '2018-04-24 18:51:19');
INSERT INTO `convocatoria` VALUES ('438', '1', '035-I', '2018-04-10', '1', 'Técnico en Infraestructura', '3', 'admin', '2018-04-10 12:18:41', 'admin', '2018-04-20 21:11:58');
INSERT INTO `convocatoria` VALUES ('439', '1', '036-I', '2018-04-16', '1', 'Auditor - Contador público', '3', 'admin', '2018-04-16 17:06:45', 'admin', '2018-04-24 17:58:19');
INSERT INTO `convocatoria` VALUES ('440', '1', '037-I', '2018-04-23', '13', 'Docentes Responsables de Núcleo', '3', 'admin', '2018-04-23 11:22:56', 'admin', '2018-05-04 18:12:55');
INSERT INTO `convocatoria` VALUES ('441', '1', '038-I', '2018-04-23', '1', 'Responsables Local de la Calidad de la Información', '3', 'admin', '2018-04-23 11:24:35', 'admin', '2018-05-04 18:10:44');
INSERT INTO `convocatoria` VALUES ('442', '1', '039-I', '2018-04-23', '36', 'Acompañantes Pedagógicos Primaria Polidocente completa\r\n', '3', 'admin', '2018-04-23 11:26:04', 'admin', '2018-05-04 18:06:40');
INSERT INTO `convocatoria` VALUES ('443', '1', '041-I', '2018-04-23', '2', 'Intérpretes de Lengua de Señas peruana para EBR/EBA', '3', 'admin', '2018-04-23 11:26:59', 'admin', '2018-05-04 18:08:26');
INSERT INTO `convocatoria` VALUES ('444', '1', '040-I', '2018-04-24', '2', 'Gestores(as) Curriculares', '3', 'admin', '2018-04-24 14:43:47', 'admin', '2018-05-28 15:08:32');
INSERT INTO `convocatoria` VALUES ('445', '1', '042-I', '2018-04-24', '2', 'Modelo Lingüístico de Lengua de Señas peruana para EBR/EBA', '3', 'admin', '2018-04-24 14:45:08', 'admin', '2018-05-07 16:28:49');
INSERT INTO `convocatoria` VALUES ('446', '1', '043-I', '2018-04-24', '2', 'Especialistas en Educación para el Trabajo', '3', 'admin', '2018-04-24 14:46:01', 'admin', '2018-05-07 16:29:25');
INSERT INTO `convocatoria` VALUES ('447', '1', '044-I', '2018-04-24', '1', 'Personal de vigilancia', '3', 'admin', '2018-04-24 14:48:00', 'admin', '2018-05-09 10:20:43');
INSERT INTO `convocatoria` VALUES ('448', '1', '045-I', '2018-04-24', '14', 'COORDINADORES DE INNOVACIÓN Y SOPORTE TECNOLÓGICO\r\n', '3', 'admin', '2018-04-24 14:49:09', 'admin', '2018-05-09 17:13:55');
INSERT INTO `convocatoria` VALUES ('449', '1', '046-I', '2018-04-24', '10', 'PSICÓLOGOS', '3', 'admin', '2018-04-24 14:50:02', 'admin', '2018-05-09 17:14:46');
INSERT INTO `convocatoria` VALUES ('450', '1', '047-I', '2018-04-24', '10', ' COORDINADORES ADMINISTRATIVOS Y DE RECURSOS EDUCATIVOS PARA ZONAS URBANAS', '3', 'admin', '2018-04-24 14:51:21', 'admin', '2018-05-09 17:15:28');
INSERT INTO `convocatoria` VALUES ('451', '1', '048-I', '2018-04-24', '1', 'Personal de Mantenimiento', '3', 'admin', '2018-04-24 14:52:52', 'admin', '2018-05-08 20:29:39');
INSERT INTO `convocatoria` VALUES ('452', '1', '049-I', '2018-05-14', '1', 'Especialista en Convivencia Escolar', '3', 'admin', '2018-05-14 18:06:52', 'admin', '2018-05-24 18:01:57');
INSERT INTO `convocatoria` VALUES ('453', '1', '050-I', '2018-05-14', '1', 'Especialista en Tesoreria', '3', 'admin', '2018-05-14 18:07:19', 'admin', '2018-05-24 18:01:46');
INSERT INTO `convocatoria` VALUES ('454', '1', '051-I', '2018-05-14', '1', 'Técnico Administrativo para APAFA', '3', 'admin', '2018-05-14 18:07:49', 'admin', '2018-05-24 18:01:35');
INSERT INTO `convocatoria` VALUES ('455', '1', '052-I', '2018-05-22', '1', 'Secretaria', '3', 'admin', '2018-05-22 17:38:29', 'admin', '2018-06-07 18:22:53');
INSERT INTO `convocatoria` VALUES ('456', '1', '053-I', '2018-05-22', '1', 'Profesional en Educación Inicial', '3', 'admin', '2018-05-22 17:38:51', 'admin', '2018-06-07 17:51:16');
INSERT INTO `convocatoria` VALUES ('457', '1', '054-I', '2018-05-29', '1', 'Médico', '3', 'admin', '2018-05-29 17:39:07', 'admin', '2018-06-14 16:37:42');
INSERT INTO `convocatoria` VALUES ('458', '1', '039-II', '2018-05-30', '2', 'Acompañante pedagógico', '3', 'admin', '2018-05-31 12:51:29', 'admin', '2018-06-19 17:29:52');
INSERT INTO `convocatoria` VALUES ('459', '1', '046-II', '2018-06-01', '1', 'Psicólogo ', '3', 'admin', '2018-06-01 16:17:03', 'admin', '2018-06-26 23:42:03');
INSERT INTO `convocatoria` VALUES ('460', '1', '037-II', '2018-06-04', '7', 'Docentes Responsables de Núcleo Distrital', '3', 'admin', '2018-06-04 17:44:56', 'admin', '2018-06-25 17:35:40');
INSERT INTO `convocatoria` VALUES ('461', '1', '055-II', '2018-06-05', '1', 'Especialista de Tesorería', '3', 'admin', '2018-06-05 15:47:45', 'admin', '2018-06-21 14:42:22');
INSERT INTO `convocatoria` VALUES ('462', '1', '056-I', '2018-06-06', '1', 'Auditor', '3', 'admin', '2018-06-06 17:31:22', 'admin', '2018-06-26 16:05:22');
INSERT INTO `convocatoria` VALUES ('463', '1', '057-I', '2018-06-06', '7', 'Coordinadores de Innovación y Soporte Tecnológico', '3', 'admin', '2018-06-06 17:32:04', 'admin', '2018-07-03 17:47:20');
INSERT INTO `convocatoria` VALUES ('464', '1', '058-I', '2018-06-06', '5', 'Coordinadores Administrativos y de Recursos Educativos para zonas urbanas', '3', 'admin', '2018-06-06 17:32:42', 'admin', '2018-07-03 17:47:09');
INSERT INTO `convocatoria` VALUES ('465', '1', '059-I', '2018-06-08', '5', 'Personales de apoyo educativo', '3', 'admin', '2018-06-11 14:58:11', 'admin', '2018-07-03 17:46:57');
INSERT INTO `convocatoria` VALUES ('466', '1', '039-III', '2018-06-08', '4', 'Acompañantes  Pedagógicos  Primaria', '3', 'admin', '2018-06-11 14:58:43', 'admin', '2018-06-28 12:43:14');
INSERT INTO `convocatoria` VALUES ('467', '1', '060-I', '2018-06-12', '1', 'Abogado en seguimiento contractual', '3', 'admin', '2018-06-12 17:06:35', 'admin', '2018-07-04 18:20:24');
INSERT INTO `convocatoria` VALUES ('468', '1', '061-I', '2018-06-12', '1', 'Técnico administrativo', '3', 'admin', '2018-06-12 17:07:24', 'admin', '2018-06-28 18:10:21');
INSERT INTO `convocatoria` VALUES ('469', '1', '062-I', '2018-06-12', '1', 'Técnico administrativo', '3', 'admin', '2018-06-12 17:07:58', 'admin', '2018-06-28 17:23:02');
INSERT INTO `convocatoria` VALUES ('470', '1', '063-I', '2018-06-18', '1', 'Jefe del Área de Supervisión y Gestión del Servicio Educativo', '3', 'admin', '2018-06-18 16:35:52', 'admin', '2018-07-05 23:01:06');
INSERT INTO `convocatoria` VALUES ('471', '1', '044-II', '2018-06-25', '2', 'Personal de vigilancia', '3', 'admin', '2018-06-25 08:56:21', 'admin', '2018-07-13 10:50:13');
INSERT INTO `convocatoria` VALUES ('472', '1', 'P006-I', '2018-06-25', '1', 'Practicante Pre o Profesional para la Oficina de Coproa', '3', 'admin', '2018-06-25 17:35:12', 'admin', '2018-07-05 08:41:21');
INSERT INTO `convocatoria` VALUES ('473', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `convocatoria` VALUES ('474', '1', '044-III', '2018-07-06', '2', 'Personal de vigilancia', '3', 'admin', '2018-07-06 17:27:13', 'admin', '2018-07-25 17:24:23');
INSERT INTO `convocatoria` VALUES ('475', '1', '044-IV', '2018-07-13', '1', 'Personal de vigilancia', '3', 'admin', '2018-07-13 15:45:33', 'admin', '2018-08-07 16:32:46');
INSERT INTO `convocatoria` VALUES ('476', '1', '064-I', '2018-07-13', '1', 'Asistente Administrativo', '3', 'admin', '2018-07-13 15:46:27', 'admin', '2018-08-03 16:58:48');
INSERT INTO `convocatoria` VALUES ('477', '1', '057-II', '2018-07-23', '1', 'Coordinador de Innovación y Soporte Tecnológico', '3', 'admin', '2018-07-23 12:45:53', 'admin', '2018-08-15 15:30:50');
INSERT INTO `convocatoria` VALUES ('478', '1', '057-III', '2018-07-24', '1', 'Coordinador de Innovación y Soporte Tecnológico', '3', 'admin', '2018-07-24 17:22:55', 'admin', '2018-08-17 11:42:47');
INSERT INTO `convocatoria` VALUES ('479', '1', '037-III', '2018-07-24', '1', 'Docentes Responsables de Núcleo Distrital', '3', 'admin', '2018-07-24 17:23:34', 'admin', '2018-08-14 14:27:04');
INSERT INTO `convocatoria` VALUES ('480', '1', '065-I', '2018-08-09', '1', 'Notificador', '3', 'admin', '2018-08-09 16:49:58', 'admin', '2018-08-27 17:13:54');
INSERT INTO `convocatoria` VALUES ('481', '1', '066-I', '2018-08-14', '1', 'Coordinador del Equipo de Estadística y Monitoreo', '3', 'admin', '2018-08-14 14:23:32', 'admin', '2018-09-04 12:27:08');
INSERT INTO `convocatoria` VALUES ('482', '1', '067-I', '2018-08-15', '1', 'Responsable del Equipo de Planeamiento y Presupuesto', '3', 'admin', '2018-08-15 10:04:49', 'admin', '2018-09-03 19:10:22');
INSERT INTO `convocatoria` VALUES ('483', '1', '032-II', '2018-08-20', '1', 'Personal de secretaria', '3', 'admin', '2018-08-20 17:37:42', 'admin', '2018-09-10 11:05:17');
INSERT INTO `convocatoria` VALUES ('484', '2', '007-I', '2018-09-10', '1', 'Practicante Pre profesional para el Órgano de Dirección', '3', 'admin', '2018-09-10 11:06:12', 'admin', '2018-09-13 16:43:28');
INSERT INTO `convocatoria` VALUES ('485', '2', '008-I', '2018-09-12', '1', 'Practicante Pre profesional para Secretaría Técnica - Servir', '3', 'admin', '2018-09-12 12:37:29', 'admin', '2018-09-18 17:09:37');
INSERT INTO `convocatoria` VALUES ('486', '1', '037-IV', '2018-09-17', '1', 'Docente Responsable de Núcleo Distrital', '2', 'admin', '2018-09-17 09:46:29', 'admin', '2018-10-03 18:03:47');
INSERT INTO `convocatoria` VALUES ('487', '1', '065-II', '2018-09-17', '1', 'Notificador', '3', 'admin', '2018-09-17 09:49:41', 'admin', '2018-10-04 08:41:55');
INSERT INTO `convocatoria` VALUES ('488', '1', '068-I', '2018-09-17', '1', 'Responsable del Equipo de Planeamiento y Presupuesto', '3', 'admin', '2018-09-17 09:51:09', 'admin', '2018-10-03 18:03:54');
INSERT INTO `convocatoria` VALUES ('489', '1', '069-I', '2018-09-18', '1', 'Arquitecto o Ingeniero Civil', '1', 'admin', '2018-09-18 17:07:46', 'admin', '2018-10-12 17:06:33');
INSERT INTO `convocatoria` VALUES ('490', '1', '070-I', '2018-09-21', '1', 'Oficinista para Escalafón', '1', 'admin', '2018-09-22 18:04:25', null, null);
INSERT INTO `convocatoria` VALUES ('491', '1', '071-I', '2018-09-24', '1', 'Técnico administrativo ', '1', 'admin', '2018-09-25 02:57:39', null, null);
INSERT INTO `convocatoria` VALUES ('492', '1', '072-I', '2018-09-24', '1', 'Técnico administrativo para Trámite Documentario', '1', 'admin', '2018-09-25 02:58:57', null, null);
INSERT INTO `convocatoria` VALUES ('493', '2', 'P009-I', '2018-09-24', '1', 'Practicante Profesional para el Equipo de Planillas y Pensiones', '3', 'admin', '2018-09-25 03:01:17', 'admin', '2018-10-03 18:04:11');
INSERT INTO `convocatoria` VALUES ('497', '1', '23', '2018-10-09', '2', 'SECRETARIA TECNICA PARA EL AREA DE AGEBRE', '1', 'admin', '2018-10-11 12:11:19', 'admin', '2018-11-10 08:33:29');
INSERT INTO `convocatoria` VALUES ('498', '1', '432', '2018-11-10', '2', 'ANALISTA DE SISTEMAS ESPECIALISTAS EN PYTHON', '1', 'admin', '2018-11-10 08:37:36', null, null);

-- ----------------------------
-- Table structure for detalle_postulacion
-- ----------------------------
DROP TABLE IF EXISTS `detalle_postulacion`;
CREATE TABLE `detalle_postulacion` (
  `IDdetalle_postulacion` int(11) NOT NULL AUTO_INCREMENT,
  `IDpostulante` int(11) NOT NULL,
  `IDconvocatoria` int(11) DEFAULT NULL,
  `evaluacion_exp` decimal(10,0) DEFAULT NULL,
  `examen_tecnico` decimal(10,0) DEFAULT NULL,
  `resultado_final` decimal(10,0) DEFAULT NULL,
  `fecha_reg` date DEFAULT NULL,
  `estado` int(11) DEFAULT NULL,
  PRIMARY KEY (`IDdetalle_postulacion`),
  KEY `IDconvocatoria` (`IDconvocatoria`),
  KEY `IDpostulante` (`IDpostulante`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of detalle_postulacion
-- ----------------------------
INSERT INTO `detalle_postulacion` VALUES ('1', '1', '489', '40', '20', '60', '2017-10-02', '1');
INSERT INTO `detalle_postulacion` VALUES ('2', '2', '489', '20', '65', '85', '2017-10-02', '1');
INSERT INTO `detalle_postulacion` VALUES ('3', '3', '489', '34', '20', '54', '2017-10-02', '1');
INSERT INTO `detalle_postulacion` VALUES ('4', '4', '494', null, null, null, '2017-10-04', '0');
INSERT INTO `detalle_postulacion` VALUES ('5', '5', '497', '4', '0', null, '2017-10-04', '1');
INSERT INTO `detalle_postulacion` VALUES ('6', '6', '489', '12', '0', '0', '2017-10-02', '1');
INSERT INTO `detalle_postulacion` VALUES ('7', '7', '489', null, null, null, '2017-10-02', '0');
INSERT INTO `detalle_postulacion` VALUES ('8', '8', '489', null, null, null, '2017-10-02', '0');
INSERT INTO `detalle_postulacion` VALUES ('9', '9', '489', '22', '0', '22', '2017-10-02', '1');
INSERT INTO `detalle_postulacion` VALUES ('10', '10', '489', '32', '0', '0', '2017-10-02', '1');
INSERT INTO `detalle_postulacion` VALUES ('11', '11', '489', '34', '0', '0', '2017-10-02', '1');
INSERT INTO `detalle_postulacion` VALUES ('12', '12', '489', '21', '0', '0', '2017-10-02', '1');
INSERT INTO `detalle_postulacion` VALUES ('13', '13', '489', '41', '0', '0', '2017-10-02', '1');
INSERT INTO `detalle_postulacion` VALUES ('14', '14', '489', '22', '0', '0', '2017-10-02', '1');
INSERT INTO `detalle_postulacion` VALUES ('15', '15', '489', null, null, null, '2017-10-02', '0');
INSERT INTO `detalle_postulacion` VALUES ('16', '16', '489', '11', '0', '0', '2017-10-02', '1');
INSERT INTO `detalle_postulacion` VALUES ('17', '17', '489', '13', '0', '0', '2017-10-02', '1');
INSERT INTO `detalle_postulacion` VALUES ('18', '18', '489', null, null, null, '2017-10-02', '0');
INSERT INTO `detalle_postulacion` VALUES ('19', '19', '489', '42', '0', '0', '2017-10-02', '1');
INSERT INTO `detalle_postulacion` VALUES ('20', '20', '489', '24', '0', '0', '2017-10-02', '1');
INSERT INTO `detalle_postulacion` VALUES ('21', '21', '489', null, null, null, '2017-10-02', '0');
INSERT INTO `detalle_postulacion` VALUES ('32', '3', '497', '23', null, null, '2017-10-04', '1');
INSERT INTO `detalle_postulacion` VALUES ('33', '22', '497', null, null, null, '2017-10-04', '0');
INSERT INTO `detalle_postulacion` VALUES ('34', '23', '497', null, null, null, '2017-10-04', '0');
INSERT INTO `detalle_postulacion` VALUES ('35', '24', '497', '32', null, null, '2017-10-04', '1');
INSERT INTO `detalle_postulacion` VALUES ('36', '25', '497', '33', null, null, '2017-10-04', '1');
INSERT INTO `detalle_postulacion` VALUES ('37', '26', '492', '16', null, null, '2017-10-04', '1');
INSERT INTO `detalle_postulacion` VALUES ('38', '27', '498', null, null, null, '2017-10-04', '0');
INSERT INTO `detalle_postulacion` VALUES ('39', '28', '498', '32', null, null, '2017-10-04', '1');
INSERT INTO `detalle_postulacion` VALUES ('40', '29', '498', null, null, null, '2017-10-04', '0');
INSERT INTO `detalle_postulacion` VALUES ('41', '30', '498', '4', null, null, '2017-10-04', '1');
INSERT INTO `detalle_postulacion` VALUES ('42', '31', '498', '23', null, null, '2017-10-04', '1');
INSERT INTO `detalle_postulacion` VALUES ('43', '32', '498', null, null, null, '2017-10-04', '0');
INSERT INTO `detalle_postulacion` VALUES ('44', '33', '498', null, null, null, '2017-10-04', '0');
INSERT INTO `detalle_postulacion` VALUES ('45', '34', '498', null, null, null, '2017-10-04', '0');
INSERT INTO `detalle_postulacion` VALUES ('46', '35', '498', '4', null, null, '2017-10-04', '1');
INSERT INTO `detalle_postulacion` VALUES ('47', '36', '498', null, null, null, '2017-10-04', '0');
INSERT INTO `detalle_postulacion` VALUES ('48', '37', '498', null, null, null, '2017-10-04', '0');
INSERT INTO `detalle_postulacion` VALUES ('49', '38', '498', '2', null, null, '2017-10-04', '1');

-- ----------------------------
-- Table structure for log_convocatoria
-- ----------------------------
DROP TABLE IF EXISTS `log_convocatoria`;
CREATE TABLE `log_convocatoria` (
  `IDconvocatorialog` int(11) NOT NULL AUTO_INCREMENT,
  `numero` varchar(20) DEFAULT NULL,
  `cantidad` int(11) DEFAULT NULL,
  `fechaRegistro` datetime DEFAULT NULL,
  `asuntoContrato` text,
  `estado` int(11) DEFAULT NULL,
  `usuarioRegistro` varchar(20) DEFAULT NULL,
  `usuario` varchar(20) DEFAULT NULL,
  `accion` varchar(20) DEFAULT NULL,
  `fecha` datetime DEFAULT NULL,
  PRIMARY KEY (`IDconvocatorialog`)
) ENGINE=InnoDB AUTO_INCREMENT=1373 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of log_convocatoria
-- ----------------------------
INSERT INTO `log_convocatoria` VALUES ('1', '01-I-2016', '206', '2016-08-07 17:46:19', 'DOCENTES FORTALEZA', '3', null, 'admin', 'REGISTRO', '2016-08-07 17:46:19');
INSERT INTO `log_convocatoria` VALUES ('2', '001-I', '206', '2016-08-07 17:46:19', 'DOCENTES FORTALEZA', '3', null, 'admin', 'ACTUALIZACION', '2016-08-07 17:49:08');
INSERT INTO `log_convocatoria` VALUES ('3', '002-I', '63', '2016-08-07 17:56:52', 'ACOMPAñANTES PEDAGÓGICOS DE PRIMARIA', '3', null, 'admin', 'REGISTRO', '2016-08-07 17:56:52');
INSERT INTO `log_convocatoria` VALUES ('4', '003-I', '7', '2016-08-07 18:01:01', 'COORDINADORES INNOVACIÓN SOPORTE TECNOLOGÍAS', '3', null, 'admin', 'REGISTRO', '2016-08-07 18:01:01');
INSERT INTO `log_convocatoria` VALUES ('5', '004-I', '7', '2016-08-07 18:03:23', 'PSICÓLOGOS O TRABAJADOR SOCIAL', '3', null, 'admin', 'REGISTRO', '2016-08-07 18:03:23');
INSERT INTO `log_convocatoria` VALUES ('6', '005-I', '7', '2016-08-07 18:04:16', 'COORDINADORES ADMINISTRATIVOS Y DE RECURSOS EDUCATIVOS', '3', null, 'admin', 'REGISTRO', '2016-08-07 18:04:16');
INSERT INTO `log_convocatoria` VALUES ('7', '007-I', '1', '2016-08-07 18:05:19', 'PERSONAL DE MANTENIMIENTO', '3', null, 'admin', 'REGISTRO', '2016-08-07 18:05:19');
INSERT INTO `log_convocatoria` VALUES ('8', '008-I', '5', '2016-08-07 18:06:11', 'PERSONAL DE SECRETARÍA', '3', null, 'admin', 'REGISTRO', '2016-08-07 18:06:11');
INSERT INTO `log_convocatoria` VALUES ('9', '009-I', '4', '2016-08-07 18:07:00', 'PERSONAL DE APOYO EDUCATIVO', '3', null, 'admin', 'REGISTRO', '2016-08-07 18:07:00');
INSERT INTO `log_convocatoria` VALUES ('10', '010-I', '10', '2016-08-07 18:08:10', 'PROFESIONALES EN EDUCACIÓN', '3', null, 'admin', 'REGISTRO', '2016-08-07 18:08:10');
INSERT INTO `log_convocatoria` VALUES ('11', '012-I', '7', '2016-08-07 18:13:48', 'COORDINADORES INNOVACIÓN SOPORTE TECNOLOGÍAS', '3', null, 'admin', 'REGISTRO', '2016-08-07 18:13:48');
INSERT INTO `log_convocatoria` VALUES ('12', '013-I', '7', '2016-08-07 18:15:43', 'COORDINADORES ADMINISTRATIVOS Y DE RECURSOS EDUCATIVOS', '3', null, 'admin', 'REGISTRO', '2016-08-07 18:15:43');
INSERT INTO `log_convocatoria` VALUES ('13', '014-I', '7', '2016-08-07 18:17:31', 'PSICÓLOGO O TRABAJADOR SOCIAL', '3', null, 'admin', 'REGISTRO', '2016-08-07 18:17:31');
INSERT INTO `log_convocatoria` VALUES ('14', '015-I', '7', '2016-08-07 18:19:46', 'PERSONAL DE APOYO EDUCATIVO', '3', null, 'admin', 'REGISTRO', '2016-08-07 18:19:46');
INSERT INTO `log_convocatoria` VALUES ('15', '016-I', '5', '2016-08-07 18:21:13', 'PERSONAL DE SECRETARÍA', '3', null, 'admin', 'REGISTRO', '2016-08-07 18:21:13');
INSERT INTO `log_convocatoria` VALUES ('16', '017-I', '3', '2016-08-07 18:23:04', 'PERSONAL DE VIGILANCIA', '3', null, 'admin', 'REGISTRO', '2016-08-07 18:23:04');
INSERT INTO `log_convocatoria` VALUES ('17', '011-I', '11', '2016-08-07 18:28:17', 'ACOMPAñANTES DE REDES DE EDUCACIÓN FÍSICA', '3', null, 'admin', 'REGISTRO', '2016-08-07 18:28:17');
INSERT INTO `log_convocatoria` VALUES ('18', '018-II', '19', '2016-08-07 18:31:55', 'ACOMPAñANTES DE SOPORTE PEDAGÓGICO', '3', null, 'admin', 'REGISTRO', '2016-08-07 18:31:55');
INSERT INTO `log_convocatoria` VALUES ('19', '022-II', '10', '2016-08-07 18:33:37', 'ACOMPAñANTES DE REDES EN EDUCACIÓN FÍSICA', '3', null, 'admin', 'REGISTRO', '2016-08-07 18:33:37');
INSERT INTO `log_convocatoria` VALUES ('20', '027-II', '5', '2016-08-07 18:37:03', 'DOCENTES FORTALEZA', '3', null, 'admin', 'REGISTRO', '2016-08-07 18:37:03');
INSERT INTO `log_convocatoria` VALUES ('21', '019-I', '1', '2016-08-07 18:39:12', 'TÉCNICO LEGAL PARA EL ÁREA DE RECURSOS HUMANOS', '3', null, 'admin', 'REGISTRO', '2016-08-07 18:39:12');
INSERT INTO `log_convocatoria` VALUES ('22', '020-I', '1', '2016-08-07 18:41:14', 'TÉCNICO ADMINISTRATIVO', '3', null, 'admin', 'REGISTRO', '2016-08-07 18:41:14');
INSERT INTO `log_convocatoria` VALUES ('23', '15-II', '1', '2016-08-07 18:43:08', 'PERSONAL DE APOYO EDUCATIVO', '3', null, 'admin', 'REGISTRO', '2016-08-07 18:43:08');
INSERT INTO `log_convocatoria` VALUES ('24', '016-II', '1', '2016-08-07 18:44:33', 'PERSONAL DE SECRETARIA', '3', null, 'admin', 'REGISTRO', '2016-08-07 18:44:33');
INSERT INTO `log_convocatoria` VALUES ('25', '015-II', '1', '2016-08-07 18:43:08', 'PERSONAL DE APOYO EDUCATIVO', '3', null, 'admin', 'ACTUALIZACION', '2016-08-07 18:46:49');
INSERT INTO `log_convocatoria` VALUES ('26', '022-III', '2', '2016-08-07 18:47:26', 'ACOMPAñANTES DE REDES DE EDUCACIÓN FÍSICA', '3', null, 'admin', 'REGISTRO', '2016-08-07 18:47:26');
INSERT INTO `log_convocatoria` VALUES ('27', '021-I', '1', '2016-08-07 18:49:13', 'AGENTE DE SIAGIE', '3', null, 'admin', 'REGISTRO', '2016-08-07 18:49:13');
INSERT INTO `log_convocatoria` VALUES ('28', '023-I', '2', '2016-08-07 18:52:57', 'DOCENTES FORTALEZA', '3', null, 'admin', 'REGISTRO', '2016-08-07 18:52:57');
INSERT INTO `log_convocatoria` VALUES ('29', '036-I', '1', '2016-08-07 18:55:19', 'COORDINADOR DE INNOVACIÓN SOPORTE TECNOLOGÍAS', '3', null, 'admin', 'REGISTRO', '2016-08-07 18:55:19');
INSERT INTO `log_convocatoria` VALUES ('30', '024-I', '2', '2016-08-07 18:58:18', 'CHOFERES', '3', null, 'admin', 'REGISTRO', '2016-08-07 18:58:18');
INSERT INTO `log_convocatoria` VALUES ('31', '025-I', '1', '2016-08-07 19:01:38', 'PROFESIONAL EN CONTABILIDAD PARA EL EQUIPO DE TESORERÍA', '3', null, 'admin', 'REGISTRO', '2016-08-07 19:01:38');
INSERT INTO `log_convocatoria` VALUES ('32', '026-I', '1', '2016-08-07 19:03:38', 'ABOGADO PARA LA SECRETARÍA TÉCNICA DEL PROCEDIMIENTO ADMINISTRATIVO DISCIPLINARIO - LEY DEL SERVICIO CIVIL', '3', null, 'admin', 'REGISTRO', '2016-08-07 19:03:38');
INSERT INTO `log_convocatoria` VALUES ('33', '028-I', '1', '2016-08-07 19:05:28', 'TÉCNICO ADMINISTRATIVO PARA INTERVENCIONES PEDAGÓGICAS', '3', null, 'admin', 'REGISTRO', '2016-08-07 19:05:28');
INSERT INTO `log_convocatoria` VALUES ('34', '029-I', '1', '2016-08-07 19:07:26', 'TÉCNICO LEGAL PARA EL ÓRGANO DE ASESORÍA JURÍDICA', '3', null, 'admin', 'REGISTRO', '2016-08-07 19:07:26');
INSERT INTO `log_convocatoria` VALUES ('35', '030-I', '1', '2016-08-07 19:12:02', 'TÉCNICO ADMINISTRATIVO PARA RECURSOS HUMANOS', '3', null, 'admin', 'REGISTRO', '2016-08-07 19:12:02');
INSERT INTO `log_convocatoria` VALUES ('36', '031-I', '1', '2016-08-07 19:12:49', 'ASISTENTE ADMINISTRATIVO PARA RECURSOS HUMANOS', '3', null, 'admin', 'REGISTRO', '2016-08-07 19:12:49');
INSERT INTO `log_convocatoria` VALUES ('37', '032-I', '1', '2016-08-07 19:13:27', 'ASISTENTE ADMINISTRATIVO PARA EL ÁREA DE RECURSOS HUMANOS', '3', null, 'admin', 'REGISTRO', '2016-08-07 19:13:27');
INSERT INTO `log_convocatoria` VALUES ('38', '033-I', '1', '2016-08-07 19:20:03', 'ESPECIALISTA EN INNOVACIÓN PEDAGÓGICA', '3', null, 'admin', 'REGISTRO', '2016-08-07 19:20:03');
INSERT INTO `log_convocatoria` VALUES ('39', '034-I', '1', '2016-08-07 19:20:21', 'ABOGADO PARA LA SECRETARÍA TÉCNICA DEL PROCEDIMIENTO ADMINISTRATIVO DISCIPLINARIO - LEY DEL SERVICIO CIVIL', '3', null, 'admin', 'REGISTRO', '2016-08-07 19:20:21');
INSERT INTO `log_convocatoria` VALUES ('40', '022-IV', '1', '2016-08-07 19:21:57', 'ACOMPAñANTES DE REDES DE EDUCACIÓN FÍSICA', '3', null, 'admin', 'REGISTRO', '2016-08-07 19:21:57');
INSERT INTO `log_convocatoria` VALUES ('41', '034-II', '1', '2016-08-07 19:28:23', 'ABOGADO PARA LA SECRETARÍA TÉCNICA DEL PROCEDIMIENTO ADMINISTRATIVO DISCIPLINARIO - LEY DEL SERVICIO CIVIL (01)', '3', null, 'admin', 'REGISTRO', '2016-08-07 19:28:23');
INSERT INTO `log_convocatoria` VALUES ('42', '032-II', '1', '2016-08-07 19:29:26', 'ASISTENTE ADMINISTRATIVO', '1', null, 'admin', 'REGISTRO', '2016-08-07 19:29:26');
INSERT INTO `log_convocatoria` VALUES ('43', '030-II', '1', '2016-08-07 19:30:29', 'TÉCNICO ADMINISTRATIVO', '3', null, 'admin', 'REGISTRO', '2016-08-07 19:30:29');
INSERT INTO `log_convocatoria` VALUES ('44', '026-II', '1', '2016-08-07 19:31:48', 'ABOGADO PARA LA SECRETARÍA TÉCNICA DEL PROCEDIMIENTO ADMINISTRATIVO DISCIPLINARIO - LEY DEL SERVICIO CIVIL', '3', null, 'admin', 'REGISTRO', '2016-08-07 19:31:48');
INSERT INTO `log_convocatoria` VALUES ('45', '022-V', '1', '2016-08-07 19:33:50', 'ACOMPAñANTE DE REDES DE EDUCACIÓN FÍSICA', '3', null, 'admin', 'REGISTRO', '2016-08-07 19:33:50');
INSERT INTO `log_convocatoria` VALUES ('46', '035-I', '1', '2016-08-07 19:34:24', 'TÉCNICO LEGAL PARA EL ÁREA DE RECURSOS HUMANOS', '3', null, 'admin', 'REGISTRO', '2016-08-07 19:34:24');
INSERT INTO `log_convocatoria` VALUES ('47', '032-II', '1', '2016-08-07 19:29:26', 'ASISTENTE ADMINISTRATIVO', '1', 'admin', 'admin', 'ELIMINACION', '2016-08-08 08:03:38');
INSERT INTO `log_convocatoria` VALUES ('48', '034-I', '1', '2016-08-07 19:20:21', 'ABOGADO PARA LA SECRETARÍA TÉCNICA DEL PROCEDIMIENTO ADMINISTRATIVO DISCIPLINARIO - LEY DEL SERVICIO CIVIL', '3', 'admin', 'admin', 'ELIMINACION', '2016-08-08 08:03:45');
INSERT INTO `log_convocatoria` VALUES ('49', '026-II', '1', '2016-08-07 19:31:48', 'ABOGADO PARA LA SECRETARÍA TÉCNICA DEL PROCEDIMIENTO ADMINISTRATIVO DISCIPLINARIO - LEY DEL SERVICIO CIVIL', '3', 'admin', 'admin', 'ELIMINACION', '2016-08-08 08:04:08');
INSERT INTO `log_convocatoria` VALUES ('50', '030-II', '1', '2016-08-07 19:30:29', 'TÉCNICO ADMINISTRATIVO', '3', 'admin', 'admin', 'ELIMINACION', '2016-08-08 08:04:15');
INSERT INTO `log_convocatoria` VALUES ('51', '034-II', '1', '2016-08-07 19:28:23', 'ABOGADO PARA LA SECRETARÍA TÉCNICA DEL PROCEDIMIENTO ADMINISTRATIVO DISCIPLINARIO - LEY DEL SERVICIO CIVIL (01)', '3', 'admin', 'admin', 'ELIMINACION', '2016-08-08 08:04:20');
INSERT INTO `log_convocatoria` VALUES ('52', '035-I', '1', '2016-08-07 19:34:24', 'TÉCNICO LEGAL PARA EL ÁREA DE RECURSOS HUMANOS', '3', null, 'admin', 'ACTUALIZACION', '2016-08-08 08:10:38');
INSERT INTO `log_convocatoria` VALUES ('53', '031-I', '1', '2016-08-07 19:12:49', 'ASISTENTE ADMINISTRATIVO PARA RECURSOS HUMANOS', '3', null, 'admin', 'ACTUALIZACION', '2016-08-08 08:10:53');
INSERT INTO `log_convocatoria` VALUES ('54', '028-I', '1', '2016-08-07 19:05:28', 'TÉCNICO ADMINISTRATIVO PARA INTERVENCIONES PEDAGÓGICAS', '3', null, 'admin', 'ACTUALIZACION', '2016-08-08 08:11:05');
INSERT INTO `log_convocatoria` VALUES ('55', '34-II', '1', '2016-08-08 08:12:23', 'ABOGADO PARA LA SECRETARIA TÉCNICA DEL PROCEDIMIENTO ADMINISTRATIVO DISCIPLINARIO - LEY DEL SERVICIO CIVIL', '3', null, 'admin', 'REGISTRO', '2016-08-08 08:12:23');
INSERT INTO `log_convocatoria` VALUES ('56', '032-II', '1', '2016-08-08 08:12:55', 'ASISTENTE ADMINISTRATIVO', '3', null, 'admin', 'REGISTRO', '2016-08-08 08:12:55');
INSERT INTO `log_convocatoria` VALUES ('57', '026-II', '1', '2016-08-08 08:13:21', 'ABOGADO PARA LA SECRETARÍA TÉCNICA DEL PROCEDIMIENTO ADMINISTRATIVO DISCIPLINARIO - LEY DEL SERVICIO CIVIL', '3', null, 'admin', 'REGISTRO', '2016-08-08 08:13:21');
INSERT INTO `log_convocatoria` VALUES ('58', '037-II', '1', '2016-08-08 08:13:48', 'TÉCNICO ADMINISTRATIVO PARA EL EQUIPO DE PLANILLAS Y PENSIONES', '3', null, 'admin', 'REGISTRO', '2016-08-08 08:13:48');
INSERT INTO `log_convocatoria` VALUES ('59', '038-I', '1', '2016-08-08 08:17:17', 'TÉCNICO ADMINISTRATIVO DE PLANILLA', '3', null, 'admin', 'REGISTRO', '2016-08-08 08:17:17');
INSERT INTO `log_convocatoria` VALUES ('60', '037-I', '1', '2016-08-08 08:13:48', 'TÉCNICO ADMINISTRATIVO PARA EL EQUIPO DE PLANILLAS Y PENSIONES', '3', null, 'admin', 'ACTUALIZACION', '2016-08-08 08:17:46');
INSERT INTO `log_convocatoria` VALUES ('61', '039-I', '18', '2016-08-08 08:18:16', 'PERSONAL DE VIGILANCIA', '3', null, 'admin', 'REGISTRO', '2016-08-08 08:18:16');
INSERT INTO `log_convocatoria` VALUES ('62', '12-III', '1', '2016-08-08 08:18:53', 'COORDINADOR INNOVACIÓN SOPORTE TECNOLOGÍAS', '3', null, 'admin', 'REGISTRO', '2016-08-08 08:18:53');
INSERT INTO `log_convocatoria` VALUES ('63', '002-III', '6', '2016-08-08 08:20:03', 'ACOMPAñANTES DE SOPORTE PEDAGÓGICO DE PRIMARIA', '3', null, 'admin', 'REGISTRO', '2016-08-08 08:20:03');
INSERT INTO `log_convocatoria` VALUES ('64', '23-III', '5', '2016-08-08 08:34:13', 'DOCENTES FORTALEZAS', '3', null, 'admin', 'REGISTRO', '2016-08-08 08:34:13');
INSERT INTO `log_convocatoria` VALUES ('65', '044-I', '1', '2016-08-08 08:35:48', 'ESPECIALISTA EN CONTABILIDAD', '3', null, 'admin', 'REGISTRO', '2016-08-08 08:35:48');
INSERT INTO `log_convocatoria` VALUES ('66', '043-I', '1', '2016-08-08 08:36:25', 'TÉCNICO ADMINISTRATIVO PARA EL COMITÉ DE CONTROL INTERNO', '3', null, 'admin', 'REGISTRO', '2016-08-08 08:36:25');
INSERT INTO `log_convocatoria` VALUES ('67', '042-I', '1', '2016-08-08 08:36:51', 'ASISTENTE ADMINISTRATIVO PARA EL EQUIPO TRÁMITE DOCUMENTARIO', '3', null, 'admin', 'REGISTRO', '2016-08-08 08:36:51');
INSERT INTO `log_convocatoria` VALUES ('68', '041-I', '1', '2016-08-08 08:37:13', 'ASISTENTE ADMINISTRATIVO', '3', null, 'admin', 'REGISTRO', '2016-08-08 08:37:13');
INSERT INTO `log_convocatoria` VALUES ('69', '040-I', '1', '2016-08-08 08:41:09', 'ASISTENTE ADMINISTRATIVO', '3', null, 'admin', 'REGISTRO', '2016-08-08 08:41:09');
INSERT INTO `log_convocatoria` VALUES ('70', '058-I', '2', '2016-08-08 08:42:42', 'TÉCNICOS ADMINISTRATIVO ORIENTADOR', '3', null, 'admin', 'REGISTRO', '2016-08-08 08:42:42');
INSERT INTO `log_convocatoria` VALUES ('71', '054-I', '8', '2016-08-08 08:50:45', 'TÉCNICOS DE ESCALAFÓN', '3', null, 'admin', 'REGISTRO', '2016-08-08 08:50:46');
INSERT INTO `log_convocatoria` VALUES ('72', '056-I', '2', '2016-08-08 08:51:32', 'NOTIFICADORES', '3', null, 'admin', 'REGISTRO', '2016-08-08 08:51:32');
INSERT INTO `log_convocatoria` VALUES ('73', '052-I', '1', '2016-08-08 08:52:18', 'ESPECIALISTA EN RECURSOS HUMANOS', '3', null, 'admin', 'REGISTRO', '2016-08-08 08:52:18');
INSERT INTO `log_convocatoria` VALUES ('74', '050-I', '1', '2016-08-08 08:53:15', 'MÉDICO', '3', null, 'admin', 'REGISTRO', '2016-08-08 08:53:15');
INSERT INTO `log_convocatoria` VALUES ('75', '048-I', '1', '2016-08-08 08:54:13', 'ESPECIALISTA EN MONITOREO', '3', null, 'admin', 'REGISTRO', '2016-08-08 08:54:13');
INSERT INTO `log_convocatoria` VALUES ('76', '046-I', '2', '2016-08-08 08:54:53', 'ANALISTAS DE RACIONALIZACIÓN', '3', null, 'admin', 'REGISTRO', '2016-08-08 08:54:53');
INSERT INTO `log_convocatoria` VALUES ('77', '057-I', '6', '2016-08-08 08:55:37', 'TÉCNICOS ADMINISTRATIVOS', '3', null, 'admin', 'REGISTRO', '2016-08-08 08:55:37');
INSERT INTO `log_convocatoria` VALUES ('78', '055-I', '4', '2016-08-08 08:56:28', 'TÉCNICOS EN RECURSOS HUMANOS', '3', null, 'admin', 'REGISTRO', '2016-08-08 08:56:28');
INSERT INTO `log_convocatoria` VALUES ('79', '053-I', '2', '2016-08-08 08:57:19', 'OFICINISTAS PARA EL EQUIPO DE ESCALAFÓN Y LEGAJOS', '3', null, 'admin', 'REGISTRO', '2016-08-08 08:57:19');
INSERT INTO `log_convocatoria` VALUES ('80', '049-I', '2', '2016-08-08 08:58:13', 'ABOGADOS PARA ASESORÍA JURÍDICA', '3', null, 'admin', 'REGISTRO', '2016-08-08 08:58:13');
INSERT INTO `log_convocatoria` VALUES ('81', '051-I', '1', '2016-08-08 08:59:37', 'ASISTENTE SOCIAL PARA EL EQUIPO DE DESARROLLO Y BIENESTAR SOCIAL', '3', null, 'admin', 'REGISTRO', '2016-08-08 08:59:37');
INSERT INTO `log_convocatoria` VALUES ('82', '045-I', '1', '2016-08-08 09:00:15', 'ESPECIALISTA DE PRESUPUESTO', '3', null, 'admin', 'REGISTRO', '2016-08-08 09:00:16');
INSERT INTO `log_convocatoria` VALUES ('83', '047-I', '1', '2016-08-08 09:00:46', 'COORDINADOR DEL EQUIPO DE ESTADÍSTICA Y MONITOREO', '3', null, 'admin', 'REGISTRO', '2016-08-08 09:00:46');
INSERT INTO `log_convocatoria` VALUES ('84', '39-II', '12', '2016-08-08 09:01:44', 'PERSONAL DE VIGILANCIA', '3', null, 'admin', 'REGISTRO', '2016-08-08 09:01:44');
INSERT INTO `log_convocatoria` VALUES ('85', '013-II', '1', '2016-08-08 09:27:10', 'COORDINADOR ADMINISTRATIVO Y DE RECURSOS EDUCATIVOS', '3', null, 'admin', 'REGISTRO', '2016-08-08 09:27:10');
INSERT INTO `log_convocatoria` VALUES ('86', '002-IV', '4', '2016-08-08 09:28:05', 'ACOMPAñANTES PEDAGÓGICOS DE PRIMARIA', '3', null, 'admin', 'REGISTRO', '2016-08-08 09:28:05');
INSERT INTO `log_convocatoria` VALUES ('87', '059-I', '1', '2016-08-08 09:28:49', 'ESPECIALISTA DE PRESUPUESTO', '3', null, 'admin', 'REGISTRO', '2016-08-08 09:28:49');
INSERT INTO `log_convocatoria` VALUES ('88', '060-I', '1', '2016-08-08 09:29:31', 'MÉDICO OCUPACIONAL', '3', null, 'admin', 'REGISTRO', '2016-08-08 09:29:31');
INSERT INTO `log_convocatoria` VALUES ('89', '061-I', '1', '2016-08-08 09:30:05', 'ASISTENTE SOCIAL', '3', null, 'admin', 'REGISTRO', '2016-08-08 09:30:05');
INSERT INTO `log_convocatoria` VALUES ('90', '062-I', '1', '2016-08-08 09:30:44', 'ESPECIALISTA EN RECURSOS HUMANOS', '3', null, 'admin', 'REGISTRO', '2016-08-08 09:30:44');
INSERT INTO `log_convocatoria` VALUES ('91', '063-I', '2', '2016-08-08 09:31:46', 'OFICINISTAS PARA EL EQUIPO DE ESCALAFÓN Y LEGAJOS', '3', null, 'admin', 'REGISTRO', '2016-08-08 09:31:46');
INSERT INTO `log_convocatoria` VALUES ('92', '064-I', '2', '2016-08-08 09:32:50', 'TÉCNICOS PARA EL EQUIPO DE ADMINISTRACIÓN DE PERSONAL', '3', null, 'admin', 'REGISTRO', '2016-08-08 09:32:50');
INSERT INTO `log_convocatoria` VALUES ('93', '71-I', '4', '2016-08-08 09:34:16', 'ABOGADOS', '3', null, 'admin', 'REGISTRO', '2016-08-08 09:34:16');
INSERT INTO `log_convocatoria` VALUES ('94', '069-I', '1', '2016-08-08 09:35:04', 'AUDITOR DE INGENIERÍA CIVIL', '3', null, 'admin', 'REGISTRO', '2016-08-08 09:35:04');
INSERT INTO `log_convocatoria` VALUES ('95', '068-I', '1', '2016-08-08 09:35:57', 'AUDITOR COMO CONTADOR PÚBLICO', '3', null, 'admin', 'REGISTRO', '2016-08-08 09:35:57');
INSERT INTO `log_convocatoria` VALUES ('96', '067-I', '1', '2016-08-08 09:36:52', 'ABOGADO PARA SECRETARÍA TÉCNICA DE SERVIR', '3', null, 'admin', 'REGISTRO', '2016-08-08 09:36:52');
INSERT INTO `log_convocatoria` VALUES ('97', '066-I', '1', '2016-08-08 09:37:38', 'ABOGADO PARA RECURSOS HUMANOS', '3', null, 'admin', 'REGISTRO', '2016-08-08 09:37:38');
INSERT INTO `log_convocatoria` VALUES ('98', '070-I', '1', '2016-08-08 09:38:22', 'COORDINADOR PARA EL EQUIPO DE SUPERVISIÓN DE II.EE. ', '3', null, 'admin', 'REGISTRO', '2016-08-08 09:38:22');
INSERT INTO `log_convocatoria` VALUES ('99', '065-I', '1', '2016-08-08 09:39:10', 'ABOGADO COMO SECRETARIO TÉCNICO DE SERVER', '3', null, 'admin', 'REGISTRO', '2016-08-08 09:39:10');
INSERT INTO `log_convocatoria` VALUES ('100', '076-I', '1', '2016-08-08 09:40:06', 'ESPECIALISTA EN CONTABILIDAD', '3', null, 'admin', 'REGISTRO', '2016-08-08 09:40:06');
INSERT INTO `log_convocatoria` VALUES ('101', '075-I', '1', '2016-08-08 09:40:50', 'RESPONSABLE PARA EL EQUIPO DE ESCALAFÓN Y LEGAJOS', '3', null, 'admin', 'REGISTRO', '2016-08-08 09:40:51');
INSERT INTO `log_convocatoria` VALUES ('102', '073-I', '1', '2016-08-08 09:41:52', 'ANALISTA EN RACIONALIZACIÓN', '3', null, 'admin', 'REGISTRO', '2016-08-08 09:41:52');
INSERT INTO `log_convocatoria` VALUES ('103', '072-I', '7', '2016-08-08 09:42:45', 'TÉCNICOS EN ESCALAFÓN', '3', null, 'admin', 'REGISTRO', '2016-08-08 09:42:45');
INSERT INTO `log_convocatoria` VALUES ('104', '071-I', '4', '2016-08-08 09:34:16', 'ABOGADOS', '3', null, 'admin', 'ACTUALIZACION', '2016-08-08 09:51:09');
INSERT INTO `log_convocatoria` VALUES ('105', '081-I', '9', '2016-08-08 09:56:58', 'TERAPISTA OCUPACIONAL PARA CEBE', '3', null, 'admin', 'REGISTRO', '2016-08-08 09:56:58');
INSERT INTO `log_convocatoria` VALUES ('106', '080-I', '1', '2016-08-08 09:58:42', 'MODELO LINGUISTICO DE LENGUA DE SEñAS PERUANA PARA EBR/EBA', '3', null, 'admin', 'REGISTRO', '2016-08-08 09:58:43');
INSERT INTO `log_convocatoria` VALUES ('107', '079-I', '1', '2016-08-08 09:59:22', 'INTÉRPRETE DE LENGUA DE SEñAS PERUANA PARA EBR/EBA ', '3', null, 'admin', 'REGISTRO', '2016-08-08 09:59:22');
INSERT INTO `log_convocatoria` VALUES ('108', '078-I', '1', '2016-08-08 10:00:24', 'TÉCNICO ADMINISTRATIVO PARA EL COMITÉ DE CONTROL INTERNO', '3', null, 'admin', 'REGISTRO', '2016-08-08 10:00:24');
INSERT INTO `log_convocatoria` VALUES ('109', '077-I', '1', '2016-08-08 10:00:55', 'ABOGADO', '3', null, 'admin', 'REGISTRO', '2016-08-08 10:00:55');
INSERT INTO `log_convocatoria` VALUES ('110', '082-I', '1', '2016-08-08 10:01:32', 'ESPECIALISTA PARA LA GESTIÓN DEL INCREMENTO EN EL ACCESO I', '3', null, 'admin', 'REGISTRO', '2016-08-08 10:01:32');
INSERT INTO `log_convocatoria` VALUES ('111', '023-IV', '3', '2016-08-08 10:03:11', 'DOCENTES FORTALEZA', '3', null, 'admin', 'REGISTRO', '2016-08-08 10:03:11');
INSERT INTO `log_convocatoria` VALUES ('112', '063-II', '2', '2016-08-08 10:04:27', 'OFICINISTAS PARA EL EQUIPO DE ESCALAFÓN Y LEGAJOS', '3', null, 'admin', 'REGISTRO', '2016-08-08 10:04:27');
INSERT INTO `log_convocatoria` VALUES ('113', '061-II', '1', '2016-08-08 10:05:16', 'ASISTENTE SOCIAL', '3', null, 'admin', 'REGISTRO', '2016-08-08 10:05:16');
INSERT INTO `log_convocatoria` VALUES ('114', '060-II', '1', '2016-08-08 10:06:29', 'MEDICO OCUPACIONAL', '3', null, 'admin', 'REGISTRO', '2016-08-08 10:06:29');
INSERT INTO `log_convocatoria` VALUES ('115', '059-II', '1', '2016-08-08 10:07:13', 'ESPECIALISTA DE PRESUPUESTO', '3', null, 'admin', 'REGISTRO', '2016-08-08 10:07:13');
INSERT INTO `log_convocatoria` VALUES ('116', '002-V', '4', '2016-08-08 10:07:52', 'ACOMPAñANTES PEDAGÓGICOS DE PRIMARIA', '3', null, 'admin', 'REGISTRO', '2016-08-08 10:07:52');
INSERT INTO `log_convocatoria` VALUES ('117', '071-II', '2', '2016-08-08 10:09:59', 'ABOGADOS', '3', null, 'admin', 'REGISTRO', '2016-08-08 10:09:59');
INSERT INTO `log_convocatoria` VALUES ('118', '083-I', '1', '2016-08-08 10:11:04', 'TÉCNICO ADMINISTRATIVO', '3', null, 'admin', 'REGISTRO', '2016-08-08 10:11:04');
INSERT INTO `log_convocatoria` VALUES ('119', '082-II', '1', '2016-08-08 10:12:07', 'ESPECIALISTA PARA LA GESTIÓN DEL INCREMENTO EN EL ACCESO I', '3', null, 'admin', 'REGISTRO', '2016-08-08 10:12:07');
INSERT INTO `log_convocatoria` VALUES ('120', '84-I', '1', '2016-08-08 10:41:49', 'TÉCNICO ADMINISTRATIVO PARA EL COMITÉ DE CONTROL INTERNO', '3', null, 'admin', 'REGISTRO', '2016-08-08 10:41:49');
INSERT INTO `log_convocatoria` VALUES ('121', '086-I', '1', '2016-08-08 10:42:31', 'ANALISTA CONTABLE', '3', null, 'admin', 'REGISTRO', '2016-08-08 10:42:31');
INSERT INTO `log_convocatoria` VALUES ('122', '085-I', '1', '2016-08-08 10:43:35', 'ABOGADO', '3', null, 'admin', 'REGISTRO', '2016-08-08 10:43:35');
INSERT INTO `log_convocatoria` VALUES ('123', '084-I', '1', '2016-08-08 10:41:49', 'TÉCNICO ADMINISTRATIVO PARA EL COMITÉ DE CONTROL INTERNO', '3', null, 'admin', 'ACTUALIZACION', '2016-08-08 10:48:51');
INSERT INTO `log_convocatoria` VALUES ('124', '087-I', '1', '2016-08-08 10:49:35', 'RESPONSABLE DE LA OFICINA DE CONSTANCIA DE PAGOS', '3', null, 'admin', 'REGISTRO', '2016-08-08 10:49:35');
INSERT INTO `log_convocatoria` VALUES ('125', '089-I', '1', '2016-08-08 10:51:05', 'COORDINADOR ADMINISTRATIVO Y DE RECURSOS EDUCATIVOS', '3', null, 'admin', 'REGISTRO', '2016-08-08 10:51:05');
INSERT INTO `log_convocatoria` VALUES ('126', '088-I', '1', '2016-08-08 10:51:52', 'ARQUITECTO O INGENIERO CIVIL', '1', null, 'admin', 'REGISTRO', '2016-08-08 10:51:52');
INSERT INTO `log_convocatoria` VALUES ('127', '090-I', '1', '2016-08-08 10:52:20', 'ABOGADO PARA COPROA', '1', null, 'admin', 'REGISTRO', '2016-08-08 10:52:20');
INSERT INTO `log_convocatoria` VALUES ('128', '093-I', '1', '2016-08-08 10:53:03', 'ANALISTA DE RACIONALIZACIÓN', '1', null, 'admin', 'REGISTRO', '2016-08-08 10:53:03');
INSERT INTO `log_convocatoria` VALUES ('129', '061-III', '1', '2016-08-08 11:01:51', 'ASISTENTE SOCIAL', '1', null, 'admin', 'REGISTRO', '2016-08-08 11:01:51');
INSERT INTO `log_convocatoria` VALUES ('130', '012-IV', '1', '2016-08-08 11:03:05', 'COORDINADOR DE INNOVACIÓN SOPORTE TECNOLOGÍAS', '1', null, 'admin', 'REGISTRO', '2016-08-08 11:03:05');
INSERT INTO `log_convocatoria` VALUES ('131', '023-VI', '3', '2016-08-08 11:03:47', 'DOCENTE FORTALEZA', '1', null, 'admin', 'REGISTRO', '2016-08-08 11:03:47');
INSERT INTO `log_convocatoria` VALUES ('132', '022-VI', '2', '2016-08-08 11:04:41', 'ACOMPAñANTES DE REDES DE EDUCACIÓN FÍSICA', '1', null, 'admin', 'REGISTRO', '2016-08-08 11:04:41');
INSERT INTO `log_convocatoria` VALUES ('133', '002-VI', '10', '2016-08-08 11:05:12', 'ACOMPAñANTES PEDAGÓGICOS DE PRIMARIA', '1', null, 'admin', 'REGISTRO', '2016-08-08 11:05:12');
INSERT INTO `log_convocatoria` VALUES ('134', '089-I', '1', '2016-08-08 10:51:05', 'COORDINADOR ADMINISTRATIVO Y DE RECURSOS EDUCATIVOS', '1', null, 'admin', 'ACTUALIZACION', '2016-08-08 11:16:15');
INSERT INTO `log_convocatoria` VALUES ('135', '087-II', '1', '2016-08-08 11:23:29', 'RESPONSABLE DE LA OFICINA DE CONSTANCIA DE PAGOS', '1', null, 'admin', 'REGISTRO', '2016-08-08 11:23:29');
INSERT INTO `log_convocatoria` VALUES ('136', '031-I', '1', '2016-08-07 19:12:49', 'ASISTENTE ADMINISTRATIVO PARA RECURSOS HUMANOS', '3', null, 'admin', 'ACTUALIZACION', '2016-08-08 13:11:59');
INSERT INTO `log_convocatoria` VALUES ('137', '065-I', '1', '2016-08-08 09:39:10', 'ABOGADO COMO SECRETARIO TÉCNICO DE SERVIR', '3', null, 'admin', 'ACTUALIZACION', '2016-08-08 13:36:47');
INSERT INTO `log_convocatoria` VALUES ('138', '094-I', '1', '2016-08-09 15:40:19', 'Técnico administrativo', '1', null, 'admin', 'REGISTRO', '2016-08-09 15:40:19');
INSERT INTO `log_convocatoria` VALUES ('139', '095-I', '4', '2016-08-09 15:41:17', 'Técnicos administrativos', '1', null, 'admin', 'REGISTRO', '2016-08-09 15:41:17');
INSERT INTO `log_convocatoria` VALUES ('140', '096-I', '1', '2016-08-09 15:41:59', 'Técnico administrativo', '1', null, 'admin', 'REGISTRO', '2016-08-09 15:42:00');
INSERT INTO `log_convocatoria` VALUES ('141', '089-I', '1', '2016-08-08 10:51:05', 'COORDINADOR ADMINISTRATIVO Y DE RECURSOS EDUCATIVOS', '2', null, 'admin', 'ACTUALIZACION', '2016-08-09 15:42:33');
INSERT INTO `log_convocatoria` VALUES ('142', '097-I', '1', '2016-08-09 15:43:23', 'Técnico administrativo', '1', null, 'admin', 'REGISTRO', '2016-08-09 15:43:23');
INSERT INTO `log_convocatoria` VALUES ('143', '098-I', '1', '2016-08-09 15:44:15', 'Técnico administrativo', '1', null, 'admin', 'REGISTRO', '2016-08-09 15:44:15');
INSERT INTO `log_convocatoria` VALUES ('144', '099-I', '2', '2016-08-09 15:47:21', 'Abogados para la Secretaría Técnica de Servir', '1', null, 'admin', 'REGISTRO', '2016-08-09 15:47:21');
INSERT INTO `log_convocatoria` VALUES ('145', '100-I', '2', '2016-08-09 15:47:58', 'Abogados', '1', null, 'admin', 'REGISTRO', '2016-08-09 15:47:58');
INSERT INTO `log_convocatoria` VALUES ('146', '088-I', '1', '2016-08-08 10:51:52', 'ARQUITECTO O INGENIERO CIVIL', '2', null, 'admin', 'ACTUALIZACION', '2016-08-10 11:58:32');
INSERT INTO `log_convocatoria` VALUES ('147', '088-I', '1', '2016-08-08 10:51:52', 'ARQUITECTO O INGENIERO CIVIL', '3', null, 'admin', 'ACTUALIZACION', '2016-08-12 11:14:49');
INSERT INTO `log_convocatoria` VALUES ('148', '023-V', '3', '2016-08-08 11:03:47', 'DOCENTE FORTALEZA', '1', null, 'admin', 'ACTUALIZACION', '2016-08-12 16:44:00');
INSERT INTO `log_convocatoria` VALUES ('149', '023-III', '5', '2016-08-08 08:34:13', 'DOCENTES FORTALEZAS', '3', null, 'admin', 'ACTUALIZACION', '2016-08-12 16:44:24');
INSERT INTO `log_convocatoria` VALUES ('150', '023-V', '3', '2016-08-08 11:03:47', 'DOCENTE FORTALEZA', '2', null, 'admin', 'ACTUALIZACION', '2016-08-12 16:48:56');
INSERT INTO `log_convocatoria` VALUES ('151', '012-IV', '1', '2016-08-08 11:03:05', 'COORDINADOR DE INNOVACIÓN SOPORTE TECNOLOGÍAS', '2', null, 'admin', 'ACTUALIZACION', '2016-08-12 16:49:04');
INSERT INTO `log_convocatoria` VALUES ('152', '002-VI', '10', '2016-08-08 11:05:12', 'ACOMPAñANTES PEDAGÓGICOS DE PRIMARIA', '2', null, 'admin', 'ACTUALIZACION', '2016-08-12 16:49:20');
INSERT INTO `log_convocatoria` VALUES ('153', '001', '1', '2016-08-12 17:59:29', 'PRACTICANTE', '1', null, 'admin', 'REGISTRO', '2016-08-12 17:59:29');
INSERT INTO `log_convocatoria` VALUES ('154', '001-I', '1', '2016-08-12 17:59:29', 'PRACTICANTE', '1', null, 'admin', 'ACTUALIZACION', '2016-08-12 18:07:31');
INSERT INTO `log_convocatoria` VALUES ('155', '001-I', '1', '2016-08-12 17:59:29', 'PRACTICANTE', '1', null, 'admin', 'ACTUALIZACION', '2016-08-12 18:11:19');
INSERT INTO `log_convocatoria` VALUES ('156', '001-I', '1', '2016-08-12 17:59:29', 'Practicante para el Equipo de Tecnologías de la Información', '1', null, 'admin', 'ACTUALIZACION', '2016-08-12 18:16:21');
INSERT INTO `log_convocatoria` VALUES ('157', '090-I', '1', '2016-08-08 10:52:20', 'ABOGADO PARA COPROA', '2', null, 'admin', 'ACTUALIZACION', '2016-08-13 15:51:53');
INSERT INTO `log_convocatoria` VALUES ('158', '093-I', '1', '2016-08-08 10:53:03', 'ANALISTA DE RACIONALIZACIÓN', '2', null, 'admin', 'ACTUALIZACION', '2016-08-13 15:52:12');
INSERT INTO `log_convocatoria` VALUES ('159', '022-VI', '2', '2016-08-08 11:04:41', 'ACOMPAñANTES DE REDES DE EDUCACIÓN FÍSICA', '2', null, 'admin', 'ACTUALIZACION', '2016-08-13 15:54:07');
INSERT INTO `log_convocatoria` VALUES ('160', '022-VI', '2', '2016-08-08 11:04:41', 'ACOMPAñANTES DE REDES DE EDUCACIÓN FÍSICA', '3', null, 'admin', 'ACTUALIZACION', '2016-08-15 17:26:52');
INSERT INTO `log_convocatoria` VALUES ('161', '023-V', '3', '2016-08-08 11:03:47', 'DOCENTE FORTALEZA', '3', null, 'admin', 'ACTUALIZACION', '2016-08-15 17:27:20');
INSERT INTO `log_convocatoria` VALUES ('162', '089-I', '1', '2016-08-08 10:51:05', 'COORDINADOR ADMINISTRATIVO Y DE RECURSOS EDUCATIVOS', '3', null, 'admin', 'ACTUALIZACION', '2016-08-15 17:27:42');
INSERT INTO `log_convocatoria` VALUES ('163', '093-I', '1', '2016-08-08 10:53:03', 'ANALISTA DE RACIONALIZACIÓN', '3', null, 'admin', 'ACTUALIZACION', '2016-08-15 22:20:17');
INSERT INTO `log_convocatoria` VALUES ('164', '090-I', '1', '2016-08-08 10:52:20', 'ABOGADO PARA COPROA', '3', null, 'admin', 'ACTUALIZACION', '2016-08-15 22:20:47');
INSERT INTO `log_convocatoria` VALUES ('165', '002-VI', '10', '2016-08-08 11:05:12', 'ACOMPAñANTES PEDAGÓGICOS DE PRIMARIA', '3', null, 'admin', 'ACTUALIZACION', '2016-08-16 14:43:05');
INSERT INTO `log_convocatoria` VALUES ('166', '012-IV', '1', '2016-08-08 11:03:05', 'COORDINADOR DE INNOVACIÓN SOPORTE TECNOLOGÍAS', '3', null, 'admin', 'ACTUALIZACION', '2016-08-16 15:15:42');
INSERT INTO `log_convocatoria` VALUES ('167', '100-I', '2', '2016-08-09 15:47:58', 'Abogados', '2', null, 'admin', 'ACTUALIZACION', '2016-08-17 22:10:59');
INSERT INTO `log_convocatoria` VALUES ('168', '099-I', '2', '2016-08-09 15:47:21', 'Abogados para la Secretaría Técnica de Servir', '2', null, 'admin', 'ACTUALIZACION', '2016-08-17 22:12:11');
INSERT INTO `log_convocatoria` VALUES ('169', '099-I', '2', '2016-08-09 15:47:21', 'Abogados para la Secretaría Técnica de Servir', '2', null, 'admin', 'ACTUALIZACION', '2016-08-17 22:12:20');
INSERT INTO `log_convocatoria` VALUES ('170', '098-I', '1', '2016-08-09 15:44:15', 'Técnico administrativo', '2', null, 'admin', 'ACTUALIZACION', '2016-08-17 22:12:26');
INSERT INTO `log_convocatoria` VALUES ('171', '098-I', '1', '2016-08-09 15:44:15', 'Técnico administrativo', '2', null, 'admin', 'ACTUALIZACION', '2016-08-17 22:12:46');
INSERT INTO `log_convocatoria` VALUES ('172', '097-I', '1', '2016-08-09 15:43:23', 'Técnico administrativo', '2', null, 'admin', 'ACTUALIZACION', '2016-08-17 22:12:50');
INSERT INTO `log_convocatoria` VALUES ('173', '096-I', '1', '2016-08-09 15:41:59', 'Técnico administrativo', '2', null, 'admin', 'ACTUALIZACION', '2016-08-17 22:12:57');
INSERT INTO `log_convocatoria` VALUES ('174', '094-I', '1', '2016-08-09 15:40:19', 'Técnico administrativo', '2', null, 'admin', 'ACTUALIZACION', '2016-08-17 22:13:43');
INSERT INTO `log_convocatoria` VALUES ('175', '095-I', '4', '2016-08-09 15:41:17', 'Técnicos administrativos', '2', null, 'admin', 'ACTUALIZACION', '2016-08-17 22:14:42');
INSERT INTO `log_convocatoria` VALUES ('176', '100-I', '2', '2016-08-09 15:47:58', 'Abogados', '3', null, 'admin', 'ACTUALIZACION', '2016-08-19 23:52:15');
INSERT INTO `log_convocatoria` VALUES ('177', '099-I', '2', '2016-08-09 15:47:21', 'Abogados para la Secretaría Técnica de Servir', '3', null, 'admin', 'ACTUALIZACION', '2016-08-19 23:55:21');
INSERT INTO `log_convocatoria` VALUES ('178', '098-I', '1', '2016-08-09 15:44:15', 'Técnico administrativo', '3', null, 'admin', 'ACTUALIZACION', '2016-08-19 23:56:19');
INSERT INTO `log_convocatoria` VALUES ('179', '097-I', '1', '2016-08-09 15:43:23', 'Técnico administrativo', '3', null, 'admin', 'ACTUALIZACION', '2016-08-19 23:57:11');
INSERT INTO `log_convocatoria` VALUES ('180', '094-I', '1', '2016-08-09 15:40:19', 'Técnico administrativo', '3', null, 'admin', 'ACTUALIZACION', '2016-08-20 00:04:22');
INSERT INTO `log_convocatoria` VALUES ('181', '096-I', '1', '2016-08-09 15:41:59', 'Técnico administrativo', '3', null, 'admin', 'ACTUALIZACION', '2016-08-20 00:06:40');
INSERT INTO `log_convocatoria` VALUES ('182', '095-I', '4', '2016-08-09 15:41:17', 'Técnicos administrativos', '3', null, 'admin', 'ACTUALIZACION', '2016-08-20 00:07:18');
INSERT INTO `log_convocatoria` VALUES ('183', '001-I', '1', '2016-08-12 17:59:29', 'Practicante para el Equipo de Tecnologías de la Información', '2', null, 'admin', 'ACTUALIZACION', '2016-08-22 18:18:34');
INSERT INTO `log_convocatoria` VALUES ('184', '023-VI', '11', '2016-08-23 00:32:45', 'Docentes Fortaleza', '1', null, 'admin', 'REGISTRO', '2016-08-23 00:32:45');
INSERT INTO `log_convocatoria` VALUES ('185', '002-VII', '10', '2016-08-23 00:35:22', 'Acompañantes Pedagógicos de Primaria', '1', null, 'admin', 'REGISTRO', '2016-08-23 00:35:22');
INSERT INTO `log_convocatoria` VALUES ('186', '023-VII', '2', '2016-08-24 12:42:12', 'Docentes Fortaleza', '1', null, 'admin', 'REGISTRO', '2016-08-24 12:42:12');
INSERT INTO `log_convocatoria` VALUES ('187', '014-II', '1', '2016-08-24 12:43:40', 'Psicólogo o Trabajador Social', '1', null, 'admin', 'REGISTRO', '2016-08-24 12:43:40');
INSERT INTO `log_convocatoria` VALUES ('188', '087-II', '1', '2016-08-08 11:23:29', 'RESPONSABLE DE LA OFICINA DE CONSTANCIA DE PAGOS', '3', null, 'admin', 'ACTUALIZACION', '2016-08-24 12:44:52');
INSERT INTO `log_convocatoria` VALUES ('189', '061-III', '1', '2016-08-08 11:01:51', 'ASISTENTE SOCIAL', '3', null, 'admin', 'ACTUALIZACION', '2016-08-24 12:45:07');
INSERT INTO `log_convocatoria` VALUES ('190', '101-I', '1', '2016-08-26 12:05:56', 'Asistente Administrativo', '1', null, 'admin', 'REGISTRO', '2016-08-26 12:05:56');
INSERT INTO `log_convocatoria` VALUES ('191', '002-VII', '10', '2016-08-23 00:35:22', 'Acompañantes Pedagógicos de Primaria', '2', null, 'admin', 'ACTUALIZACION', '2016-09-02 08:04:09');
INSERT INTO `log_convocatoria` VALUES ('192', '014-II', '1', '2016-08-24 12:43:40', 'Psicólogo o Trabajador Social', '2', null, 'admin', 'ACTUALIZACION', '2016-09-02 08:04:32');
INSERT INTO `log_convocatoria` VALUES ('193', '023-VII', '2', '2016-08-24 12:42:12', 'Docentes Fortaleza', '2', null, 'admin', 'ACTUALIZACION', '2016-09-02 08:10:35');
INSERT INTO `log_convocatoria` VALUES ('194', '023-VI', '11', '2016-08-23 00:32:45', 'Docentes Fortaleza', '2', null, 'admin', 'ACTUALIZACION', '2016-09-02 08:10:43');
INSERT INTO `log_convocatoria` VALUES ('195', '023-VII', '2', '2016-08-24 12:42:12', 'Docentes Fortaleza', '3', null, 'admin', 'ACTUALIZACION', '2016-09-03 09:29:27');
INSERT INTO `log_convocatoria` VALUES ('196', '023-VI', '11', '2016-08-23 00:32:45', 'Docentes Fortaleza', '3', null, 'admin', 'ACTUALIZACION', '2016-09-03 09:29:53');
INSERT INTO `log_convocatoria` VALUES ('197', '002-VII', '10', '2016-08-23 00:35:22', 'Acompañantes Pedagógicos de Primaria', '3', null, 'admin', 'ACTUALIZACION', '2016-09-03 09:30:35');
INSERT INTO `log_convocatoria` VALUES ('198', '101-I', '1', '2016-08-26 12:05:56', 'Asistente Administrativo', '2', null, 'admin', 'ACTUALIZACION', '2016-09-03 09:32:35');
INSERT INTO `log_convocatoria` VALUES ('199', '091-I', '1', '2016-09-05 11:24:11', 'Gestor Local de Intervenciones en IIEE Polidocentes completas', '1', null, 'admin', 'REGISTRO', '2016-09-05 11:24:11');
INSERT INTO `log_convocatoria` VALUES ('200', '092-I', '1', '2016-09-05 11:25:03', 'Responsable Local de Calidad de la Información', '1', null, 'admin', 'REGISTRO', '2016-09-05 11:25:03');
INSERT INTO `log_convocatoria` VALUES ('201', '087-III', '1', '2016-09-05 11:25:50', 'Responsable de la Oficina de Constancia de Pago', '1', null, 'admin', 'REGISTRO', '2016-09-05 11:25:50');
INSERT INTO `log_convocatoria` VALUES ('202', '062-II', '1', '2016-09-05 11:26:23', 'Especialista en RRHH', '1', null, 'admin', 'REGISTRO', '2016-09-05 11:26:23');
INSERT INTO `log_convocatoria` VALUES ('203', '103-I', '1', '2016-09-05 11:27:22', 'Modelo Lingüístico de lengua de señas peruanas para EBR/EBA', '1', null, 'admin', 'REGISTRO', '2016-09-05 11:27:22');
INSERT INTO `log_convocatoria` VALUES ('204', '102-I', '1', '2016-09-05 11:29:35', 'Intérprete de lengua de señas peruanas para EBR/EBA', '1', null, 'admin', 'REGISTRO', '2016-09-05 11:29:35');
INSERT INTO `log_convocatoria` VALUES ('205', '104-I', '9', '2016-09-05 11:30:51', 'Profesional no docente - terapista ocupacional para CEBE', '1', null, 'admin', 'REGISTRO', '2016-09-05 11:30:51');
INSERT INTO `log_convocatoria` VALUES ('206', '001-I', '1', '2016-08-12 17:59:29', 'Practicante para el Equipo de Tecnologías de la Información', '3', null, 'admin', 'ACTUALIZACION', '2016-09-05 11:39:19');
INSERT INTO `log_convocatoria` VALUES ('207', '014-II', '1', '2016-08-24 12:43:40', 'Psicólogo o Trabajador Social', '3', null, 'admin', 'ACTUALIZACION', '2016-09-06 07:34:44');
INSERT INTO `log_convocatoria` VALUES ('208', '101-I', '1', '2016-08-26 12:05:56', 'Asistente Administrativo', '3', null, 'admin', 'ACTUALIZACION', '2016-09-06 12:08:06');
INSERT INTO `log_convocatoria` VALUES ('209', '001', '1', '2016-09-09 11:46:54', 'Practicante para el Equipo de Tecnologías de la Información', '1', null, 'admin', 'REGISTRO', '2016-09-09 11:46:54');
INSERT INTO `log_convocatoria` VALUES ('210', '102-I', '1', '2016-09-05 11:29:35', 'Intérprete de lengua de señas peruanas para EBR/EBA', '3', null, 'admin', 'ACTUALIZACION', '2016-09-12 22:27:57');
INSERT INTO `log_convocatoria` VALUES ('211', '103-I', '1', '2016-09-05 11:27:22', 'Modelo Lingüístico de lengua de señas peruanas para EBR/EBA', '3', null, 'admin', 'ACTUALIZACION', '2016-09-12 22:28:19');
INSERT INTO `log_convocatoria` VALUES ('212', '104-I', '9', '2016-09-05 11:30:51', 'Profesional no docente - terapista ocupacional para CEBE', '3', null, 'admin', 'ACTUALIZACION', '2016-09-12 22:28:33');
INSERT INTO `log_convocatoria` VALUES ('213', '062-II', '1', '2016-09-05 11:26:23', 'Especialista en RRHH', '3', null, 'admin', 'ACTUALIZACION', '2016-09-12 22:33:12');
INSERT INTO `log_convocatoria` VALUES ('214', '062-II', '1', '2016-09-05 11:26:23', 'Especialista en RRHH', '3', null, 'admin', 'ACTUALIZACION', '2016-09-12 22:33:41');
INSERT INTO `log_convocatoria` VALUES ('215', '062-II', '1', '2016-09-05 11:26:23', 'Especialista en RRHH', '2', null, 'admin', 'ACTUALIZACION', '2016-09-12 22:33:56');
INSERT INTO `log_convocatoria` VALUES ('216', '087-III', '1', '2016-09-05 11:25:50', 'Responsable de la Oficina de Constancia de Pago', '3', null, 'admin', 'ACTUALIZACION', '2016-09-12 22:34:15');
INSERT INTO `log_convocatoria` VALUES ('217', '087-III', '1', '2016-09-05 11:25:50', 'Responsable de la Oficina de Constancia de Pago', '3', null, 'admin', 'ACTUALIZACION', '2016-09-12 22:34:55');
INSERT INTO `log_convocatoria` VALUES ('218', '091-I', '1', '2016-09-05 11:24:11', 'Gestor Local de Intervenciones en IIEE Polidocentes completas', '2', null, 'admin', 'ACTUALIZACION', '2016-09-13 09:32:40');
INSERT INTO `log_convocatoria` VALUES ('219', '092-I', '1', '2016-09-05 11:25:03', 'Responsable Local de Calidad de la Información', '2', null, 'admin', 'ACTUALIZACION', '2016-09-13 09:32:55');
INSERT INTO `log_convocatoria` VALUES ('220', '092-II', '1', '2016-09-13 09:56:25', 'Responsable Local de Calidad de la Información', '2', null, 'admin', 'REGISTRO', '2016-09-13 09:56:26');
INSERT INTO `log_convocatoria` VALUES ('221', '092-II', '1', '2016-09-13 09:56:25', 'Responsable Local de Calidad de la Información', '2', 'admin', 'admin', 'ELIMINACION', '2016-09-13 10:08:41');
INSERT INTO `log_convocatoria` VALUES ('222', '092-I', '1', '2016-09-05 11:25:03', 'Responsable Local de Calidad de la Información', '3', null, 'admin', 'ACTUALIZACION', '2016-09-14 08:06:52');
INSERT INTO `log_convocatoria` VALUES ('223', '091-I', '1', '2016-09-05 11:24:11', 'Gestor Local de Intervenciones en IIEE Polidocentes completas', '3', null, 'admin', 'ACTUALIZACION', '2016-09-14 08:07:00');
INSERT INTO `log_convocatoria` VALUES ('224', '062-II', '1', '2016-09-05 11:26:23', 'Especialista en RRHH', '3', null, 'admin', 'ACTUALIZACION', '2016-09-14 11:16:49');
INSERT INTO `log_convocatoria` VALUES ('225', '061-IV', '1', '2016-09-14 23:45:50', 'ASISTENTE SOCIAL', '1', null, 'admin', 'REGISTRO', '2016-09-14 23:45:50');
INSERT INTO `log_convocatoria` VALUES ('226', '001', '1', '2016-09-09 11:46:54', 'Practicante para el Equipo de Tecnologías de la Información', '2', null, 'admin', 'ACTUALIZACION', '2016-09-16 18:41:54');
INSERT INTO `log_convocatoria` VALUES ('227', '061-IV', '1', '2016-09-14 23:45:50', 'Asistente Social', '1', null, 'admin', 'ACTUALIZACION', '2016-09-16 18:42:15');
INSERT INTO `log_convocatoria` VALUES ('228', '001', '1', '2016-09-09 11:46:54', 'Practicante para el Equipo de Tecnologías de la Información', '3', null, 'admin', 'ACTUALIZACION', '2016-09-20 09:46:52');
INSERT INTO `log_convocatoria` VALUES ('229', '105', '1', '2016-09-20 18:01:14', 'Asesor de Dirección', '1', null, 'admin', 'REGISTRO', '2016-09-20 18:01:14');
INSERT INTO `log_convocatoria` VALUES ('230', '023-VIII', '1', '2016-09-21 11:25:40', 'Docente fortaleza', '1', null, 'admin', 'REGISTRO', '2016-09-21 11:25:40');
INSERT INTO `log_convocatoria` VALUES ('231', '015-III', '1', '2016-09-21 11:45:27', 'Personal de apoyo educativo', '1', null, 'admin', 'REGISTRO', '2016-09-21 11:45:27');
INSERT INTO `log_convocatoria` VALUES ('232', '106-I', '1', '2016-09-21 19:48:58', 'Especialista para la gestión del incremento en el acceso I', '1', null, 'admin', 'REGISTRO', '2016-09-21 19:48:58');
INSERT INTO `log_convocatoria` VALUES ('233', '105-I', '1', '2016-09-20 18:01:14', 'Asesor de Dirección', '1', null, 'admin', 'ACTUALIZACION', '2016-09-21 20:59:50');
INSERT INTO `log_convocatoria` VALUES ('234', '061-IV', '1', '2016-09-14 23:45:50', 'Asistente Social', '2', null, 'admin', 'ACTUALIZACION', '2016-09-22 14:53:40');
INSERT INTO `log_convocatoria` VALUES ('235', '107-I', '1', '2016-09-23 15:59:34', 'Chofer', '1', null, 'admin', 'REGISTRO', '2016-09-23 15:59:34');
INSERT INTO `log_convocatoria` VALUES ('236', '061-IV', '1', '2016-09-14 23:45:50', 'Asistente Social', '3', null, 'admin', 'ACTUALIZACION', '2016-09-23 17:42:30');
INSERT INTO `log_convocatoria` VALUES ('237', '071-III', '1', '2016-09-23 17:50:12', 'Abogado', '1', null, 'admin', 'REGISTRO', '2016-09-23 17:50:12');
INSERT INTO `log_convocatoria` VALUES ('238', '107-I', '1', '2016-09-23 15:59:34', 'Chofer', '1', null, 'admin', 'ACTUALIZACION', '2016-09-26 09:55:39');
INSERT INTO `log_convocatoria` VALUES ('239', '002-', '1', '2016-09-27 12:57:02', 'Practicante Pre Profesional para el Equipo de Participación y Comunicación', '1', null, 'admin', 'REGISTRO', '2016-09-27 12:57:02');
INSERT INTO `log_convocatoria` VALUES ('240', '105-I', '1', '2016-09-20 18:01:14', 'Asesor de Dirección', '2', null, 'admin', 'ACTUALIZACION', '2016-09-27 17:29:02');
INSERT INTO `log_convocatoria` VALUES ('241', '102-II', '1', '2016-09-28 18:22:28', 'Interprete de lengua de señas peruanas para EBR/EBA', '1', null, 'admin', 'REGISTRO', '2016-09-28 18:22:28');
INSERT INTO `log_convocatoria` VALUES ('242', '103-II', '1', '2016-09-28 18:23:45', 'Modelo lingüistico de lengua de señas peruanas para EBR/EBA', '1', null, 'admin', 'REGISTRO', '2016-09-28 18:23:45');
INSERT INTO `log_convocatoria` VALUES ('243', '104-II', '9', '2016-09-28 18:24:33', 'Terapistas ocupacionales para CEBE', '1', null, 'admin', 'REGISTRO', '2016-09-28 18:24:33');
INSERT INTO `log_convocatoria` VALUES ('244', '108-I', '1', '2016-09-28 18:25:17', 'Responsable de la Oficina de Constancia de Pago', '1', null, 'admin', 'REGISTRO', '2016-09-28 18:25:17');
INSERT INTO `log_convocatoria` VALUES ('245', '023-VIII', '1', '2016-09-21 11:25:40', 'Docente fortaleza', '2', null, 'admin', 'ACTUALIZACION', '2016-09-28 22:30:37');
INSERT INTO `log_convocatoria` VALUES ('246', '106-I', '1', '2016-09-21 19:48:58', 'Especialista para la gestión del incremento en el acceso I', '3', null, 'admin', 'ACTUALIZACION', '2016-09-28 22:37:45');
INSERT INTO `log_convocatoria` VALUES ('247', '015-III', '1', '2016-09-21 11:45:27', 'Personal de apoyo educativo', '2', null, 'admin', 'ACTUALIZACION', '2016-09-29 12:48:37');
INSERT INTO `log_convocatoria` VALUES ('248', '105-I', '1', '2016-09-20 18:01:14', 'Asesor de Dirección', '3', null, 'admin', 'ACTUALIZACION', '2016-09-29 18:52:57');
INSERT INTO `log_convocatoria` VALUES ('249', '023-VIII', '1', '2016-09-21 11:25:40', 'Docente fortaleza', '3', null, 'admin', 'ACTUALIZACION', '2016-09-30 08:46:32');
INSERT INTO `log_convocatoria` VALUES ('250', '107-I', '1', '2016-09-23 15:59:34', 'Chofer', '2', null, 'admin', 'ACTUALIZACION', '2016-09-30 17:39:08');
INSERT INTO `log_convocatoria` VALUES ('251', '071-III', '1', '2016-09-23 17:50:12', 'Abogado', '2', null, 'admin', 'ACTUALIZACION', '2016-09-30 17:39:27');
INSERT INTO `log_convocatoria` VALUES ('252', '015-III', '1', '2016-09-21 11:45:27', 'Personal de apoyo educativo', '3', null, 'admin', 'ACTUALIZACION', '2016-10-03 10:52:26');
INSERT INTO `log_convocatoria` VALUES ('253', '002-', '1', '2016-09-27 12:57:02', 'Practicante Pre Profesional para el Equipo de Participación y Comunicación', '2', null, 'admin', 'ACTUALIZACION', '2016-10-03 19:23:06');
INSERT INTO `log_convocatoria` VALUES ('254', '002-', '1', '2016-09-27 12:57:02', 'Practicante Pre Profesional para el Equipo de Participación y Comunicación', '2', null, 'admin', 'ACTUALIZACION', '2016-10-03 19:23:17');
INSERT INTO `log_convocatoria` VALUES ('255', '107-I', '1', '2016-09-23 15:59:34', 'Chofer', '3', null, 'admin', 'ACTUALIZACION', '2016-10-04 12:52:21');
INSERT INTO `log_convocatoria` VALUES ('256', '071-III', '1', '2016-09-23 17:50:12', 'Abogado', '3', null, 'admin', 'ACTUALIZACION', '2016-10-04 12:53:32');
INSERT INTO `log_convocatoria` VALUES ('257', '109-I', '1', '2016-10-04 12:55:03', 'Jefe del Área de Gestión de la Educación Básica Alternativa y Técnico Productiva', '1', null, 'admin', 'REGISTRO', '2016-10-04 12:55:04');
INSERT INTO `log_convocatoria` VALUES ('258', '110-I', '1', '2016-10-04 12:56:23', 'Jefe del Área de Supervisión y Gestión del Servicio Educativo', '1', null, 'admin', 'REGISTRO', '2016-10-04 12:56:23');
INSERT INTO `log_convocatoria` VALUES ('259', '102-II', '1', '2016-09-28 18:22:28', 'Interprete de lengua de señas peruanas para EBR/EBA', '2', null, 'admin', 'ACTUALIZACION', '2016-10-04 16:19:34');
INSERT INTO `log_convocatoria` VALUES ('260', '103-II', '1', '2016-09-28 18:23:45', 'Modelo lingüistico de lengua de señas peruanas para EBR/EBA', '2', null, 'admin', 'ACTUALIZACION', '2016-10-04 16:19:50');
INSERT INTO `log_convocatoria` VALUES ('261', '110-I', '1', '2016-10-04 12:56:23', 'Jefe del Área de Supervisión y Gestión del Servicio Educativo', '1', 'admin', 'admin', 'ELIMINACION', '2016-10-04 20:02:09');
INSERT INTO `log_convocatoria` VALUES ('262', '109-I', '1', '2016-10-04 12:55:03', 'Jefe del Área de Gestión de la Educación Básica Alternativa y Técnico Productiva', '1', 'admin', 'admin', 'ELIMINACION', '2016-10-04 20:02:17');
INSERT INTO `log_convocatoria` VALUES ('263', '104-II', '9', '2016-09-28 18:24:33', 'Terapistas ocupacionales para CEBE', '3', null, 'admin', 'ACTUALIZACION', '2016-10-04 20:10:50');
INSERT INTO `log_convocatoria` VALUES ('264', '109-I', '1', '2016-10-05 17:00:18', 'Jefe del Área de Gestión de la Educación Básica Alternativa y Técnico Productiva', '3', null, 'admin', 'REGISTRO', '2016-10-05 17:00:19');
INSERT INTO `log_convocatoria` VALUES ('265', '109-I', '1', '2016-10-05 17:00:18', 'Jefe del Área de Gestión de la Educación Básica Alternativa y Técnico Productiva', '3', null, 'admin', 'ACTUALIZACION', '2016-10-05 17:01:23');
INSERT INTO `log_convocatoria` VALUES ('266', '110-I', '1', '2016-10-05 17:02:29', 'Jefe del Área de Supervisión y Gestión del Servicio Educativo', '3', null, 'admin', 'REGISTRO', '2016-10-05 17:02:29');
INSERT INTO `log_convocatoria` VALUES ('267', '108-I', '1', '2016-09-28 18:25:17', 'Responsable de la Oficina de Constancia de Pago', '2', null, 'admin', 'ACTUALIZACION', '2016-10-05 17:44:29');
INSERT INTO `log_convocatoria` VALUES ('268', '103-II', '1', '2016-09-28 18:23:45', 'Modelo lingüistico de lengua de señas peruanas para EBR/EBA', '3', null, 'admin', 'ACTUALIZACION', '2016-10-06 08:16:19');
INSERT INTO `log_convocatoria` VALUES ('269', '102-II', '1', '2016-09-28 18:22:28', 'Interprete de lengua de señas peruanas para EBR/EBA', '3', null, 'admin', 'ACTUALIZACION', '2016-10-06 08:16:33');
INSERT INTO `log_convocatoria` VALUES ('270', '015-IV', '1', '2016-10-06 17:27:10', 'Personal de apoyo educativo', '1', null, 'admin', 'REGISTRO', '2016-10-06 17:27:10');
INSERT INTO `log_convocatoria` VALUES ('271', '012-V', '1', '2016-10-06 17:29:11', 'Coordinador de Innovación y Soporte Tecnologías', '1', null, 'admin', 'REGISTRO', '2016-10-06 17:29:11');
INSERT INTO `log_convocatoria` VALUES ('272', '108-I', '1', '2016-09-28 18:25:17', 'Responsable de la Oficina de Constancia de Pago', '3', null, 'admin', 'ACTUALIZACION', '2016-10-06 17:32:43');
INSERT INTO `log_convocatoria` VALUES ('273', '002-', '1', '2016-09-27 12:57:02', 'Practicante Pre Profesional para el Equipo de Participación y Comunicación', '3', null, 'admin', 'ACTUALIZACION', '2016-10-06 17:35:41');
INSERT INTO `log_convocatoria` VALUES ('274', '002-II', '1', '2016-10-06 17:37:56', 'Practicante Pre Profesional para el Equipo de Participación y Comunicación', '1', null, 'admin', 'REGISTRO', '2016-10-06 17:37:56');
INSERT INTO `log_convocatoria` VALUES ('275', '108-I', '1', '2016-09-28 18:25:17', 'Responsable de la Oficina de Constancia de Pago', '2', null, 'admin', 'ACTUALIZACION', '2016-10-06 17:39:36');
INSERT INTO `log_convocatoria` VALUES ('276', '108-I', '1', '2016-09-28 18:25:17', 'Responsable de la Oficina de Constancia de Pago', '3', null, 'admin', 'ACTUALIZACION', '2016-10-08 05:49:54');
INSERT INTO `log_convocatoria` VALUES ('277', '002-II', '1', '2016-10-06 17:37:56', 'Practicante Pre Profesional para el Equipo de Participación y Comunicación', '1', null, 'admin', 'ACTUALIZACION', '2016-10-10 14:51:32');
INSERT INTO `log_convocatoria` VALUES ('278', '023-IX', '1', '2016-10-10 17:29:02', 'Docente fortaleza', '1', null, 'admin', 'REGISTRO', '2016-10-10 17:29:02');
INSERT INTO `log_convocatoria` VALUES ('279', '111-I', '1', '2016-10-12 21:05:53', 'Profesional SIGA', '1', null, 'admin', 'REGISTRO', '2016-10-12 21:05:53');
INSERT INTO `log_convocatoria` VALUES ('280', '015-IV', '1', '2016-10-06 17:27:10', 'Personal de apoyo educativo', '2', null, 'admin', 'ACTUALIZACION', '2016-10-14 17:33:50');
INSERT INTO `log_convocatoria` VALUES ('281', '012-V', '1', '2016-10-06 17:29:11', 'Coordinador de Innovación y Soporte Tecnologías', '2', null, 'admin', 'ACTUALIZACION', '2016-10-14 17:33:58');
INSERT INTO `log_convocatoria` VALUES ('282', '002-II', '1', '2016-10-06 17:37:56', 'Practicante Pre Profesional para el Equipo de Participación y Comunicación', '2', null, 'admin', 'ACTUALIZACION', '2016-10-14 17:34:04');
INSERT INTO `log_convocatoria` VALUES ('283', '002-II', '1', '2016-10-06 17:37:56', 'Practicante Pre Profesional para el Equipo de Participación y Comunicación', '3', null, 'admin', 'ACTUALIZACION', '2016-10-14 17:45:19');
INSERT INTO `log_convocatoria` VALUES ('284', '023-IX', '1', '2016-10-10 17:29:02', 'Docente fortaleza', '2', null, 'admin', 'ACTUALIZACION', '2016-10-17 18:21:59');
INSERT INTO `log_convocatoria` VALUES ('285', '023-IX', '1', '2016-10-10 17:29:02', 'Docente fortaleza', '3', null, 'admin', 'ACTUALIZACION', '2016-10-18 11:51:45');
INSERT INTO `log_convocatoria` VALUES ('286', '112-I', '1', '2016-10-18 12:59:11', 'Especialista para la Gestión del Incremento en el Acceso I', '1', null, 'admin', 'REGISTRO', '2016-10-18 12:59:11');
INSERT INTO `log_convocatoria` VALUES ('287', '111-I', '1', '2016-10-12 21:05:53', 'Profesional SIGA', '2', null, 'admin', 'ACTUALIZACION', '2016-10-19 23:01:31');
INSERT INTO `log_convocatoria` VALUES ('288', '113-I', '1', '2016-10-19 23:02:01', 'Técnico administrativo', '1', null, 'admin', 'REGISTRO', '2016-10-19 23:02:01');
INSERT INTO `log_convocatoria` VALUES ('289', '015-V', '1', '2016-10-19 23:04:34', 'Personal de apoyo educativo', '1', null, 'admin', 'REGISTRO', '2016-10-19 23:04:34');
INSERT INTO `log_convocatoria` VALUES ('290', '114-I', '1', '2016-10-20 23:09:46', 'Técnico de sistemas', '1', null, 'admin', 'REGISTRO', '2016-10-20 23:09:46');
INSERT INTO `log_convocatoria` VALUES ('291', '115-I', '1', '2016-10-20 23:10:44', 'Técnico de archivo II', '1', null, 'admin', 'REGISTRO', '2016-10-20 23:10:44');
INSERT INTO `log_convocatoria` VALUES ('292', '116-I', '1', '2016-10-20 23:11:49', 'Especialista contable', '1', null, 'admin', 'REGISTRO', '2016-10-20 23:11:49');
INSERT INTO `log_convocatoria` VALUES ('293', '111-I', '1', '2016-10-12 21:05:53', 'Profesional SIGA', '3', null, 'admin', 'ACTUALIZACION', '2016-10-21 16:00:49');
INSERT INTO `log_convocatoria` VALUES ('294', '012-V', '1', '2016-10-06 17:29:11', 'Coordinador de Innovación y Soporte Tecnologías', '3', null, 'admin', 'ACTUALIZACION', '2016-10-21 16:01:21');
INSERT INTO `log_convocatoria` VALUES ('295', '015-IV', '1', '2016-10-06 17:27:10', 'Personal de apoyo educativo', '3', null, 'admin', 'ACTUALIZACION', '2016-10-21 16:02:07');
INSERT INTO `log_convocatoria` VALUES ('296', '012-VI', '1', '2016-10-25 13:05:43', 'Coordinador de Innovación Soporte Tecnologías', '1', null, 'admin', 'REGISTRO', '2016-10-25 13:05:43');
INSERT INTO `log_convocatoria` VALUES ('297', '112-I', '1', '2016-10-18 12:59:11', 'Especialista para la Gestión del Incremento en el Acceso I', '2', null, 'admin', 'ACTUALIZACION', '2016-10-26 22:41:51');
INSERT INTO `log_convocatoria` VALUES ('298', '113-I', '1', '2016-10-19 23:02:01', 'Técnico administrativo', '2', null, 'admin', 'ACTUALIZACION', '2016-10-27 17:44:25');
INSERT INTO `log_convocatoria` VALUES ('299', '112-I', '1', '2016-10-18 12:59:11', 'Especialista para la Gestión del Incremento en el Acceso I', '3', null, 'admin', 'ACTUALIZACION', '2016-10-27 18:07:28');
INSERT INTO `log_convocatoria` VALUES ('300', '115-I', '1', '2016-10-20 23:10:44', 'Técnico de archivo II', '2', null, 'admin', 'ACTUALIZACION', '2016-10-28 08:41:57');
INSERT INTO `log_convocatoria` VALUES ('301', '114-I', '1', '2016-10-20 23:09:46', 'Técnico de sistemas', '2', null, 'admin', 'ACTUALIZACION', '2016-10-28 08:42:30');
INSERT INTO `log_convocatoria` VALUES ('302', '015-V', '1', '2016-10-19 23:04:34', 'Personal de apoyo educativo', '2', null, 'admin', 'ACTUALIZACION', '2016-10-28 08:43:14');
INSERT INTO `log_convocatoria` VALUES ('303', '116-I', '1', '2016-10-20 23:11:49', 'Especialista contable', '2', null, 'admin', 'ACTUALIZACION', '2016-10-29 00:06:59');
INSERT INTO `log_convocatoria` VALUES ('304', '116-I', '1', '2016-10-20 23:11:49', 'Especialista contable', '3', null, 'admin', 'ACTUALIZACION', '2016-11-01 21:58:38');
INSERT INTO `log_convocatoria` VALUES ('305', '115-I', '1', '2016-10-20 23:10:44', 'Técnico de archivo II', '3', null, 'admin', 'ACTUALIZACION', '2016-11-01 21:59:29');
INSERT INTO `log_convocatoria` VALUES ('306', '114-I', '1', '2016-10-20 23:09:46', 'Técnico de sistemas', '3', null, 'admin', 'ACTUALIZACION', '2016-11-01 22:00:33');
INSERT INTO `log_convocatoria` VALUES ('307', '113-I', '1', '2016-10-19 23:02:01', 'Técnico administrativo', '3', null, 'admin', 'ACTUALIZACION', '2016-11-01 22:01:49');
INSERT INTO `log_convocatoria` VALUES ('308', '015-V', '1', '2016-10-19 23:04:34', 'Personal de apoyo educativo', '3', null, 'admin', 'ACTUALIZACION', '2016-11-02 18:14:59');
INSERT INTO `log_convocatoria` VALUES ('309', '002-VIII', '1', '2016-11-02 18:15:35', 'Acompañante Pedagógico de Primaria', '1', null, 'admin', 'REGISTRO', '2016-11-02 18:15:35');
INSERT INTO `log_convocatoria` VALUES ('310', '012-VI', '1', '2016-10-25 13:05:43', 'Coordinador de Innovación Soporte Tecnologías', '2', null, 'admin', 'ACTUALIZACION', '2016-11-04 08:00:00');
INSERT INTO `log_convocatoria` VALUES ('311', '117-I', '1', '2016-11-04 08:13:13', 'Asistente administrativo', '1', null, 'admin', 'REGISTRO', '2016-11-04 08:13:13');
INSERT INTO `log_convocatoria` VALUES ('312', '117-I', '1', '2016-11-04 08:13:13', 'Asistente administrativo', '1', null, 'admin', 'ACTUALIZACION', '2016-11-04 08:13:37');
INSERT INTO `log_convocatoria` VALUES ('313', '012-VI', '1', '2016-10-25 13:05:43', 'Coordinador de Innovación Soporte Tecnologías', '3', null, 'admin', 'ACTUALIZACION', '2016-11-07 16:04:26');
INSERT INTO `log_convocatoria` VALUES ('314', '012-VII', '1', '2016-11-07 16:05:50', 'COORDINADOR DE INNOVACIÓN SOPORTE TECNOLOGÍAS ', '1', null, 'admin', 'REGISTRO', '2016-11-07 16:05:50');
INSERT INTO `log_convocatoria` VALUES ('315', '12-VII', '1', '2016-11-07 16:06:07', 'COORDINADOR DE INNOVACIÓN SOPORTE TECNOLOGÍAS ', '1', null, 'admin', 'REGISTRO', '2016-11-07 16:06:07');
INSERT INTO `log_convocatoria` VALUES ('316', '012-VII', '1', '2016-11-07 16:05:50', 'COORDINADOR DE INNOVACIÓN SOPORTE TECNOLOGÍAS ', '1', 'admin', 'admin', 'ELIMINACION', '2016-11-07 16:06:29');
INSERT INTO `log_convocatoria` VALUES ('317', '12-VII', '1', '2016-11-07 16:06:07', 'Coordinador de innovación soporte tecnologías ', '1', null, 'admin', 'ACTUALIZACION', '2016-11-07 16:08:10');
INSERT INTO `log_convocatoria` VALUES ('318', '002-VIII', '1', '2016-11-02 18:15:35', 'Acompañante Pedagógico de Primaria', '2', null, 'admin', 'ACTUALIZACION', '2016-11-09 23:38:05');
INSERT INTO `log_convocatoria` VALUES ('319', '117-I', '1', '2016-11-04 08:13:13', 'Asistente administrativo', '2', null, 'admin', 'ACTUALIZACION', '2016-11-10 19:31:31');
INSERT INTO `log_convocatoria` VALUES ('320', '002-VIII', '1', '2016-11-02 18:15:35', 'Acompañante Pedagógico de Primaria', '3', null, 'admin', 'ACTUALIZACION', '2016-11-11 08:02:33');
INSERT INTO `log_convocatoria` VALUES ('321', '117-I', '1', '2016-11-04 08:13:13', 'Asistente administrativo', '3', null, 'admin', 'ACTUALIZACION', '2016-11-16 00:32:33');
INSERT INTO `log_convocatoria` VALUES ('322', '12-VII', '1', '2016-11-07 16:06:07', 'Coordinador de innovación soporte tecnologías ', '3', null, 'admin', 'ACTUALIZACION', '2016-11-17 19:20:36');
INSERT INTO `log_convocatoria` VALUES ('323', '012-VIII', '1', '2016-11-23 14:18:33', 'D', '1', null, 'admin', 'REGISTRO', '2016-11-23 14:18:33');
INSERT INTO `log_convocatoria` VALUES ('324', '012-VIII', '1', '2016-11-23 14:18:33', 'Coordinador de innovación soporte tecnologías', '1', null, 'admin', 'ACTUALIZACION', '2016-11-23 14:18:56');
INSERT INTO `log_convocatoria` VALUES ('325', '012-VIII', '1', '2016-11-23 14:18:33', 'Coordinador de innovación soporte tecnologías', '2', null, 'admin', 'ACTUALIZACION', '2016-11-30 06:01:32');
INSERT INTO `log_convocatoria` VALUES ('326', '012-VIII', '1', '2016-11-23 14:18:33', 'Coordinador de innovación soporte tecnologías', '3', null, 'admin', 'ACTUALIZACION', '2016-12-04 14:07:17');
INSERT INTO `log_convocatoria` VALUES ('327', '003', '1', '2016-12-14 08:52:26', 'Practicante para el Equipo de Contabilidad', '1', null, 'admin', 'REGISTRO', '2016-12-14 08:52:26');
INSERT INTO `log_convocatoria` VALUES ('328', '118-I', '1', '2016-12-15 17:23:49', 'Jefe del Área de Gestión de la Educación Básica Alternativa y Técnico Productiva', '1', null, 'admin', 'REGISTRO', '2016-12-15 17:23:49');
INSERT INTO `log_convocatoria` VALUES ('329', '119-I', '1', '2016-12-15 17:24:37', 'Jefe del Área de Supervisión y Gestión del Servicio Educativo', '1', null, 'admin', 'REGISTRO', '2016-12-15 17:24:37');
INSERT INTO `log_convocatoria` VALUES ('330', '120-I', '1', '2016-12-15 17:25:36', 'Asistente Administrativo para el Equipo de Trámite Documentario', '1', null, 'admin', 'REGISTRO', '2016-12-15 17:25:36');
INSERT INTO `log_convocatoria` VALUES ('331', '003', '1', '2016-12-14 08:52:26', 'Practicante para el Equipo de Contabilidad', '1', null, 'admin', 'ACTUALIZACION', '2016-12-15 17:29:09');
INSERT INTO `log_convocatoria` VALUES ('332', '003', '1', '2016-12-14 08:52:26', 'Practicante para el Equipo de Contabilidad', '2', null, 'admin', 'ACTUALIZACION', '2016-12-18 21:49:25');
INSERT INTO `log_convocatoria` VALUES ('333', '003', '1', '2016-12-14 08:52:26', 'Practicante para el Equipo de Contabilidad', '3', null, 'admin', 'ACTUALIZACION', '2016-12-19 18:39:01');
INSERT INTO `log_convocatoria` VALUES ('334', '01-I-2017', '1', '2016-12-20 18:24:17', 'Asesor de Dirección', '1', null, 'admin', 'REGISTRO', '2016-12-20 18:24:17');
INSERT INTO `log_convocatoria` VALUES ('335', '002-2017', '1', '2016-12-20 18:25:17', 'Técnico Administrativo', '1', null, 'admin', 'REGISTRO', '2016-12-20 18:25:17');
INSERT INTO `log_convocatoria` VALUES ('336', '003-I-2017', '1', '2016-12-20 18:26:20', 'Asistente Administrativo', '1', null, 'admin', 'REGISTRO', '2016-12-20 18:26:20');
INSERT INTO `log_convocatoria` VALUES ('337', '004-I-2017', '1', '2016-12-20 18:27:10', 'Abogado', '1', null, 'admin', 'REGISTRO', '2016-12-20 18:27:10');
INSERT INTO `log_convocatoria` VALUES ('338', '006-I-2017', '1', '2016-12-20 18:28:00', 'Abogado para Secretaría Técnica', '1', null, 'admin', 'REGISTRO', '2016-12-20 18:28:00');
INSERT INTO `log_convocatoria` VALUES ('339', '007-I-2017', '1', '2016-12-20 18:28:42', 'Analista de Racionalización', '1', null, 'admin', 'REGISTRO', '2016-12-20 18:28:42');
INSERT INTO `log_convocatoria` VALUES ('340', '008-I-2017', '1', '2016-12-20 18:29:18', 'Técnico Administrativo', '1', null, 'admin', 'REGISTRO', '2016-12-20 18:29:18');
INSERT INTO `log_convocatoria` VALUES ('341', '009-I-2017', '5', '2016-12-20 18:30:05', 'Profesionales en Educación', '1', null, 'admin', 'REGISTRO', '2016-12-20 18:30:05');
INSERT INTO `log_convocatoria` VALUES ('342', '010-I-2017', '1', '2016-12-20 18:30:53', 'Gestor(a) Local de Intervenciones en IIEE', '1', null, 'admin', 'REGISTRO', '2016-12-20 18:30:53');
INSERT INTO `log_convocatoria` VALUES ('343', '001-I-2017', '1', '2016-12-20 18:24:17', 'Asesor de Dirección', '1', null, 'admin', 'ACTUALIZACION', '2016-12-20 18:31:51');
INSERT INTO `log_convocatoria` VALUES ('344', '005-I-2017', '1', '2016-12-20 18:32:45', 'Técnico Legal', '1', null, 'admin', 'REGISTRO', '2016-12-20 18:32:45');
INSERT INTO `log_convocatoria` VALUES ('345', '010-I-2017', '1', '2016-12-20 18:30:53', 'Gestor(a) Local de Intervenciones en IIEE', '3', null, 'admin', 'ACTUALIZACION', '2016-12-21 18:09:00');
INSERT INTO `log_convocatoria` VALUES ('346', '118-I', '1', '2016-12-15 17:23:49', 'Jefe del Área de Gestión de la Educación Básica Alternativa y Técnico Productiva', '2', null, 'admin', 'ACTUALIZACION', '2016-12-23 18:45:14');
INSERT INTO `log_convocatoria` VALUES ('347', '119-I', '1', '2016-12-15 17:24:37', 'Jefe del Área de Supervisión y Gestión del Servicio Educativo', '2', null, 'admin', 'ACTUALIZACION', '2016-12-23 18:45:30');
INSERT INTO `log_convocatoria` VALUES ('348', '120-I', '1', '2016-12-15 17:25:36', 'Asistente Administrativo para el Equipo de Trámite Documentario', '2', null, 'admin', 'ACTUALIZACION', '2016-12-23 18:48:20');
INSERT INTO `log_convocatoria` VALUES ('349', '011-I-2017', '1', '2016-12-27 10:18:40', 'Técnico Administrativo', '1', null, 'admin', 'REGISTRO', '2016-12-27 10:18:40');
INSERT INTO `log_convocatoria` VALUES ('350', '012-I-2017', '1', '2016-12-27 10:19:33', 'Notificador', '1', null, 'admin', 'REGISTRO', '2016-12-27 10:19:33');
INSERT INTO `log_convocatoria` VALUES ('351', '113-I-2017', '1', '2016-12-27 10:22:54', 'Responsable de la Oficina de Constancias de Pago', '1', null, 'admin', 'REGISTRO', '2016-12-27 10:22:54');
INSERT INTO `log_convocatoria` VALUES ('352', '014-I-2017', '1', '2016-12-27 10:26:56', 'Asistente Administrativo para el Equipo de Tesorería', '1', null, 'admin', 'REGISTRO', '2016-12-27 10:26:56');
INSERT INTO `log_convocatoria` VALUES ('353', '013-I-2017', '1', '2016-12-27 10:22:54', 'Responsable de la Oficina de Constancias de Pago', '1', null, 'admin', 'ACTUALIZACION', '2016-12-27 10:27:29');
INSERT INTO `log_convocatoria` VALUES ('354', '015-I-2017', '1', '2016-12-27 10:28:28', 'Técnico Administrativo', '1', null, 'admin', 'REGISTRO', '2016-12-27 10:28:28');
INSERT INTO `log_convocatoria` VALUES ('355', '016-I-2017', '1', '2016-12-27 10:30:14', 'Especialista de Almacén', '1', null, 'admin', 'REGISTRO', '2016-12-27 10:30:14');
INSERT INTO `log_convocatoria` VALUES ('356', '120-I', '1', '2016-12-15 17:25:36', 'Asistente Administrativo para el Equipo de Trámite Documentario', '3', null, 'admin', 'ACTUALIZACION', '2016-12-27 10:35:17');
INSERT INTO `log_convocatoria` VALUES ('357', '011-I-2017', '1', '2016-12-27 10:18:40', 'Técnico Administrativo', '1', null, 'admin', 'ACTUALIZACION', '2016-12-27 10:43:16');
INSERT INTO `log_convocatoria` VALUES ('358', '011-I-2017', '1', '2016-12-27 10:18:40', 'Técnico Administrativo', '1', 'admin', 'admin', 'ELIMINACION', '2016-12-27 10:44:16');
INSERT INTO `log_convocatoria` VALUES ('359', '011-I-2017', '1', '2016-12-27 10:44:35', 'Técnico Administrativo', '1', null, 'admin', 'REGISTRO', '2016-12-27 10:44:35');
INSERT INTO `log_convocatoria` VALUES ('360', '0112-I-2017', '1', '2016-12-27 10:44:58', 'Técnico Administrativo', '1', null, 'admin', 'REGISTRO', '2016-12-27 10:44:58');
INSERT INTO `log_convocatoria` VALUES ('361', '0112-I-2017', '1', '2016-12-27 10:44:58', 'Técnico Administrativo', '1', 'admin', 'admin', 'ELIMINACION', '2016-12-27 10:45:34');
INSERT INTO `log_convocatoria` VALUES ('362', '011-2001', '1', '2016-12-27 11:07:16', '1', '1', null, 'admin', 'REGISTRO', '2016-12-27 11:07:16');
INSERT INTO `log_convocatoria` VALUES ('363', '011-2001', '1', '2016-12-27 11:07:16', '1', '1', 'admin', 'admin', 'ELIMINACION', '2016-12-27 11:07:54');
INSERT INTO `log_convocatoria` VALUES ('364', '011', '1', '2016-12-27 11:12:24', 'Técnico Administrativo', '1', null, 'admin', 'REGISTRO', '2016-12-27 11:12:24');
INSERT INTO `log_convocatoria` VALUES ('365', '011', '1', '2016-12-27 11:12:24', 'Técnico Administrativo', '1', 'admin', 'admin', 'ELIMINACION', '2016-12-27 11:12:45');
INSERT INTO `log_convocatoria` VALUES ('366', '014-I-2017', '1', '2016-12-27 10:26:56', 'Asistente Administrativo para el Equipo de Tesorería', '1', 'admin', 'admin', 'ELIMINACION', '2016-12-27 11:16:09');
INSERT INTO `log_convocatoria` VALUES ('367', '016-I-2017', '1', '2016-12-27 10:30:14', 'Especialista de Almacén', '1', 'admin', 'admin', 'ELIMINACION', '2016-12-27 11:16:14');
INSERT INTO `log_convocatoria` VALUES ('368', '119-I', '1', '2016-12-15 17:24:37', 'Jefe del Área de Supervisión y Gestión del Servicio Educativo', '3', null, 'admin', 'ACTUALIZACION', '2016-12-27 17:17:38');
INSERT INTO `log_convocatoria` VALUES ('369', '118-I', '1', '2016-12-15 17:23:49', 'Jefe del Área de Gestión de la Educación Básica Alternativa y Técnico Productiva', '3', null, 'admin', 'ACTUALIZACION', '2016-12-27 17:17:43');
INSERT INTO `log_convocatoria` VALUES ('370', '001-I-2017', '1', '2016-12-20 18:24:17', 'Asesor de Dirección', '2', null, 'admin', 'ACTUALIZACION', '2016-12-28 19:30:44');
INSERT INTO `log_convocatoria` VALUES ('371', '002-2017', '1', '2016-12-20 18:25:17', 'Técnico Administrativo', '2', null, 'admin', 'ACTUALIZACION', '2016-12-28 19:31:03');
INSERT INTO `log_convocatoria` VALUES ('372', '003-I-2017', '1', '2016-12-20 18:26:20', 'Asistente Administrativo', '2', null, 'admin', 'ACTUALIZACION', '2016-12-28 19:31:25');
INSERT INTO `log_convocatoria` VALUES ('373', '004-I-2017', '1', '2016-12-20 18:27:10', 'Abogado', '2', null, 'admin', 'ACTUALIZACION', '2016-12-28 19:31:42');
INSERT INTO `log_convocatoria` VALUES ('374', '005-I-2017', '1', '2016-12-20 18:32:45', 'Técnico Legal', '2', null, 'admin', 'ACTUALIZACION', '2016-12-28 19:31:52');
INSERT INTO `log_convocatoria` VALUES ('375', '006-I-2017', '1', '2016-12-20 18:28:00', 'Abogado para Secretaría Técnica', '2', null, 'admin', 'ACTUALIZACION', '2016-12-28 19:32:10');
INSERT INTO `log_convocatoria` VALUES ('376', '007-I-2017', '1', '2016-12-20 18:28:42', 'Analista de Racionalización', '2', null, 'admin', 'ACTUALIZACION', '2016-12-28 19:32:22');
INSERT INTO `log_convocatoria` VALUES ('377', '008-I-2017', '1', '2016-12-20 18:29:18', 'Técnico Administrativo', '2', null, 'admin', 'ACTUALIZACION', '2016-12-28 19:32:34');
INSERT INTO `log_convocatoria` VALUES ('378', '001-I-2017', '1', '2016-12-29 18:24:31', 'Practicante Pre Profesional para el Equipo de Tecnologías de la Información', '1', null, 'admin', 'REGISTRO', '2016-12-29 18:24:31');
INSERT INTO `log_convocatoria` VALUES ('379', '009-I-2017', '5', '2016-12-20 18:30:05', 'Profesionales en Educación', '2', null, 'admin', 'ACTUALIZACION', '2016-12-29 22:27:32');
INSERT INTO `log_convocatoria` VALUES ('380', '008-I-2017', '1', '2016-12-20 18:29:18', 'Técnico Administrativo', '3', null, 'admin', 'ACTUALIZACION', '2016-12-30 18:51:30');
INSERT INTO `log_convocatoria` VALUES ('381', '007-I-2017', '1', '2016-12-20 18:28:42', 'Analista de Racionalización', '3', null, 'admin', 'ACTUALIZACION', '2016-12-30 18:51:48');
INSERT INTO `log_convocatoria` VALUES ('382', '006-I-2017', '1', '2016-12-20 18:28:00', 'Abogado para Secretaría Técnica', '3', null, 'admin', 'ACTUALIZACION', '2016-12-30 18:52:14');
INSERT INTO `log_convocatoria` VALUES ('383', '005-I-2017', '1', '2016-12-20 18:32:45', 'Técnico Legal', '3', null, 'admin', 'ACTUALIZACION', '2016-12-30 18:52:22');
INSERT INTO `log_convocatoria` VALUES ('384', '004-I-2017', '1', '2016-12-20 18:27:10', 'Abogado', '3', null, 'admin', 'ACTUALIZACION', '2016-12-30 18:52:40');
INSERT INTO `log_convocatoria` VALUES ('385', '003-I-2017', '1', '2016-12-20 18:26:20', 'Asistente Administrativo', '3', null, 'admin', 'ACTUALIZACION', '2016-12-30 18:52:52');
INSERT INTO `log_convocatoria` VALUES ('386', '002-2017', '1', '2016-12-20 18:25:17', 'Técnico Administrativo', '3', null, 'admin', 'ACTUALIZACION', '2016-12-30 18:53:03');
INSERT INTO `log_convocatoria` VALUES ('387', '001-I-2017', '1', '2016-12-20 18:24:17', 'Asesor de Dirección', '3', null, 'admin', 'ACTUALIZACION', '2016-12-30 18:53:10');
INSERT INTO `log_convocatoria` VALUES ('388', '009-I-2017', '5', '2016-12-20 18:30:05', 'Profesionales en Educación', '3', null, 'admin', 'ACTUALIZACION', '2017-01-02 17:54:24');
INSERT INTO `log_convocatoria` VALUES ('389', '015-I-2017', '1', '2016-12-27 10:28:28', 'Técnico Administrativo', '2', null, 'admin', 'ACTUALIZACION', '2017-01-04 17:43:53');
INSERT INTO `log_convocatoria` VALUES ('390', '013-I-2017', '1', '2016-12-27 10:22:54', 'Responsable de la Oficina de Constancias de Pago', '2', null, 'admin', 'ACTUALIZACION', '2017-01-04 17:44:13');
INSERT INTO `log_convocatoria` VALUES ('391', '012-I-2017', '1', '2016-12-27 10:19:33', 'Notificador', '2', null, 'admin', 'ACTUALIZACION', '2017-01-04 17:44:29');
INSERT INTO `log_convocatoria` VALUES ('392', '011-I-2017', '1', '2016-12-27 10:44:35', 'Técnico Administrativo', '2', null, 'admin', 'ACTUALIZACION', '2017-01-04 17:44:48');
INSERT INTO `log_convocatoria` VALUES ('393', '001-I-2017', '1', '2016-12-29 18:24:31', 'Practicante Pre Profesional para el Equipo de Tecnologías de la Información', '2', null, 'admin', 'ACTUALIZACION', '2017-01-05 18:51:10');
INSERT INTO `log_convocatoria` VALUES ('394', '001-I-2017', '1', '2016-12-29 18:24:31', 'Practicante Pre Profesional para el Equipo de Tecnologías de la Información', '2', null, 'admin', 'ACTUALIZACION', '2017-01-05 18:51:24');
INSERT INTO `log_convocatoria` VALUES ('395', '013-I-2017', '1', '2016-12-27 10:22:54', 'Responsable de la Oficina de Constancias de Pago', '2', null, 'admin', 'ACTUALIZACION', '2017-01-05 18:53:03');
INSERT INTO `log_convocatoria` VALUES ('396', '011-I-2017', '1', '2016-12-27 10:44:35', 'Técnico Administrativo', '3', null, 'admin', 'ACTUALIZACION', '2017-01-06 16:39:34');
INSERT INTO `log_convocatoria` VALUES ('397', '012-I-2017', '1', '2016-12-27 10:19:33', 'Notificador', '3', null, 'admin', 'ACTUALIZACION', '2017-01-06 16:40:01');
INSERT INTO `log_convocatoria` VALUES ('398', '013-I-2017', '1', '2016-12-27 10:22:54', 'Responsable de la Oficina de Constancias de Pago', '3', null, 'admin', 'ACTUALIZACION', '2017-01-06 16:40:16');
INSERT INTO `log_convocatoria` VALUES ('399', '015-I-2017', '1', '2016-12-27 10:28:28', 'Técnico Administrativo', '3', null, 'admin', 'ACTUALIZACION', '2017-01-06 16:40:35');
INSERT INTO `log_convocatoria` VALUES ('400', '001-I-2017', '1', '2016-12-29 18:24:31', 'Practicante Pre Profesional para el Equipo de Tecnologías de la Información', '3', null, 'admin', 'ACTUALIZACION', '2017-01-06 16:46:07');
INSERT INTO `log_convocatoria` VALUES ('401', '002-2017', '1', '2017-01-06 16:54:14', 'Practicante Pre Profesional para el Equipo de Reclutamiento y Selección', '1', null, 'admin', 'REGISTRO', '2017-01-06 16:54:15');
INSERT INTO `log_convocatoria` VALUES ('402', '019-I-2017', '1', '2017-01-13 06:33:45', 'Arquitecto o Ingeniero Civil', '1', null, 'admin', 'REGISTRO', '2017-01-13 06:33:45');
INSERT INTO `log_convocatoria` VALUES ('403', '018-I-2017', '1', '2017-01-13 06:35:07', 'Técnico en Sistemas', '1', null, 'admin', 'REGISTRO', '2017-01-13 06:35:07');
INSERT INTO `log_convocatoria` VALUES ('404', '017-I-2017', '1', '2017-01-13 06:36:30', 'Técnico en SIAGIE', '1', null, 'admin', 'REGISTRO', '2017-01-13 06:36:30');
INSERT INTO `log_convocatoria` VALUES ('405', 'P003-I-2017', '1', '2017-01-13 06:42:33', 'Practicante Pre Profesional para el Equipo de Participación y Comunicaciòn', '1', null, 'admin', 'REGISTRO', '2017-01-13 06:42:33');
INSERT INTO `log_convocatoria` VALUES ('406', '002-2017', '1', '2017-01-06 16:54:14', 'Practicante Pre Profesional para el Equipo de Reclutamiento y Selección', '2', null, 'admin', 'ACTUALIZACION', '2017-01-13 18:03:32');
INSERT INTO `log_convocatoria` VALUES ('407', '002-2017', '1', '2017-01-06 16:54:14', 'Practicante Pre Profesional para el Equipo de Reclutamiento y Selección', '3', null, 'admin', 'ACTUALIZACION', '2017-01-16 22:59:27');
INSERT INTO `log_convocatoria` VALUES ('408', 'P003-I-2017', '1', '2017-01-13 06:42:33', 'Practicante Pre Profesional para el Equipo de Participación y Comunicaciòn', '2', null, 'admin', 'ACTUALIZACION', '2017-01-19 17:35:55');
INSERT INTO `log_convocatoria` VALUES ('409', '019-I-2017', '1', '2017-01-13 06:33:45', 'Arquitecto o Ingeniero Civil', '1', null, 'admin', 'ACTUALIZACION', '2017-01-20 17:43:22');
INSERT INTO `log_convocatoria` VALUES ('410', 'P003-I-2017', '1', '2017-01-13 06:42:33', 'Practicante Pre Profesional para el Equipo de Participación y Comunicaciòn', '3', null, 'admin', 'ACTUALIZACION', '2017-01-20 17:44:02');
INSERT INTO `log_convocatoria` VALUES ('411', '020-I-2017', '1', '2017-01-25 07:57:28', 'Médico ocupacional', '1', null, 'admin', 'REGISTRO', '2017-01-25 07:57:28');
INSERT INTO `log_convocatoria` VALUES ('412', '021-I-2017', '4', '2017-01-25 15:26:26', 'Personal de vigilancia', '1', null, 'admin', 'REGISTRO', '2017-01-25 15:26:26');
INSERT INTO `log_convocatoria` VALUES ('413', '022-I-2017', '4', '2017-01-25 15:27:28', 'Personal de secretaria', '1', null, 'admin', 'REGISTRO', '2017-01-25 15:27:30');
INSERT INTO `log_convocatoria` VALUES ('414', '023-I-2017', '1', '2017-01-25 15:28:25', 'Coordinador de Innovación de Soporte Tecnológico', '1', null, 'admin', 'REGISTRO', '2017-01-25 15:28:25');
INSERT INTO `log_convocatoria` VALUES ('415', '024-I-2017', '1', '2017-01-25 15:29:10', 'Personal de Apoyo Educativo', '1', null, 'admin', 'REGISTRO', '2017-01-25 15:29:10');
INSERT INTO `log_convocatoria` VALUES ('416', '025-I-2017', '2', '2017-01-25 15:29:57', 'Psicólogos o Trabajadores Sociales', '1', null, 'admin', 'REGISTRO', '2017-01-25 15:29:57');
INSERT INTO `log_convocatoria` VALUES ('417', '026-I-2017', '1', '2017-01-25 15:30:55', 'Especialista en Educación', '1', null, 'admin', 'REGISTRO', '2017-01-25 15:30:55');
INSERT INTO `log_convocatoria` VALUES ('418', '001-II-2017', '1', '2017-01-25 15:33:26', 'Practicante Pre Profesional para el Equipo de Tecnologías de la Información', '1', null, 'admin', 'REGISTRO', '2017-01-25 15:33:26');
INSERT INTO `log_convocatoria` VALUES ('419', '001-II-2017', '1', '2017-01-25 15:33:26', 'Practicante Pre Profesional para el Equipo de Tecnologías de la Información', '1', null, 'admin', 'ACTUALIZACION', '2017-01-25 16:42:15');
INSERT INTO `log_convocatoria` VALUES ('420', '019-I-2017', '1', '2017-01-13 06:33:45', 'Arquitecto o Ingeniero Civil', '2', null, 'admin', 'ACTUALIZACION', '2017-01-26 20:58:14');
INSERT INTO `log_convocatoria` VALUES ('421', '018-I-2017', '1', '2017-01-13 06:35:07', 'Técnico en Sistemas', '2', null, 'admin', 'ACTUALIZACION', '2017-01-26 20:58:34');
INSERT INTO `log_convocatoria` VALUES ('422', '017-I-2017', '1', '2017-01-13 06:36:30', 'Técnico en SIAGIE', '2', null, 'admin', 'ACTUALIZACION', '2017-01-26 20:59:13');
INSERT INTO `log_convocatoria` VALUES ('423', '027-I-2017', '13', '2017-01-29 01:11:13', 'Acompañantes Pedagógicos de Primaria', '1', null, 'admin', 'REGISTRO', '2017-01-29 01:11:13');
INSERT INTO `log_convocatoria` VALUES ('424', '001-II-2017', '1', '2017-01-25 15:33:26', 'Practicante Pre Profesional para el Equipo de Tecnologías de la Información', '2', null, 'admin', 'ACTUALIZACION', '2017-01-30 16:53:03');
INSERT INTO `log_convocatoria` VALUES ('425', '019-I-2017', '1', '2017-01-13 06:33:45', 'Arquitecto o Ingeniero Civil', '3', null, 'admin', 'ACTUALIZACION', '2017-01-30 17:02:30');
INSERT INTO `log_convocatoria` VALUES ('426', '018-I-2017', '1', '2017-01-13 06:35:07', 'Técnico en Sistemas', '3', null, 'admin', 'ACTUALIZACION', '2017-01-30 17:02:44');
INSERT INTO `log_convocatoria` VALUES ('427', '017-I-2017', '1', '2017-01-13 06:36:30', 'Técnico en SIAGIE', '3', null, 'admin', 'ACTUALIZACION', '2017-01-30 17:03:33');
INSERT INTO `log_convocatoria` VALUES ('428', '028-I', '1', '2017-01-31 18:32:05', 'C', '1', null, 'admin', 'REGISTRO', '2017-01-31 18:32:05');
INSERT INTO `log_convocatoria` VALUES ('429', '028-I', '1', '2017-01-31 18:32:05', 'Técnico Administrativo', '1', null, 'admin', 'ACTUALIZACION', '2017-01-31 18:33:31');
INSERT INTO `log_convocatoria` VALUES ('430', '001-II-2017', '1', '2017-01-25 15:33:26', 'Practicante Pre Profesional para el Equipo de Tecnologías de la Información', '3', null, 'admin', 'ACTUALIZACION', '2017-01-31 18:33:48');
INSERT INTO `log_convocatoria` VALUES ('431', '020-I-2017', '1', '2017-01-25 07:57:28', 'Médico ocupacional', '2', null, 'admin', 'ACTUALIZACION', '2017-02-01 18:15:25');
INSERT INTO `log_convocatoria` VALUES ('432', '020-I-2017', '1', '2017-01-25 07:57:28', 'Médico ocupacional', '3', null, 'admin', 'ACTUALIZACION', '2017-02-03 17:40:12');
INSERT INTO `log_convocatoria` VALUES ('433', '004-I', '1', '2017-02-03 17:41:11', 'Practicante Pre Profesional para el Área de Asesoría Jurídica', '1', null, 'admin', 'REGISTRO', '2017-02-03 17:41:11');
INSERT INTO `log_convocatoria` VALUES ('434', '004-I', '1', '2017-02-03 17:41:21', 'Practicante Pre Profesional para el Área de Asesoría Jurídica', '1', null, 'admin', 'REGISTRO', '2017-02-03 17:41:21');
INSERT INTO `log_convocatoria` VALUES ('435', '026-I-2017', '1', '2017-01-25 15:30:55', 'Especialista en Educación', '3', null, 'admin', 'ACTUALIZACION', '2017-02-06 09:06:28');
INSERT INTO `log_convocatoria` VALUES ('436', '027-II', '2', '2017-02-06 10:19:21', 'Acompañantes Pedagógicos de Primaria', '1', null, 'admin', 'REGISTRO', '2017-02-06 10:19:21');
INSERT INTO `log_convocatoria` VALUES ('437', '021-II', '18', '2017-02-06 10:20:14', 'Personal de vigilancia', '1', null, 'admin', 'REGISTRO', '2017-02-06 10:20:14');
INSERT INTO `log_convocatoria` VALUES ('438', '022-II', '1', '2017-02-06 10:21:13', 'Personal de secretaria', '1', null, 'admin', 'REGISTRO', '2017-02-06 10:21:13');
INSERT INTO `log_convocatoria` VALUES ('439', '023-II', '6', '2017-02-06 10:21:59', 'Coordinadores de Innovación y Soporte Tecnológico', '1', null, 'admin', 'REGISTRO', '2017-02-06 10:21:59');
INSERT INTO `log_convocatoria` VALUES ('440', '024-II', '5', '2017-02-06 10:23:36', 'Personal de Apoyo Educativo', '1', null, 'admin', 'REGISTRO', '2017-02-06 10:23:36');
INSERT INTO `log_convocatoria` VALUES ('441', '025-II', '3', '2017-02-06 10:24:34', 'Psicólogos o Trabajadores Sociales', '1', null, 'admin', 'REGISTRO', '2017-02-06 10:24:34');
INSERT INTO `log_convocatoria` VALUES ('442', '029-I', '10', '2017-02-06 10:25:25', 'Coordinadores Administrativos y de Recursos Educativos', '1', null, 'admin', 'REGISTRO', '2017-02-06 10:25:25');
INSERT INTO `log_convocatoria` VALUES ('443', '027-I-2017', '13', '2017-01-29 01:11:13', 'Acompañantes Pedagógicos de Primaria', '2', null, 'admin', 'ACTUALIZACION', '2017-02-06 22:50:19');
INSERT INTO `log_convocatoria` VALUES ('444', '028-I', '1', '2017-01-31 18:32:05', 'Técnico Administrativo', '2', null, 'admin', 'ACTUALIZACION', '2017-02-07 17:25:27');
INSERT INTO `log_convocatoria` VALUES ('445', '004-I', '1', '2017-02-03 17:41:11', 'Practicante Pre Profesional para el Área de Asesoría Jurídica', '1', 'admin', 'admin', 'ELIMINACION', '2017-02-08 11:15:53');
INSERT INTO `log_convocatoria` VALUES ('446', '028-I', '1', '2017-01-31 18:32:05', 'Técnico Administrativo', '3', null, 'admin', 'ACTUALIZACION', '2017-02-09 15:47:45');
INSERT INTO `log_convocatoria` VALUES ('447', '027-I-2017', '13', '2017-01-29 01:11:13', 'Acompañantes Pedagógicos de Primaria', '3', null, 'admin', 'ACTUALIZACION', '2017-02-09 18:13:18');
INSERT INTO `log_convocatoria` VALUES ('448', '004-I', '1', '2017-02-03 17:41:21', 'Practicante Pre Profesional para el Área de Asesoría Jurídica', '2', null, 'admin', 'ACTUALIZACION', '2017-02-10 18:32:00');
INSERT INTO `log_convocatoria` VALUES ('449', '030-I', '1', '2017-02-13 10:00:11', 'Asesor de Dirección', '1', null, 'admin', 'REGISTRO', '2017-02-13 10:00:11');
INSERT INTO `log_convocatoria` VALUES ('450', '004-I', '1', '2017-02-03 17:41:21', 'Practicante Pre Profesional para el Área de Asesoría Jurídica', '3', null, 'admin', 'ACTUALIZACION', '2017-02-13 14:48:05');
INSERT INTO `log_convocatoria` VALUES ('451', '027-II', '2', '2017-02-06 10:19:21', 'Acompañantes Pedagógicos de Primaria', '2', null, 'admin', 'ACTUALIZACION', '2017-02-14 16:34:22');
INSERT INTO `log_convocatoria` VALUES ('452', '027-II', '2', '2017-02-06 10:19:21', 'Acompañantes Pedagógicos de Primaria', '3', null, 'admin', 'ACTUALIZACION', '2017-02-17 07:36:39');
INSERT INTO `log_convocatoria` VALUES ('453', '031', '1', '2017-02-17 07:37:50', 'Gestor', '1', null, 'admin', 'REGISTRO', '2017-02-17 07:37:50');
INSERT INTO `log_convocatoria` VALUES ('454', '031', '1', '2017-02-17 07:37:50', 'Gestor Local', '1', null, 'admin', 'ACTUALIZACION', '2017-02-17 07:38:36');
INSERT INTO `log_convocatoria` VALUES ('455', '029-I', '10', '2017-02-06 10:25:25', 'Coordinadores Administrativos y de Recursos Educativos', '2', null, 'admin', 'ACTUALIZACION', '2017-02-17 08:08:45');
INSERT INTO `log_convocatoria` VALUES ('456', '025-II', '3', '2017-02-06 10:24:34', 'Psicólogos o Trabajadores Sociales', '2', null, 'admin', 'ACTUALIZACION', '2017-02-17 08:09:07');
INSERT INTO `log_convocatoria` VALUES ('457', '024-II', '5', '2017-02-06 10:23:36', 'Personal de Apoyo Educativo', '2', null, 'admin', 'ACTUALIZACION', '2017-02-17 08:09:23');
INSERT INTO `log_convocatoria` VALUES ('458', '023-II', '6', '2017-02-06 10:21:59', 'Coordinadores de Innovación y Soporte Tecnológico', '2', null, 'admin', 'ACTUALIZACION', '2017-02-17 08:09:38');
INSERT INTO `log_convocatoria` VALUES ('459', '022-II', '1', '2017-02-06 10:21:13', 'Personal de secretaria', '2', null, 'admin', 'ACTUALIZACION', '2017-02-17 08:09:52');
INSERT INTO `log_convocatoria` VALUES ('460', '021-II', '18', '2017-02-06 10:20:14', 'Personal de vigilancia', '2', null, 'admin', 'ACTUALIZACION', '2017-02-17 08:10:17');
INSERT INTO `log_convocatoria` VALUES ('461', '025-I-2017', '2', '2017-01-25 15:29:57', 'Psicólogos o Trabajadores Sociales', '2', null, 'admin', 'ACTUALIZACION', '2017-02-17 08:10:34');
INSERT INTO `log_convocatoria` VALUES ('462', '024-I-2017', '1', '2017-01-25 15:29:10', 'Personal de Apoyo Educativo', '2', null, 'admin', 'ACTUALIZACION', '2017-02-17 08:10:47');
INSERT INTO `log_convocatoria` VALUES ('463', '023-I-2017', '1', '2017-01-25 15:28:25', 'Coordinador de Innovación de Soporte Tecnológico', '2', null, 'admin', 'ACTUALIZACION', '2017-02-17 08:10:58');
INSERT INTO `log_convocatoria` VALUES ('464', '022-I-2017', '4', '2017-01-25 15:27:28', 'Personal de secretaria', '2', null, 'admin', 'ACTUALIZACION', '2017-02-17 08:11:30');
INSERT INTO `log_convocatoria` VALUES ('465', '021-I-2017', '4', '2017-01-25 15:26:26', 'Personal de vigilancia', '2', null, 'admin', 'ACTUALIZACION', '2017-02-17 08:11:43');
INSERT INTO `log_convocatoria` VALUES ('466', '031-I', '1', '2017-02-17 07:37:50', 'Gestor Local', '1', null, 'admin', 'ACTUALIZACION', '2017-02-17 08:12:27');
INSERT INTO `log_convocatoria` VALUES ('467', '025-II', '3', '2017-02-06 10:24:34', 'Psicólogos o Trabajadores Sociales', '1', null, 'admin', 'ACTUALIZACION', '2017-02-17 08:19:39');
INSERT INTO `log_convocatoria` VALUES ('468', '024-II', '5', '2017-02-06 10:23:36', 'Personal de Apoyo Educativo', '1', null, 'admin', 'ACTUALIZACION', '2017-02-17 08:19:48');
INSERT INTO `log_convocatoria` VALUES ('469', '023-II', '6', '2017-02-06 10:21:59', 'Coordinadores de Innovación y Soporte Tecnológico', '1', null, 'admin', 'ACTUALIZACION', '2017-02-17 08:20:04');
INSERT INTO `log_convocatoria` VALUES ('470', '022-II', '1', '2017-02-06 10:21:13', 'Personal de secretaria', '1', null, 'admin', 'ACTUALIZACION', '2017-02-17 08:20:13');
INSERT INTO `log_convocatoria` VALUES ('471', '021-II', '18', '2017-02-06 10:20:14', 'Personal de vigilancia', '2', null, 'admin', 'ACTUALIZACION', '2017-02-17 08:20:21');
INSERT INTO `log_convocatoria` VALUES ('472', '029-I', '10', '2017-02-06 10:25:25', 'Coordinadores Administrativos y de Recursos Educativos', '1', null, 'admin', 'ACTUALIZACION', '2017-02-17 08:20:46');
INSERT INTO `log_convocatoria` VALUES ('473', '021-II', '18', '2017-02-06 10:20:14', 'Personal de vigilancia', '1', null, 'admin', 'ACTUALIZACION', '2017-02-17 08:20:57');
INSERT INTO `log_convocatoria` VALUES ('474', '025-I-2017', '2', '2017-01-25 15:29:57', 'Psicólogos o Trabajadores Sociales', '1', null, 'admin', 'ACTUALIZACION', '2017-02-17 08:21:18');
INSERT INTO `log_convocatoria` VALUES ('475', '024-I-2017', '1', '2017-01-25 15:29:10', 'Personal de Apoyo Educativo', '1', null, 'admin', 'ACTUALIZACION', '2017-02-17 08:21:25');
INSERT INTO `log_convocatoria` VALUES ('476', '023-I-2017', '1', '2017-01-25 15:28:25', 'Coordinador de Innovación de Soporte Tecnológico', '1', null, 'admin', 'ACTUALIZACION', '2017-02-17 08:21:33');
INSERT INTO `log_convocatoria` VALUES ('477', '022-I-2017', '4', '2017-01-25 15:27:28', 'Personal de secretaria', '1', null, 'admin', 'ACTUALIZACION', '2017-02-17 08:21:39');
INSERT INTO `log_convocatoria` VALUES ('478', '021-I-2017', '4', '2017-01-25 15:26:26', 'Personal de vigilancia', '1', null, 'admin', 'ACTUALIZACION', '2017-02-17 08:21:46');
INSERT INTO `log_convocatoria` VALUES ('479', '025-II', '3', '2017-02-06 10:24:34', 'Psicólogos o Trabajadores Sociales', '2', null, 'admin', 'ACTUALIZACION', '2017-02-17 10:59:22');
INSERT INTO `log_convocatoria` VALUES ('480', '024-II', '5', '2017-02-06 10:23:36', 'Personal de Apoyo Educativo', '2', null, 'admin', 'ACTUALIZACION', '2017-02-17 11:00:36');
INSERT INTO `log_convocatoria` VALUES ('481', '023-II', '6', '2017-02-06 10:21:59', 'Coordinadores de Innovación y Soporte Tecnológico', '2', null, 'admin', 'ACTUALIZACION', '2017-02-17 11:00:44');
INSERT INTO `log_convocatoria` VALUES ('482', '022-II', '1', '2017-02-06 10:21:13', 'Personal de secretaria', '2', null, 'admin', 'ACTUALIZACION', '2017-02-17 11:01:00');
INSERT INTO `log_convocatoria` VALUES ('483', '021-II', '18', '2017-02-06 10:20:14', 'Personal de vigilancia', '2', null, 'admin', 'ACTUALIZACION', '2017-02-17 11:01:11');
INSERT INTO `log_convocatoria` VALUES ('484', '029-I', '10', '2017-02-06 10:25:25', 'Coordinadores Administrativos y de Recursos Educativos', '2', null, 'admin', 'ACTUALIZACION', '2017-02-17 11:01:53');
INSERT INTO `log_convocatoria` VALUES ('485', '025-I-2017', '2', '2017-01-25 15:29:57', 'Psicólogos o Trabajadores Sociales', '2', null, 'admin', 'ACTUALIZACION', '2017-02-17 11:02:08');
INSERT INTO `log_convocatoria` VALUES ('486', '024-I-2017', '1', '2017-01-25 15:29:10', 'Personal de Apoyo Educativo', '2', null, 'admin', 'ACTUALIZACION', '2017-02-17 11:02:27');
INSERT INTO `log_convocatoria` VALUES ('487', '023-I-2017', '1', '2017-01-25 15:28:25', 'Coordinador de Innovación de Soporte Tecnológico', '2', null, 'admin', 'ACTUALIZACION', '2017-02-17 11:02:39');
INSERT INTO `log_convocatoria` VALUES ('488', '022-I-2017', '4', '2017-01-25 15:27:28', 'Personal de secretaria', '2', null, 'admin', 'ACTUALIZACION', '2017-02-17 11:02:46');
INSERT INTO `log_convocatoria` VALUES ('489', '021-I-2017', '4', '2017-01-25 15:26:26', 'Personal de vigilancia', '2', null, 'admin', 'ACTUALIZACION', '2017-02-17 11:02:57');
INSERT INTO `log_convocatoria` VALUES ('490', '030-I', '1', '2017-02-13 10:00:11', 'Asesor de Dirección', '3', null, 'admin', 'ACTUALIZACION', '2017-02-20 21:53:55');
INSERT INTO `log_convocatoria` VALUES ('491', '032-I', '1', '2017-02-21 10:54:35', 'Técnico administrativo', '1', null, 'admin', 'REGISTRO', '2017-02-21 10:54:35');
INSERT INTO `log_convocatoria` VALUES ('492', '033-I', '1', '2017-02-21 10:55:16', 'Abogado para secretaría técnica', '1', null, 'admin', 'REGISTRO', '2017-02-21 10:55:16');
INSERT INTO `log_convocatoria` VALUES ('493', '024-II', '5', '2017-02-06 10:23:36', 'Personal de Apoyo Educativo', '3', null, 'admin', 'ACTUALIZACION', '2017-02-21 14:11:53');
INSERT INTO `log_convocatoria` VALUES ('494', '023-II', '6', '2017-02-06 10:21:59', 'Coordinadores de Innovación y Soporte Tecnológico', '3', null, 'admin', 'ACTUALIZACION', '2017-02-21 14:12:18');
INSERT INTO `log_convocatoria` VALUES ('495', '022-II', '1', '2017-02-06 10:21:13', 'Personal de secretaria', '3', null, 'admin', 'ACTUALIZACION', '2017-02-21 14:12:39');
INSERT INTO `log_convocatoria` VALUES ('496', '021-II', '18', '2017-02-06 10:20:14', 'Personal de vigilancia', '3', null, 'admin', 'ACTUALIZACION', '2017-02-21 14:13:04');
INSERT INTO `log_convocatoria` VALUES ('497', '024-I-2017', '1', '2017-01-25 15:29:10', 'Personal de Apoyo Educativo', '3', null, 'admin', 'ACTUALIZACION', '2017-02-21 14:13:24');
INSERT INTO `log_convocatoria` VALUES ('498', '023-I-2017', '1', '2017-01-25 15:28:25', 'Coordinador de Innovación de Soporte Tecnológico', '3', null, 'admin', 'ACTUALIZACION', '2017-02-21 14:13:39');
INSERT INTO `log_convocatoria` VALUES ('499', '022-I-2017', '4', '2017-01-25 15:27:28', 'Personal de secretaria', '3', null, 'admin', 'ACTUALIZACION', '2017-02-21 14:13:59');
INSERT INTO `log_convocatoria` VALUES ('500', '021-I-2017', '4', '2017-01-25 15:26:26', 'Personal de vigilancia', '3', null, 'admin', 'ACTUALIZACION', '2017-02-21 14:14:17');
INSERT INTO `log_convocatoria` VALUES ('501', '023-I-2017', '1', '2017-01-25 15:28:25', 'Coordinador de Innovación de Soporte Tecnológico', '2', null, 'admin', 'ACTUALIZACION', '2017-02-21 14:42:07');
INSERT INTO `log_convocatoria` VALUES ('502', '022-I-2017', '4', '2017-01-25 15:27:28', 'Personal de secretaria', '2', null, 'admin', 'ACTUALIZACION', '2017-02-21 14:42:59');
INSERT INTO `log_convocatoria` VALUES ('503', '022-II', '1', '2017-02-06 10:21:13', 'Personal de secretaria', '2', null, 'admin', 'ACTUALIZACION', '2017-02-21 14:43:38');
INSERT INTO `log_convocatoria` VALUES ('504', '022-II', '1', '2017-02-06 10:21:13', 'Personal de secretaria', '2', null, 'admin', 'ACTUALIZACION', '2017-02-21 14:43:48');
INSERT INTO `log_convocatoria` VALUES ('505', '023-II', '6', '2017-02-06 10:21:59', 'Coordinadores de Innovación y Soporte Tecnológico', '2', null, 'admin', 'ACTUALIZACION', '2017-02-21 14:44:09');
INSERT INTO `log_convocatoria` VALUES ('506', '029-I', '10', '2017-02-06 10:25:25', 'Coordinadores Administrativos y de Recursos Educativos', '3', null, 'admin', 'ACTUALIZACION', '2017-02-23 16:49:07');
INSERT INTO `log_convocatoria` VALUES ('507', '023-II', '6', '2017-02-06 10:21:59', 'Coordinadores de Innovación y Soporte Tecnológico', '3', null, 'admin', 'ACTUALIZACION', '2017-02-23 16:49:30');
INSERT INTO `log_convocatoria` VALUES ('508', '022-II', '1', '2017-02-06 10:21:13', 'Personal de secretaria', '3', null, 'admin', 'ACTUALIZACION', '2017-02-23 16:49:43');
INSERT INTO `log_convocatoria` VALUES ('509', '025-II', '3', '2017-02-06 10:24:34', 'Psicólogos o Trabajadores Sociales', '3', null, 'admin', 'ACTUALIZACION', '2017-02-23 16:49:59');
INSERT INTO `log_convocatoria` VALUES ('510', '025-I-2017', '2', '2017-01-25 15:29:57', 'Psicólogos o Trabajadores Sociales', '3', null, 'admin', 'ACTUALIZACION', '2017-02-23 16:50:32');
INSERT INTO `log_convocatoria` VALUES ('511', '023-I-2017', '1', '2017-01-25 15:28:25', 'Coordinador de Innovación de Soporte Tecnológico', '3', null, 'admin', 'ACTUALIZACION', '2017-02-23 16:50:44');
INSERT INTO `log_convocatoria` VALUES ('512', '022-I-2017', '4', '2017-01-25 15:27:28', 'Personal de secretaria', '3', null, 'admin', 'ACTUALIZACION', '2017-02-23 16:51:08');
INSERT INTO `log_convocatoria` VALUES ('513', '21-III', '1', '2017-02-24 14:36:06', 'Personal de vigilancia', '1', null, 'admin', 'REGISTRO', '2017-02-24 14:36:06');
INSERT INTO `log_convocatoria` VALUES ('514', '021-III', '1', '2017-02-24 14:36:06', 'Personal de vigilancia', '1', null, 'admin', 'ACTUALIZACION', '2017-02-24 14:36:34');
INSERT INTO `log_convocatoria` VALUES ('515', '023-III', '1', '2017-02-24 14:37:24', 'Coordinador de Innovación y Soporte Tecnológico', '1', null, 'admin', 'REGISTRO', '2017-02-24 14:37:24');
INSERT INTO `log_convocatoria` VALUES ('516', '27-III', '1', '2017-02-24 14:38:14', 'Acompañantes Pedagógicos de Primaria', '1', null, 'admin', 'REGISTRO', '2017-02-24 14:38:14');
INSERT INTO `log_convocatoria` VALUES ('517', '031-I', '1', '2017-02-17 07:37:50', 'Gestor Local', '2', null, 'admin', 'ACTUALIZACION', '2017-02-24 17:48:18');
INSERT INTO `log_convocatoria` VALUES ('518', '031-I', '1', '2017-02-17 07:37:50', 'Gestor Local', '3', null, 'admin', 'ACTUALIZACION', '2017-02-28 09:19:18');
INSERT INTO `log_convocatoria` VALUES ('519', '033-I', '1', '2017-02-21 10:55:16', 'Abogado para secretaría técnica', '1', null, 'admin', 'ACTUALIZACION', '2017-03-01 22:58:31');
INSERT INTO `log_convocatoria` VALUES ('520', '033-I', '1', '2017-02-21 10:55:16', 'Abogado para secretaría técnica', '3', null, 'admin', 'ACTUALIZACION', '2017-03-01 22:58:34');
INSERT INTO `log_convocatoria` VALUES ('521', '032-I', '1', '2017-02-21 10:54:35', 'Técnico administrativo', '2', null, 'admin', 'ACTUALIZACION', '2017-03-03 16:08:40');
INSERT INTO `log_convocatoria` VALUES ('522', '021-III', '1', '2017-02-24 14:36:06', 'Personal de vigilancia', '2', null, 'admin', 'ACTUALIZACION', '2017-03-06 17:10:47');
INSERT INTO `log_convocatoria` VALUES ('523', '023-III', '1', '2017-02-24 14:37:24', 'Coordinador de Innovación y Soporte Tecnológico', '2', null, 'admin', 'ACTUALIZACION', '2017-03-06 17:10:58');
INSERT INTO `log_convocatoria` VALUES ('524', '27-III', '1', '2017-02-24 14:38:14', 'Acompañantes Pedagógicos de Primaria', '2', null, 'admin', 'ACTUALIZACION', '2017-03-06 17:11:24');
INSERT INTO `log_convocatoria` VALUES ('525', '032-I', '1', '2017-02-21 10:54:35', 'Técnico administrativo', '3', null, 'admin', 'ACTUALIZACION', '2017-03-07 16:12:36');
INSERT INTO `log_convocatoria` VALUES ('526', '021-III', '1', '2017-02-24 14:36:06', 'Personal de vigilancia', '3', null, 'admin', 'ACTUALIZACION', '2017-03-08 15:18:11');
INSERT INTO `log_convocatoria` VALUES ('527', '023-III', '1', '2017-02-24 14:37:24', 'Coordinador de Innovación y Soporte Tecnológico', '3', null, 'admin', 'ACTUALIZACION', '2017-03-08 15:18:21');
INSERT INTO `log_convocatoria` VALUES ('528', '27-III', '1', '2017-02-24 14:38:14', 'Acompañantes Pedagógicos de Primaria', '3', null, 'admin', 'ACTUALIZACION', '2017-03-08 15:18:33');
INSERT INTO `log_convocatoria` VALUES ('529', '035-I', '1', '2017-03-09 18:01:33', 'Técnico administrativo', '1', null, 'admin', 'REGISTRO', '2017-03-09 18:01:33');
INSERT INTO `log_convocatoria` VALUES ('530', '036-I', '1', '2017-03-09 18:02:09', 'Asesor de Dirección', '1', null, 'admin', 'REGISTRO', '2017-03-09 18:02:09');
INSERT INTO `log_convocatoria` VALUES ('531', '037-I', '1', '2017-03-09 18:02:48', 'Técnico administrativo para APAFA', '1', null, 'admin', 'REGISTRO', '2017-03-09 18:02:48');
INSERT INTO `log_convocatoria` VALUES ('532', '038-I', '1', '2017-03-09 18:03:19', 'Abogado', '1', null, 'admin', 'REGISTRO', '2017-03-09 18:03:19');
INSERT INTO `log_convocatoria` VALUES ('533', '039-I', '1', '2017-03-09 18:03:54', 'Especialista en Educación', '1', null, 'admin', 'REGISTRO', '2017-03-09 18:03:54');
INSERT INTO `log_convocatoria` VALUES ('534', '040-I', '1', '2017-03-09 18:04:38', 'Técnico administrativo en Escalafón', '1', null, 'admin', 'REGISTRO', '2017-03-09 18:04:38');
INSERT INTO `log_convocatoria` VALUES ('535', '021-I', '11', '2017-03-13 16:09:21', 'Personales de vigilancia', '1', null, 'admin', 'REGISTRO', '2017-03-13 16:09:21');
INSERT INTO `log_convocatoria` VALUES ('536', '021-IV', '11', '2017-03-13 16:09:40', 'Personales de vigilancia', '1', null, 'admin', 'REGISTRO', '2017-03-13 16:09:40');
INSERT INTO `log_convocatoria` VALUES ('537', '022-III', '1', '2017-03-13 16:11:26', 'Personal de secretaria', '1', null, 'admin', 'REGISTRO', '2017-03-13 16:11:26');
INSERT INTO `log_convocatoria` VALUES ('538', '023-IV', '4', '2017-03-13 16:12:59', 'Coordinador de Innovación y Soporte Tecnológico', '1', null, 'admin', 'REGISTRO', '2017-03-13 16:12:59');
INSERT INTO `log_convocatoria` VALUES ('539', '021-I', '11', '2017-03-13 16:09:21', 'Personales de vigilancia', '1', 'admin', 'admin', 'ELIMINACION', '2017-03-13 16:13:38');
INSERT INTO `log_convocatoria` VALUES ('540', '024-III', '2', '2017-03-13 16:14:16', 'Personales de apoyo educativo', '1', null, 'admin', 'REGISTRO', '2017-03-13 16:14:16');
INSERT INTO `log_convocatoria` VALUES ('541', '034-I', '1', '2017-03-14 18:11:18', 'Especialista para la gestión del incremento en el acceso', '1', null, 'admin', 'REGISTRO', '2017-03-14 18:11:18');
INSERT INTO `log_convocatoria` VALUES ('542', '027-IV', '1', '2017-03-16 16:08:21', 'Acompañante pedagógico de primaria', '1', null, 'admin', 'REGISTRO', '2017-03-16 16:08:21');
INSERT INTO `log_convocatoria` VALUES ('543', '024-IV', '1', '2017-03-16 16:09:08', 'Personal de apoyo educativo', '1', null, 'admin', 'REGISTRO', '2017-03-16 16:09:08');
INSERT INTO `log_convocatoria` VALUES ('544', '022-IV', '1', '2017-03-16 16:09:39', 'Personal de secretaria', '1', null, 'admin', 'REGISTRO', '2017-03-16 16:09:39');
INSERT INTO `log_convocatoria` VALUES ('545', '021-V', '3', '2017-03-16 16:10:14', 'Personales de vigilancia', '1', null, 'admin', 'REGISTRO', '2017-03-16 16:10:14');
INSERT INTO `log_convocatoria` VALUES ('546', '039-I', '1', '2017-03-09 18:03:54', 'Especialista en Educación', '2', null, 'admin', 'ACTUALIZACION', '2017-03-17 19:14:45');
INSERT INTO `log_convocatoria` VALUES ('547', '038-I', '1', '2017-03-09 18:03:19', 'Abogado', '2', null, 'admin', 'ACTUALIZACION', '2017-03-17 19:14:59');
INSERT INTO `log_convocatoria` VALUES ('548', '037-I', '1', '2017-03-09 18:02:48', 'Técnico administrativo para APAFA', '2', null, 'admin', 'ACTUALIZACION', '2017-03-17 19:15:11');
INSERT INTO `log_convocatoria` VALUES ('549', '036-I', '1', '2017-03-09 18:02:09', 'Asesor de Dirección', '2', null, 'admin', 'ACTUALIZACION', '2017-03-17 19:15:21');
INSERT INTO `log_convocatoria` VALUES ('550', '035-I', '1', '2017-03-09 18:01:33', 'Técnico administrativo', '2', null, 'admin', 'ACTUALIZACION', '2017-03-17 19:15:32');
INSERT INTO `log_convocatoria` VALUES ('551', '040-I', '1', '2017-03-09 18:04:38', 'Técnico administrativo en Escalafón', '2', null, 'admin', 'ACTUALIZACION', '2017-03-17 19:16:31');
INSERT INTO `log_convocatoria` VALUES ('552', '024-III', '2', '2017-03-13 16:14:16', 'Personales de apoyo educativo', '2', null, 'admin', 'ACTUALIZACION', '2017-03-20 12:07:33');
INSERT INTO `log_convocatoria` VALUES ('553', '023-IV', '4', '2017-03-13 16:12:59', 'Coordinador de Innovación y Soporte Tecnológico', '2', null, 'admin', 'ACTUALIZACION', '2017-03-20 12:08:18');
INSERT INTO `log_convocatoria` VALUES ('554', '021-IV', '11', '2017-03-13 16:09:40', 'Personales de vigilancia', '2', null, 'admin', 'ACTUALIZACION', '2017-03-20 12:09:37');
INSERT INTO `log_convocatoria` VALUES ('555', '022-III', '1', '2017-03-13 16:11:26', 'Personal de secretaria', '2', null, 'admin', 'ACTUALIZACION', '2017-03-20 12:13:34');
INSERT INTO `log_convocatoria` VALUES ('556', '022-III', '1', '2017-03-13 16:11:26', 'Personal de secretaria', '3', null, 'admin', 'ACTUALIZACION', '2017-03-20 12:13:39');
INSERT INTO `log_convocatoria` VALUES ('557', '040-I', '1', '2017-03-09 18:04:38', 'Técnico administrativo en Escalafón', '3', null, 'admin', 'ACTUALIZACION', '2017-03-21 16:58:59');
INSERT INTO `log_convocatoria` VALUES ('558', '039-I', '1', '2017-03-09 18:03:54', 'Especialista en Educación', '3', null, 'admin', 'ACTUALIZACION', '2017-03-21 16:59:43');
INSERT INTO `log_convocatoria` VALUES ('559', '038-I', '1', '2017-03-09 18:03:19', 'Abogado', '3', null, 'admin', 'ACTUALIZACION', '2017-03-21 17:00:00');
INSERT INTO `log_convocatoria` VALUES ('560', '038-I', '1', '2017-03-09 18:03:19', 'Abogado', '3', null, 'admin', 'ACTUALIZACION', '2017-03-21 17:02:02');
INSERT INTO `log_convocatoria` VALUES ('561', '041-I', '1', '2017-03-21 17:03:17', 'Técnico administrativo', '1', null, 'admin', 'REGISTRO', '2017-03-21 17:03:17');
INSERT INTO `log_convocatoria` VALUES ('562', '037-I', '1', '2017-03-09 18:02:48', 'Técnico administrativo para APAFA', '3', null, 'admin', 'ACTUALIZACION', '2017-03-21 18:38:05');
INSERT INTO `log_convocatoria` VALUES ('563', '036-I', '1', '2017-03-09 18:02:09', 'Asesor de Dirección', '3', null, 'admin', 'ACTUALIZACION', '2017-03-21 18:38:18');
INSERT INTO `log_convocatoria` VALUES ('564', '035-I', '1', '2017-03-09 18:01:33', 'Técnico administrativo', '3', null, 'admin', 'ACTUALIZACION', '2017-03-21 18:38:31');
INSERT INTO `log_convocatoria` VALUES ('565', '024-III', '2', '2017-03-13 16:14:16', 'Personales de apoyo educativo', '3', null, 'admin', 'ACTUALIZACION', '2017-03-22 16:02:47');
INSERT INTO `log_convocatoria` VALUES ('566', '021-IV', '11', '2017-03-13 16:09:40', 'Personales de vigilancia', '3', null, 'admin', 'ACTUALIZACION', '2017-03-22 16:03:08');
INSERT INTO `log_convocatoria` VALUES ('567', '034-I', '1', '2017-03-14 18:11:18', 'Especialista para la gestión del incremento en el acceso', '2', null, 'admin', 'ACTUALIZACION', '2017-03-22 16:03:43');
INSERT INTO `log_convocatoria` VALUES ('568', '024-IV', '1', '2017-03-16 16:09:08', 'Personal de apoyo educativo', '2', null, 'admin', 'ACTUALIZACION', '2017-03-23 15:42:40');
INSERT INTO `log_convocatoria` VALUES ('569', '021-V', '3', '2017-03-16 16:10:14', 'Personales de vigilancia', '2', null, 'admin', 'ACTUALIZACION', '2017-03-23 15:43:10');
INSERT INTO `log_convocatoria` VALUES ('570', '022-IV', '1', '2017-03-16 16:09:39', 'Personal de secretaria', '2', null, 'admin', 'ACTUALIZACION', '2017-03-23 15:49:05');
INSERT INTO `log_convocatoria` VALUES ('571', '027-IV', '1', '2017-03-16 16:08:21', 'Acompañante pedagógico de primaria', '2', null, 'admin', 'ACTUALIZACION', '2017-03-23 22:33:46');
INSERT INTO `log_convocatoria` VALUES ('572', '024-IV', '1', '2017-03-16 16:09:08', 'Personal de apoyo educativo', '3', null, 'admin', 'ACTUALIZACION', '2017-03-24 18:04:52');
INSERT INTO `log_convocatoria` VALUES ('573', '021-V', '3', '2017-03-16 16:10:14', 'Personales de vigilancia', '3', null, 'admin', 'ACTUALIZACION', '2017-03-24 18:05:02');
INSERT INTO `log_convocatoria` VALUES ('574', '023-IV', '4', '2017-03-13 16:12:59', 'Coordinador de Innovación y Soporte Tecnológico', '3', null, 'admin', 'ACTUALIZACION', '2017-03-24 18:05:24');
INSERT INTO `log_convocatoria` VALUES ('575', '034-I', '1', '2017-03-14 18:11:18', 'Especialista para la gestión del incremento en el acceso', '3', null, 'admin', 'ACTUALIZACION', '2017-03-24 21:51:27');
INSERT INTO `log_convocatoria` VALUES ('576', '027-IV', '1', '2017-03-16 16:08:21', 'Acompañante pedagógico de primaria', '3', null, 'admin', 'ACTUALIZACION', '2017-03-24 21:52:49');
INSERT INTO `log_convocatoria` VALUES ('577', '022-IV', '1', '2017-03-16 16:09:39', 'Personal de secretaria', '3', null, 'admin', 'ACTUALIZACION', '2017-03-30 16:30:53');
INSERT INTO `log_convocatoria` VALUES ('578', '029-II', '2', '2017-03-30 16:32:24', 'Coordinadores administrativos y de recursos educativos', '1', null, 'admin', 'REGISTRO', '2017-03-30 16:32:24');
INSERT INTO `log_convocatoria` VALUES ('579', '042-I', '1', '2017-03-30 16:33:32', 'Técnico administrativo', '1', null, 'admin', 'REGISTRO', '2017-03-30 16:33:33');
INSERT INTO `log_convocatoria` VALUES ('580', '041-I', '1', '2017-03-21 17:03:17', 'Técnico administrativo', '2', null, 'admin', 'ACTUALIZACION', '2017-03-30 16:33:51');
INSERT INTO `log_convocatoria` VALUES ('581', '024-V', '2', '2017-04-01 00:01:01', 'Personales se apoyo educativo', '1', null, 'admin', 'REGISTRO', '2017-04-01 00:01:01');
INSERT INTO `log_convocatoria` VALUES ('582', '024-V', '2', '2017-04-01 00:01:01', 'Personales de apoyo educativo', '1', null, 'admin', 'ACTUALIZACION', '2017-04-01 00:02:31');
INSERT INTO `log_convocatoria` VALUES ('583', '041-I', '1', '2017-03-21 17:03:17', 'Técnico administrativo', '3', null, 'admin', 'ACTUALIZACION', '2017-04-01 00:03:11');
INSERT INTO `log_convocatoria` VALUES ('584', '043-I', '1', '2017-04-03 18:16:35', 'Analista de racionalización', '1', null, 'admin', 'REGISTRO', '2017-04-03 18:16:35');
INSERT INTO `log_convocatoria` VALUES ('585', '044-I', '13', '2017-04-03 18:17:33', 'Docentes responsables de núcleo', '1', null, 'admin', 'REGISTRO', '2017-04-03 18:17:33');
INSERT INTO `log_convocatoria` VALUES ('586', '029-II', '2', '2017-03-30 16:32:24', 'Coordinadores administrativos y de recursos educativos', '3', null, 'admin', 'ACTUALIZACION', '2017-04-06 16:06:29');
INSERT INTO `log_convocatoria` VALUES ('587', '045-I', '1', '2017-04-06 16:12:02', 'Profesional en Educación', '1', null, 'admin', 'REGISTRO', '2017-04-06 16:12:02');
INSERT INTO `log_convocatoria` VALUES ('588', '029-II', '2', '2017-03-30 16:32:24', 'Coordinadores administrativos y de recursos educativos', '2', null, 'admin', 'ACTUALIZACION', '2017-04-06 17:21:29');
INSERT INTO `log_convocatoria` VALUES ('589', '042-I', '1', '2017-03-30 16:33:32', 'Técnico administrativo', '3', null, 'admin', 'ACTUALIZACION', '2017-04-07 18:24:46');
INSERT INTO `log_convocatoria` VALUES ('590', '024-V', '2', '2017-04-01 00:01:01', 'Personales de apoyo educativo', '2', null, 'admin', 'ACTUALIZACION', '2017-04-10 17:37:19');
INSERT INTO `log_convocatoria` VALUES ('591', '029-II', '2', '2017-03-30 16:32:24', 'Coordinadores administrativos y de recursos educativos', '3', null, 'admin', 'ACTUALIZACION', '2017-04-10 22:09:25');
INSERT INTO `log_convocatoria` VALUES ('592', '044-I', '13', '2017-04-03 18:17:33', 'Docentes responsables de núcleo', '2', null, 'admin', 'ACTUALIZACION', '2017-04-11 22:48:53');
INSERT INTO `log_convocatoria` VALUES ('593', '043-I', '1', '2017-04-03 18:16:35', 'Analista de racionalización', '2', null, 'admin', 'ACTUALIZACION', '2017-04-11 22:50:06');
INSERT INTO `log_convocatoria` VALUES ('594', '044-I', '13', '2017-04-03 18:17:33', 'Docentes responsables de núcleo', '3', null, 'admin', 'ACTUALIZACION', '2017-04-13 08:57:32');
INSERT INTO `log_convocatoria` VALUES ('595', '043-I', '1', '2017-04-03 18:16:35', 'Analista de racionalización', '3', null, 'admin', 'ACTUALIZACION', '2017-04-13 08:57:48');
INSERT INTO `log_convocatoria` VALUES ('596', '024-V', '2', '2017-04-01 00:01:01', 'Personales de apoyo educativo', '3', null, 'admin', 'ACTUALIZACION', '2017-04-13 08:59:24');
INSERT INTO `log_convocatoria` VALUES ('597', '024-V', '2', '2017-04-01 00:01:01', 'Personales de apoyo educativo', '3', null, 'admin', 'ACTUALIZACION', '2017-04-13 08:59:29');
INSERT INTO `log_convocatoria` VALUES ('598', '046-I', '1', '2017-04-13 09:41:20', 'Abogado para Secretaría Técnica', '1', null, 'admin', 'REGISTRO', '2017-04-13 09:41:20');
INSERT INTO `log_convocatoria` VALUES ('599', '047-I', '1', '2017-04-13 09:42:40', 'Técnico administrativo orientador', '1', null, 'admin', 'REGISTRO', '2017-04-13 09:42:40');
INSERT INTO `log_convocatoria` VALUES ('600', '045-I', '1', '2017-04-06 16:12:02', 'Profesional en Educación', '2', null, 'admin', 'ACTUALIZACION', '2017-04-18 22:08:28');
INSERT INTO `log_convocatoria` VALUES ('601', '045-I', '1', '2017-04-06 16:12:02', 'Profesional en Educación', '3', null, 'admin', 'ACTUALIZACION', '2017-04-19 17:23:00');
INSERT INTO `log_convocatoria` VALUES ('602', '048-I', '2', '2017-04-19 17:24:13', 'Modelos lingüísticos de lengua de señas peruana para EBR/EBA', '1', null, 'admin', 'REGISTRO', '2017-04-19 17:24:13');
INSERT INTO `log_convocatoria` VALUES ('603', '049-I', '2', '2017-04-19 17:25:48', 'Intérpretes de lengua de señas peruana para EBR/EBA', '1', null, 'admin', 'REGISTRO', '2017-04-19 17:25:48');
INSERT INTO `log_convocatoria` VALUES ('604', '050-I', '2', '2017-04-19 17:27:05', 'Profesionales no docentes: Terapistas ocupacionales para CEBE', '1', null, 'admin', 'REGISTRO', '2017-04-19 17:27:05');
INSERT INTO `log_convocatoria` VALUES ('605', '027-V', '2', '2017-04-20 18:05:29', 'Acompañante pedagógico de primaria', '1', null, 'admin', 'REGISTRO', '2017-04-20 18:05:29');
INSERT INTO `log_convocatoria` VALUES ('606', '025-III', '1', '2017-04-20 18:06:38', 'Psicólogos o Trabajadores Sociales', '1', null, 'admin', 'REGISTRO', '2017-04-20 18:06:38');
INSERT INTO `log_convocatoria` VALUES ('607', '046-I', '1', '2017-04-13 09:41:20', 'Abogado para Secretaría Técnica', '2', null, 'admin', 'ACTUALIZACION', '2017-04-24 23:25:16');
INSERT INTO `log_convocatoria` VALUES ('608', '047-I', '1', '2017-04-13 09:42:40', 'Técnico administrativo orientador', '2', null, 'admin', 'ACTUALIZACION', '2017-04-24 23:25:35');
INSERT INTO `log_convocatoria` VALUES ('609', '047-I', '1', '2017-04-13 09:42:40', 'Técnico administrativo orientador', '3', null, 'admin', 'ACTUALIZACION', '2017-04-26 11:27:50');
INSERT INTO `log_convocatoria` VALUES ('610', '046-I', '1', '2017-04-13 09:41:20', 'Abogado para Secretaría Técnica', '3', null, 'admin', 'ACTUALIZACION', '2017-04-26 22:27:33');
INSERT INTO `log_convocatoria` VALUES ('611', '051-I', '1', '2017-04-27 10:45:44', 'Técnico administrativo', '1', null, 'admin', 'REGISTRO', '2017-04-27 10:45:44');
INSERT INTO `log_convocatoria` VALUES ('612', '050-I', '2', '2017-04-19 17:27:05', 'Profesionales no docentes: Terapistas ocupacionales para CEBE', '3', null, 'admin', 'ACTUALIZACION', '2017-04-27 23:25:12');
INSERT INTO `log_convocatoria` VALUES ('613', '050-I', '2', '2017-04-19 17:27:05', 'Profesionales no docentes: Terapistas ocupacionales para CEBE', '3', null, 'admin', 'ACTUALIZACION', '2017-04-27 23:25:17');
INSERT INTO `log_convocatoria` VALUES ('614', '049-I', '2', '2017-04-19 17:25:48', 'Intérpretes de lengua de señas peruana para EBR/EBA', '2', null, 'admin', 'ACTUALIZACION', '2017-04-27 23:25:28');
INSERT INTO `log_convocatoria` VALUES ('615', '048-I', '2', '2017-04-19 17:24:13', 'Modelos lingüísticos de lengua de señas peruana para EBR/EBA', '2', null, 'admin', 'ACTUALIZACION', '2017-04-27 23:25:40');
INSERT INTO `log_convocatoria` VALUES ('616', '048-I', '2', '2017-04-19 17:24:13', 'Modelos lingüísticos de lengua de señas peruana para EBR/EBA', '2', null, 'admin', 'ACTUALIZACION', '2017-04-27 23:25:43');
INSERT INTO `log_convocatoria` VALUES ('617', '027-V', '2', '2017-04-20 18:05:29', 'Acompañante pedagógico de primaria', '3', null, 'admin', 'ACTUALIZACION', '2017-04-29 01:45:53');
INSERT INTO `log_convocatoria` VALUES ('618', '027-V', '2', '2017-04-20 18:05:29', 'Acompañante pedagógico de primaria', '2', null, 'admin', 'ACTUALIZACION', '2017-04-29 01:46:41');
INSERT INTO `log_convocatoria` VALUES ('619', '025-III', '1', '2017-04-20 18:06:38', 'Psicólogos o Trabajadores Sociales', '2', null, 'admin', 'ACTUALIZACION', '2017-04-29 01:47:58');
INSERT INTO `log_convocatoria` VALUES ('620', '025-III', '1', '2017-04-20 18:06:38', 'Psicólogos o Trabajadores Sociales', '2', null, 'admin', 'ACTUALIZACION', '2017-04-29 01:48:05');
INSERT INTO `log_convocatoria` VALUES ('621', '049-I', '2', '2017-04-19 17:25:48', 'Intérpretes de lengua de señas peruana para EBR/EBA', '3', null, 'admin', 'ACTUALIZACION', '2017-04-29 01:49:47');
INSERT INTO `log_convocatoria` VALUES ('622', '048-I', '2', '2017-04-19 17:24:13', 'Modelos lingüísticos de lengua de señas peruana para EBR/EBA', '3', null, 'admin', 'ACTUALIZACION', '2017-04-29 01:50:53');
INSERT INTO `log_convocatoria` VALUES ('623', '027-V', '2', '2017-04-20 18:05:29', 'Acompañante pedagógico de primaria', '3', null, 'admin', 'ACTUALIZACION', '2017-05-03 23:42:08');
INSERT INTO `log_convocatoria` VALUES ('624', '025-III', '1', '2017-04-20 18:06:38', 'Psicólogos o Trabajadores Sociales', '3', null, 'admin', 'ACTUALIZACION', '2017-05-03 23:42:52');
INSERT INTO `log_convocatoria` VALUES ('625', '025-III', '1', '2017-04-20 18:06:38', 'Psicólogos o Trabajadores Sociales', '3', null, 'admin', 'ACTUALIZACION', '2017-05-03 23:42:55');
INSERT INTO `log_convocatoria` VALUES ('626', '024-VI', '1', '2017-05-03 23:50:24', 'Personal de apoyo educativo', '1', null, 'admin', 'REGISTRO', '2017-05-03 23:50:24');
INSERT INTO `log_convocatoria` VALUES ('627', '053-I', '1', '2017-05-04 00:02:17', 'Abogado', '1', null, 'admin', 'REGISTRO', '2017-05-04 00:02:17');
INSERT INTO `log_convocatoria` VALUES ('628', '052-I', '1', '2017-05-04 00:03:55', 'Técnico administrativo', '1', null, 'admin', 'REGISTRO', '2017-05-04 00:03:56');
INSERT INTO `log_convocatoria` VALUES ('629', '054-I', '1', '2017-05-04 17:14:34', 'Personal de secretaria', '1', null, 'admin', 'REGISTRO', '2017-05-04 17:14:34');
INSERT INTO `log_convocatoria` VALUES ('630', '055-I', '13', '2017-05-05 19:17:33', 'Docentes Responsables de Núcleo', '1', null, 'admin', 'REGISTRO', '2017-05-05 19:17:33');
INSERT INTO `log_convocatoria` VALUES ('631', '051-I', '1', '2017-04-27 10:45:44', 'Técnico administrativo', '2', null, 'admin', 'ACTUALIZACION', '2017-05-08 17:33:50');
INSERT INTO `log_convocatoria` VALUES ('632', '056-I', '1', '2017-05-10 22:24:00', 'Técnico administrativo', '1', null, 'admin', 'REGISTRO', '2017-05-10 22:24:00');
INSERT INTO `log_convocatoria` VALUES ('633', '057-I', '1', '2017-05-10 22:25:37', 'Técnico administrativo legal', '1', null, 'admin', 'REGISTRO', '2017-05-10 22:25:37');
INSERT INTO `log_convocatoria` VALUES ('634', '058-I', '1', '2017-05-10 22:27:04', 'Auditor - Contador Público', '1', null, 'admin', 'REGISTRO', '2017-05-10 22:27:04');
INSERT INTO `log_convocatoria` VALUES ('635', '059-I', '1', '2017-05-10 22:29:34', 'Técnico administrativo', '1', null, 'admin', 'REGISTRO', '2017-05-10 22:29:34');
INSERT INTO `log_convocatoria` VALUES ('636', '051-I', '1', '2017-04-27 10:45:44', 'Técnico administrativo', '3', null, 'admin', 'ACTUALIZACION', '2017-05-11 08:20:03');
INSERT INTO `log_convocatoria` VALUES ('637', '052-I', '1', '2017-05-04 00:03:55', 'Técnico administrativo', '2', null, 'admin', 'ACTUALIZACION', '2017-05-11 12:44:23');
INSERT INTO `log_convocatoria` VALUES ('638', '024-VI', '1', '2017-05-03 23:50:24', 'Personal de apoyo educativo', '2', null, 'admin', 'ACTUALIZACION', '2017-05-11 23:18:56');
INSERT INTO `log_convocatoria` VALUES ('639', '054-I', '1', '2017-05-04 17:14:34', 'Personal de secretaria', '2', null, 'admin', 'ACTUALIZACION', '2017-05-11 23:19:19');
INSERT INTO `log_convocatoria` VALUES ('640', '055-I', '13', '2017-05-05 19:17:33', 'Docentes Responsables de Núcleo', '1', null, 'admin', 'ACTUALIZACION', '2017-05-11 23:20:07');
INSERT INTO `log_convocatoria` VALUES ('641', '024-VI', '1', '2017-05-03 23:50:24', 'Personal de apoyo educativo', '3', null, 'admin', 'ACTUALIZACION', '2017-05-13 03:40:35');
INSERT INTO `log_convocatoria` VALUES ('642', '054-I', '1', '2017-05-04 17:14:34', 'Personal de secretaria', '3', null, 'admin', 'ACTUALIZACION', '2017-05-15 23:03:30');
INSERT INTO `log_convocatoria` VALUES ('643', '053-I', '1', '2017-05-04 00:02:17', 'Abogado', '2', null, 'admin', 'ACTUALIZACION', '2017-05-16 16:38:21');
INSERT INTO `log_convocatoria` VALUES ('644', '052-I', '1', '2017-05-04 00:03:55', 'Técnico administrativo', '3', null, 'admin', 'ACTUALIZACION', '2017-05-16 16:38:30');
INSERT INTO `log_convocatoria` VALUES ('645', 'P005-I', '1', '2017-05-17 08:05:38', 'Practicante Pre Profesional para el Equipo de Contabilidad', '1', null, 'admin', 'REGISTRO', '2017-05-17 08:05:38');
INSERT INTO `log_convocatoria` VALUES ('646', '059-I', '1', '2017-05-10 22:29:34', 'Técnico administrativo', '3', null, 'admin', 'ACTUALIZACION', '2017-05-18 21:04:53');
INSERT INTO `log_convocatoria` VALUES ('647', '053-I', '1', '2017-05-04 00:02:17', 'Abogado', '3', null, 'admin', 'ACTUALIZACION', '2017-05-18 21:05:34');
INSERT INTO `log_convocatoria` VALUES ('648', '058-I', '1', '2017-05-10 22:27:04', 'Auditor - Contador Público', '2', null, 'admin', 'ACTUALIZACION', '2017-05-18 21:06:56');
INSERT INTO `log_convocatoria` VALUES ('649', '057-I', '1', '2017-05-10 22:25:37', 'Técnico administrativo legal', '2', null, 'admin', 'ACTUALIZACION', '2017-05-18 21:07:23');
INSERT INTO `log_convocatoria` VALUES ('650', '056-I', '1', '2017-05-10 22:24:00', 'Técnico administrativo', '2', null, 'admin', 'ACTUALIZACION', '2017-05-18 21:07:54');
INSERT INTO `log_convocatoria` VALUES ('651', 'P005-I', '1', '2017-05-17 08:05:38', 'Practicante Pre Profesional para el Equipo de Contabilidad', '2', null, 'admin', 'ACTUALIZACION', '2017-05-22 17:23:04');
INSERT INTO `log_convocatoria` VALUES ('652', '056-I', '1', '2017-05-10 22:24:00', 'Técnico administrativo', '3', null, 'admin', 'ACTUALIZACION', '2017-05-23 17:25:06');
INSERT INTO `log_convocatoria` VALUES ('653', '057-I', '1', '2017-05-10 22:25:37', 'Técnico administrativo legal', '3', null, 'admin', 'ACTUALIZACION', '2017-05-23 17:25:23');
INSERT INTO `log_convocatoria` VALUES ('654', '058-I', '1', '2017-05-10 22:27:04', 'Auditor - Contador Público', '3', null, 'admin', 'ACTUALIZACION', '2017-05-23 17:25:41');
INSERT INTO `log_convocatoria` VALUES ('655', '048--II', '1', '2017-05-23 17:26:42', 'Modelos lingüísticos de lengua de señas peruana para EBR/EBA', '1', null, 'admin', 'REGISTRO', '2017-05-23 17:26:42');
INSERT INTO `log_convocatoria` VALUES ('656', '050-II', '2', '2017-05-23 17:27:37', 'Profesionales no docentes: Terapistas ocupacionales para CEBE', '1', null, 'admin', 'REGISTRO', '2017-05-23 17:27:37');
INSERT INTO `log_convocatoria` VALUES ('657', 'P005-I', '1', '2017-05-17 08:05:38', 'Practicante Pre Profesional para el Equipo de Contabilidad', '3', null, 'admin', 'ACTUALIZACION', '2017-05-24 17:23:59');
INSERT INTO `log_convocatoria` VALUES ('658', '021-VI', '2', '2017-05-24 17:25:06', 'Personales de vigilancia', '1', null, 'admin', 'REGISTRO', '2017-05-24 17:25:06');
INSERT INTO `log_convocatoria` VALUES ('659', '055-I', '13', '2017-05-05 19:17:33', 'Docentes Responsables de Núcleo', '3', null, 'admin', 'ACTUALIZACION', '2017-05-30 10:23:43');
INSERT INTO `log_convocatoria` VALUES ('660', '027-VI', '1', '2017-05-30 10:59:20', 'Acompañante pedagógico de primaria', '1', null, 'admin', 'REGISTRO', '2017-05-30 10:59:20');
INSERT INTO `log_convocatoria` VALUES ('661', '048--II', '1', '2017-05-23 17:26:42', 'Modelos lingüísticos de lengua de señas peruana para EBR/EBA', '2', null, 'admin', 'ACTUALIZACION', '2017-05-31 21:34:37');
INSERT INTO `log_convocatoria` VALUES ('662', '021-VI', '2', '2017-05-24 17:25:06', 'Personales de vigilancia', '2', null, 'admin', 'ACTUALIZACION', '2017-06-01 22:55:09');
INSERT INTO `log_convocatoria` VALUES ('663', '048--II', '1', '2017-05-23 17:26:42', 'Modelos lingüísticos de lengua de señas peruana para EBR/EBA', '3', null, 'admin', 'ACTUALIZACION', '2017-06-02 12:14:50');
INSERT INTO `log_convocatoria` VALUES ('664', '050-II', '2', '2017-05-23 17:27:37', 'Profesionales no docentes: Terapistas ocupacionales para CEBE', '1', null, 'admin', 'ACTUALIZACION', '2017-06-05 15:05:52');
INSERT INTO `log_convocatoria` VALUES ('665', '050-II', '2', '2017-05-23 17:27:37', 'Profesionales no docentes: Terapistas ocupacionales para CEBE', '1', null, 'admin', 'ACTUALIZACION', '2017-06-05 15:06:29');
INSERT INTO `log_convocatoria` VALUES ('666', '050-II', '2', '2017-05-23 17:27:37', 'Profesionales no docentes: Terapistas ocupacionales para CEBE', '1', null, 'admin', 'ACTUALIZACION', '2017-06-05 15:15:41');
INSERT INTO `log_convocatoria` VALUES ('667', '050-II', '2', '2017-05-23 17:27:37', 'Profesionales no docentes: Terapistas ocupacionales para CEBE', '3', null, 'admin', 'ACTUALIZACION', '2017-06-05 15:15:54');
INSERT INTO `log_convocatoria` VALUES ('668', '021-VI', '2', '2017-05-24 17:25:06', 'Personales de vigilancia', '3', null, 'admin', 'ACTUALIZACION', '2017-06-05 23:19:21');
INSERT INTO `log_convocatoria` VALUES ('669', '027-VI', '1', '2017-05-30 10:59:20', 'Acompañante pedagógico de primaria', '2', null, 'admin', 'ACTUALIZACION', '2017-06-07 16:24:49');
INSERT INTO `log_convocatoria` VALUES ('670', '054-II', '1', '2017-06-07 16:28:31', 'Personal de secretaria', '1', null, 'admin', 'REGISTRO', '2017-06-07 16:28:31');
INSERT INTO `log_convocatoria` VALUES ('671', '027-VI', '1', '2017-05-30 10:59:20', 'Acompañante pedagógico de primaria', '3', null, 'admin', 'ACTUALIZACION', '2017-06-09 17:49:19');
INSERT INTO `log_convocatoria` VALUES ('672', '027-VI', '1', '2017-05-30 10:59:20', 'Acompañante pedagógico de primaria', '3', null, 'admin', 'ACTUALIZACION', '2017-06-09 17:49:22');
INSERT INTO `log_convocatoria` VALUES ('673', '060-I', '1', '2017-06-09 17:49:45', 'Abogado', '1', null, 'admin', 'REGISTRO', '2017-06-09 17:49:45');
INSERT INTO `log_convocatoria` VALUES ('674', '031-II', '1', '2017-06-13 17:49:36', 'Gestor local', '1', null, 'admin', 'REGISTRO', '2017-06-13 17:49:36');
INSERT INTO `log_convocatoria` VALUES ('675', '031-II', '1', '2017-06-13 17:49:36', 'Gestor(a) local', '1', null, 'admin', 'ACTUALIZACION', '2017-06-13 17:50:07');
INSERT INTO `log_convocatoria` VALUES ('676', '031-II', '1', '2017-06-13 17:49:36', 'Gestor(a) local', '1', null, 'admin', 'ACTUALIZACION', '2017-06-13 17:50:09');
INSERT INTO `log_convocatoria` VALUES ('677', '054-II', '1', '2017-06-07 16:28:31', 'Personal de secretaria', '2', null, 'admin', 'ACTUALIZACION', '2017-06-14 22:41:07');
INSERT INTO `log_convocatoria` VALUES ('678', '054-II', '1', '2017-06-07 16:28:31', 'Personal de secretaria', '3', null, 'admin', 'ACTUALIZACION', '2017-06-16 17:13:26');
INSERT INTO `log_convocatoria` VALUES ('679', '060-I', '1', '2017-06-09 17:49:45', 'Abogado', '2', null, 'admin', 'ACTUALIZACION', '2017-06-19 17:56:09');
INSERT INTO `log_convocatoria` VALUES ('680', '24-III', '1', '2017-06-19 17:57:05', 'Personal de Secretaria', '1', null, 'admin', 'REGISTRO', '2017-06-19 17:57:05');
INSERT INTO `log_convocatoria` VALUES ('681', '061-I', '1', '2017-06-19 17:58:06', 'Asesor de Dirección', '1', null, 'admin', 'REGISTRO', '2017-06-19 17:58:06');
INSERT INTO `log_convocatoria` VALUES ('682', '031-II', '1', '2017-06-13 17:49:36', 'Gestor(a) local', '2', null, 'admin', 'ACTUALIZACION', '2017-06-20 16:52:03');
INSERT INTO `log_convocatoria` VALUES ('683', '062-I', '1', '2017-06-20 16:52:42', 'Abogado', '1', null, 'admin', 'REGISTRO', '2017-06-20 16:52:42');
INSERT INTO `log_convocatoria` VALUES ('684', '063-I', '4', '2017-06-20 16:53:16', 'Docentes responsables de núcleo', '1', null, 'admin', 'REGISTRO', '2017-06-20 16:53:16');
INSERT INTO `log_convocatoria` VALUES ('685', '060-I', '1', '2017-06-09 17:49:45', 'Abogado', '3', null, 'admin', 'ACTUALIZACION', '2017-06-21 17:50:44');
INSERT INTO `log_convocatoria` VALUES ('686', '031-II', '1', '2017-06-13 17:49:36', 'Gestor(a) local', '3', null, 'admin', 'ACTUALIZACION', '2017-06-21 17:51:03');
INSERT INTO `log_convocatoria` VALUES ('687', '054-III', '1', '2017-06-19 17:57:05', 'Personal de Secretaria', '1', null, 'admin', 'ACTUALIZACION', '2017-06-22 15:32:24');
INSERT INTO `log_convocatoria` VALUES ('688', '024-VII', '1', '2017-06-22 15:34:06', 'Personal de apoyo educativo', '1', null, 'admin', 'REGISTRO', '2017-06-22 15:34:06');
INSERT INTO `log_convocatoria` VALUES ('689', '065-I', '1', '2017-06-26 09:44:56', 'Técnico administrativo orientador', '1', null, 'admin', 'REGISTRO', '2017-06-26 09:44:56');
INSERT INTO `log_convocatoria` VALUES ('690', '064-I', '1', '2017-06-26 12:57:40', 'Abogado', '1', null, 'admin', 'REGISTRO', '2017-06-26 12:57:40');
INSERT INTO `log_convocatoria` VALUES ('691', '066-I', '1', '2017-06-26 17:10:41', 'Especialista contable', '1', null, 'admin', 'REGISTRO', '2017-06-26 17:10:41');
INSERT INTO `log_convocatoria` VALUES ('692', 'P006-I', '1', '2017-06-26 17:49:01', 'Practicante Pre Profesional para el Área de Administración', '1', null, 'admin', 'REGISTRO', '2017-06-26 17:49:01');
INSERT INTO `log_convocatoria` VALUES ('693', '061-I', '1', '2017-06-19 17:58:06', 'Asesor de Dirección', '2', null, 'admin', 'ACTUALIZACION', '2017-06-26 23:15:28');
INSERT INTO `log_convocatoria` VALUES ('694', '054-III', '1', '2017-06-19 17:57:05', 'Personal de Secretaria', '2', null, 'admin', 'ACTUALIZACION', '2017-06-27 17:57:20');
INSERT INTO `log_convocatoria` VALUES ('695', '062-I', '1', '2017-06-20 16:52:42', 'Abogado', '2', null, 'admin', 'ACTUALIZACION', '2017-06-27 19:50:34');
INSERT INTO `log_convocatoria` VALUES ('696', '061-I', '1', '2017-06-19 17:58:06', 'Asesor de Dirección', '3', null, 'admin', 'ACTUALIZACION', '2017-06-28 11:31:52');
INSERT INTO `log_convocatoria` VALUES ('697', '062-I', '1', '2017-06-20 16:52:42', 'Abogado', '3', null, 'admin', 'ACTUALIZACION', '2017-06-28 11:32:07');
INSERT INTO `log_convocatoria` VALUES ('698', '063-I', '4', '2017-06-20 16:53:16', 'Docentes responsables de núcleo', '2', null, 'admin', 'ACTUALIZACION', '2017-06-28 16:17:11');
INSERT INTO `log_convocatoria` VALUES ('699', '063-I', '4', '2017-06-20 16:53:16', 'Docentes responsables de núcleo', '3', null, 'admin', 'ACTUALIZACION', '2017-06-28 16:18:26');
INSERT INTO `log_convocatoria` VALUES ('700', '064-I', '1', '2017-06-26 12:57:40', 'Abogado', '2', null, 'admin', 'ACTUALIZACION', '2017-06-28 18:10:15');
INSERT INTO `log_convocatoria` VALUES ('701', '054-III', '1', '2017-06-19 17:57:05', 'Personal de Secretaria', '2', null, 'admin', 'ACTUALIZACION', '2017-06-28 18:11:02');
INSERT INTO `log_convocatoria` VALUES ('702', '064-I', '1', '2017-06-26 12:57:40', 'Abogado', '3', null, 'admin', 'ACTUALIZACION', '2017-07-03 18:13:10');
INSERT INTO `log_convocatoria` VALUES ('703', '054-III', '1', '2017-06-19 17:57:05', 'Personal de Secretaria', '3', null, 'admin', 'ACTUALIZACION', '2017-07-04 09:16:57');
INSERT INTO `log_convocatoria` VALUES ('704', '024-VII', '1', '2017-06-22 15:34:06', 'Personal de apoyo educativo', '2', null, 'admin', 'ACTUALIZACION', '2017-07-04 09:55:09');
INSERT INTO `log_convocatoria` VALUES ('705', '065-I', '1', '2017-06-26 09:44:56', 'Técnico administrativo orientador', '2', null, 'admin', 'ACTUALIZACION', '2017-07-04 09:56:31');
INSERT INTO `log_convocatoria` VALUES ('706', '024-VII', '1', '2017-06-22 15:34:06', 'Personal de apoyo educativo', '3', null, 'admin', 'ACTUALIZACION', '2017-07-04 17:07:47');
INSERT INTO `log_convocatoria` VALUES ('707', 'P006-I', '1', '2017-06-26 17:49:01', 'Practicante Pre Profesional para el Área de Administración', '2', null, 'admin', 'ACTUALIZACION', '2017-07-04 17:08:14');
INSERT INTO `log_convocatoria` VALUES ('708', 'P006-I', '1', '2017-06-26 17:49:01', 'Practicante Pre Profesional para el Área de Administración', '3', null, 'admin', 'ACTUALIZACION', '2017-07-05 17:26:41');
INSERT INTO `log_convocatoria` VALUES ('709', '066-I', '1', '2017-06-26 17:10:41', 'Especialista contable', '2', null, 'admin', 'ACTUALIZACION', '2017-07-06 23:07:28');
INSERT INTO `log_convocatoria` VALUES ('710', '065-I', '1', '2017-06-26 09:44:56', 'Técnico administrativo orientador', '3', null, 'admin', 'ACTUALIZACION', '2017-07-06 23:08:41');
INSERT INTO `log_convocatoria` VALUES ('711', '024-VIII', '1', '2017-07-10 09:06:17', 'Personal de apoyo educativo', '1', null, 'admin', 'REGISTRO', '2017-07-10 09:06:17');
INSERT INTO `log_convocatoria` VALUES ('712', '025-IV', '1', '2017-07-10 09:07:29', 'Psicólogo o trabajador social', '1', null, 'admin', 'REGISTRO', '2017-07-10 09:07:30');
INSERT INTO `log_convocatoria` VALUES ('713', '029-III', '1', '2017-07-10 09:08:50', 'Coordinador administrativo y de recursos educativos', '1', null, 'admin', 'REGISTRO', '2017-07-10 09:08:50');
INSERT INTO `log_convocatoria` VALUES ('714', '023-V', '1', '2017-07-10 09:09:36', 'Coordinador de Innovación y Soporte Tecnológico', '1', null, 'admin', 'REGISTRO', '2017-07-10 09:09:36');
INSERT INTO `log_convocatoria` VALUES ('715', '066-I', '1', '2017-06-26 17:10:41', 'Especialista contable', '3', null, 'admin', 'ACTUALIZACION', '2017-07-10 17:57:50');
INSERT INTO `log_convocatoria` VALUES ('716', '024-IX', '1', '2017-07-11 10:01:33', 'Personal de Apoyo Educativo', '1', null, 'admin', 'REGISTRO', '2017-07-11 10:01:33');
INSERT INTO `log_convocatoria` VALUES ('717', 'P006-I', '1', '2017-06-26 17:49:01', 'Practicante Pre Profesional para el Área de Administración', '3', null, 'admin', 'ACTUALIZACION', '2017-07-11 10:01:53');
INSERT INTO `log_convocatoria` VALUES ('718', '024-VIII', '1', '2017-07-10 09:06:17', 'Personal de apoyo educativo', '2', null, 'admin', 'ACTUALIZACION', '2017-07-14 18:57:16');
INSERT INTO `log_convocatoria` VALUES ('719', '029-III', '1', '2017-07-10 09:08:50', 'Coordinador administrativo y de recursos educativos', '2', null, 'admin', 'ACTUALIZACION', '2017-07-14 18:57:39');
INSERT INTO `log_convocatoria` VALUES ('720', '025-IV', '1', '2017-07-10 09:07:29', 'Psicólogo o trabajador social', '2', null, 'admin', 'ACTUALIZACION', '2017-07-14 18:57:52');
INSERT INTO `log_convocatoria` VALUES ('721', '067-I', '1', '2017-07-17 17:06:29', 'Técnico Administrativo para APAFA', '1', null, 'admin', 'REGISTRO', '2017-07-17 17:06:29');
INSERT INTO `log_convocatoria` VALUES ('722', '068-I', '1', '2017-07-17 17:07:05', 'Técnico Administrativo', '1', null, 'admin', 'REGISTRO', '2017-07-17 17:07:05');
INSERT INTO `log_convocatoria` VALUES ('723', '069-I', '1', '2017-07-17 17:07:41', 'Profesional en Contabilidad', '1', null, 'admin', 'REGISTRO', '2017-07-17 17:07:41');
INSERT INTO `log_convocatoria` VALUES ('724', '070-I', '1', '2017-07-17 17:08:25', 'Abogado(a) en seguimiento contractual', '1', null, 'admin', 'REGISTRO', '2017-07-17 17:08:25');
INSERT INTO `log_convocatoria` VALUES ('725', '029-III', '1', '2017-07-10 09:08:50', 'Coordinador administrativo y de recursos educativos', '2', null, 'admin', 'ACTUALIZACION', '2017-07-17 22:08:51');
INSERT INTO `log_convocatoria` VALUES ('726', '024-VIII', '1', '2017-07-10 09:06:17', 'Personal de apoyo educativo', '3', null, 'admin', 'ACTUALIZACION', '2017-07-17 22:09:50');
INSERT INTO `log_convocatoria` VALUES ('727', '024-VIII', '1', '2017-07-10 09:06:17', 'Personal de apoyo educativo', '3', null, 'admin', 'ACTUALIZACION', '2017-07-17 22:09:53');
INSERT INTO `log_convocatoria` VALUES ('728', '029-III', '1', '2017-07-10 09:08:50', 'Coordinador administrativo y de recursos educativos', '3', null, 'admin', 'ACTUALIZACION', '2017-07-19 09:58:14');
INSERT INTO `log_convocatoria` VALUES ('729', '025-IV', '1', '2017-07-10 09:07:29', 'Psicólogo o trabajador social', '3', null, 'admin', 'ACTUALIZACION', '2017-07-19 09:58:41');
INSERT INTO `log_convocatoria` VALUES ('730', '023-V', '1', '2017-07-10 09:09:36', 'Coordinador de Innovación y Soporte Tecnológico', '2', null, 'admin', 'ACTUALIZACION', '2017-07-19 17:44:32');
INSERT INTO `log_convocatoria` VALUES ('731', '024-IX', '1', '2017-07-11 10:01:33', 'Personal de Apoyo Educativo', '2', null, 'admin', 'ACTUALIZACION', '2017-07-19 17:45:57');
INSERT INTO `log_convocatoria` VALUES ('732', '024-IX', '1', '2017-07-11 10:01:33', 'Personal de Apoyo Educativo', '3', null, 'admin', 'ACTUALIZACION', '2017-07-20 23:22:53');
INSERT INTO `log_convocatoria` VALUES ('733', '024-IX', '1', '2017-07-11 10:01:33', 'Personal de Apoyo Educativo', '3', null, 'admin', 'ACTUALIZACION', '2017-07-20 23:22:56');
INSERT INTO `log_convocatoria` VALUES ('734', '023-V', '1', '2017-07-10 09:09:36', 'Coordinador de Innovación y Soporte Tecnológico', '3', null, 'admin', 'ACTUALIZACION', '2017-07-22 00:09:30');
INSERT INTO `log_convocatoria` VALUES ('735', '070-I', '1', '2017-07-17 17:08:25', 'Abogado(a) en seguimiento contractual', '3', null, 'admin', 'ACTUALIZACION', '2017-07-24 18:44:31');
INSERT INTO `log_convocatoria` VALUES ('736', '069-I', '1', '2017-07-17 17:07:41', 'Profesional en Contabilidad', '2', null, 'admin', 'ACTUALIZACION', '2017-07-24 18:44:51');
INSERT INTO `log_convocatoria` VALUES ('737', '058-II', '1', '2017-07-24 18:45:59', 'Auditor - Contador Público', '1', null, 'admin', 'REGISTRO', '2017-07-24 18:45:59');
INSERT INTO `log_convocatoria` VALUES ('738', '068-I', '1', '2017-07-17 17:07:05', 'Técnico Administrativo', '2', null, 'admin', 'ACTUALIZACION', '2017-07-25 18:26:39');
INSERT INTO `log_convocatoria` VALUES ('739', '067-I', '1', '2017-07-17 17:06:29', 'Técnico Administrativo para APAFA', '3', null, 'admin', 'ACTUALIZACION', '2017-07-25 18:27:09');
INSERT INTO `log_convocatoria` VALUES ('740', '068-I', '1', '2017-07-17 17:07:05', 'Técnico Administrativo', '3', null, 'admin', 'ACTUALIZACION', '2017-07-27 08:57:39');
INSERT INTO `log_convocatoria` VALUES ('741', '071-I', '4', '2017-07-31 09:10:59', 'Docentes Responsables de Núcleo', '1', null, 'admin', 'REGISTRO', '2017-07-31 09:10:59');
INSERT INTO `log_convocatoria` VALUES ('742', '072-I', '1', '2017-07-31 09:11:40', 'Abogado', '1', null, 'admin', 'REGISTRO', '2017-07-31 09:11:40');
INSERT INTO `log_convocatoria` VALUES ('743', '066-II', '1', '2017-07-31 09:18:02', 'Especialista contable', '1', null, 'admin', 'REGISTRO', '2017-07-31 09:18:03');
INSERT INTO `log_convocatoria` VALUES ('744', '069-I', '1', '2017-07-17 17:07:41', 'Profesional en Contabilidad', '2', null, 'admin', 'ACTUALIZACION', '2017-07-31 23:19:39');
INSERT INTO `log_convocatoria` VALUES ('745', '058-II', '1', '2017-07-24 18:45:59', 'Auditor - Contador Público', '2', null, 'admin', 'ACTUALIZACION', '2017-08-02 17:15:29');
INSERT INTO `log_convocatoria` VALUES ('746', '069-I', '1', '2017-07-17 17:07:41', 'Profesional en Contabilidad', '3', null, 'admin', 'ACTUALIZACION', '2017-08-03 05:28:19');
INSERT INTO `log_convocatoria` VALUES ('747', '024-X', '1', '2017-08-04 07:48:10', 'Personal de Apoyo Educativo', '1', null, 'admin', 'REGISTRO', '2017-08-04 07:48:10');
INSERT INTO `log_convocatoria` VALUES ('748', '025-V', '1', '2017-08-04 07:48:37', 'Psicólogo o trabajador social', '1', null, 'admin', 'REGISTRO', '2017-08-04 07:48:37');
INSERT INTO `log_convocatoria` VALUES ('749', '072-I', '1', '2017-07-31 09:11:40', 'Abogado', '3', null, 'admin', 'ACTUALIZACION', '2017-08-05 09:08:29');
INSERT INTO `log_convocatoria` VALUES ('750', '058-II', '1', '2017-07-24 18:45:59', 'Auditor - Contador Público', '3', null, 'admin', 'ACTUALIZACION', '2017-08-05 09:10:27');
INSERT INTO `log_convocatoria` VALUES ('751', '073-I', '1', '2017-08-08 12:21:18', 'Responsable de Escalafón y Legajos', '1', null, 'admin', 'REGISTRO', '2017-08-08 12:21:18');
INSERT INTO `log_convocatoria` VALUES ('752', '074-I', '1', '2017-08-08 12:21:57', 'Técnico Administrativo', '1', null, 'admin', 'REGISTRO', '2017-08-08 12:21:57');
INSERT INTO `log_convocatoria` VALUES ('753', '075-I', '1', '2017-08-08 12:22:26', 'Analista en Racionalización', '1', null, 'admin', 'REGISTRO', '2017-08-08 12:22:26');
INSERT INTO `log_convocatoria` VALUES ('754', '027-VII', '1', '2017-08-08 12:23:01', 'Acompañante Pedagógico de Primaria', '1', null, 'admin', 'REGISTRO', '2017-08-08 12:23:01');
INSERT INTO `log_convocatoria` VALUES ('755', '066-II', '1', '2017-07-31 09:18:02', 'Especialista contable', '2', null, 'admin', 'ACTUALIZACION', '2017-08-08 18:20:16');
INSERT INTO `log_convocatoria` VALUES ('756', '066-II', '1', '2017-07-31 09:18:02', 'Especialista contable', '3', null, 'admin', 'ACTUALIZACION', '2017-08-10 17:59:54');
INSERT INTO `log_convocatoria` VALUES ('757', '066-II', '1', '2017-07-31 09:18:02', 'Especialista contable', '3', null, 'admin', 'ACTUALIZACION', '2017-08-10 18:00:23');
INSERT INTO `log_convocatoria` VALUES ('758', '071-I', '4', '2017-07-31 09:10:59', 'Docentes Responsables de Núcleo', '2', null, 'admin', 'ACTUALIZACION', '2017-08-10 18:02:18');
INSERT INTO `log_convocatoria` VALUES ('759', '071-I', '4', '2017-07-31 09:10:59', 'Docentes Responsables de Núcleo', '3', null, 'admin', 'ACTUALIZACION', '2017-08-11 17:17:41');
INSERT INTO `log_convocatoria` VALUES ('760', '054-IV', '1', '2017-08-11 17:18:42', 'Personal de Secretaria', '1', null, 'admin', 'REGISTRO', '2017-08-11 17:18:42');
INSERT INTO `log_convocatoria` VALUES ('761', '025-V', '1', '2017-08-04 07:48:37', 'Psicólogo o trabajador social', '3', null, 'admin', 'ACTUALIZACION', '2017-08-11 18:24:36');
INSERT INTO `log_convocatoria` VALUES ('762', '025-V', '1', '2017-08-04 07:48:37', 'Psicólogo o trabajador social', '2', null, 'admin', 'ACTUALIZACION', '2017-08-11 18:29:41');
INSERT INTO `log_convocatoria` VALUES ('763', '025-V', '1', '2017-08-04 07:48:37', 'Psicólogo o trabajador social', '3', null, 'admin', 'ACTUALIZACION', '2017-08-15 23:21:16');
INSERT INTO `log_convocatoria` VALUES ('764', '027-VII', '1', '2017-08-08 12:23:01', 'Acompañante Pedagógico de Primaria', '2', null, 'admin', 'ACTUALIZACION', '2017-08-16 16:24:44');
INSERT INTO `log_convocatoria` VALUES ('765', '021-VII', '1', '2017-08-16 16:25:14', 'Personales de vigilancia', '1', null, 'admin', 'REGISTRO', '2017-08-16 16:25:15');
INSERT INTO `log_convocatoria` VALUES ('766', '021-VII', '1', '2017-08-16 16:25:14', 'Personal de vigilancia', '1', null, 'admin', 'ACTUALIZACION', '2017-08-16 16:25:48');
INSERT INTO `log_convocatoria` VALUES ('767', '077-I', '1', '2017-08-16 16:26:44', 'Abogado', '1', null, 'admin', 'REGISTRO', '2017-08-16 16:26:44');
INSERT INTO `log_convocatoria` VALUES ('768', '076-I', '1', '2017-08-16 16:27:23', 'Técnico administrativo', '1', null, 'admin', 'REGISTRO', '2017-08-16 16:27:23');
INSERT INTO `log_convocatoria` VALUES ('769', '074-I', '1', '2017-08-08 12:21:57', 'Técnico Administrativo', '1', null, 'admin', 'ACTUALIZACION', '2017-08-16 18:16:02');
INSERT INTO `log_convocatoria` VALUES ('770', '075-I', '1', '2017-08-08 12:22:26', 'Analista en Racionalización', '3', null, 'admin', 'ACTUALIZACION', '2017-08-16 18:16:45');
INSERT INTO `log_convocatoria` VALUES ('771', '074-I', '1', '2017-08-08 12:21:57', 'Técnico Administrativo', '2', null, 'admin', 'ACTUALIZACION', '2017-08-16 18:16:54');
INSERT INTO `log_convocatoria` VALUES ('772', '073-I', '1', '2017-08-08 12:21:18', 'Responsable de Escalafón y Legajos', '3', null, 'admin', 'ACTUALIZACION', '2017-08-17 17:33:38');
INSERT INTO `log_convocatoria` VALUES ('773', '074-I', '1', '2017-08-08 12:21:57', 'Técnico Administrativo', '3', null, 'admin', 'ACTUALIZACION', '2017-08-20 00:07:34');
INSERT INTO `log_convocatoria` VALUES ('774', '027-VII', '1', '2017-08-08 12:23:01', 'Acompañante Pedagógico de Primaria', '3', null, 'admin', 'ACTUALIZACION', '2017-08-20 00:17:29');
INSERT INTO `log_convocatoria` VALUES ('775', '078-i', '1', '2017-08-20 00:21:09', 'Abogado (a) en seguimiento contractual', '1', null, 'admin', 'REGISTRO', '2017-08-20 00:21:09');
INSERT INTO `log_convocatoria` VALUES ('776', '081-I', '1', '2017-08-22 12:18:49', 'Abogado', '1', null, 'admin', 'REGISTRO', '2017-08-22 12:18:49');
INSERT INTO `log_convocatoria` VALUES ('777', '080-I', '1', '2017-08-22 12:19:35', 'Técnico en Contabilidad', '1', null, 'admin', 'REGISTRO', '2017-08-22 12:19:35');
INSERT INTO `log_convocatoria` VALUES ('778', '079-I', '1', '2017-08-22 12:24:47', 'Auditor Contador Público', '1', null, 'admin', 'REGISTRO', '2017-08-22 12:24:47');
INSERT INTO `log_convocatoria` VALUES ('779', '078-I', '1', '2017-08-20 00:21:09', 'Abogado (a) en seguimiento contractual', '1', null, 'admin', 'ACTUALIZACION', '2017-08-22 12:25:03');
INSERT INTO `log_convocatoria` VALUES ('780', '021-VIII', '1', '2017-08-22 12:25:39', 'Personal de vigilancia', '1', null, 'admin', 'REGISTRO', '2017-08-22 12:25:39');
INSERT INTO `log_convocatoria` VALUES ('781', '082-I', '1', '2017-08-24 04:46:52', 'Técnico Legal', '1', null, 'admin', 'REGISTRO', '2017-08-24 04:46:52');
INSERT INTO `log_convocatoria` VALUES ('782', '054-IV', '1', '2017-08-11 17:18:42', 'Personal de Secretaria', '2', null, 'admin', 'ACTUALIZACION', '2017-08-24 23:26:28');
INSERT INTO `log_convocatoria` VALUES ('783', '021-VII', '1', '2017-08-16 16:25:14', 'Personal de vigilancia', '2', null, 'admin', 'ACTUALIZACION', '2017-08-24 23:26:53');
INSERT INTO `log_convocatoria` VALUES ('784', '024-X', '1', '2017-08-04 07:48:10', 'Personal de Apoyo Educativo', '3', null, 'admin', 'ACTUALIZACION', '2017-08-28 09:14:53');
INSERT INTO `log_convocatoria` VALUES ('785', '024-X', '1', '2017-08-04 07:48:10', 'Personal de Apoyo Educativo', '2', null, 'admin', 'ACTUALIZACION', '2017-08-28 12:42:37');
INSERT INTO `log_convocatoria` VALUES ('786', '077-I', '1', '2017-08-16 16:26:44', 'Abogado', '2', null, 'admin', 'ACTUALIZACION', '2017-08-28 22:33:07');
INSERT INTO `log_convocatoria` VALUES ('787', '078-I', '1', '2017-08-20 00:21:09', 'Abogado (a) en seguimiento contractual', '3', null, 'admin', 'ACTUALIZACION', '2017-08-28 22:33:38');
INSERT INTO `log_convocatoria` VALUES ('788', '076-I', '1', '2017-08-16 16:27:23', 'Técnico administrativo', '2', null, 'admin', 'ACTUALIZACION', '2017-08-28 22:34:07');
INSERT INTO `log_convocatoria` VALUES ('789', '024-X', '1', '2017-08-04 07:48:10', 'Personal de Apoyo Educativo', '3', null, 'admin', 'ACTUALIZACION', '2017-08-28 22:35:07');
INSERT INTO `log_convocatoria` VALUES ('790', '007', '1', '2017-08-28 22:42:15', 'Practicante PreProfesional para el Área de Administración', '1', null, 'admin', 'REGISTRO', '2017-08-28 22:42:15');
INSERT INTO `log_convocatoria` VALUES ('791', '021-VIII', '1', '2017-08-22 12:25:39', 'Personal de vigilancia', '2', null, 'admin', 'ACTUALIZACION', '2017-08-29 17:25:01');
INSERT INTO `log_convocatoria` VALUES ('792', '021-VII', '1', '2017-08-16 16:25:14', 'Personal de vigilancia', '3', null, 'admin', 'ACTUALIZACION', '2017-08-29 17:25:54');
INSERT INTO `log_convocatoria` VALUES ('793', '023-VI', '1', '2017-08-29 17:29:00', 'Coordinador de Innovación y Soporte Tecnológico', '1', null, 'admin', 'REGISTRO', '2017-08-29 17:29:00');
INSERT INTO `log_convocatoria` VALUES ('794', '083-I', '1', '2017-08-31 12:28:17', 'Técnico Administrativo para APAFA', '1', null, 'admin', 'REGISTRO', '2017-08-31 12:28:17');
INSERT INTO `log_convocatoria` VALUES ('795', '077-I', '1', '2017-08-16 16:26:44', 'Abogado', '3', null, 'admin', 'ACTUALIZACION', '2017-08-31 21:10:00');
INSERT INTO `log_convocatoria` VALUES ('796', '076-I', '1', '2017-08-16 16:27:23', 'Técnico administrativo', '3', null, 'admin', 'ACTUALIZACION', '2017-08-31 21:10:20');
INSERT INTO `log_convocatoria` VALUES ('797', '080-I', '1', '2017-08-22 12:19:35', 'Técnico en Contabilidad', '3', null, 'admin', 'ACTUALIZACION', '2017-08-31 21:11:04');
INSERT INTO `log_convocatoria` VALUES ('798', '081-I', '1', '2017-08-22 12:18:49', 'Abogado', '3', null, 'admin', 'ACTUALIZACION', '2017-08-31 21:11:35');
INSERT INTO `log_convocatoria` VALUES ('799', '081-I', '1', '2017-08-22 12:18:49', 'Abogado', '3', null, 'admin', 'ACTUALIZACION', '2017-08-31 21:11:38');
INSERT INTO `log_convocatoria` VALUES ('800', '021-VIII', '1', '2017-08-22 12:25:39', 'Personal de vigilancia', '3', null, 'admin', 'ACTUALIZACION', '2017-08-31 21:12:27');
INSERT INTO `log_convocatoria` VALUES ('801', '054-IV', '1', '2017-08-11 17:18:42', 'Personal de Secretaria', '3', null, 'admin', 'ACTUALIZACION', '2017-08-31 21:13:10');
INSERT INTO `log_convocatoria` VALUES ('802', '054-IV', '1', '2017-08-11 17:18:42', 'Personal de Secretaria', '3', null, 'admin', 'ACTUALIZACION', '2017-08-31 21:13:32');
INSERT INTO `log_convocatoria` VALUES ('803', '079-I', '1', '2017-08-22 12:24:47', 'Auditor Contador Público', '3', null, 'admin', 'ACTUALIZACION', '2017-08-31 21:13:51');
INSERT INTO `log_convocatoria` VALUES ('804', '079-I', '1', '2017-08-22 12:24:47', 'Auditor Contador Público', '2', null, 'admin', 'ACTUALIZACION', '2017-08-31 21:14:15');
INSERT INTO `log_convocatoria` VALUES ('805', '082-I', '1', '2017-08-24 04:46:52', 'Técnico Legal', '2', null, 'admin', 'ACTUALIZACION', '2017-09-01 19:34:49');
INSERT INTO `log_convocatoria` VALUES ('806', '085-I', '1', '2017-09-01 19:35:21', 'Responsable de Escalafón y Legajos', '1', null, 'admin', 'REGISTRO', '2017-09-01 19:35:21');
INSERT INTO `log_convocatoria` VALUES ('807', '084-I', '1', '2017-09-01 19:35:58', 'Técnico Administrativo', '1', null, 'admin', 'REGISTRO', '2017-09-01 19:35:58');
INSERT INTO `log_convocatoria` VALUES ('808', '079-I', '1', '2017-08-22 12:24:47', 'Auditor Contador Público', '3', null, 'admin', 'ACTUALIZACION', '2017-09-04 19:24:56');
INSERT INTO `log_convocatoria` VALUES ('809', '082-I', '1', '2017-08-24 04:46:52', 'Técnico Legal', '3', null, 'admin', 'ACTUALIZACION', '2017-09-04 19:25:47');
INSERT INTO `log_convocatoria` VALUES ('810', '007', '1', '2017-08-28 22:42:15', 'Practicante PreProfesional para el Área de Administración', '2', null, 'admin', 'ACTUALIZACION', '2017-09-05 18:22:34');
INSERT INTO `log_convocatoria` VALUES ('811', '007', '1', '2017-08-28 22:42:15', 'Practicante PreProfesional para el Área de Administración', '3', null, 'admin', 'ACTUALIZACION', '2017-09-06 20:44:38');
INSERT INTO `log_convocatoria` VALUES ('812', 'N°086', '1', '2017-09-07 08:11:17', 'CAS N°086 - ANALISTA EN RACIONALIZACIÓN', '1', null, 'admin', 'REGISTRO', '2017-09-07 08:11:17');
INSERT INTO `log_convocatoria` VALUES ('813', 'N°086', '1', '2017-09-07 08:11:17', 'ANALISTA EN RACIONALIZACIÓN', '1', null, 'admin', 'ACTUALIZACION', '2017-09-07 08:12:08');
INSERT INTO `log_convocatoria` VALUES ('814', '023-VI', '1', '2017-08-29 17:29:00', 'Coordinador de Innovación y Soporte Tecnológico', '2', null, 'admin', 'ACTUALIZACION', '2017-09-07 20:13:04');
INSERT INTO `log_convocatoria` VALUES ('815', '087-I', '2', '2017-09-07 20:16:34', 'Profesionales no docentes - Terapistas ocupacionales para CEBE', '1', null, 'admin', 'REGISTRO', '2017-09-07 20:16:34');
INSERT INTO `log_convocatoria` VALUES ('816', '083-I', '1', '2017-08-31 12:28:17', 'Técnico Administrativo para APAFA', '3', null, 'admin', 'ACTUALIZACION', '2017-09-09 09:06:36');
INSERT INTO `log_convocatoria` VALUES ('817', '083-I', '1', '2017-08-31 12:28:17', 'Técnico Administrativo para APAFA', '3', null, 'admin', 'ACTUALIZACION', '2017-09-09 09:06:46');
INSERT INTO `log_convocatoria` VALUES ('818', '084-I', '1', '2017-09-01 19:35:58', 'Técnico Administrativo', '1', null, 'admin', 'ACTUALIZACION', '2017-09-09 09:08:07');
INSERT INTO `log_convocatoria` VALUES ('819', '084-I', '1', '2017-09-01 19:35:58', 'Técnico Administrativo', '1', null, 'admin', 'ACTUALIZACION', '2017-09-09 09:08:30');
INSERT INTO `log_convocatoria` VALUES ('820', '083-I', '1', '2017-08-31 12:28:17', 'Técnico Administrativo para APAFA', '3', null, 'admin', 'ACTUALIZACION', '2017-09-09 09:08:58');
INSERT INTO `log_convocatoria` VALUES ('821', '084-I', '1', '2017-09-01 19:35:58', 'Técnico Administrativo', '2', null, 'admin', 'ACTUALIZACION', '2017-09-11 21:59:04');
INSERT INTO `log_convocatoria` VALUES ('822', '085-I', '1', '2017-09-01 19:35:21', 'Responsable de Escalafón y Legajos', '2', null, 'admin', 'ACTUALIZACION', '2017-09-11 21:59:49');
INSERT INTO `log_convocatoria` VALUES ('823', '023-VI', '1', '2017-08-29 17:29:00', 'Coordinador de Innovación y Soporte Tecnológico', '3', null, 'admin', 'ACTUALIZACION', '2017-09-12 23:29:04');
INSERT INTO `log_convocatoria` VALUES ('824', '084-I', '1', '2017-09-01 19:35:58', 'Técnico Administrativo', '3', null, 'admin', 'ACTUALIZACION', '2017-09-14 06:31:45');
INSERT INTO `log_convocatoria` VALUES ('825', '085-I', '1', '2017-09-01 19:35:21', 'Responsable de Escalafón y Legajos', '3', null, 'admin', 'ACTUALIZACION', '2017-09-14 06:32:07');
INSERT INTO `log_convocatoria` VALUES ('826', 'N°086', '1', '2017-09-07 08:11:17', 'ANALISTA EN RACIONALIZACIÓN', '2', null, 'admin', 'ACTUALIZACION', '2017-09-14 18:16:05');
INSERT INTO `log_convocatoria` VALUES ('827', '088-I', '1', '2017-09-14 18:16:22', 'Abogado', '1', null, 'admin', 'REGISTRO', '2017-09-14 18:16:22');
INSERT INTO `log_convocatoria` VALUES ('828', '088-I', '1', '2017-09-14 18:16:22', 'Abogado', '3', null, 'admin', 'ACTUALIZACION', '2017-09-16 04:10:49');
INSERT INTO `log_convocatoria` VALUES ('829', '087-I', '2', '2017-09-07 20:16:34', 'Profesionales no docentes - Terapistas ocupacionales para CEBE', '2', null, 'admin', 'ACTUALIZACION', '2017-09-16 04:11:14');
INSERT INTO `log_convocatoria` VALUES ('830', 'N°086', '1', '2017-09-07 08:11:17', 'ANALISTA EN RACIONALIZACIÓN', '3', null, 'admin', 'ACTUALIZACION', '2017-09-18 18:10:20');
INSERT INTO `log_convocatoria` VALUES ('831', '087-I', '2', '2017-09-07 20:16:34', 'Profesionales no docentes - Terapistas ocupacionales para CEBE', '3', null, 'admin', 'ACTUALIZACION', '2017-09-19 15:06:51');
INSERT INTO `log_convocatoria` VALUES ('832', '091-I', '1', '2017-09-28 00:05:20', 'Asistente administrativo', '1', null, 'admin', 'REGISTRO', '2017-09-28 00:05:20');
INSERT INTO `log_convocatoria` VALUES ('833', '090-I', '1', '2017-09-28 00:06:15', 'Abogado', '1', null, 'admin', 'REGISTRO', '2017-09-28 00:06:15');
INSERT INTO `log_convocatoria` VALUES ('834', '089-I', '1', '2017-09-28 00:07:12', 'Técnico en Contabilidad', '1', null, 'admin', 'REGISTRO', '2017-09-28 00:07:12');
INSERT INTO `log_convocatoria` VALUES ('835', '078-II', '1', '2017-09-28 00:08:25', 'Abogado(a) en seguimiento contractual', '1', null, 'admin', 'REGISTRO', '2017-09-28 00:08:25');
INSERT INTO `log_convocatoria` VALUES ('836', '027-VIII', '1', '2017-09-28 00:09:37', 'Acompañante Pedagógico de Primaria', '1', null, 'admin', 'REGISTRO', '2017-09-28 00:09:37');
INSERT INTO `log_convocatoria` VALUES ('837', '024-XI', '1', '2017-09-28 00:10:45', 'Personal de apoyo educativo', '1', null, 'admin', 'REGISTRO', '2017-09-28 00:10:46');
INSERT INTO `log_convocatoria` VALUES ('838', '027-VIII', '2', '2017-09-28 00:09:37', 'Acompañante Pedagógico de Primaria', '1', null, 'admin', 'ACTUALIZACION', '2017-09-28 00:11:52');
INSERT INTO `log_convocatoria` VALUES ('839', '021-X', '1', '2017-09-28 00:12:35', 'Personal de vigilancia', '1', null, 'admin', 'REGISTRO', '2017-09-28 00:12:35');
INSERT INTO `log_convocatoria` VALUES ('840', '021-IX', '1', '2017-09-28 00:13:27', 'Personal de vigilancia', '1', null, 'admin', 'REGISTRO', '2017-09-28 00:13:27');
INSERT INTO `log_convocatoria` VALUES ('841', '091-I', '1', '2017-09-28 00:05:20', 'Asistente administrativo', '3', null, 'admin', 'ACTUALIZACION', '2017-09-28 17:58:11');
INSERT INTO `log_convocatoria` VALUES ('842', '092-I', '1', '2017-10-03 08:37:13', 'Abogado', '1', null, 'admin', 'REGISTRO', '2017-10-03 08:37:13');
INSERT INTO `log_convocatoria` VALUES ('843', '093-I', '1', '2017-10-03 08:38:45', 'Técnico Administrativo para APAFA', '1', null, 'admin', 'REGISTRO', '2017-10-03 08:38:45');
INSERT INTO `log_convocatoria` VALUES ('844', '094-I', '1', '2017-10-03 17:39:18', 'Especialista en Monitoreo', '1', null, 'admin', 'REGISTRO', '2017-10-03 17:39:18');
INSERT INTO `log_convocatoria` VALUES ('845', '027-VIII', '2', '2017-09-28 00:09:37', 'Acompañante Pedagógico de Primaria', '2', null, 'admin', 'ACTUALIZACION', '2017-10-05 16:35:27');
INSERT INTO `log_convocatoria` VALUES ('846', '021-X', '1', '2017-09-28 00:12:35', 'Personal de vigilancia', '2', null, 'admin', 'ACTUALIZACION', '2017-10-05 17:53:25');
INSERT INTO `log_convocatoria` VALUES ('847', '024-XI', '1', '2017-09-28 00:10:45', 'Personal de apoyo educativo', '2', null, 'admin', 'ACTUALIZACION', '2017-10-05 17:53:36');
INSERT INTO `log_convocatoria` VALUES ('848', '021-IX', '1', '2017-09-28 00:13:27', 'Personal de vigilancia', '2', null, 'admin', 'ACTUALIZACION', '2017-10-05 17:53:53');
INSERT INTO `log_convocatoria` VALUES ('849', '094-I', '1', '2017-10-03 17:39:18', 'Especialista en Monitoreo', '3', null, 'admin', 'ACTUALIZACION', '2017-10-05 17:55:32');
INSERT INTO `log_convocatoria` VALUES ('850', '090-I', '1', '2017-09-28 00:06:15', 'Abogado', '2', null, 'admin', 'ACTUALIZACION', '2017-10-05 18:00:57');
INSERT INTO `log_convocatoria` VALUES ('851', '089-I', '1', '2017-09-28 00:07:12', 'Técnico en Contabilidad', '2', null, 'admin', 'ACTUALIZACION', '2017-10-05 18:01:08');
INSERT INTO `log_convocatoria` VALUES ('852', '078-II', '1', '2017-09-28 00:08:25', 'Abogado(a) en seguimiento contractual', '3', null, 'admin', 'ACTUALIZACION', '2017-10-05 18:01:26');
INSERT INTO `log_convocatoria` VALUES ('853', '095-I', '1', '2017-10-06 23:58:33', 'Abogado', '1', null, 'admin', 'REGISTRO', '2017-10-06 23:58:33');
INSERT INTO `log_convocatoria` VALUES ('854', '096-I', '2', '2017-10-07 00:00:56', 'Técnicos en Escalafón', '1', null, 'admin', 'REGISTRO', '2017-10-07 00:00:56');
INSERT INTO `log_convocatoria` VALUES ('855', '089-I', '1', '2017-09-28 00:07:12', 'Técnico en Contabilidad', '3', null, 'admin', 'ACTUALIZACION', '2017-10-09 17:55:10');
INSERT INTO `log_convocatoria` VALUES ('856', '090-I', '1', '2017-09-28 00:06:15', 'Abogado', '3', null, 'admin', 'ACTUALIZACION', '2017-10-09 17:55:25');
INSERT INTO `log_convocatoria` VALUES ('857', '027-VIII', '2', '2017-09-28 00:09:37', 'Acompañante Pedagógico de Primaria', '3', null, 'admin', 'ACTUALIZACION', '2017-10-09 17:55:40');
INSERT INTO `log_convocatoria` VALUES ('858', '093-I', '1', '2017-10-03 08:38:45', 'Técnico Administrativo para APAFA', '2', null, 'admin', 'ACTUALIZACION', '2017-10-10 16:03:40');
INSERT INTO `log_convocatoria` VALUES ('859', '092-I', '1', '2017-10-03 08:37:13', 'Abogado', '2', null, 'admin', 'ACTUALIZACION', '2017-10-10 16:03:50');
INSERT INTO `log_convocatoria` VALUES ('860', '021-X', '1', '2017-09-28 00:12:35', 'Personal de vigilancia', '3', null, 'admin', 'ACTUALIZACION', '2017-10-10 16:04:18');
INSERT INTO `log_convocatoria` VALUES ('861', '021-IX', '1', '2017-09-28 00:13:27', 'Personal de vigilancia', '3', null, 'admin', 'ACTUALIZACION', '2017-10-10 16:04:29');
INSERT INTO `log_convocatoria` VALUES ('862', '097-I', '1', '2017-10-10 16:05:19', 'Abogado', '1', null, 'admin', 'REGISTRO', '2017-10-10 16:05:19');
INSERT INTO `log_convocatoria` VALUES ('863', '098-I', '1', '2017-10-11 15:52:33', 'Técnico en Comunicaciones', '1', null, 'admin', 'REGISTRO', '2017-10-11 15:52:33');
INSERT INTO `log_convocatoria` VALUES ('864', '027-IX', '2', '2017-10-11 15:53:09', 'Acompañantes Pedagógico de Primaria', '1', null, 'admin', 'REGISTRO', '2017-10-11 15:53:09');
INSERT INTO `log_convocatoria` VALUES ('865', '093-I', '1', '2017-10-03 08:38:45', 'Técnico Administrativo para APAFA', '3', null, 'admin', 'ACTUALIZACION', '2017-10-12 17:25:08');
INSERT INTO `log_convocatoria` VALUES ('866', '092-I', '1', '2017-10-03 08:37:13', 'Abogado', '3', null, 'admin', 'ACTUALIZACION', '2017-10-12 17:25:27');
INSERT INTO `log_convocatoria` VALUES ('867', '029-IV', '1', '2017-10-12 17:27:52', 'Coordinador administrativo y de recursos educativos', '1', null, 'admin', 'REGISTRO', '2017-10-12 17:27:52');
INSERT INTO `log_convocatoria` VALUES ('868', '095-I', '1', '2017-10-06 23:58:33', 'Abogado', '2', null, 'admin', 'ACTUALIZACION', '2017-10-13 18:21:13');
INSERT INTO `log_convocatoria` VALUES ('869', '096-I', '2', '2017-10-07 00:00:56', 'Técnicos en Escalafón', '2', null, 'admin', 'ACTUALIZACION', '2017-10-13 18:21:52');
INSERT INTO `log_convocatoria` VALUES ('870', '096-I', '2', '2017-10-07 00:00:56', 'Técnicos en Escalafón', '2', null, 'admin', 'ACTUALIZACION', '2017-10-13 18:21:53');
INSERT INTO `log_convocatoria` VALUES ('871', '095-I', '1', '2017-10-06 23:58:33', 'Abogado', '3', null, 'admin', 'ACTUALIZACION', '2017-10-16 17:24:39');
INSERT INTO `log_convocatoria` VALUES ('872', '096-I', '2', '2017-10-07 00:00:56', 'Técnicos en Escalafón', '3', null, 'admin', 'ACTUALIZACION', '2017-10-16 17:24:52');
INSERT INTO `log_convocatoria` VALUES ('873', '023-VII', '1', '2017-10-18 08:14:46', 'Coordinador de Innovación y Soporte Tecnológico', '1', null, 'admin', 'REGISTRO', '2017-10-18 08:14:46');
INSERT INTO `log_convocatoria` VALUES ('874', '097-I', '1', '2017-10-10 16:05:19', 'Abogado', '2', null, 'admin', 'ACTUALIZACION', '2017-10-18 17:38:50');
INSERT INTO `log_convocatoria` VALUES ('875', '098-I', '1', '2017-10-11 15:52:33', 'Técnico en Comunicaciones', '2', null, 'admin', 'ACTUALIZACION', '2017-10-18 17:39:11');
INSERT INTO `log_convocatoria` VALUES ('876', '027-IX', '2', '2017-10-11 15:53:09', 'Acompañantes Pedagógico de Primaria', '2', null, 'admin', 'ACTUALIZACION', '2017-10-19 17:20:08');
INSERT INTO `log_convocatoria` VALUES ('877', '098-I', '1', '2017-10-11 15:52:33', 'Técnico en Comunicaciones', '3', null, 'admin', 'ACTUALIZACION', '2017-10-19 17:20:49');
INSERT INTO `log_convocatoria` VALUES ('878', '029-IV', '1', '2017-10-12 17:27:52', 'Coordinador administrativo y de recursos educativos', '2', null, 'admin', 'ACTUALIZACION', '2017-10-20 23:10:03');
INSERT INTO `log_convocatoria` VALUES ('879', '097-I', '1', '2017-10-10 16:05:19', 'Abogado', '3', null, 'admin', 'ACTUALIZACION', '2017-10-20 23:10:36');
INSERT INTO `log_convocatoria` VALUES ('880', 'P008-I', '1', '2017-10-20 23:11:24', 'Practicante Pre Profesional', '1', null, 'admin', 'REGISTRO', '2017-10-20 23:11:24');
INSERT INTO `log_convocatoria` VALUES ('881', '023-VII', '1', '2017-10-18 08:14:46', 'Coordinador de Innovación y Soporte Tecnológico', '2', null, 'admin', 'ACTUALIZACION', '2017-10-23 18:25:03');
INSERT INTO `log_convocatoria` VALUES ('882', '027-IX', '2', '2017-10-11 15:53:09', 'Acompañantes Pedagógico de Primaria', '3', null, 'admin', 'ACTUALIZACION', '2017-10-23 18:25:20');
INSERT INTO `log_convocatoria` VALUES ('883', '023-VII', '1', '2017-10-18 08:14:46', 'Coordinador de Innovación y Soporte Tecnológico', '3', null, 'admin', 'ACTUALIZACION', '2017-10-25 18:28:31');
INSERT INTO `log_convocatoria` VALUES ('884', '029-IV', '1', '2017-10-12 17:27:52', 'Coordinador administrativo y de recursos educativos', '3', null, 'admin', 'ACTUALIZACION', '2017-10-25 18:28:54');
INSERT INTO `log_convocatoria` VALUES ('885', '099-I', '1', '2017-10-25 18:29:23', 'Abogado', '1', null, 'admin', 'REGISTRO', '2017-10-25 18:29:23');
INSERT INTO `log_convocatoria` VALUES ('886', '024-XII', '1', '2017-10-26 18:26:27', 'S', '1', null, 'admin', 'REGISTRO', '2017-10-26 18:26:27');
INSERT INTO `log_convocatoria` VALUES ('887', '024-XII', '2', '2017-10-26 18:26:27', 'S', '1', null, 'admin', 'ACTUALIZACION', '2017-10-26 18:26:58');
INSERT INTO `log_convocatoria` VALUES ('888', '024-XII', '2', '2017-10-26 18:26:27', 'Personales de apoyo educativo', '1', null, 'admin', 'ACTUALIZACION', '2017-10-26 18:27:05');
INSERT INTO `log_convocatoria` VALUES ('889', 'P008-I', '1', '2017-10-20 23:11:24', 'Practicante Pre Profesional', '2', null, 'admin', 'ACTUALIZACION', '2017-10-30 18:20:56');
INSERT INTO `log_convocatoria` VALUES ('890', 'P008-I', '1', '2017-10-20 23:11:24', 'Practicante Pre Profesional', '3', null, 'admin', 'ACTUALIZACION', '2017-10-31 18:59:59');
INSERT INTO `log_convocatoria` VALUES ('891', '099-I', '1', '2017-10-25 18:29:23', 'Abogado', '2', null, 'admin', 'ACTUALIZACION', '2017-11-06 17:32:45');
INSERT INTO `log_convocatoria` VALUES ('892', '024-XII', '2', '2017-10-26 18:26:27', 'Personales de apoyo educativo', '3', null, 'admin', 'ACTUALIZACION', '2017-11-06 17:33:31');
INSERT INTO `log_convocatoria` VALUES ('893', '099-I', '1', '2017-10-25 18:29:23', 'Abogado', '3', null, 'admin', 'ACTUALIZACION', '2017-11-07 17:36:25');
INSERT INTO `log_convocatoria` VALUES ('894', '025-VI', '1', '2017-11-07 17:37:12', 'Psicólogo o Trabajador Social', '1', null, 'admin', 'REGISTRO', '2017-11-07 17:37:12');
INSERT INTO `log_convocatoria` VALUES ('895', '024-XI', '1', '2017-09-28 00:10:45', 'Personal de apoyo educativo', '3', null, 'admin', 'ACTUALIZACION', '2017-11-07 17:38:10');
INSERT INTO `log_convocatoria` VALUES ('896', '024-XI', '1', '2017-09-28 00:10:45', 'Personal de apoyo educativo', '3', null, 'admin', 'ACTUALIZACION', '2017-11-07 17:38:55');
INSERT INTO `log_convocatoria` VALUES ('897', '021-XI', '1', '2017-11-14 17:29:16', 'Personal de vigilancia', '1', null, 'admin', 'REGISTRO', '2017-11-14 17:29:16');
INSERT INTO `log_convocatoria` VALUES ('898', '023-VIII', '1', '2017-11-14 17:30:03', 'Coordinador de Innovación  Soporte  Tecnológico', '1', null, 'admin', 'REGISTRO', '2017-11-14 17:30:03');
INSERT INTO `log_convocatoria` VALUES ('899', '027-X', '1', '2017-11-14 17:31:07', 'Acompañante Pedagógico de Primaria', '1', null, 'admin', 'REGISTRO', '2017-11-14 17:31:07');
INSERT INTO `log_convocatoria` VALUES ('900', '025-VI', '1', '2017-11-07 17:37:12', 'Psicólogo o Trabajador Social', '2', null, 'admin', 'ACTUALIZACION', '2017-11-14 17:32:08');
INSERT INTO `log_convocatoria` VALUES ('901', '025-VI', '1', '2017-11-07 17:37:12', 'Psicólogo o Trabajador Social', '3', null, 'admin', 'ACTUALIZACION', '2017-11-17 16:11:24');
INSERT INTO `log_convocatoria` VALUES ('902', '025-VI', '1', '2017-11-07 17:37:12', 'Psicólogo o Trabajador Social', '2', null, 'admin', 'ACTUALIZACION', '2017-11-17 16:11:27');
INSERT INTO `log_convocatoria` VALUES ('903', '100-I', '1', '2017-11-17 16:12:37', 'Abogado(a) en Seguimiento Contractual', '1', null, 'admin', 'REGISTRO', '2017-11-17 16:12:37');
INSERT INTO `log_convocatoria` VALUES ('904', '101-I', '1', '2017-11-17 16:13:04', ' Secretaria', '1', null, 'admin', 'REGISTRO', '2017-11-17 16:13:04');
INSERT INTO `log_convocatoria` VALUES ('905', '102-I', '1', '2017-11-17 16:13:34', 'Asistente Administrativo', '1', null, 'admin', 'REGISTRO', '2017-11-17 16:13:34');
INSERT INTO `log_convocatoria` VALUES ('906', '103-I', '1', '2017-11-20 18:21:40', 'Responsable de Escalafón y Legajos', '1', null, 'admin', 'REGISTRO', '2017-11-20 18:21:40');
INSERT INTO `log_convocatoria` VALUES ('907', '027-X', '1', '2017-11-14 17:31:07', 'Acompañante Pedagógico de Primaria', '2', null, 'admin', 'ACTUALIZACION', '2017-11-21 20:42:10');
INSERT INTO `log_convocatoria` VALUES ('908', '023-VIII', '1', '2017-11-14 17:30:03', 'Coordinador de Innovación  Soporte  Tecnológico', '2', null, 'admin', 'ACTUALIZACION', '2017-11-21 20:42:25');
INSERT INTO `log_convocatoria` VALUES ('909', '021-XI', '1', '2017-11-14 17:29:16', 'Personal de vigilancia', '2', null, 'admin', 'ACTUALIZACION', '2017-11-21 20:42:41');
INSERT INTO `log_convocatoria` VALUES ('910', '025-VI', '1', '2017-11-07 17:37:12', 'Psicólogo o Trabajador Social', '3', null, 'admin', 'ACTUALIZACION', '2017-11-21 20:42:56');
INSERT INTO `log_convocatoria` VALUES ('911', '027-X', '1', '2017-11-14 17:31:07', 'Acompañante Pedagógico de Primaria', '3', null, 'admin', 'ACTUALIZACION', '2017-11-23 17:42:11');
INSERT INTO `log_convocatoria` VALUES ('912', '021-XI', '1', '2017-11-14 17:29:16', 'Personal de vigilancia', '3', null, 'admin', 'ACTUALIZACION', '2017-11-23 17:42:41');
INSERT INTO `log_convocatoria` VALUES ('913', '102-I', '1', '2017-11-17 16:13:34', 'Asistente Administrativo', '2', null, 'admin', 'ACTUALIZACION', '2017-11-24 17:30:25');
INSERT INTO `log_convocatoria` VALUES ('914', '101-I', '1', '2017-11-17 16:13:04', ' Secretaria', '2', null, 'admin', 'ACTUALIZACION', '2017-11-24 17:30:38');
INSERT INTO `log_convocatoria` VALUES ('915', '100-I', '1', '2017-11-17 16:12:37', 'Abogado(a) en Seguimiento Contractual', '2', null, 'admin', 'ACTUALIZACION', '2017-11-24 17:30:58');
INSERT INTO `log_convocatoria` VALUES ('916', '023-VIII', '1', '2017-11-14 17:30:03', 'Coordinador de Innovación  Soporte  Tecnológico', '3', null, 'admin', 'ACTUALIZACION', '2017-11-24 17:31:12');
INSERT INTO `log_convocatoria` VALUES ('917', '104', '1', '2017-11-24 17:31:58', 'Técnico Administrativo', '1', null, 'admin', 'REGISTRO', '2017-11-24 17:31:58');
INSERT INTO `log_convocatoria` VALUES ('918', '104-I', '1', '2017-11-24 17:32:02', 'Técnico Administrativo', '1', null, 'admin', 'REGISTRO', '2017-11-24 17:32:02');
INSERT INTO `log_convocatoria` VALUES ('919', '105-I', '1', '2017-11-24 17:32:39', 'Especialista en Monitoreo', '1', null, 'admin', 'REGISTRO', '2017-11-24 17:32:39');
INSERT INTO `log_convocatoria` VALUES ('920', '104', '1', '2017-11-24 17:31:58', 'Técnico Administrativo', '1', 'admin', 'admin', 'ELIMINACION', '2017-11-24 17:32:54');
INSERT INTO `log_convocatoria` VALUES ('921', '106', '1', '2017-11-27 16:41:04', 'Abogado', '1', null, 'admin', 'REGISTRO', '2017-11-27 16:41:04');
INSERT INTO `log_convocatoria` VALUES ('922', '106-I', '1', '2017-11-27 16:41:32', 'Abogado', '1', null, 'admin', 'REGISTRO', '2017-11-27 16:41:32');
INSERT INTO `log_convocatoria` VALUES ('923', '106-I', '1', '2017-11-27 16:41:32', 'Abogado', '1', 'admin', 'admin', 'ELIMINACION', '2017-11-27 16:41:44');
INSERT INTO `log_convocatoria` VALUES ('924', '106-I', '1', '2017-11-27 16:41:04', 'Abogado', '1', null, 'admin', 'ACTUALIZACION', '2017-11-27 16:41:53');
INSERT INTO `log_convocatoria` VALUES ('925', '024-XIII', '2', '2017-11-27 16:56:38', 'Personales de Apoyo Educativo', '1', null, 'admin', 'REGISTRO', '2017-11-27 16:56:38');
INSERT INTO `log_convocatoria` VALUES ('926', '103-I', '1', '2017-11-20 18:21:40', 'Responsable de Escalafón y Legajos', '2', null, 'admin', 'ACTUALIZACION', '2017-11-27 18:07:05');
INSERT INTO `log_convocatoria` VALUES ('927', '102-I', '1', '2017-11-17 16:13:34', 'Asistente Administrativo', '3', null, 'admin', 'ACTUALIZACION', '2017-11-27 18:07:18');
INSERT INTO `log_convocatoria` VALUES ('928', '100-I', '1', '2017-11-17 16:12:37', 'Abogado(a) en Seguimiento Contractual', '3', null, 'admin', 'ACTUALIZACION', '2017-11-28 17:33:01');
INSERT INTO `log_convocatoria` VALUES ('929', '103-I', '1', '2017-11-20 18:21:40', 'Responsable de Escalafón y Legajos', '3', null, 'admin', 'ACTUALIZACION', '2017-11-28 17:33:12');
INSERT INTO `log_convocatoria` VALUES ('930', '106-I', '1', '2017-11-27 16:41:04', 'Abogado', '3', null, 'admin', 'ACTUALIZACION', '2017-11-30 16:23:58');
INSERT INTO `log_convocatoria` VALUES ('931', '021-XII', '1', '2017-12-01 14:42:08', 'Personal de vigilancia', '1', null, 'admin', 'REGISTRO', '2017-12-01 14:42:08');
INSERT INTO `log_convocatoria` VALUES ('932', '029-V', '1', '2017-12-01 14:42:44', 'Coordinador administrativo y de recursos educativos', '1', null, 'admin', 'REGISTRO', '2017-12-01 14:42:44');
INSERT INTO `log_convocatoria` VALUES ('933', '104-I', '1', '2017-11-24 17:32:02', 'Técnico Administrativo', '3', null, 'admin', 'ACTUALIZACION', '2017-12-01 21:24:36');
INSERT INTO `log_convocatoria` VALUES ('934', '104-I', '1', '2017-11-24 17:32:02', 'Técnico Administrativo', '3', null, 'admin', 'ACTUALIZACION', '2017-12-01 21:24:40');
INSERT INTO `log_convocatoria` VALUES ('935', '105-I', '1', '2017-11-24 17:32:39', 'Especialista en Monitoreo', '2', null, 'admin', 'ACTUALIZACION', '2017-12-01 21:25:03');
INSERT INTO `log_convocatoria` VALUES ('936', '105-I', '1', '2017-11-24 17:32:39', 'Especialista en Monitoreo', '2', null, 'admin', 'ACTUALIZACION', '2017-12-01 21:25:25');
INSERT INTO `log_convocatoria` VALUES ('937', '104-I', '1', '2017-11-24 17:32:02', 'Técnico Administrativo', '2', null, 'admin', 'ACTUALIZACION', '2017-12-01 21:26:09');
INSERT INTO `log_convocatoria` VALUES ('938', '101-I', '1', '2017-11-17 16:13:04', ' Secretaria', '3', null, 'admin', 'ACTUALIZACION', '2017-12-02 22:30:04');
INSERT INTO `log_convocatoria` VALUES ('939', '105-I', '1', '2017-11-24 17:32:39', 'Especialista en Monitoreo', '3', null, 'admin', 'ACTUALIZACION', '2017-12-04 18:18:00');
INSERT INTO `log_convocatoria` VALUES ('940', '104-I', '1', '2017-11-24 17:32:02', 'Técnico Administrativo', '3', null, 'admin', 'ACTUALIZACION', '2017-12-04 18:18:13');
INSERT INTO `log_convocatoria` VALUES ('941', '021-XII', '1', '2017-12-01 14:42:08', 'Personal de vigilancia', '2', null, 'admin', 'ACTUALIZACION', '2017-12-11 22:52:43');
INSERT INTO `log_convocatoria` VALUES ('942', '024-XIII', '2', '2017-11-27 16:56:38', 'Personales de Apoyo Educativo', '2', null, 'admin', 'ACTUALIZACION', '2017-12-11 22:53:09');
INSERT INTO `log_convocatoria` VALUES ('943', '029-V', '1', '2017-12-01 14:42:44', 'Coordinador administrativo y de recursos educativos', '2', null, 'admin', 'ACTUALIZACION', '2017-12-11 22:53:38');
INSERT INTO `log_convocatoria` VALUES ('944', '029-V', '1', '2017-12-01 14:42:44', 'Coordinador administrativo y de recursos educativos', '3', null, 'admin', 'ACTUALIZACION', '2017-12-12 23:16:55');
INSERT INTO `log_convocatoria` VALUES ('945', '021-XII', '1', '2017-12-01 14:42:08', 'Personal de vigilancia', '3', null, 'admin', 'ACTUALIZACION', '2017-12-14 17:08:02');
INSERT INTO `log_convocatoria` VALUES ('946', '024-XIII', '2', '2017-11-27 16:56:38', 'Personales de Apoyo Educativo', '3', null, 'admin', 'ACTUALIZACION', '2017-12-14 17:08:20');
INSERT INTO `log_convocatoria` VALUES ('947', '107-I', '1', '2017-12-15 08:11:53', 'Técnico en Contabilidad', '1', null, 'admin', 'REGISTRO', '2017-12-15 08:11:53');
INSERT INTO `log_convocatoria` VALUES ('948', '122-I', '1', '2017-12-19 16:17:18', 'Técnico en Soporte para el Área de Recursos Humanos', '1', null, 'admin', 'REGISTRO', '2017-12-19 16:17:18');
INSERT INTO `log_convocatoria` VALUES ('949', '121-I', '1', '2017-12-19 16:18:04', 'Abogado como Secretario Técnico de Servir', '1', null, 'admin', 'REGISTRO', '2017-12-19 16:18:04');
INSERT INTO `log_convocatoria` VALUES ('950', '120-I', '1', '2017-12-19 16:18:40', 'Técnico Administrativo', '1', null, 'admin', 'REGISTRO', '2017-12-19 16:18:40');
INSERT INTO `log_convocatoria` VALUES ('951', '122-I', '1', '2017-12-19 16:17:18', 'Técnico en Soporte', '1', null, 'admin', 'ACTUALIZACION', '2017-12-19 16:19:01');
INSERT INTO `log_convocatoria` VALUES ('952', '121-I', '1', '2017-12-19 16:18:04', 'Abogado', '1', null, 'admin', 'ACTUALIZACION', '2017-12-19 16:19:14');
INSERT INTO `log_convocatoria` VALUES ('953', '119-I', '1', '2017-12-19 16:19:57', 'Especialista en Recursos Humanos', '1', null, 'admin', 'REGISTRO', '2017-12-19 16:19:57');
INSERT INTO `log_convocatoria` VALUES ('954', '118-I', '4', '2017-12-19 16:20:43', 'Técnicos en Recursos Humanos', '1', null, 'admin', 'REGISTRO', '2017-12-19 16:20:43');
INSERT INTO `log_convocatoria` VALUES ('955', '117-I', '1', '2017-12-19 16:22:21', 'Asistente administrativo', '1', null, 'admin', 'REGISTRO', '2017-12-19 16:22:21');
INSERT INTO `log_convocatoria` VALUES ('956', '116-I', '1', '2017-12-19 16:22:59', 'Asistente administrativo', '1', null, 'admin', 'REGISTRO', '2017-12-19 16:22:59');
INSERT INTO `log_convocatoria` VALUES ('957', '115-I', '4', '2017-12-19 16:23:40', 'Técnicos administrativos', '1', null, 'admin', 'REGISTRO', '2017-12-19 16:23:40');
INSERT INTO `log_convocatoria` VALUES ('958', '114-I', '1', '2017-12-19 16:24:26', 'Técnico administrativo', '1', null, 'admin', 'REGISTRO', '2017-12-19 16:24:26');
INSERT INTO `log_convocatoria` VALUES ('959', '113-I', '8', '2017-12-19 16:25:08', 'Técnicos en escalafón', '1', null, 'admin', 'REGISTRO', '2017-12-19 16:25:08');
INSERT INTO `log_convocatoria` VALUES ('960', '112-I', '2', '2017-12-19 16:25:47', 'Oficinistas', '1', null, 'admin', 'REGISTRO', '2017-12-19 16:25:47');
INSERT INTO `log_convocatoria` VALUES ('961', '111-I', '1', '2017-12-19 16:28:21', 'Médico', '1', null, 'admin', 'REGISTRO', '2017-12-19 16:28:21');
INSERT INTO `log_convocatoria` VALUES ('962', '110-I', '1', '2017-12-19 16:28:51', 'Asistenta social', '1', null, 'admin', 'REGISTRO', '2017-12-19 16:28:51');
INSERT INTO `log_convocatoria` VALUES ('963', '109-I', '5', '2017-12-19 16:29:56', 'Técnicos administrativos', '1', null, 'admin', 'REGISTRO', '2017-12-19 16:29:56');
INSERT INTO `log_convocatoria` VALUES ('964', '108-I', '1', '2017-12-19 16:30:30', 'Analista en Recursos Humanos', '1', null, 'admin', 'REGISTRO', '2017-12-19 16:30:30');
INSERT INTO `log_convocatoria` VALUES ('965', '112-I', '2', '2017-12-19 16:25:47', 'Oficinistas para el Equipo de Escalafón y Legajos', '1', null, 'admin', 'ACTUALIZACION', '2017-12-19 16:31:04');
INSERT INTO `log_convocatoria` VALUES ('966', '113-I', '8', '2017-12-19 16:25:08', 'Técnicos en escalafón', '3', null, 'admin', 'ACTUALIZACION', '2017-12-19 16:33:48');
INSERT INTO `log_convocatoria` VALUES ('967', '112-I', '2', '2017-12-19 16:25:47', 'Oficinistas para el Equipo de Escalafón y Legajos', '3', null, 'admin', 'ACTUALIZACION', '2017-12-19 16:34:00');
INSERT INTO `log_convocatoria` VALUES ('968', '111-I', '1', '2017-12-19 16:28:21', 'Médico', '3', null, 'admin', 'ACTUALIZACION', '2017-12-19 16:34:14');
INSERT INTO `log_convocatoria` VALUES ('969', '110-I', '1', '2017-12-19 16:28:51', 'Asistenta social', '3', null, 'admin', 'ACTUALIZACION', '2017-12-19 16:34:32');
INSERT INTO `log_convocatoria` VALUES ('970', '107-I', '1', '2017-12-15 08:11:53', 'Técnico en Contabilidad', '2', null, 'admin', 'ACTUALIZACION', '2017-12-19 16:36:31');
INSERT INTO `log_convocatoria` VALUES ('971', '120-I', '1', '2017-12-19 16:18:40', 'Técnico Administrativo', '3', null, 'admin', 'ACTUALIZACION', '2017-12-20 13:56:29');
INSERT INTO `log_convocatoria` VALUES ('972', '118-I', '4', '2017-12-19 16:20:43', 'Técnicos en Recursos Humanos', '3', null, 'admin', 'ACTUALIZACION', '2017-12-20 13:56:44');
INSERT INTO `log_convocatoria` VALUES ('973', '123-I', '1', '2017-12-20 16:09:51', 'Asistente legal', '1', null, 'admin', 'REGISTRO', '2017-12-20 16:09:51');
INSERT INTO `log_convocatoria` VALUES ('974', '124-I', '1', '2017-12-20 16:10:43', 'Abogado', '1', null, 'admin', 'REGISTRO', '2017-12-20 16:10:43');
INSERT INTO `log_convocatoria` VALUES ('975', '125-I', '1', '2017-12-20 16:11:16', 'Secretaria', '1', null, 'admin', 'REGISTRO', '2017-12-20 16:11:16');
INSERT INTO `log_convocatoria` VALUES ('976', '107-I', '1', '2017-12-15 08:11:53', 'Técnico en Contabilidad', '3', null, 'admin', 'ACTUALIZACION', '2017-12-21 04:13:32');
INSERT INTO `log_convocatoria` VALUES ('977', '129-I', '1', '2017-12-21 19:30:14', 'Técnico Legal', '1', null, 'admin', 'REGISTRO', '2017-12-21 19:30:14');
INSERT INTO `log_convocatoria` VALUES ('978', '126-I', '1', '2017-12-21 19:31:35', 'Responsable de Escalafón y Legajos', '1', null, 'admin', 'REGISTRO', '2017-12-21 19:31:35');
INSERT INTO `log_convocatoria` VALUES ('979', '128-I', '2', '2017-12-21 19:32:13', 'Abogados', '1', null, 'admin', 'REGISTRO', '2017-12-21 19:32:13');
INSERT INTO `log_convocatoria` VALUES ('980', '127-I', '3', '2017-12-21 19:32:40', 'Abogados', '1', null, 'admin', 'REGISTRO', '2017-12-21 19:32:40');
INSERT INTO `log_convocatoria` VALUES ('981', '130-I', '1', '2017-12-22 13:15:10', 'Especialista en Innovación Pedagógica', '1', null, 'admin', 'REGISTRO', '2017-12-22 13:15:10');
INSERT INTO `log_convocatoria` VALUES ('982', '131-I', '1', '2017-12-22 13:15:41', 'Profesional en Educación Inicial', '1', null, 'admin', 'REGISTRO', '2017-12-22 13:15:41');
INSERT INTO `log_convocatoria` VALUES ('983', '132-I', '1', '2017-12-22 13:16:18', 'Profesional en Educación Secundaria - CTA', '1', null, 'admin', 'REGISTRO', '2017-12-22 13:16:18');
INSERT INTO `log_convocatoria` VALUES ('984', '133-I', '1', '2017-12-26 16:42:35', 'Abogado', '1', null, 'admin', 'REGISTRO', '2017-12-26 16:42:35');
INSERT INTO `log_convocatoria` VALUES ('985', '134-I', '1', '2017-12-26 16:43:10', 'Arquitecto y/o Ingeniero Civil', '1', null, 'admin', 'REGISTRO', '2017-12-26 16:43:10');
INSERT INTO `log_convocatoria` VALUES ('986', '135-I', '1', '2017-12-26 16:43:55', 'Coordinador para el Equipo de Supervisión de IIEE', '1', null, 'admin', 'REGISTRO', '2017-12-26 16:43:55');
INSERT INTO `log_convocatoria` VALUES ('987', '136-I', '1', '2017-12-26 16:44:32', 'Profesional en Educación para Supervisión de IIEE', '1', null, 'admin', 'REGISTRO', '2017-12-26 16:44:32');
INSERT INTO `log_convocatoria` VALUES ('988', '137-I', '1', '2017-12-26 16:45:07', 'Técnico Administrativo para APAFA', '1', null, 'admin', 'REGISTRO', '2017-12-26 16:45:07');
INSERT INTO `log_convocatoria` VALUES ('989', '114-I', '1', '2017-12-19 16:24:26', 'Técnico administrativo', '2', null, 'admin', 'ACTUALIZACION', '2017-12-28 19:34:48');
INSERT INTO `log_convocatoria` VALUES ('990', '108-I', '1', '2017-12-19 16:30:30', 'Analista en Recursos Humanos', '2', null, 'admin', 'ACTUALIZACION', '2017-12-28 19:35:28');
INSERT INTO `log_convocatoria` VALUES ('991', '109-I', '5', '2017-12-19 16:29:56', 'Técnicos administrativos', '2', null, 'admin', 'ACTUALIZACION', '2017-12-28 19:35:41');
INSERT INTO `log_convocatoria` VALUES ('992', '123-I', '1', '2017-12-20 16:09:51', 'Asistente legal', '2', null, 'admin', 'ACTUALIZACION', '2017-12-28 19:36:00');
INSERT INTO `log_convocatoria` VALUES ('993', '124-I', '1', '2017-12-20 16:10:43', 'Abogado', '2', null, 'admin', 'ACTUALIZACION', '2017-12-28 19:36:12');
INSERT INTO `log_convocatoria` VALUES ('994', '119-I', '1', '2017-12-19 16:19:57', 'Especialista en Recursos Humanos', '2', null, 'admin', 'ACTUALIZACION', '2017-12-28 19:36:31');
INSERT INTO `log_convocatoria` VALUES ('995', '125-I', '1', '2017-12-20 16:11:16', 'Secretaria', '2', null, 'admin', 'ACTUALIZACION', '2017-12-28 19:36:44');
INSERT INTO `log_convocatoria` VALUES ('996', '121-I', '1', '2017-12-19 16:18:04', 'Abogado', '2', null, 'admin', 'ACTUALIZACION', '2017-12-28 19:40:19');
INSERT INTO `log_convocatoria` VALUES ('997', '122-I', '1', '2017-12-19 16:17:18', 'Técnico en Soporte', '2', null, 'admin', 'ACTUALIZACION', '2017-12-28 19:40:33');
INSERT INTO `log_convocatoria` VALUES ('998', '115-I', '4', '2017-12-19 16:23:40', 'Técnicos administrativos', '2', null, 'admin', 'ACTUALIZACION', '2017-12-28 19:40:55');
INSERT INTO `log_convocatoria` VALUES ('999', '116-I', '1', '2017-12-19 16:22:59', 'Asistente administrativo', '2', null, 'admin', 'ACTUALIZACION', '2017-12-28 19:41:06');
INSERT INTO `log_convocatoria` VALUES ('1000', '117-I', '1', '2017-12-19 16:22:21', 'Asistente administrativo', '2', null, 'admin', 'ACTUALIZACION', '2017-12-28 19:41:19');
INSERT INTO `log_convocatoria` VALUES ('1001', 'P009-I', '1', '2017-12-29 17:01:31', ' Practicante Pre Profesional para el Área de Asesoría Jurídica\r\n', '1', null, 'admin', 'REGISTRO', '2017-12-29 17:01:31');
INSERT INTO `log_convocatoria` VALUES ('1002', '117-I', '1', '2017-12-19 16:22:21', 'Asistente administrativo', '3', null, 'admin', 'ACTUALIZACION', '2017-12-29 19:32:59');
INSERT INTO `log_convocatoria` VALUES ('1003', '115-I', '4', '2017-12-19 16:23:40', 'Técnicos administrativos', '3', null, 'admin', 'ACTUALIZACION', '2017-12-29 19:33:14');
INSERT INTO `log_convocatoria` VALUES ('1004', '114-I', '1', '2017-12-19 16:24:26', 'Técnico administrativo', '3', null, 'admin', 'ACTUALIZACION', '2017-12-29 19:33:30');
INSERT INTO `log_convocatoria` VALUES ('1005', '109-I', '5', '2017-12-19 16:29:56', 'Técnicos administrativos', '3', null, 'admin', 'ACTUALIZACION', '2017-12-29 19:34:08');
INSERT INTO `log_convocatoria` VALUES ('1006', '108-I', '1', '2017-12-19 16:30:30', 'Analista en Recursos Humanos', '3', null, 'admin', 'ACTUALIZACION', '2017-12-29 19:34:26');
INSERT INTO `log_convocatoria` VALUES ('1007', '125-I', '1', '2017-12-20 16:11:16', 'Secretaria', '3', null, 'admin', 'ACTUALIZACION', '2017-12-29 19:35:25');
INSERT INTO `log_convocatoria` VALUES ('1008', '124-I', '1', '2017-12-20 16:10:43', 'Abogado', '3', null, 'admin', 'ACTUALIZACION', '2017-12-29 19:35:39');
INSERT INTO `log_convocatoria` VALUES ('1009', '123-I', '1', '2017-12-20 16:09:51', 'Asistente legal', '3', null, 'admin', 'ACTUALIZACION', '2017-12-29 19:35:56');
INSERT INTO `log_convocatoria` VALUES ('1010', '122-I', '1', '2017-12-19 16:17:18', 'Técnico en Soporte', '3', null, 'admin', 'ACTUALIZACION', '2017-12-29 19:36:13');
INSERT INTO `log_convocatoria` VALUES ('1011', '121-I', '1', '2017-12-19 16:18:04', 'Abogado', '3', null, 'admin', 'ACTUALIZACION', '2017-12-29 19:36:25');
INSERT INTO `log_convocatoria` VALUES ('1012', '119-I', '1', '2017-12-19 16:19:57', 'Especialista en Recursos Humanos', '3', null, 'admin', 'ACTUALIZACION', '2017-12-29 19:36:40');
INSERT INTO `log_convocatoria` VALUES ('1013', '116-I', '1', '2017-12-19 16:22:59', 'Asistente administrativo', '3', null, 'admin', 'ACTUALIZACION', '2017-12-29 19:52:54');
INSERT INTO `log_convocatoria` VALUES ('1014', '126-I', '1', '2017-12-21 19:31:35', 'Responsable de Escalafón y Legajos', '2', null, 'admin', 'ACTUALIZACION', '2017-12-30 04:58:21');
INSERT INTO `log_convocatoria` VALUES ('1015', '127-I', '3', '2017-12-21 19:32:40', 'Abogados', '2', null, 'admin', 'ACTUALIZACION', '2017-12-30 04:59:27');
INSERT INTO `log_convocatoria` VALUES ('1016', '128-I', '2', '2017-12-21 19:32:13', 'Abogados', '2', null, 'admin', 'ACTUALIZACION', '2017-12-30 05:02:16');
INSERT INTO `log_convocatoria` VALUES ('1017', '129-I', '1', '2017-12-21 19:30:14', 'Técnico Legal', '2', null, 'admin', 'ACTUALIZACION', '2017-12-30 05:04:18');
INSERT INTO `log_convocatoria` VALUES ('1018', '129-I', '1', '2017-12-21 19:30:14', 'Técnico Legal', '3', null, 'admin', 'ACTUALIZACION', '2018-01-03 23:31:26');
INSERT INTO `log_convocatoria` VALUES ('1019', '128-I', '2', '2017-12-21 19:32:13', 'Abogados', '3', null, 'admin', 'ACTUALIZACION', '2018-01-03 23:31:57');
INSERT INTO `log_convocatoria` VALUES ('1020', '127-I', '3', '2017-12-21 19:32:40', 'Abogados', '3', null, 'admin', 'ACTUALIZACION', '2018-01-03 23:32:22');
INSERT INTO `log_convocatoria` VALUES ('1021', '126-I', '1', '2017-12-21 19:31:35', 'Responsable de Escalafón y Legajos', '3', null, 'admin', 'ACTUALIZACION', '2018-01-03 23:32:46');
INSERT INTO `log_convocatoria` VALUES ('1022', '130-I', '1', '2017-12-22 13:15:10', 'Especialista en Innovación Pedagógica', '2', null, 'admin', 'ACTUALIZACION', '2018-01-03 23:35:42');
INSERT INTO `log_convocatoria` VALUES ('1023', '131-I', '1', '2017-12-22 13:15:41', 'Profesional en Educación Inicial', '2', null, 'admin', 'ACTUALIZACION', '2018-01-03 23:36:11');
INSERT INTO `log_convocatoria` VALUES ('1024', '132-I', '1', '2017-12-22 13:16:18', 'Profesional en Educación Secundaria - CTA', '2', null, 'admin', 'ACTUALIZACION', '2018-01-03 23:36:33');
INSERT INTO `log_convocatoria` VALUES ('1025', '133-I', '1', '2017-12-26 16:42:35', 'Abogado', '2', null, 'admin', 'ACTUALIZACION', '2018-01-04 18:56:47');
INSERT INTO `log_convocatoria` VALUES ('1026', '134-I', '1', '2017-12-26 16:43:10', 'Arquitecto y/o Ingeniero Civil', '2', null, 'admin', 'ACTUALIZACION', '2018-01-04 18:56:59');
INSERT INTO `log_convocatoria` VALUES ('1027', '135-I', '1', '2017-12-26 16:43:55', 'Coordinador para el Equipo de Supervisión de IIEE', '3', null, 'admin', 'ACTUALIZACION', '2018-01-04 18:57:16');
INSERT INTO `log_convocatoria` VALUES ('1028', '136-I', '1', '2017-12-26 16:44:32', 'Profesional en Educación para Supervisión de IIEE', '2', null, 'admin', 'ACTUALIZACION', '2018-01-04 18:57:28');
INSERT INTO `log_convocatoria` VALUES ('1029', '137-I', '1', '2017-12-26 16:45:07', 'Técnico Administrativo para APAFA', '2', null, 'admin', 'ACTUALIZACION', '2018-01-04 18:57:44');
INSERT INTO `log_convocatoria` VALUES ('1030', '130-I', '1', '2017-12-22 13:15:10', 'Especialista en Innovación Pedagógica', '3', null, 'admin', 'ACTUALIZACION', '2018-01-05 18:35:23');
INSERT INTO `log_convocatoria` VALUES ('1031', '131-I', '1', '2017-12-22 13:15:41', 'Profesional en Educación Inicial', '3', null, 'admin', 'ACTUALIZACION', '2018-01-05 18:35:34');
INSERT INTO `log_convocatoria` VALUES ('1032', '132-I', '1', '2017-12-22 13:16:18', 'Profesional en Educación Secundaria - CTA', '3', null, 'admin', 'ACTUALIZACION', '2018-01-05 18:35:44');
INSERT INTO `log_convocatoria` VALUES ('1033', '133-I', '1', '2017-12-26 16:42:35', 'Abogado', '3', null, 'admin', 'ACTUALIZACION', '2018-01-05 18:36:03');
INSERT INTO `log_convocatoria` VALUES ('1034', '134-I', '1', '2017-12-26 16:43:10', 'Arquitecto y/o Ingeniero Civil', '3', null, 'admin', 'ACTUALIZACION', '2018-01-05 18:36:14');
INSERT INTO `log_convocatoria` VALUES ('1035', '136-I', '1', '2017-12-26 16:44:32', 'Profesional en Educación para Supervisión de IIEE', '3', null, 'admin', 'ACTUALIZACION', '2018-01-05 18:37:45');
INSERT INTO `log_convocatoria` VALUES ('1036', '137-I', '1', '2017-12-26 16:45:07', 'Técnico Administrativo para APAFA', '3', null, 'admin', 'ACTUALIZACION', '2018-01-05 18:38:00');
INSERT INTO `log_convocatoria` VALUES ('1037', 'P009-I', '1', '2017-12-29 17:01:31', ' Practicante Pre Profesional para el Área de Asesoría Jurídica\r\n', '2', null, 'admin', 'ACTUALIZACION', '2018-01-08 16:39:29');
INSERT INTO `log_convocatoria` VALUES ('1038', 'P009-I', '1', '2017-12-29 17:01:31', ' Practicante Pre Profesional para el Área de Asesoría Jurídica\r\n', '3', null, 'admin', 'ACTUALIZACION', '2018-01-09 15:51:52');
INSERT INTO `log_convocatoria` VALUES ('1039', '138', '1', '2018-01-11 17:40:36', 'Arquitecto o Ingeniero Civil', '1', null, 'admin', 'REGISTRO', '2018-01-11 17:40:36');
INSERT INTO `log_convocatoria` VALUES ('1040', '139-I', '1', '2018-01-11 17:41:20', 'Especialista para la Gestión del Incremento en el Acceso', '1', null, 'admin', 'REGISTRO', '2018-01-11 17:41:20');
INSERT INTO `log_convocatoria` VALUES ('1041', '140-I', '1', '2018-01-11 17:42:16', 'Técnico en Infraestructura', '1', null, 'admin', 'REGISTRO', '2018-01-11 17:42:16');
INSERT INTO `log_convocatoria` VALUES ('1042', '138-I', '1', '2018-01-11 17:40:36', 'Arquitecto o Ingeniero Civil', '1', null, 'admin', 'ACTUALIZACION', '2018-01-11 17:42:47');
INSERT INTO `log_convocatoria` VALUES ('1043', '141-I', '1', '2018-01-12 18:24:15', 'Notificador', '1', null, 'admin', 'REGISTRO', '2018-01-12 18:24:15');
INSERT INTO `log_convocatoria` VALUES ('1044', '142-I', '1', '2018-01-12 18:26:04', 'Coordinador de Actas y Certificados', '1', null, 'admin', 'REGISTRO', '2018-01-12 18:26:04');
INSERT INTO `log_convocatoria` VALUES ('1045', '001', '1', '2018-01-16 15:17:48', 'Practicante Pre o Profesional para el Equipo de Reclutamiento y Selección', '1', null, 'admin', 'REGISTRO', '2018-01-16 15:17:48');
INSERT INTO `log_convocatoria` VALUES ('1046', '002', '1', '2018-01-16 15:19:40', 'Practicante Pre o Profesional para la Oficina de COPROA', '1', null, 'admin', 'REGISTRO', '2018-01-16 15:19:40');
INSERT INTO `log_convocatoria` VALUES ('1047', 'P003-I', '1', '2018-01-18 18:01:34', 'Practicante Pre Profesional para el Órgano de Dirección', '1', null, 'admin', 'REGISTRO', '2018-01-18 18:01:34');
INSERT INTO `log_convocatoria` VALUES ('1048', '140-I', '1', '2017-12-31 17:42:16', 'Técnico en Infraestructura', '2', null, 'admin', 'ACTUALIZACION', '2018-01-18 22:12:26');
INSERT INTO `log_convocatoria` VALUES ('1049', '139-I', '1', '2017-12-31 17:41:20', 'Especialista para la Gestión del Incremento en el Acceso', '2', null, 'admin', 'ACTUALIZACION', '2018-01-18 22:13:13');
INSERT INTO `log_convocatoria` VALUES ('1050', '138-I', '1', '2017-12-31 17:40:36', 'Arquitecto o Ingeniero Civil', '2', null, 'admin', 'ACTUALIZACION', '2018-01-18 22:13:50');
INSERT INTO `log_convocatoria` VALUES ('1051', '141-I', '1', '2018-01-12 18:24:15', 'Notificador', '1', null, 'admin', 'ACTUALIZACION', '2018-01-19 19:12:23');
INSERT INTO `log_convocatoria` VALUES ('1052', '138-I', '1', '2017-12-31 17:40:36', 'Arquitecto o Ingeniero Civil', '3', null, 'admin', 'ACTUALIZACION', '2018-01-19 19:23:32');
INSERT INTO `log_convocatoria` VALUES ('1053', '142-I', '1', '2018-01-12 18:26:04', 'Coordinador de Actas y Certificados', '2', null, 'admin', 'ACTUALIZACION', '2018-01-19 19:24:43');
INSERT INTO `log_convocatoria` VALUES ('1054', '141-I', '1', '2018-01-12 18:24:15', 'Notificador', '2', null, 'admin', 'ACTUALIZACION', '2018-01-19 19:25:09');
INSERT INTO `log_convocatoria` VALUES ('1055', '141-I', '1', '2018-01-12 18:24:15', 'Notificador', '2', null, 'admin', 'ACTUALIZACION', '2018-01-19 19:27:38');
INSERT INTO `log_convocatoria` VALUES ('1056', '139-I', '1', '2017-12-31 17:41:20', 'Especialista para la Gestión del Incremento en el Acceso', '3', null, 'admin', 'ACTUALIZACION', '2018-01-19 19:28:44');
INSERT INTO `log_convocatoria` VALUES ('1057', '140-I', '1', '2017-12-31 17:42:16', 'Técnico en Infraestructura', '3', null, 'admin', 'ACTUALIZACION', '2018-01-19 19:32:04');
INSERT INTO `log_convocatoria` VALUES ('1058', '001', '1', '2018-01-16 15:17:48', 'Practicante Pre o Profesional para el Equipo de Reclutamiento y Selección', '2', null, 'admin', 'ACTUALIZACION', '2018-01-22 18:15:53');
INSERT INTO `log_convocatoria` VALUES ('1059', '002', '1', '2018-01-16 15:19:40', 'Practicante Pre o Profesional para la Oficina de COPROA', '2', null, 'admin', 'ACTUALIZACION', '2018-01-22 18:16:18');
INSERT INTO `log_convocatoria` VALUES ('1060', 'P003-I', '1', '2018-01-18 18:01:34', 'Practicante Pre Profesional para el Órgano de Dirección', '1', null, 'admin', 'ACTUALIZACION', '2018-01-22 18:16:32');
INSERT INTO `log_convocatoria` VALUES ('1061', '141-I', '1', '2018-01-12 18:24:15', 'Notificador', '3', null, 'admin', 'ACTUALIZACION', '2018-01-23 17:41:05');
INSERT INTO `log_convocatoria` VALUES ('1062', '142-I', '1', '2018-01-12 18:26:04', 'Coordinador de Actas y Certificados', '3', null, 'admin', 'ACTUALIZACION', '2018-01-23 17:41:17');
INSERT INTO `log_convocatoria` VALUES ('1063', '001', '1', '2018-01-16 15:17:48', 'Practicante Pre o Profesional para el Equipo de Reclutamiento y Selección', '3', null, 'admin', 'ACTUALIZACION', '2018-01-23 17:41:36');
INSERT INTO `log_convocatoria` VALUES ('1064', '002', '1', '2018-01-16 15:19:40', 'Practicante Pre o Profesional para la Oficina de COPROA', '3', null, 'admin', 'ACTUALIZACION', '2018-01-23 17:43:10');
INSERT INTO `log_convocatoria` VALUES ('1065', 'P003-I', '1', '2018-01-18 18:01:34', 'Practicante Pre Profesional para el Órgano de Dirección', '2', null, 'admin', 'ACTUALIZACION', '2018-01-23 17:44:17');
INSERT INTO `log_convocatoria` VALUES ('1066', '002-I', '1', '2018-01-23 23:46:30', 'Técnico Administrativo', '1', null, 'admin', 'REGISTRO', '2018-01-23 23:46:30');
INSERT INTO `log_convocatoria` VALUES ('1067', '001-I', '1', '2018-01-23 23:47:43', 'Técnico en Escalafón', '1', null, 'admin', 'REGISTRO', '2018-01-23 23:47:43');
INSERT INTO `log_convocatoria` VALUES ('1068', '006-I', '1', '2018-01-23 23:48:53', 'Técnico  Administrativo', '1', null, 'admin', 'REGISTRO', '2018-01-23 23:48:53');
INSERT INTO `log_convocatoria` VALUES ('1069', '005-I', '1', '2018-01-23 23:50:03', 'Asistente Adminitrativo', '1', null, 'admin', 'REGISTRO', '2018-01-23 23:50:03');
INSERT INTO `log_convocatoria` VALUES ('1070', '004-I', '1', '2018-01-23 23:52:56', 'Técnico Administrativo', '1', null, 'admin', 'REGISTRO', '2018-01-23 23:52:56');
INSERT INTO `log_convocatoria` VALUES ('1071', '003-I', '1', '2018-01-23 23:55:56', 'Técnico Administrativo', '1', null, 'admin', 'REGISTRO', '2018-01-23 23:55:56');
INSERT INTO `log_convocatoria` VALUES ('1072', 'P003-I', '1', '2018-01-18 18:01:34', 'Practicante Pre Profesional para el Órgano de Dirección', '3', null, 'admin', 'ACTUALIZACION', '2018-01-24 23:44:10');
INSERT INTO `log_convocatoria` VALUES ('1073', '007-I', '1', '2018-01-25 18:07:16', 'Abogado', '1', null, 'admin', 'REGISTRO', '2018-01-25 18:07:16');
INSERT INTO `log_convocatoria` VALUES ('1074', '008-I', '1', '2018-01-25 18:07:51', 'Técnico Administrativo', '1', null, 'admin', 'REGISTRO', '2018-01-25 18:07:51');
INSERT INTO `log_convocatoria` VALUES ('1075', '009-I', '1', '2018-01-25 18:08:25', 'Técnico Administrativo', '1', null, 'admin', 'REGISTRO', '2018-01-25 18:08:25');
INSERT INTO `log_convocatoria` VALUES ('1076', '009-I', '1', '2018-01-25 18:08:25', 'Analista en Racionalización', '1', null, 'admin', 'ACTUALIZACION', '2018-01-26 08:04:52');
INSERT INTO `log_convocatoria` VALUES ('1077', '007-I', '1', '2018-01-25 18:07:16', 'Abogado', '1', null, 'admin', 'ACTUALIZACION', '2018-01-26 12:23:47');
INSERT INTO `log_convocatoria` VALUES ('1078', '008-I', '1', '2018-01-25 18:07:51', 'Técnico Administrativo', '1', null, 'admin', 'ACTUALIZACION', '2018-01-26 12:24:26');
INSERT INTO `log_convocatoria` VALUES ('1079', '008-I', '1', '2018-01-25 18:07:51', 'Técnico Administrativo', '1', null, 'admin', 'ACTUALIZACION', '2018-01-26 12:24:38');
INSERT INTO `log_convocatoria` VALUES ('1080', '004', '1', '2018-01-26 16:29:36', 'Practicante Pre profesional para el Equipo de Tecnologías de la Información', '1', null, 'admin', 'REGISTRO', '2018-01-26 16:29:36');
INSERT INTO `log_convocatoria` VALUES ('1081', '004-I', '1', '2018-01-26 16:29:36', 'Practicante Pre profesional para el Equipo de Tecnologías de la Información', '1', null, 'admin', 'ACTUALIZACION', '2018-01-26 16:30:25');
INSERT INTO `log_convocatoria` VALUES ('1082', '010-I', '1', '2018-01-29 10:09:41', 'Jefe de Recursos Humanos', '1', null, 'admin', 'REGISTRO', '2018-01-29 10:09:41');
INSERT INTO `log_convocatoria` VALUES ('1083', '011-I', '1', '2018-01-29 10:10:16', 'Coordinador para el Equipo de Supervisión de IIEE', '1', null, 'admin', 'REGISTRO', '2018-01-29 10:10:17');
INSERT INTO `log_convocatoria` VALUES ('1084', '012-I', '1', '2018-01-29 10:10:51', 'Médico', '1', null, 'admin', 'REGISTRO', '2018-01-29 10:10:51');
INSERT INTO `log_convocatoria` VALUES ('1085', '004-I', '1', '2018-01-23 23:52:56', 'Técnico Administrativo', '3', null, 'admin', 'ACTUALIZACION', '2018-01-30 22:18:46');
INSERT INTO `log_convocatoria` VALUES ('1086', '005-I', '1', '2018-01-23 23:50:03', 'Asistente Adminitrativo', '2', null, 'admin', 'ACTUALIZACION', '2018-01-30 22:19:28');
INSERT INTO `log_convocatoria` VALUES ('1087', '006-I', '1', '2018-01-23 23:48:53', 'Técnico  Administrativo', '2', null, 'admin', 'ACTUALIZACION', '2018-01-30 22:20:22');
INSERT INTO `log_convocatoria` VALUES ('1088', '001-I', '1', '2018-01-23 23:47:43', 'Técnico en Escalafón', '2', null, 'admin', 'ACTUALIZACION', '2018-01-30 22:20:39');
INSERT INTO `log_convocatoria` VALUES ('1089', '002-I', '1', '2018-01-23 23:46:30', 'Técnico Administrativo', '2', null, 'admin', 'ACTUALIZACION', '2018-01-30 22:22:04');
INSERT INTO `log_convocatoria` VALUES ('1090', '003-I', '1', '2018-01-23 23:55:56', 'Técnico Administrativo', '2', null, 'admin', 'ACTUALIZACION', '2018-01-30 22:24:49');
INSERT INTO `log_convocatoria` VALUES ('1091', '006-I', '1', '2018-01-23 23:48:53', 'Técnico  Administrativo', '3', null, 'admin', 'ACTUALIZACION', '2018-01-31 22:55:44');
INSERT INTO `log_convocatoria` VALUES ('1092', '005-I', '1', '2018-01-23 23:50:03', 'Asistente Adminitrativo', '3', null, 'admin', 'ACTUALIZACION', '2018-01-31 22:56:19');
INSERT INTO `log_convocatoria` VALUES ('1093', '003-I', '1', '2018-01-23 23:55:56', 'Técnico Administrativo', '3', null, 'admin', 'ACTUALIZACION', '2018-01-31 22:56:47');
INSERT INTO `log_convocatoria` VALUES ('1094', '002-I', '1', '2018-01-23 23:46:30', 'Técnico Administrativo', '3', null, 'admin', 'ACTUALIZACION', '2018-01-31 22:57:17');
INSERT INTO `log_convocatoria` VALUES ('1095', '001-I', '1', '2018-01-23 23:47:43', 'Técnico en Escalafón', '3', null, 'admin', 'ACTUALIZACION', '2018-01-31 22:58:43');
INSERT INTO `log_convocatoria` VALUES ('1096', '007-I', '1', '2018-01-25 18:07:16', 'Abogado', '3', null, 'admin', 'ACTUALIZACION', '2018-02-01 18:20:37');
INSERT INTO `log_convocatoria` VALUES ('1097', '008-I', '1', '2018-01-25 18:07:51', 'Técnico Administrativo', '3', null, 'admin', 'ACTUALIZACION', '2018-02-01 18:21:02');
INSERT INTO `log_convocatoria` VALUES ('1098', '009-I', '1', '2018-01-25 18:08:25', 'Analista en Racionalización', '2', null, 'admin', 'ACTUALIZACION', '2018-02-01 18:21:15');
INSERT INTO `log_convocatoria` VALUES ('1099', '004-I', '1', '2018-01-26 16:29:36', 'Practicante Pre profesional para el Equipo de Tecnologías de la Información', '2', null, 'admin', 'ACTUALIZACION', '2018-02-01 18:21:30');
INSERT INTO `log_convocatoria` VALUES ('1100', '009-I', '1', '2018-01-25 18:08:25', 'Analista en Racionalización', '3', null, 'admin', 'ACTUALIZACION', '2018-02-02 22:47:35');
INSERT INTO `log_convocatoria` VALUES ('1101', '008-I', '1', '2018-01-25 18:07:51', 'Técnico Administrativo', '3', null, 'admin', 'ACTUALIZACION', '2018-02-02 22:48:32');
INSERT INTO `log_convocatoria` VALUES ('1102', '004-I', '1', '2018-01-26 16:29:36', 'Practicante Pre profesional para el Equipo de Tecnologías de la Información', '3', null, 'admin', 'ACTUALIZACION', '2018-02-02 22:49:09');
INSERT INTO `log_convocatoria` VALUES ('1103', '010-I', '1', '2018-01-29 10:09:41', 'Jefe de Recursos Humanos', '2', null, 'admin', 'ACTUALIZACION', '2018-02-02 22:49:51');
INSERT INTO `log_convocatoria` VALUES ('1104', '011-I', '1', '2018-01-29 10:10:16', 'Coordinador para el Equipo de Supervisión de IIEE', '2', null, 'admin', 'ACTUALIZACION', '2018-02-02 22:50:13');
INSERT INTO `log_convocatoria` VALUES ('1105', '012-I', '1', '2018-01-29 10:10:51', 'Médico', '2', null, 'admin', 'ACTUALIZACION', '2018-02-02 22:51:13');
INSERT INTO `log_convocatoria` VALUES ('1106', '011-I', '1', '2018-01-29 10:10:16', 'Coordinador para el Equipo de Supervisión de IIEE', '3', null, 'admin', 'ACTUALIZACION', '2018-02-05 08:46:57');
INSERT INTO `log_convocatoria` VALUES ('1107', '012-I', '1', '2018-01-29 10:10:51', 'Médico', '3', null, 'admin', 'ACTUALIZACION', '2018-02-05 21:32:37');
INSERT INTO `log_convocatoria` VALUES ('1108', '012-I', '1', '2018-01-29 10:10:51', 'Médico', '3', null, 'admin', 'ACTUALIZACION', '2018-02-05 21:32:44');
INSERT INTO `log_convocatoria` VALUES ('1109', '010-I', '1', '2018-01-29 10:09:41', 'Jefe de Recursos Humanos', '3', null, 'admin', 'ACTUALIZACION', '2018-02-05 21:34:29');
INSERT INTO `log_convocatoria` VALUES ('1110', '013-I', '4', '2018-02-08 15:05:07', 'Personales de apoyo educativo', '1', null, 'admin', 'REGISTRO', '2018-02-08 15:05:07');
INSERT INTO `log_convocatoria` VALUES ('1111', '013-I', '4', '2018-02-08 15:05:07', 'Personales de apoyo educativo', '3', null, 'admin', 'ACTUALIZACION', '2018-02-08 15:05:34');
INSERT INTO `log_convocatoria` VALUES ('1112', '014-I', '1', '2018-02-08 15:06:05', 'Personal de Secretaria', '1', null, 'admin', 'REGISTRO', '2018-02-08 15:06:05');
INSERT INTO `log_convocatoria` VALUES ('1113', '014-I', '1', '2018-02-08 15:06:05', 'Personal de Secretaria', '3', null, 'admin', 'ACTUALIZACION', '2018-02-08 15:06:53');
INSERT INTO `log_convocatoria` VALUES ('1114', '014-I', '1', '2018-02-08 15:06:05', 'Personal de Secretaria', '3', null, 'admin', 'ACTUALIZACION', '2018-02-08 15:07:07');
INSERT INTO `log_convocatoria` VALUES ('1115', '015-I', '10', '2018-02-08 15:07:37', 'Personales de vigilancia', '1', null, 'admin', 'REGISTRO', '2018-02-08 15:07:37');
INSERT INTO `log_convocatoria` VALUES ('1116', '015-I', '10', '2018-02-08 15:07:37', 'Personales de vigilancia', '3', null, 'admin', 'ACTUALIZACION', '2018-02-08 15:08:06');
INSERT INTO `log_convocatoria` VALUES ('1117', '016-I', '1', '2018-02-14 16:52:32', 'Técnico Administrativo', '1', null, 'admin', 'REGISTRO', '2018-02-14 16:52:32');
INSERT INTO `log_convocatoria` VALUES ('1118', '017-I', '1', '2018-02-14 16:53:06', 'Asistente Administrativo', '1', null, 'admin', 'REGISTRO', '2018-02-14 16:53:06');
INSERT INTO `log_convocatoria` VALUES ('1119', '018-I', '1', '2018-02-19 10:44:14', 'Técnico administrativo', '1', null, 'admin', 'REGISTRO', '2018-02-19 10:44:14');
INSERT INTO `log_convocatoria` VALUES ('1120', 'P005-I', '1', '2018-02-19 10:44:49', 'Practicante Pre profesional para el Equipo de Tecnologías de la Información', '1', null, 'admin', 'REGISTRO', '2018-02-19 10:44:49');
INSERT INTO `log_convocatoria` VALUES ('1121', '016-I', '1', '2018-02-14 16:52:32', 'Técnico Administrativo', '3', null, 'admin', 'ACTUALIZACION', '2018-02-21 18:13:47');
INSERT INTO `log_convocatoria` VALUES ('1122', '019-I', '1', '2018-02-21 18:14:56', 'Abogado', '1', null, 'admin', 'REGISTRO', '2018-02-21 18:14:56');
INSERT INTO `log_convocatoria` VALUES ('1123', '020-I', '1', '2018-02-22 09:24:21', 'Coordinador para el Equipo de Supervisión a IIEE', '1', null, 'admin', 'REGISTRO', '2018-02-22 09:24:21');
INSERT INTO `log_convocatoria` VALUES ('1124', '021-I', '1', '2018-02-22 09:25:00', 'Abogado', '1', null, 'admin', 'REGISTRO', '2018-02-22 09:25:00');
INSERT INTO `log_convocatoria` VALUES ('1125', '017-I', '1', '2018-02-14 16:53:06', 'Asistente Administrativo', '2', null, 'admin', 'ACTUALIZACION', '2018-02-22 10:05:07');
INSERT INTO `log_convocatoria` VALUES ('1126', '022-I', '1', '2018-02-23 17:37:49', 'Médico', '1', null, 'admin', 'REGISTRO', '2018-02-23 17:37:49');
INSERT INTO `log_convocatoria` VALUES ('1127', 'P005-I', '1', '2018-02-19 10:44:49', 'Practicante Pre profesional para el Equipo de Tecnologías de la Información', '2', null, 'admin', 'ACTUALIZACION', '2018-02-26 17:56:17');
INSERT INTO `log_convocatoria` VALUES ('1128', '017-I', '1', '2018-02-14 16:53:06', 'Asistente Administrativo', '3', null, 'admin', 'ACTUALIZACION', '2018-02-26 17:56:35');
INSERT INTO `log_convocatoria` VALUES ('1129', '018-I', '1', '2018-02-19 10:44:14', 'Técnico administrativo', '2', null, 'admin', 'ACTUALIZACION', '2018-02-26 18:24:11');
INSERT INTO `log_convocatoria` VALUES ('1130', 'P005-I', '1', '2018-02-19 10:44:49', 'Practicante Pre profesional para el Equipo de Tecnologías de la Información', '3', null, 'admin', 'ACTUALIZACION', '2018-02-27 16:19:46');
INSERT INTO `log_convocatoria` VALUES ('1131', '018-I', '1', '2018-02-19 10:44:14', 'Técnico administrativo', '3', null, 'admin', 'ACTUALIZACION', '2018-02-28 18:07:15');
INSERT INTO `log_convocatoria` VALUES ('1132', '023-I', '1', '2018-02-28 18:08:08', 'Profesional en Educación Inicial', '1', null, 'admin', 'REGISTRO', '2018-02-28 18:08:08');
INSERT INTO `log_convocatoria` VALUES ('1133', '024-I', '1', '2018-02-28 18:08:55', 'Técnico Administrativo', '1', null, 'admin', 'REGISTRO', '2018-02-28 18:08:55');
INSERT INTO `log_convocatoria` VALUES ('1134', '020-I', '1', '2018-02-22 09:24:21', 'Coordinador para el Equipo de Supervisión a IIEE', '2', null, 'admin', 'ACTUALIZACION', '2018-03-01 17:23:19');
INSERT INTO `log_convocatoria` VALUES ('1135', '021-I', '1', '2018-02-22 09:25:00', 'Abogado', '2', null, 'admin', 'ACTUALIZACION', '2018-03-01 17:23:34');
INSERT INTO `log_convocatoria` VALUES ('1136', '020-I', '1', '2018-02-22 09:24:21', 'Coordinador para el Equipo de Supervisión a IIEE', '3', null, 'admin', 'ACTUALIZACION', '2018-03-03 09:09:14');
INSERT INTO `log_convocatoria` VALUES ('1137', '021-I', '1', '2018-02-22 09:25:00', 'Abogado', '3', null, 'admin', 'ACTUALIZACION', '2018-03-03 09:09:46');
INSERT INTO `log_convocatoria` VALUES ('1138', '022-I', '1', '2018-02-23 17:37:49', 'Médico', '2', null, 'admin', 'ACTUALIZACION', '2018-03-03 09:10:02');
INSERT INTO `log_convocatoria` VALUES ('1139', '022-I', '1', '2018-02-23 17:37:49', 'Médico', '3', null, 'admin', 'ACTUALIZACION', '2018-03-05 22:20:42');
INSERT INTO `log_convocatoria` VALUES ('1140', '019-I', '1', '2018-02-21 18:14:56', 'Abogado', '2', null, 'admin', 'ACTUALIZACION', '2018-03-05 22:21:32');
INSERT INTO `log_convocatoria` VALUES ('1141', '025-I', '1', '2018-03-06 16:04:34', 'Coordinador de la Oficina de Actas y Certificados', '1', null, 'admin', 'REGISTRO', '2018-03-06 16:04:34');
INSERT INTO `log_convocatoria` VALUES ('1142', '019-I', '1', '2018-02-21 18:14:56', 'Abogado', '3', null, 'admin', 'ACTUALIZACION', '2018-03-06 22:24:16');
INSERT INTO `log_convocatoria` VALUES ('1143', '023-I', '1', '2018-02-28 18:08:08', 'Profesional en Educación Inicial', '2', null, 'admin', 'ACTUALIZACION', '2018-03-07 23:17:54');
INSERT INTO `log_convocatoria` VALUES ('1144', '024-I', '1', '2018-02-28 18:08:55', 'Técnico Administrativo', '2', null, 'admin', 'ACTUALIZACION', '2018-03-07 23:18:36');
INSERT INTO `log_convocatoria` VALUES ('1145', '023-I', '1', '2018-02-28 18:08:08', 'Profesional en Educación Inicial', '3', null, 'admin', 'ACTUALIZACION', '2018-03-08 21:31:32');
INSERT INTO `log_convocatoria` VALUES ('1146', '024-I', '1', '2018-02-28 18:08:55', 'Técnico Administrativo', '3', null, 'admin', 'ACTUALIZACION', '2018-03-08 21:32:01');
INSERT INTO `log_convocatoria` VALUES ('1147', '025-I', '1', '2018-03-06 16:04:34', 'Coordinador de la Oficina de Actas y Certificados', '2', null, 'admin', 'ACTUALIZACION', '2018-03-13 17:26:07');
INSERT INTO `log_convocatoria` VALUES ('1148', '025-I', '1', '2018-03-06 16:04:34', 'Coordinador de la Oficina de Actas y Certificados', '3', null, 'admin', 'ACTUALIZACION', '2018-03-14 17:49:21');
INSERT INTO `log_convocatoria` VALUES ('1149', '027-I-2018', '1', '2018-03-27 08:40:15', 'Técnico administrativo para apafa', '1', null, 'admin', 'REGISTRO', '2018-03-27 08:40:15');
INSERT INTO `log_convocatoria` VALUES ('1150', '027-I-2018', '1', '2018-03-27 08:40:15', 'Técnico Administrativo para apafa', '1', null, 'admin', 'ACTUALIZACION', '2018-03-27 08:40:50');
INSERT INTO `log_convocatoria` VALUES ('1151', '027-I-2018', '1', '2018-03-27 08:40:15', 'Técnico Administrativo para apafa', '1', null, 'admin', 'ACTUALIZACION', '2018-03-27 08:40:54');
INSERT INTO `log_convocatoria` VALUES ('1152', '026', '1', '2018-03-27 17:20:26', 'TECNICO_ESCALAFON', '1', null, 'admin', 'REGISTRO', '2018-03-27 17:20:26');
INSERT INTO `log_convocatoria` VALUES ('1153', '027-I-2018', '1', '2018-03-27 08:40:15', 'Técnico Administrativo para apafa', '2', null, 'admin', 'ACTUALIZACION', '2018-04-04 17:12:52');
INSERT INTO `log_convocatoria` VALUES ('1154', '029-I', '1', '2018-04-04 17:13:49', 'Especialista en Tesorería', '1', null, 'admin', 'REGISTRO', '2018-04-04 17:13:49');
INSERT INTO `log_convocatoria` VALUES ('1155', '030-I', '1', '2018-04-05 17:43:02', 'Profesional en Educación para Supervisión de IIEE', '1', null, 'admin', 'REGISTRO', '2018-04-05 17:43:02');
INSERT INTO `log_convocatoria` VALUES ('1156', '026', '1', '2018-03-27 17:20:26', 'TECNICO_ESCALAFON', '2', null, 'admin', 'ACTUALIZACION', '2018-04-05 21:27:04');
INSERT INTO `log_convocatoria` VALUES ('1157', '027-I-2018', '1', '2018-03-27 08:40:15', 'Técnico Administrativo para apafa', '3', null, 'admin', 'ACTUALIZACION', '2018-04-05 21:27:51');
INSERT INTO `log_convocatoria` VALUES ('1158', '026', '1', '2018-03-27 17:20:26', 'TECNICO_ESCALAFON', '3', null, 'admin', 'ACTUALIZACION', '2018-04-06 17:17:14');
INSERT INTO `log_convocatoria` VALUES ('1159', '031-I', '1', '2018-04-09 17:23:46', 'Asistente administrativo', '1', null, 'admin', 'REGISTRO', '2018-04-09 17:23:46');
INSERT INTO `log_convocatoria` VALUES ('1160', '028-I', '1', '2018-04-10 12:15:48', 'Técnico administrativo', '1', null, 'admin', 'REGISTRO', '2018-04-10 12:15:48');
INSERT INTO `log_convocatoria` VALUES ('1161', '032-I', '2', '2018-04-10 12:16:33', 'Personal de secretaria', '1', null, 'admin', 'REGISTRO', '2018-04-10 12:16:33');
INSERT INTO `log_convocatoria` VALUES ('1162', '033-I', '11', '2018-04-10 12:17:06', 'Personales de vigilancia', '1', null, 'admin', 'REGISTRO', '2018-04-10 12:17:06');
INSERT INTO `log_convocatoria` VALUES ('1163', '034-I', '7', '2018-04-10 12:18:04', 'Personales de apoyo educativo', '1', null, 'admin', 'REGISTRO', '2018-04-10 12:18:04');
INSERT INTO `log_convocatoria` VALUES ('1164', '035-I', '1', '2018-04-10 12:18:41', 'Técnico en Infraestructura', '1', null, 'admin', 'REGISTRO', '2018-04-10 12:18:41');
INSERT INTO `log_convocatoria` VALUES ('1165', '029-I', '1', '2018-04-04 17:13:49', 'Especialista en Tesorería', '3', null, 'admin', 'ACTUALIZACION', '2018-04-13 00:19:15');
INSERT INTO `log_convocatoria` VALUES ('1166', '030-I', '1', '2018-04-05 17:43:02', 'Profesional en Educación para Supervisión de IIEE', '2', null, 'admin', 'ACTUALIZACION', '2018-04-13 00:20:43');
INSERT INTO `log_convocatoria` VALUES ('1167', '030-I', '1', '2018-04-05 17:43:02', 'Profesional en Educación para Supervisión de IIEE', '3', null, 'admin', 'ACTUALIZACION', '2018-04-16 17:05:54');
INSERT INTO `log_convocatoria` VALUES ('1168', '036-I', '1', '2018-04-16 17:06:45', 'Auditor - Contador público', '1', null, 'admin', 'REGISTRO', '2018-04-16 17:06:45');
INSERT INTO `log_convocatoria` VALUES ('1169', '031-I', '1', '2018-04-09 17:23:46', 'Asistente administrativo', '2', null, 'admin', 'ACTUALIZACION', '2018-04-17 18:20:15');
INSERT INTO `log_convocatoria` VALUES ('1170', '031-I', '1', '2018-04-09 17:23:46', 'Asistente administrativo', '3', null, 'admin', 'ACTUALIZACION', '2018-04-18 18:49:59');
INSERT INTO `log_convocatoria` VALUES ('1171', '035-I', '1', '2018-04-10 12:18:41', 'Técnico en Infraestructura', '2', null, 'admin', 'ACTUALIZACION', '2018-04-18 18:50:30');
INSERT INTO `log_convocatoria` VALUES ('1172', '028-I', '1', '2018-04-10 12:15:48', 'Técnico administrativo', '2', null, 'admin', 'ACTUALIZACION', '2018-04-19 18:42:21');
INSERT INTO `log_convocatoria` VALUES ('1173', '032-I', '2', '2018-04-10 12:16:33', 'Personal de secretaria', '2', null, 'admin', 'ACTUALIZACION', '2018-04-19 18:42:33');
INSERT INTO `log_convocatoria` VALUES ('1174', '033-I', '11', '2018-04-10 12:17:06', 'Personales de vigilancia', '2', null, 'admin', 'ACTUALIZACION', '2018-04-19 18:47:40');
INSERT INTO `log_convocatoria` VALUES ('1175', '034-I', '7', '2018-04-10 12:18:04', 'Personales de apoyo educativo', '2', null, 'admin', 'ACTUALIZACION', '2018-04-19 18:48:09');
INSERT INTO `log_convocatoria` VALUES ('1176', '035-I', '1', '2018-04-10 12:18:41', 'Técnico en Infraestructura', '3', null, 'admin', 'ACTUALIZACION', '2018-04-20 21:11:58');
INSERT INTO `log_convocatoria` VALUES ('1177', '37-I-2018', '13', '2018-04-23 11:22:56', 'Docentes Responsables de Núcleo', '1', null, 'admin', 'REGISTRO', '2018-04-23 11:22:56');
INSERT INTO `log_convocatoria` VALUES ('1178', '37-I', '13', '2018-04-23 11:22:56', 'Docentes Responsables de Núcleo', '1', null, 'admin', 'ACTUALIZACION', '2018-04-23 11:23:34');
INSERT INTO `log_convocatoria` VALUES ('1179', '037-I', '13', '2018-04-23 11:22:56', 'Docentes Responsables de Núcleo', '1', null, 'admin', 'ACTUALIZACION', '2018-04-23 11:23:47');
INSERT INTO `log_convocatoria` VALUES ('1180', '038-I', '1', '2018-04-23 11:24:35', 'Responsables Local de la Calidad de la Información', '1', null, 'admin', 'REGISTRO', '2018-04-23 11:24:35');
INSERT INTO `log_convocatoria` VALUES ('1181', '039-I', '36', '2018-04-23 11:26:04', 'Acompañantes Pedagógicos Primaria Polidocente completa\r\n', '1', null, 'admin', 'REGISTRO', '2018-04-23 11:26:04');
INSERT INTO `log_convocatoria` VALUES ('1182', '041-I', '2', '2018-04-23 11:26:59', 'Intérpretes de Lengua de Señas peruana para EBR/EBA', '1', null, 'admin', 'REGISTRO', '2018-04-23 11:26:59');
INSERT INTO `log_convocatoria` VALUES ('1183', '028-I', '1', '2018-04-10 12:15:48', 'Técnico administrativo', '3', null, 'admin', 'ACTUALIZACION', '2018-04-23 11:53:30');
INSERT INTO `log_convocatoria` VALUES ('1184', '032-I', '2', '2018-04-10 12:16:33', 'Personal de secretaria', '2', null, 'admin', 'ACTUALIZACION', '2018-04-23 18:28:40');
INSERT INTO `log_convocatoria` VALUES ('1185', '040-I', '2', '2018-04-24 14:43:47', 'Gestores(as) Curriculares', '1', null, 'admin', 'REGISTRO', '2018-04-24 14:43:47');
INSERT INTO `log_convocatoria` VALUES ('1186', '042-I', '2', '2018-04-24 14:45:08', 'Modelo Lingüístico de Lengua de Señas peruana para EBR/EBA', '1', null, 'admin', 'REGISTRO', '2018-04-24 14:45:08');
INSERT INTO `log_convocatoria` VALUES ('1187', '043-I', '2', '2018-04-24 14:46:01', 'Especialistas en Educación para el Trabajo', '1', null, 'admin', 'REGISTRO', '2018-04-24 14:46:01');
INSERT INTO `log_convocatoria` VALUES ('1188', '044-I', '1', '2018-04-24 14:48:00', 'Personal de vigilancia', '1', null, 'admin', 'REGISTRO', '2018-04-24 14:48:00');
INSERT INTO `log_convocatoria` VALUES ('1189', '045-I', '14', '2018-04-24 14:49:09', 'COORDINADORES DE INNOVACIÓN Y SOPORTE TECNOLÓGICO\r\n', '1', null, 'admin', 'REGISTRO', '2018-04-24 14:49:09');
INSERT INTO `log_convocatoria` VALUES ('1190', '046-I', '10', '2018-04-24 14:50:02', 'PSICÓLOGOS', '1', null, 'admin', 'REGISTRO', '2018-04-24 14:50:02');
INSERT INTO `log_convocatoria` VALUES ('1191', '047-I', '10', '2018-04-24 14:51:21', ' COORDINADORES ADMINISTRATIVOS Y DE RECURSOS EDUCATIVOS PARA ZONAS URBANAS', '1', null, 'admin', 'REGISTRO', '2018-04-24 14:51:21');
INSERT INTO `log_convocatoria` VALUES ('1192', '048-I', '1', '2018-04-24 14:52:52', 'Personal de Mantenimiento', '1', null, 'admin', 'REGISTRO', '2018-04-24 14:52:52');
INSERT INTO `log_convocatoria` VALUES ('1193', '036-I', '1', '2018-04-16 17:06:45', 'Auditor - Contador público', '1', null, 'admin', 'ACTUALIZACION', '2018-04-24 17:58:10');
INSERT INTO `log_convocatoria` VALUES ('1194', '036-I', '1', '2018-04-16 17:06:45', 'Auditor - Contador público', '3', null, 'admin', 'ACTUALIZACION', '2018-04-24 17:58:19');
INSERT INTO `log_convocatoria` VALUES ('1195', '033-I', '11', '2018-04-10 12:17:06', 'Personales de vigilancia', '3', null, 'admin', 'ACTUALIZACION', '2018-04-24 18:50:38');
INSERT INTO `log_convocatoria` VALUES ('1196', '034-I', '7', '2018-04-10 12:18:04', 'Personales de apoyo educativo', '3', null, 'admin', 'ACTUALIZACION', '2018-04-24 18:51:19');
INSERT INTO `log_convocatoria` VALUES ('1197', '032-I', '2', '2018-04-10 12:16:33', 'Personal de secretaria', '3', null, 'admin', 'ACTUALIZACION', '2018-04-25 17:51:48');
INSERT INTO `log_convocatoria` VALUES ('1198', '048-I', '1', '2018-04-24 14:52:52', 'Personal de Mantenimiento', '1', null, 'admin', 'ACTUALIZACION', '2018-05-02 15:52:58');
INSERT INTO `log_convocatoria` VALUES ('1199', '039-I', '36', '2018-04-23 11:26:04', 'Acompañantes Pedagógicos Primaria Polidocente completa\r\n', '2', null, 'admin', 'ACTUALIZACION', '2018-05-02 17:21:07');
INSERT INTO `log_convocatoria` VALUES ('1200', '038-I', '1', '2018-04-23 11:24:35', 'Responsables Local de la Calidad de la Información', '2', null, 'admin', 'ACTUALIZACION', '2018-05-02 17:21:35');
INSERT INTO `log_convocatoria` VALUES ('1201', '037-I', '13', '2018-04-23 11:22:56', 'Docentes Responsables de Núcleo', '2', null, 'admin', 'ACTUALIZACION', '2018-05-02 17:21:50');
INSERT INTO `log_convocatoria` VALUES ('1202', '037-I', '13', '2018-04-23 11:22:56', 'Docentes Responsables de Núcleo', '2', null, 'admin', 'ACTUALIZACION', '2018-05-02 17:23:25');
INSERT INTO `log_convocatoria` VALUES ('1203', '041-I', '2', '2018-04-23 11:26:59', 'Intérpretes de Lengua de Señas peruana para EBR/EBA', '2', null, 'admin', 'ACTUALIZACION', '2018-05-02 17:23:57');
INSERT INTO `log_convocatoria` VALUES ('1204', '040-I', '2', '2018-04-24 14:43:47', 'Gestores(as) Curriculares', '3', null, 'admin', 'ACTUALIZACION', '2018-05-03 14:27:57');
INSERT INTO `log_convocatoria` VALUES ('1205', '042-I', '2', '2018-04-24 14:45:08', 'Modelo Lingüístico de Lengua de Señas peruana para EBR/EBA', '2', null, 'admin', 'ACTUALIZACION', '2018-05-03 14:42:22');
INSERT INTO `log_convocatoria` VALUES ('1206', '043-I', '2', '2018-04-24 14:46:01', 'Especialistas en Educación para el Trabajo', '2', null, 'admin', 'ACTUALIZACION', '2018-05-03 14:42:44');
INSERT INTO `log_convocatoria` VALUES ('1207', '045-I', '14', '2018-04-24 14:49:09', 'COORDINADORES DE INNOVACIÓN Y SOPORTE TECNOLÓGICO\r\n', '2', null, 'admin', 'ACTUALIZACION', '2018-05-03 16:10:50');
INSERT INTO `log_convocatoria` VALUES ('1208', '045-I', '14', '2018-04-24 14:49:09', 'COORDINADORES DE INNOVACIÓN Y SOPORTE TECNOLÓGICO\r\n', '2', null, 'admin', 'ACTUALIZACION', '2018-05-03 16:12:48');
INSERT INTO `log_convocatoria` VALUES ('1209', '046-I', '10', '2018-04-24 14:50:02', 'PSICÓLOGOS', '2', null, 'admin', 'ACTUALIZACION', '2018-05-03 16:13:35');
INSERT INTO `log_convocatoria` VALUES ('1210', '047-I', '10', '2018-04-24 14:51:21', ' COORDINADORES ADMINISTRATIVOS Y DE RECURSOS EDUCATIVOS PARA ZONAS URBANAS', '2', null, 'admin', 'ACTUALIZACION', '2018-05-03 16:14:02');
INSERT INTO `log_convocatoria` VALUES ('1211', '044-I', '1', '2018-04-24 14:48:00', 'Personal de vigilancia', '2', null, 'admin', 'ACTUALIZACION', '2018-05-03 16:18:43');
INSERT INTO `log_convocatoria` VALUES ('1212', '048-I', '1', '2018-04-24 14:52:52', 'Personal de Mantenimiento', '2', null, 'admin', 'ACTUALIZACION', '2018-05-03 16:19:24');
INSERT INTO `log_convocatoria` VALUES ('1213', '039-I', '36', '2018-04-23 11:26:04', 'Acompañantes Pedagógicos Primaria Polidocente completa\r\n', '3', null, 'admin', 'ACTUALIZACION', '2018-05-04 18:06:40');
INSERT INTO `log_convocatoria` VALUES ('1214', '041-I', '2', '2018-04-23 11:26:59', 'Intérpretes de Lengua de Señas peruana para EBR/EBA', '3', null, 'admin', 'ACTUALIZACION', '2018-05-04 18:08:26');
INSERT INTO `log_convocatoria` VALUES ('1215', '038-I', '1', '2018-04-23 11:24:35', 'Responsables Local de la Calidad de la Información', '3', null, 'admin', 'ACTUALIZACION', '2018-05-04 18:10:44');
INSERT INTO `log_convocatoria` VALUES ('1216', '037-I', '13', '2018-04-23 11:22:56', 'Docentes Responsables de Núcleo', '3', null, 'admin', 'ACTUALIZACION', '2018-05-04 18:12:55');
INSERT INTO `log_convocatoria` VALUES ('1217', '044-I', '1', '2018-04-24 14:48:00', 'Personal de vigilancia', '2', null, 'admin', 'ACTUALIZACION', '2018-05-07 09:37:52');
INSERT INTO `log_convocatoria` VALUES ('1218', '048-I', '1', '2018-04-24 14:52:52', 'Personal de Mantenimiento', '2', null, 'admin', 'ACTUALIZACION', '2018-05-07 09:41:47');
INSERT INTO `log_convocatoria` VALUES ('1219', '042-I', '2', '2018-04-24 14:45:08', 'Modelo Lingüístico de Lengua de Señas peruana para EBR/EBA', '3', null, 'admin', 'ACTUALIZACION', '2018-05-07 16:28:49');
INSERT INTO `log_convocatoria` VALUES ('1220', '043-I', '2', '2018-04-24 14:46:01', 'Especialistas en Educación para el Trabajo', '3', null, 'admin', 'ACTUALIZACION', '2018-05-07 16:29:25');
INSERT INTO `log_convocatoria` VALUES ('1221', '045-I', '14', '2018-04-24 14:49:09', 'COORDINADORES DE INNOVACIÓN Y SOPORTE TECNOLÓGICO\r\n', '2', null, 'admin', 'ACTUALIZACION', '2018-05-07 18:13:37');
INSERT INTO `log_convocatoria` VALUES ('1222', '046-I', '10', '2018-04-24 14:50:02', 'PSICÓLOGOS', '2', null, 'admin', 'ACTUALIZACION', '2018-05-07 18:14:37');
INSERT INTO `log_convocatoria` VALUES ('1223', '044-I', '1', '2018-04-24 14:48:00', 'Personal de vigilancia', '3', null, 'admin', 'ACTUALIZACION', '2018-05-08 20:28:54');
INSERT INTO `log_convocatoria` VALUES ('1224', '048-I', '1', '2018-04-24 14:52:52', 'Personal de Mantenimiento', '2', null, 'admin', 'ACTUALIZACION', '2018-05-08 20:29:29');
INSERT INTO `log_convocatoria` VALUES ('1225', '048-I', '1', '2018-04-24 14:52:52', 'Personal de Mantenimiento', '3', null, 'admin', 'ACTUALIZACION', '2018-05-08 20:29:39');
INSERT INTO `log_convocatoria` VALUES ('1226', '044-I', '1', '2018-04-24 14:48:00', 'Personal de vigilancia', '3', null, 'admin', 'ACTUALIZACION', '2018-05-09 10:20:43');
INSERT INTO `log_convocatoria` VALUES ('1227', '045-I', '14', '2018-04-24 14:49:09', 'COORDINADORES DE INNOVACIÓN Y SOPORTE TECNOLÓGICO\r\n', '3', null, 'admin', 'ACTUALIZACION', '2018-05-09 17:13:55');
INSERT INTO `log_convocatoria` VALUES ('1228', '046-I', '10', '2018-04-24 14:50:02', 'PSICÓLOGOS', '3', null, 'admin', 'ACTUALIZACION', '2018-05-09 17:14:46');
INSERT INTO `log_convocatoria` VALUES ('1229', '047-I', '10', '2018-04-24 14:51:21', ' COORDINADORES ADMINISTRATIVOS Y DE RECURSOS EDUCATIVOS PARA ZONAS URBANAS', '2', null, 'admin', 'ACTUALIZACION', '2018-05-09 17:15:19');
INSERT INTO `log_convocatoria` VALUES ('1230', '047-I', '10', '2018-04-24 14:51:21', ' COORDINADORES ADMINISTRATIVOS Y DE RECURSOS EDUCATIVOS PARA ZONAS URBANAS', '3', null, 'admin', 'ACTUALIZACION', '2018-05-09 17:15:28');
INSERT INTO `log_convocatoria` VALUES ('1231', '049-I', '1', '2018-05-14 18:06:52', 'Especialista en Convivencia Escolar', '1', null, 'admin', 'REGISTRO', '2018-05-14 18:06:52');
INSERT INTO `log_convocatoria` VALUES ('1232', '050-I', '1', '2018-05-14 18:07:19', 'Especialista en Tesoreria', '1', null, 'admin', 'REGISTRO', '2018-05-14 18:07:19');
INSERT INTO `log_convocatoria` VALUES ('1233', '051-I', '1', '2018-05-14 18:07:49', 'Técnico Administrativo para APAFA', '1', null, 'admin', 'REGISTRO', '2018-05-14 18:07:49');
INSERT INTO `log_convocatoria` VALUES ('1234', '049-I', '1', '2018-05-14 18:06:52', 'Especialista en Convivencia Escolar', '2', null, 'admin', 'ACTUALIZACION', '2018-05-22 17:37:45');
INSERT INTO `log_convocatoria` VALUES ('1235', '050-I', '1', '2018-05-14 18:07:19', 'Especialista en Tesoreria', '2', null, 'admin', 'ACTUALIZACION', '2018-05-22 17:38:04');
INSERT INTO `log_convocatoria` VALUES ('1236', '051-I', '1', '2018-05-14 18:07:49', 'Técnico Administrativo para APAFA', '2', null, 'admin', 'ACTUALIZACION', '2018-05-22 17:38:17');
INSERT INTO `log_convocatoria` VALUES ('1237', '052-I', '1', '2018-05-22 17:38:29', 'DS', '1', null, 'admin', 'REGISTRO', '2018-05-22 17:38:30');
INSERT INTO `log_convocatoria` VALUES ('1238', '053-I', '1', '2018-05-22 17:38:51', 'VV', '1', null, 'admin', 'REGISTRO', '2018-05-22 17:38:51');
INSERT INTO `log_convocatoria` VALUES ('1239', '052-I', '1', '2018-05-22 17:38:29', 'Secretaria', '1', null, 'admin', 'ACTUALIZACION', '2018-05-22 17:39:22');
INSERT INTO `log_convocatoria` VALUES ('1240', '053-I', '1', '2018-05-22 17:38:51', 'Profesional en Educación Inicial', '1', null, 'admin', 'ACTUALIZACION', '2018-05-22 17:39:44');
INSERT INTO `log_convocatoria` VALUES ('1241', '040-I', '2', '2018-04-24 14:43:47', 'Gestores(as) Curriculares', '2', null, 'admin', 'ACTUALIZACION', '2018-05-23 23:41:12');
INSERT INTO `log_convocatoria` VALUES ('1242', '040-I', '2', '2018-04-24 14:43:47', 'Gestores(as) Curriculares', '2', null, 'admin', 'ACTUALIZACION', '2018-05-23 23:41:40');
INSERT INTO `log_convocatoria` VALUES ('1243', '051-I', '1', '2018-05-14 18:07:49', 'Técnico Administrativo para APAFA', '3', null, 'admin', 'ACTUALIZACION', '2018-05-24 18:01:35');
INSERT INTO `log_convocatoria` VALUES ('1244', '050-I', '1', '2018-05-14 18:07:19', 'Especialista en Tesoreria', '3', null, 'admin', 'ACTUALIZACION', '2018-05-24 18:01:46');
INSERT INTO `log_convocatoria` VALUES ('1245', '049-I', '1', '2018-05-14 18:06:52', 'Especialista en Convivencia Escolar', '3', null, 'admin', 'ACTUALIZACION', '2018-05-24 18:01:57');
INSERT INTO `log_convocatoria` VALUES ('1246', '040-I', '2', '2018-04-24 14:43:47', 'Gestores(as) Curriculares', '3', null, 'admin', 'ACTUALIZACION', '2018-05-28 15:08:32');
INSERT INTO `log_convocatoria` VALUES ('1247', '054-I', '1', '2018-05-29 17:39:07', 'Médico', '1', null, 'admin', 'REGISTRO', '2018-05-29 17:39:07');
INSERT INTO `log_convocatoria` VALUES ('1248', '039-II', '2', '2018-05-31 12:51:29', 'Acompañante pedagógico', '1', null, 'admin', 'REGISTRO', '2018-05-31 12:51:29');
INSERT INTO `log_convocatoria` VALUES ('1249', '046-II', '1', '2018-06-01 16:17:03', 'Psicólogo ', '1', null, 'admin', 'REGISTRO', '2018-06-01 16:17:04');
INSERT INTO `log_convocatoria` VALUES ('1250', '037-II', '7', '2018-06-04 17:44:56', 'Docentes Responsables de Núcleo Distrital', '1', null, 'admin', 'REGISTRO', '2018-06-04 17:44:56');
INSERT INTO `log_convocatoria` VALUES ('1251', '055-II', '1', '2018-06-05 15:47:45', 'Especialista de Tesorería', '1', null, 'admin', 'REGISTRO', '2018-06-05 15:47:45');
INSERT INTO `log_convocatoria` VALUES ('1252', '056-I', '1', '2018-06-06 17:31:22', 'Auditor', '1', null, 'admin', 'REGISTRO', '2018-06-06 17:31:22');
INSERT INTO `log_convocatoria` VALUES ('1253', '057-I', '7', '2018-06-06 17:32:04', 'Coordinadores de Innovación y Soporte Tecnológico', '1', null, 'admin', 'REGISTRO', '2018-06-06 17:32:04');
INSERT INTO `log_convocatoria` VALUES ('1254', '058-I', '5', '2018-06-06 17:32:42', 'Coordinadores Administrativos y de Recursos Educativos para zonas urbanas', '1', null, 'admin', 'REGISTRO', '2018-06-06 17:32:42');
INSERT INTO `log_convocatoria` VALUES ('1255', '052-I', '1', '2018-05-22 17:38:29', 'Secretaria', '2', null, 'admin', 'ACTUALIZACION', '2018-06-06 17:38:12');
INSERT INTO `log_convocatoria` VALUES ('1256', '053-I', '1', '2018-05-22 17:38:51', 'Profesional en Educación Inicial', '2', null, 'admin', 'ACTUALIZACION', '2018-06-06 17:38:23');
INSERT INTO `log_convocatoria` VALUES ('1257', '053-I', '1', '2018-05-22 17:38:51', 'Profesional en Educación Inicial', '3', null, 'admin', 'ACTUALIZACION', '2018-06-07 17:51:16');
INSERT INTO `log_convocatoria` VALUES ('1258', '052-I', '1', '2018-05-22 17:38:29', 'Secretaria', '3', null, 'admin', 'ACTUALIZACION', '2018-06-07 17:51:37');
INSERT INTO `log_convocatoria` VALUES ('1259', '052-I', '1', '2018-05-22 17:38:29', 'Secretaria', '3', null, 'admin', 'ACTUALIZACION', '2018-06-07 18:22:53');
INSERT INTO `log_convocatoria` VALUES ('1260', '059-I', '5', '2018-06-11 14:58:11', 'Personales de apoyo educativo', '1', null, 'admin', 'REGISTRO', '2018-06-11 14:58:11');
INSERT INTO `log_convocatoria` VALUES ('1261', '039-III', '4', '2018-06-11 14:58:43', 'Acompañantes  Pedagógicos  Primaria', '1', null, 'admin', 'REGISTRO', '2018-06-11 14:58:43');
INSERT INTO `log_convocatoria` VALUES ('1262', '059-I', '5', '2018-06-11 14:58:11', 'Personales de apoyo educativo', '1', null, 'admin', 'ACTUALIZACION', '2018-06-11 14:59:01');
INSERT INTO `log_convocatoria` VALUES ('1263', '060-I', '1', '2018-06-12 17:06:35', 'Abogado en seguimiento contractual', '1', null, 'admin', 'REGISTRO', '2018-06-12 17:06:35');
INSERT INTO `log_convocatoria` VALUES ('1264', '061-I', '1', '2018-06-12 17:07:24', 'Técnico administrativo', '1', null, 'admin', 'REGISTRO', '2018-06-12 17:07:24');
INSERT INTO `log_convocatoria` VALUES ('1265', '062-I', '1', '2018-06-12 17:07:58', 'Técnico administrativo', '1', null, 'admin', 'REGISTRO', '2018-06-12 17:07:58');
INSERT INTO `log_convocatoria` VALUES ('1266', '054-I', '1', '2018-05-29 17:39:07', 'Médico', '2', null, 'admin', 'ACTUALIZACION', '2018-06-13 18:09:35');
INSERT INTO `log_convocatoria` VALUES ('1267', '054-I', '1', '2018-05-29 17:39:07', 'Médico', '3', null, 'admin', 'ACTUALIZACION', '2018-06-14 16:37:42');
INSERT INTO `log_convocatoria` VALUES ('1268', '039-II', '2', '2018-05-31 12:51:29', 'Acompañante pedagógico', '2', null, 'admin', 'ACTUALIZACION', '2018-06-16 22:52:38');
INSERT INTO `log_convocatoria` VALUES ('1269', '063-I', '1', '2018-06-18 16:35:52', 'Jefe del Área de Supervisión y Gestión del Servicio Educativo', '1', null, 'admin', 'REGISTRO', '2018-06-18 16:35:52');
INSERT INTO `log_convocatoria` VALUES ('1270', '039-II', '2', '2018-05-31 12:51:29', 'Acompañante pedagógico', '3', null, 'admin', 'ACTUALIZACION', '2018-06-19 17:29:52');
INSERT INTO `log_convocatoria` VALUES ('1271', '046-II', '1', '2018-06-01 16:17:03', 'Psicólogo ', '2', null, 'admin', 'ACTUALIZACION', '2018-06-20 17:39:20');
INSERT INTO `log_convocatoria` VALUES ('1272', '037-II', '7', '2018-06-04 17:44:56', 'Docentes Responsables de Núcleo Distrital', '2', null, 'admin', 'ACTUALIZACION', '2018-06-20 19:02:45');
INSERT INTO `log_convocatoria` VALUES ('1273', '055-II', '1', '2018-06-05 15:47:45', 'Especialista de Tesorería', '3', null, 'admin', 'ACTUALIZACION', '2018-06-21 14:42:22');
INSERT INTO `log_convocatoria` VALUES ('1274', '056-I', '1', '2018-06-06 17:31:22', 'Auditor', '2', null, 'admin', 'ACTUALIZACION', '2018-06-22 17:20:40');
INSERT INTO `log_convocatoria` VALUES ('1275', '044-II', '2', '2018-06-25 08:56:21', 'Personal de vigilancia', '1', null, 'admin', 'REGISTRO', '2018-06-25 08:56:21');
INSERT INTO `log_convocatoria` VALUES ('1276', 'P006-I', '1', '2018-06-25 17:35:12', 'Practicante Pre o Profesional para la Oficina de Coproa', '1', null, 'admin', 'REGISTRO', '2018-06-25 17:35:12');
INSERT INTO `log_convocatoria` VALUES ('1277', '037-II', '7', '2018-06-04 17:44:56', 'Docentes Responsables de Núcleo Distrital', '3', null, 'admin', 'ACTUALIZACION', '2018-06-25 17:35:40');
INSERT INTO `log_convocatoria` VALUES ('1278', '046-II', '1', '2018-06-01 16:17:03', 'Psicólogo ', '2', null, 'admin', 'ACTUALIZACION', '2018-06-25 11:38:50');
INSERT INTO `log_convocatoria` VALUES ('1279', '056-I', '1', '2018-06-06 17:31:22', 'Auditor', '3', null, 'admin', 'ACTUALIZACION', '2018-06-26 16:05:22');
INSERT INTO `log_convocatoria` VALUES ('1280', '057-I', '7', '2018-06-06 17:32:04', 'Coordinadores de Innovación y Soporte Tecnológico', '2', null, 'admin', 'ACTUALIZACION', '2018-06-26 23:39:53');
INSERT INTO `log_convocatoria` VALUES ('1281', '058-I', '5', '2018-06-06 17:32:42', 'Coordinadores Administrativos y de Recursos Educativos para zonas urbanas', '2', null, 'admin', 'ACTUALIZACION', '2018-06-26 23:40:26');
INSERT INTO `log_convocatoria` VALUES ('1282', '039-III', '4', '2018-06-11 14:58:43', 'Acompañantes  Pedagógicos  Primaria', '2', null, 'admin', 'ACTUALIZACION', '2018-06-26 23:41:10');
INSERT INTO `log_convocatoria` VALUES ('1283', '046-II', '1', '2018-06-01 16:17:03', 'Psicólogo ', '3', null, 'admin', 'ACTUALIZACION', '2018-06-26 23:41:38');
INSERT INTO `log_convocatoria` VALUES ('1284', '046-II', '1', '2018-06-01 16:17:03', 'Psicólogo ', '3', null, 'admin', 'ACTUALIZACION', '2018-06-26 23:42:03');
INSERT INTO `log_convocatoria` VALUES ('1285', '061-I', '1', '2018-06-12 17:07:24', 'Técnico administrativo', '2', null, 'admin', 'ACTUALIZACION', '2018-06-27 18:50:12');
INSERT INTO `log_convocatoria` VALUES ('1286', '062-I', '1', '2018-06-12 17:07:58', 'Técnico administrativo', '2', null, 'admin', 'ACTUALIZACION', '2018-06-27 18:50:37');
INSERT INTO `log_convocatoria` VALUES ('1287', '039-III', '4', '2018-06-11 14:58:43', 'Acompañantes  Pedagógicos  Primaria', '3', null, 'admin', 'ACTUALIZACION', '2018-06-28 12:43:14');
INSERT INTO `log_convocatoria` VALUES ('1288', '059-I', '5', '2018-06-11 14:58:11', 'Personales de apoyo educativo', '2', null, 'admin', 'ACTUALIZACION', '2018-06-28 17:22:50');
INSERT INTO `log_convocatoria` VALUES ('1289', '062-I', '1', '2018-06-12 17:07:58', 'Técnico administrativo', '3', null, 'admin', 'ACTUALIZACION', '2018-06-28 17:23:02');
INSERT INTO `log_convocatoria` VALUES ('1290', '061-I', '1', '2018-06-12 17:07:24', 'Técnico administrativo', '3', null, 'admin', 'ACTUALIZACION', '2018-06-28 18:10:21');
INSERT INTO `log_convocatoria` VALUES ('1291', '060-I', '1', '2018-06-12 17:06:35', 'Abogado en seguimiento contractual', '2', null, 'admin', 'ACTUALIZACION', '2018-06-28 18:10:52');
INSERT INTO `log_convocatoria` VALUES ('1292', 'P006-I', '1', '2018-06-25 17:35:12', 'Practicante Pre o Profesional para la Oficina de Coproa', '2', null, 'admin', 'ACTUALIZACION', '2018-07-02 17:03:48');
INSERT INTO `log_convocatoria` VALUES ('1293', '059-I', '5', '2018-06-11 14:58:11', 'Personales de apoyo educativo', '3', null, 'admin', 'ACTUALIZACION', '2018-07-03 17:46:58');
INSERT INTO `log_convocatoria` VALUES ('1294', '058-I', '5', '2018-06-06 17:32:42', 'Coordinadores Administrativos y de Recursos Educativos para zonas urbanas', '3', null, 'admin', 'ACTUALIZACION', '2018-07-03 17:47:09');
INSERT INTO `log_convocatoria` VALUES ('1295', '057-I', '7', '2018-06-06 17:32:04', 'Coordinadores de Innovación y Soporte Tecnológico', '3', null, 'admin', 'ACTUALIZACION', '2018-07-03 17:47:20');
INSERT INTO `log_convocatoria` VALUES ('1296', '060-I', '1', '2018-06-12 17:06:35', 'Abogado en seguimiento contractual', '3', null, 'admin', 'ACTUALIZACION', '2018-07-04 18:20:24');
INSERT INTO `log_convocatoria` VALUES ('1297', '063-I', '1', '2018-06-18 16:35:52', 'Jefe del Área de Supervisión y Gestión del Servicio Educativo', '2', null, 'admin', 'ACTUALIZACION', '2018-07-04 22:02:54');
INSERT INTO `log_convocatoria` VALUES ('1298', 'P006-I', '1', '2018-06-25 17:35:12', 'Practicante Pre o Profesional para la Oficina de Coproa', '3', null, 'admin', 'ACTUALIZACION', '2018-07-05 08:41:21');
INSERT INTO `log_convocatoria` VALUES ('1299', '063-I', '1', '2018-06-18 16:35:52', 'Jefe del Área de Supervisión y Gestión del Servicio Educativo', '3', null, 'admin', 'ACTUALIZACION', '2018-07-05 23:01:06');
INSERT INTO `log_convocatoria` VALUES ('1300', '044-III', '2', '2018-07-06 17:27:13', 'Personal de vigilancia', '1', null, 'admin', 'REGISTRO', '2018-07-06 17:27:13');
INSERT INTO `log_convocatoria` VALUES ('1301', '044-IV', '1', '2018-07-13 15:45:33', 'Personal de vigilancia', '1', null, 'admin', 'REGISTRO', '2018-07-13 15:45:33');
INSERT INTO `log_convocatoria` VALUES ('1302', '064-I', '1', '2018-07-13 15:46:27', 'Asistente Administrativo', '1', null, 'admin', 'REGISTRO', '2018-07-13 15:46:27');
INSERT INTO `log_convocatoria` VALUES ('1303', '044-II', '2', '2018-06-25 08:56:21', 'Personal de vigilancia', '2', null, 'admin', 'ACTUALIZACION', '2018-07-13 15:46:43');
INSERT INTO `log_convocatoria` VALUES ('1304', '044-II', '2', '2018-06-25 08:56:21', 'Personal de vigilancia', '3', null, 'admin', 'ACTUALIZACION', '2018-07-16 10:38:13');
INSERT INTO `log_convocatoria` VALUES ('1305', '057-II', '1', '2018-07-23 12:45:53', 'Coordinador de Innovación y Soporte Tecnológico', '1', null, 'admin', 'REGISTRO', '2018-07-23 12:45:53');
INSERT INTO `log_convocatoria` VALUES ('1306', '044-III', '2', '2018-07-06 17:27:13', 'Personal de vigilancia', '2', null, 'admin', 'ACTUALIZACION', '2018-07-24 17:22:20');
INSERT INTO `log_convocatoria` VALUES ('1307', '057-III', '1', '2018-07-24 17:22:55', 'Coordinador de Innovación y Soporte Tecnológico', '1', null, 'admin', 'REGISTRO', '2018-07-24 17:22:55');
INSERT INTO `log_convocatoria` VALUES ('1308', '037-III', '1', '2018-07-24 17:23:34', 'Docentes Responsables de Núcleo Distrital', '1', null, 'admin', 'REGISTRO', '2018-07-24 17:23:34');
INSERT INTO `log_convocatoria` VALUES ('1309', '044-III', '2', '2018-07-06 17:27:13', 'Personal de vigilancia', '3', null, 'admin', 'ACTUALIZACION', '2018-07-25 17:24:23');
INSERT INTO `log_convocatoria` VALUES ('1310', '064-I', '1', '2018-07-13 15:46:27', 'Asistente Administrativo', '2', null, 'admin', 'ACTUALIZACION', '2018-08-01 18:05:56');
INSERT INTO `log_convocatoria` VALUES ('1311', '044-IV', '1', '2018-07-13 15:45:33', 'Personal de vigilancia', '2', null, 'admin', 'ACTUALIZACION', '2018-08-02 17:39:15');
INSERT INTO `log_convocatoria` VALUES ('1312', '064-I', '1', '2018-07-13 15:46:27', 'Asistente Administrativo', '3', null, 'admin', 'ACTUALIZACION', '2018-08-03 16:58:48');
INSERT INTO `log_convocatoria` VALUES ('1313', '044-IV', '1', '2018-07-13 15:45:33', 'Personal de vigilancia', '3', null, 'admin', 'ACTUALIZACION', '2018-08-07 16:32:46');
INSERT INTO `log_convocatoria` VALUES ('1314', '065-I', '1', '2018-08-09 16:49:58', 'Notificador', '1', null, 'admin', 'REGISTRO', '2018-08-09 16:49:58');
INSERT INTO `log_convocatoria` VALUES ('1315', '057-II', '1', '2018-07-23 12:45:53', 'Coordinador de Innovación y Soporte Tecnológico', '2', null, 'admin', 'ACTUALIZACION', '2018-08-09 17:55:34');
INSERT INTO `log_convocatoria` VALUES ('1316', '037-III', '1', '2018-07-24 17:23:34', 'Docentes Responsables de Núcleo Distrital', '2', null, 'admin', 'ACTUALIZACION', '2018-08-10 17:57:15');
INSERT INTO `log_convocatoria` VALUES ('1317', '057-III', '1', '2018-07-24 17:22:55', 'Coordinador de Innovación y Soporte Tecnológico', '2', null, 'admin', 'ACTUALIZACION', '2018-08-10 17:57:39');
INSERT INTO `log_convocatoria` VALUES ('1318', '066-I', '1', '2018-08-14 14:23:32', 'Coordinador del Equipo de Estadística y Monitoreo', '1', null, 'admin', 'REGISTRO', '2018-08-14 14:23:32');
INSERT INTO `log_convocatoria` VALUES ('1319', '037-III', '1', '2018-07-24 17:23:34', 'Docentes Responsables de Núcleo Distrital', '3', null, 'admin', 'ACTUALIZACION', '2018-08-14 14:27:04');
INSERT INTO `log_convocatoria` VALUES ('1320', '067-I', '1', '2018-08-15 10:04:49', 'Responsable del Equipo de Planeamiento y Presupuesto', '1', null, 'admin', 'REGISTRO', '2018-08-15 10:04:49');
INSERT INTO `log_convocatoria` VALUES ('1321', '057-II', '1', '2018-07-23 12:45:53', 'Coordinador de Innovación y Soporte Tecnológico', '3', null, 'admin', 'ACTUALIZACION', '2018-08-15 15:30:50');
INSERT INTO `log_convocatoria` VALUES ('1322', '057-III', '1', '2018-07-24 17:22:55', 'Coordinador de Innovación y Soporte Tecnológico', '3', null, 'admin', 'ACTUALIZACION', '2018-08-17 11:42:47');
INSERT INTO `log_convocatoria` VALUES ('1323', '032-II', '1', '2018-08-20 17:37:42', 'Personal de secretaria', '1', null, 'admin', 'REGISTRO', '2018-08-20 17:37:42');
INSERT INTO `log_convocatoria` VALUES ('1324', '065-I', '1', '2018-08-09 16:49:58', 'Notificador', '3', null, 'admin', 'ACTUALIZACION', '2018-08-27 17:13:54');
INSERT INTO `log_convocatoria` VALUES ('1325', '066-I', '1', '2018-08-14 14:23:32', 'Coordinador del Equipo de Estadística y Monitoreo', '2', null, 'admin', 'ACTUALIZACION', '2018-08-29 23:17:48');
INSERT INTO `log_convocatoria` VALUES ('1326', '066-I', '1', '2018-08-14 14:23:32', 'Coordinador del Equipo de Estadística y Monitoreo', '2', null, 'admin', 'ACTUALIZACION', '2018-08-29 23:17:51');
INSERT INTO `log_convocatoria` VALUES ('1327', '066-I', '1', '2018-08-14 14:23:32', 'Coordinador del Equipo de Estadística y Monitoreo', '3', null, 'admin', 'ACTUALIZACION', '2018-09-03 19:10:13');
INSERT INTO `log_convocatoria` VALUES ('1328', '067-I', '1', '2018-08-15 10:04:49', 'Responsable del Equipo de Planeamiento y Presupuesto', '3', null, 'admin', 'ACTUALIZACION', '2018-09-03 19:10:22');
INSERT INTO `log_convocatoria` VALUES ('1329', '066-I', '1', '2018-08-14 14:23:32', 'Coordinador del Equipo de Estadística y Monitoreo', '3', null, 'admin', 'ACTUALIZACION', '2018-09-04 12:25:57');
INSERT INTO `log_convocatoria` VALUES ('1330', '066-I', '1', '2018-08-14 14:23:32', 'Coordinador del Equipo de Estadística y Monitoreo', '3', null, 'admin', 'ACTUALIZACION', '2018-09-04 12:27:08');
INSERT INTO `log_convocatoria` VALUES ('1331', '032-II', '1', '2018-08-20 17:37:42', 'Personal de secretaria', '2', null, 'admin', 'ACTUALIZACION', '2018-09-06 10:00:59');
INSERT INTO `log_convocatoria` VALUES ('1332', '032-II', '1', '2018-08-20 17:37:42', 'Personal de secretaria', '3', null, 'admin', 'ACTUALIZACION', '2018-09-10 11:05:17');
INSERT INTO `log_convocatoria` VALUES ('1333', '007-I', '1', '2018-09-10 11:06:12', 'Practicante Preprofesional para el Órgano de Dirección', '1', null, 'admin', 'REGISTRO', '2018-09-10 11:06:12');
INSERT INTO `log_convocatoria` VALUES ('1334', '007-I', '1', '2018-09-10 11:06:12', 'Practicante Pre profesional para el Órgano de Dirección', '1', null, 'admin', 'ACTUALIZACION', '2018-09-10 11:06:48');
INSERT INTO `log_convocatoria` VALUES ('1335', '008-I', '1', '2018-09-12 12:37:29', 'Practicante Pre profesional para Secretaría Técnica - Servir', '1', null, 'admin', 'REGISTRO', '2018-09-12 12:37:29');
INSERT INTO `log_convocatoria` VALUES ('1336', '007-I', '1', '2018-09-10 11:06:12', 'Practicante Pre profesional para el Órgano de Dirección', '2', null, 'admin', 'ACTUALIZACION', '2018-09-12 21:12:40');
INSERT INTO `log_convocatoria` VALUES ('1337', '007-I', '1', '2018-09-10 11:06:12', 'Practicante Pre profesional para el Órgano de Dirección', '3', null, 'admin', 'ACTUALIZACION', '2018-09-13 16:43:28');
INSERT INTO `log_convocatoria` VALUES ('1338', '037-IV', '1', '2018-09-17 09:46:29', 'Docente Responsable de Núcleo Distrital', '1', null, 'admin', 'REGISTRO', '2018-09-17 09:46:29');
INSERT INTO `log_convocatoria` VALUES ('1339', '065-II', '1', '2018-09-17 09:49:41', 'Notificador', '1', null, 'admin', 'REGISTRO', '2018-09-17 09:49:41');
INSERT INTO `log_convocatoria` VALUES ('1340', '068-I', '1', '2018-09-17 09:51:09', 'Responsable del Equipo de Planeamiento y Presupuesto', '1', null, 'admin', 'REGISTRO', '2018-09-17 09:51:09');
INSERT INTO `log_convocatoria` VALUES ('1341', '008-I', '1', '2018-09-12 12:37:29', 'Practicante Pre profesional para Secretaría Técnica - Servir', '2', null, 'admin', 'ACTUALIZACION', '2018-09-17 11:40:40');
INSERT INTO `log_convocatoria` VALUES ('1342', '069-I', '1', '2018-09-18 17:07:46', 'Arquitecto o Ingeniero Civil', '1', null, 'admin', 'REGISTRO', '2018-09-18 17:07:46');
INSERT INTO `log_convocatoria` VALUES ('1343', '008-I', '1', '2018-09-12 12:37:29', 'Practicante Pre profesional para Secretaría Técnica - Servir', '3', null, 'admin', 'ACTUALIZACION', '2018-09-18 17:09:37');
INSERT INTO `log_convocatoria` VALUES ('1344', '070-I', '1', '2018-09-22 18:04:25', 'Oficinista para Escalafón', '1', null, 'admin', 'REGISTRO', '2018-09-22 18:04:25');
INSERT INTO `log_convocatoria` VALUES ('1345', '071-I', '1', '2018-09-25 02:57:39', 'Técnico administrativo ', '1', null, 'admin', 'REGISTRO', '2018-09-25 02:57:39');
INSERT INTO `log_convocatoria` VALUES ('1346', '072-I', '1', '2018-09-25 02:58:57', 'Técnico administrativo para Trámite Documentario', '1', null, 'admin', 'REGISTRO', '2018-09-25 02:58:57');
INSERT INTO `log_convocatoria` VALUES ('1347', 'P009-I', '1', '2018-09-25 03:01:17', 'Practicante Profesional para el Equipo de Plantillas y Pensiones', '1', null, 'admin', 'REGISTRO', '2018-09-25 03:01:17');
INSERT INTO `log_convocatoria` VALUES ('1348', 'P009-I', '1', '2018-09-25 03:01:17', 'Practicante Profesional para el Equipo de Plantillas y Pensiones', '2', null, 'admin', 'ACTUALIZACION', '2018-09-27 17:29:35');
INSERT INTO `log_convocatoria` VALUES ('1349', '073-I', '1', '2018-09-27 17:30:13', 'Abogado', '1', null, 'admin', 'REGISTRO', '2018-09-27 17:30:13');
INSERT INTO `log_convocatoria` VALUES ('1350', '074-I', '1', '2018-09-28 15:45:34', 'Especialista en Tesorería', '1', null, 'admin', 'REGISTRO', '2018-09-28 15:45:34');
INSERT INTO `log_convocatoria` VALUES ('1351', 'P009-I', '1', '2018-09-25 03:01:17', 'Practicante Profesional para el Equipo de Plantillas y Pensiones', '3', null, 'admin', 'ACTUALIZACION', '2018-09-28 18:31:03');
INSERT INTO `log_convocatoria` VALUES ('1352', 'P009-I', '1', '2018-09-25 03:01:17', 'Practicante Profesional para el Equipo de Plantillas y Pensiones', '3', null, 'admin', 'ACTUALIZACION', '2018-09-28 18:31:07');
INSERT INTO `log_convocatoria` VALUES ('1353', '065-II', '1', '2018-09-17 09:49:41', 'Notificador', '2', null, 'admin', 'ACTUALIZACION', '2018-10-02 18:14:06');
INSERT INTO `log_convocatoria` VALUES ('1354', '068-I', '1', '2018-09-17 09:51:09', 'Responsable del Equipo de Planeamiento y Presupuesto', '2', null, 'admin', 'ACTUALIZACION', '2018-10-02 18:14:59');
INSERT INTO `log_convocatoria` VALUES ('1355', '037-IV', '1', '2018-09-17 09:46:29', 'Docente Responsable de Núcleo Distrital', '2', null, 'admin', 'ACTUALIZACION', '2018-10-03 18:03:47');
INSERT INTO `log_convocatoria` VALUES ('1356', '068-I', '1', '2018-09-17 09:51:09', 'Responsable del Equipo de Planeamiento y Presupuesto', '3', null, 'admin', 'ACTUALIZACION', '2018-10-03 18:03:54');
INSERT INTO `log_convocatoria` VALUES ('1357', 'P009-I', '1', '2018-09-25 03:01:17', 'Practicante Profesional para el Equipo de Planillas y Pensiones', '3', null, 'admin', 'ACTUALIZACION', '2018-10-03 18:04:11');
INSERT INTO `log_convocatoria` VALUES ('1368', '23', '2', '2018-10-11 12:11:19', 'ffdfff', '1', null, 'admin', 'REGISTRO', '2018-10-11 12:11:19');
INSERT INTO `log_convocatoria` VALUES ('1369', '069-I', '1', '2018-09-18 17:07:46', 'Arquitecto o Ingeniero Civil', '1', null, 'admin', 'ACTUALIZACION', '2018-10-12 17:06:33');
INSERT INTO `log_convocatoria` VALUES ('1370', '23', '2', '2018-10-11 12:11:19', 'demo contrato :c', '1', null, 'admin', 'ACTUALIZACION', '2018-11-02 14:04:37');
INSERT INTO `log_convocatoria` VALUES ('1371', '23', '2', '2018-10-11 12:11:19', 'SECRETARIA TECNICA PARA EL AREA DE AGEBRE', '1', null, 'admin', 'ACTUALIZACION', '2018-11-10 08:33:29');
INSERT INTO `log_convocatoria` VALUES ('1372', '432', '2', '2018-11-10 08:37:36', 'ANALISTA DE SISTEMAS ESPECIALISTAS EN PYTHON', '1', null, 'admin', 'REGISTRO', '2018-11-10 08:37:36');

-- ----------------------------
-- Table structure for postulante
-- ----------------------------
DROP TABLE IF EXISTS `postulante`;
CREATE TABLE `postulante` (
  `IDpostulante` int(11) NOT NULL AUTO_INCREMENT,
  `documento` varchar(8) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `apaterno` varchar(50) DEFAULT NULL,
  `amaterno` varchar(50) DEFAULT NULL,
  `sexo` int(1) DEFAULT NULL,
  `celular` varchar(10) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `estado_civil` varchar(50) DEFAULT NULL,
  `direccion` text,
  PRIMARY KEY (`IDpostulante`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of postulante
-- ----------------------------
INSERT INTO `postulante` VALUES ('1', '76187930', 'ALVARO', 'MENA', 'SANTOS', '2', '95646465', '', 'SOLTERO', '');
INSERT INTO `postulante` VALUES ('2', '21316565', 'CARMEN', 'PERLACIOS', 'MALDONADO', '1', '', '', '0', '');
INSERT INTO `postulante` VALUES ('3', '98789748', 'ALONSO', 'SOTO', 'CUEVA', '1', '', '', '0', '');
INSERT INTO `postulante` VALUES ('4', '16004816', 'NESTOR', 'MENA', 'SILVA', '2', '31232121', '', '0', '');
INSERT INTO `postulante` VALUES ('5', '15751822', 'OLGA', 'SANTOS', 'VALVERDE', '2', '931331231', '', '0', '');
INSERT INTO `postulante` VALUES ('6', '19330879', 'TELMO', 'MAICA', 'PRADO', '2', '', '', '0', '');
INSERT INTO `postulante` VALUES ('7', '42483706', 'KARLA', 'TARAZONA', 'PADILLA', '0', '', '', '0', '');
INSERT INTO `postulante` VALUES ('8', '10747243', 'YOVANA', 'VALENZUELA', 'SOTO', '1', '', '', '0', '');
INSERT INTO `postulante` VALUES ('9', '40148093', 'LILIANA', 'MORALES', 'CORDOBA', '1', '', '', '0', '');
INSERT INTO `postulante` VALUES ('10', '09559256', 'ELIAS', 'GALVES', 'ZARATE', '0', '', '', '0', '');
INSERT INTO `postulante` VALUES ('11', '07600957', 'ELIZABETH', 'VARGAS', 'MATCHA', '1', '', '', '0', '');
INSERT INTO `postulante` VALUES ('12', '21136614', 'DILMA', 'REYNOSO', 'CAÑAR', '1', '', '', '0', '');
INSERT INTO `postulante` VALUES ('13', '40802485', 'ZAIDA', 'PERLACIOS', 'CUEVA', '1', '', '', '0', '');
INSERT INTO `postulante` VALUES ('14', '40486199', 'ERASMO', 'AZURIN', 'ATOCHE', '1', '', '', '0', '');
INSERT INTO `postulante` VALUES ('15', '40385016', 'PERCY', 'BRICEÑO', 'LLAGHAJ', '2', '', '', '0', '');
INSERT INTO `postulante` VALUES ('16', '25799990', 'LUIS', 'GALLEGO', 'JUARES', '2', '', '', '0', '');
INSERT INTO `postulante` VALUES ('17', '21522606', 'FANNY', 'MORAN', 'MENDOZA', '1', '', '', '0', '');
INSERT INTO `postulante` VALUES ('18', '20734213', 'PERCY', 'GARCIA', 'LINO', '2', '', '', '0', '');
INSERT INTO `postulante` VALUES ('19', '15417496', 'JUAN', 'QUISPE', 'VARGAS', '2', '', '', '0', '');
INSERT INTO `postulante` VALUES ('20', '15283565', 'JESSICA', 'GUEVARRA', 'MORALES', '1', '', '', '0', '');
INSERT INTO `postulante` VALUES ('21', '10486683', 'EDGARD', 'CHAQUILANO', 'SANTOS', '2', '', '', '0', '');
INSERT INTO `postulante` VALUES ('22', '10478914', 'ESTHER', 'SANEZ', 'QUISPE', '1', '', '', '0', '');
INSERT INTO `postulante` VALUES ('23', '10437173', 'LUCILA', 'CHIPANA', 'CUEVA', '1', '', '', '0', '');
INSERT INTO `postulante` VALUES ('24', '10435377', 'HEIDI', 'CUEVA', 'MENENDES', '1', '', '', '0', '');
INSERT INTO `postulante` VALUES ('25', '10399097', 'DEISY', 'VIDARTE', 'SOLEDAD', '1', '', '', '0', '');
INSERT INTO `postulante` VALUES ('26', '10048581', 'SHIRLEY', 'AYALA', 'SOTO', '1', '', '', '0', '');
INSERT INTO `postulante` VALUES ('27', '10048581', 'ALONSO', 'PERLACIOS', 'MENA', '2', '', '', '0', '');
INSERT INTO `postulante` VALUES ('28', '09978120', 'JESSICA', 'VALENTIN', 'DELGADO', '1', '', '', '0', '');
INSERT INTO `postulante` VALUES ('29', '09967695', 'MILAGROS', 'GIRALDO', 'ALVARADO', '1', '', '', '0', '');
INSERT INTO `postulante` VALUES ('30', '09955120', 'BERTHA', 'MALDONADO', 'SILVA', '1', '', '', '0', '');
INSERT INTO `postulante` VALUES ('31', '09789368', 'JUAN', 'OROZCO', 'FARRIAL', '2', '', '', '0', '');
INSERT INTO `postulante` VALUES ('32', '09739183', 'ROBERTO', 'QUISPE', 'LOZANO', '2', '', '', '0', '');
INSERT INTO `postulante` VALUES ('33', '09402709', 'JESUS', 'HECHE', 'RUIZ', '2', '', '', '0', '');
INSERT INTO `postulante` VALUES ('34', '08718287', 'MARIA', 'CORRALES', 'MARTINEZ', '1', '', '', '0', '');
INSERT INTO `postulante` VALUES ('35', '08161420', 'LILIANA', 'YANCAN', 'TORRES', '1', '', '', '0', '');
INSERT INTO `postulante` VALUES ('36', '07812552', 'LUCIA', 'PEÑA', 'AGUIRRE', '1', '', '', '0', '');
INSERT INTO `postulante` VALUES ('37', '07579001', 'JEANNET', 'COLLANTES', 'URBINA', '1', '', '', '0', '');
INSERT INTO `postulante` VALUES ('38', '07412298', 'LIDIA', 'GAMA', 'TORRES', '1', '', '', '0', '');

-- ----------------------------
-- Table structure for tipo
-- ----------------------------
DROP TABLE IF EXISTS `tipo`;
CREATE TABLE `tipo` (
  `IDtipo` int(11) NOT NULL AUTO_INCREMENT,
  `descripcionCorta` varchar(10) DEFAULT NULL,
  `descripcionLarga` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`IDtipo`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tipo
-- ----------------------------
INSERT INTO `tipo` VALUES ('1', 'CAS', 'CAS');
INSERT INTO `tipo` VALUES ('2', 'PRACT', 'PRACTICANTE');

-- ----------------------------
-- Table structure for usuario
-- ----------------------------
DROP TABLE IF EXISTS `usuario`;
CREATE TABLE `usuario` (
  `usuarioID` int(11) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(20) DEFAULT NULL,
  `password` text,
  `nombres` varchar(150) DEFAULT NULL,
  `estado` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`usuarioID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of usuario
-- ----------------------------
INSERT INTO `usuario` VALUES ('1', 'admin', 'FSwEiuG/DJlhT5pWs2ICFhoaXkm4HgHfiMogjLVlwryZ/yFjNf2gSgspTXvX6DgPdHx9N+q3stVKfXuT3uZicg==', 'admin', '1');
INSERT INTO `usuario` VALUES ('2', 'TEST', '4bp5sacbYhmYoG8u6u8p+qVSZDQJTdJ2MjCnb1YN9WUzGkp9M7YA9puEnFAxv9x/nVASDYDsGeer3cwCGKu6Uw==', 'TEST', '1');

-- ----------------------------
-- View structure for view_convocatorias
-- ----------------------------
DROP VIEW IF EXISTS `view_convocatorias`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER  VIEW `view_convocatorias` AS select `c`.`IDconvocatoria` AS `IDconvocatoria`,`t`.`IDtipo` AS `IDtipo`,`t`.`descripcionCorta` AS `descripcionCorta`,`c`.`numero` AS `numero`,`c`.`fecha` AS `fecha`,`c`.`cantidad` AS `cantidad`,`c`.`fechaRegistro` AS `fechaRegistro`,`c`.`asuntoContrato` AS `asuntoContrato`,`c`.`estado` AS `estado`,`c`.`registradoPor` AS `usuarioRegistro`,`c`.`fechaModificacion` AS `fechaModificacion` from (`convocatoria` `c` join `tipo` `t` on((`c`.`IDtipo` = `t`.`IDtipo`))) order by `c`.`fecha` desc,`c`.`numero` desc ;

-- ----------------------------
-- View structure for view_evaluar_postulante
-- ----------------------------
DROP VIEW IF EXISTS `view_evaluar_postulante`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER  VIEW `view_evaluar_postulante` AS SELECT
det.IDdetalle_postulacion,
det.IDconvocatoria,
p.nombre,
p.apaterno,
p.amaterno,
p.sexo,
p.estado_civil,
p.email,
p.celular,
p.direccion,
p.documento AS dni,
det.evaluacion_exp,
det.examen_tecnico,
det.resultado_final
FROM detalle_postulacion det
JOIN postulante p
ON p.IDpostulante = det.IDpostulante ;

-- ----------------------------
-- View structure for view_listar_todo_pastel
-- ----------------------------
DROP VIEW IF EXISTS `view_listar_todo_pastel`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER  VIEW `view_listar_todo_pastel` AS select (
select count(0) from `detalle_postulacion`
) AS `total_postulados`,
(select count(0) from `detalle_postulacion` where estado='1') AS `total_evaluados`,
truncate(
(((select count(0) from `detalle_postulacion` where estado='1') / 
(select count(0) from `detalle_postulacion`)) * 100),2) AS `porct_general` ;

-- ----------------------------
-- View structure for view_postulaciones
-- ----------------------------
DROP VIEW IF EXISTS `view_postulaciones`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER  VIEW `view_postulaciones` AS SELECT
det.IDdetalle_postulacion,
det.IDconvocatoria,
p.documento,
CONCAT(p.apaterno,' ' ,p.amaterno, ', ', p.nombre) AS nombres,
det.evaluacion_exp,
det.examen_tecnico,
det.resultado_final
FROM detalle_postulacion det
JOIN postulante p
ON p.IDpostulante = det.IDpostulante ;

-- ----------------------------
-- View structure for view_usuarios
-- ----------------------------
DROP VIEW IF EXISTS `view_usuarios`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER  VIEW `view_usuarios` AS select `usuario`.`usuario` AS `usuario`,`usuario`.`nombres` AS `nombres`,`usuario`.`estado` AS `estado` from `usuario` ;

-- ----------------------------
-- Procedure structure for USP_ACTUALIZAR_CONVOCATORIA
-- ----------------------------
DROP PROCEDURE IF EXISTS `USP_ACTUALIZAR_CONVOCATORIA`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `USP_ACTUALIZAR_CONVOCATORIA`(IN p_IDconvocatoria INT,
																		 IN p_IDtipo INT,
                                                                         IN p_numero VARCHAR(20),
                                                                         IN p_cantidad INT,
                                                                         IN p_asuntoContrato TEXT,
                                                                         IN p_estado tinyint(10),
                                                                         IN p_fecha DATE,
                                                                         IN p_usuario VARCHAR(20))
BEGIN
UPDATE convocatoria set numero = p_numero,
						IDtipo = p_IDtipo,
						asuntoContrato = p_asuntoContrato,
                        cantidad = p_cantidad,
                        fecha = p_fecha,
                        fechaModificacion = NOW(),
                        modificadoPor = p_usuario,
                        estado = p_estado
					where IDconvocatoria = p_IDconvocatoria;
INSERT INTO log_convocatoria(numero,cantidad,fechaRegistro,asuntoContrato,estado,usuario,accion,fecha) SELECT numero,cantidad,fechaRegistro,asuntoContrato,estado,p_usuario,'ACTUALIZACION',NOW() FROM convocatoria where IDconvocatoria = p_IDconvocatoria;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for USP_ACTUALIZAR_USUARIO
-- ----------------------------
DROP PROCEDURE IF EXISTS `USP_ACTUALIZAR_USUARIO`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `USP_ACTUALIZAR_USUARIO`(IN p_modo tinyint(1),
																	 IN p_usuario VARCHAR(20),
                                                                     IN p_password TEXT,
                                                                     IN p_nombres TEXT,
                                                                     IN p_estado tinyint(1))
BEGIN
IF p_modo = 1  THEN
UPDATE usuario set password = p_password where usuario = p_usuario;
Select 1 as ID;
END IF;
IF p_modo = 2 THEN
UPDATE usuario set nombres = p_nombres ,estado = p_estado  where usuario = p_usuario;
	 IF LENGTH(p_password) > 0 THEN
	 UPDATE usuario set password = p_password  where usuario = p_usuario;
	 END IF;
END IF;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for USP_ELIMINAR_CONVOCATORIA
-- ----------------------------
DROP PROCEDURE IF EXISTS `USP_ELIMINAR_CONVOCATORIA`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `USP_ELIMINAR_CONVOCATORIA`(IN p_IDconvocatoria INT, IN p_usuario VARCHAR(20))
BEGIN
INSERT INTO log_convocatoria(numero,cantidad,fechaRegistro,asuntoContrato,estado,usuarioRegistro,usuario,accion,fecha) SELECT numero,cantidad,fechaRegistro,asuntoContrato,estado,registradoPor,p_usuario,'ELIMINACION',NOW() FROM convocatoria where IDconvocatoria = p_IDconvocatoria;
DELETE FROM convocatoria where IDconvocatoria = p_IDconvocatoria;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for USP_INSERTAR_CONVOCATORIA
-- ----------------------------
DROP PROCEDURE IF EXISTS `USP_INSERTAR_CONVOCATORIA`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `USP_INSERTAR_CONVOCATORIA`(IN p_IDtipo INT,
																	   IN p_numero VARCHAR(20),
                                                                       IN p_cantidad INT,
                                                                       IN p_asuntoContrato TEXT,
                                                                       IN p_estado tinyint(10),
                                                                       IN p_fecha DATE,
                                                                       IN p_usuario VARCHAR(20))
BEGIN
DECLARE vID INT;
INSERT INTO convocatoria(IDtipo,numero,cantidad,fecha,fechaRegistro,asuntoContrato,estado,registradoPor) 
				 VALUES (p_IDtipo,p_numero,p_cantidad,p_fecha,NOW(),p_asuntoContrato,p_estado,p_usuario);
SET vID = (Select LAST_INSERT_ID());
INSERT INTO log_convocatoria(numero,cantidad,fechaRegistro,asuntoContrato,estado,usuario,accion,fecha) SELECT numero,cantidad,fechaRegistro,asuntoContrato,estado,p_usuario,'REGISTRO',NOW() FROM convocatoria where IDconvocatoria = vID;
Select vID as ID;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for USP_INSERTAR_DOCENTE_CONV
-- ----------------------------
DROP PROCEDURE IF EXISTS `USP_INSERTAR_DOCENTE_CONV`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `USP_INSERTAR_DOCENTE_CONV`(IN p_documento VARCHAR(8), IN p_sexo INT(1), IN p_nombre VARCHAR(50), IN p_apaterno VARCHAR(50), IN p_amaterno VARCHAR(50), IN p_celular VARCHAR(10))
BEGIN
/*DECLARE vID INT;*/
INSERT INTO postulante(documento, sexo, nombre, apaterno, amaterno, celular) 
				 VALUES (p_documento, p_sexo, p_nombre, p_apaterno, p_amaterno, p_celular);
/*SET vID = (Select LAST_INSERT_ID());*/
/*INSERT INTO log_convocatoria(numero,cantidad,fechaRegistro,asuntoContrato,estado,usuario,accion,fecha) SELECT numero,cantidad,fechaRegistro,asuntoContrato,estado,p_usuario,'REGISTRO',NOW() FROM convocatoria where IDconvocatoria = vID;
Select vID as ID;*/
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for USP_INSERTAR_POSTULANTE
-- ----------------------------
DROP PROCEDURE IF EXISTS `USP_INSERTAR_POSTULANTE`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `USP_INSERTAR_POSTULANTE`(IN p_dni VARCHAR(8), IN p_sexo INT, IN p_nombre VARCHAR(50), IN p_apaterno VARCHAR(50), IN p_amaterno VARCHAR(50), IN p_cel VARCHAR(10), IN p_email VARCHAR(50), IN p_estado_civil VARCHAR(50), IN p_direccion TEXT, IN p_fk_convocatoria INT)
BEGIN
DECLARE vID INT;
INSERT INTO postulante(documento, sexo, nombre, apaterno, amaterno, celular, email, estado_civil, direccion) 
				 VALUES (p_dni, p_sexo, p_nombre, p_apaterno, p_amaterno, p_cel, p_email, p_estado_civil, p_direccion);

SET vID = (Select LAST_INSERT_ID());

INSERT INTO detalle_postulacion(IDpostulante, IDconvocatoria, fecha_reg, estado) VALUES (vID, p_fk_convocatoria, NOW(), 0);

Select vID as ID;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for USP_INSERTAR_USUARIO
-- ----------------------------
DROP PROCEDURE IF EXISTS `USP_INSERTAR_USUARIO`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `USP_INSERTAR_USUARIO`(IN p_usuario VARCHAR(20),
										IN p_nombres TEXT,
                                        IN p_password TEXT)
BEGIN
INSERT INTO usuario(usuario,password,nombres,estado)
			VALUES(p_usuario,p_password,p_nombres,1);
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for USP_LISTAR_CONVOCATORIA
-- ----------------------------
DROP PROCEDURE IF EXISTS `USP_LISTAR_CONVOCATORIA`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `USP_LISTAR_CONVOCATORIA`(IN p_IDconvocatoria INT)
BEGIN
Select IDconvocatoria,IDtipo,cantidad,numero,fecha,cantidad,asuntoContrato,estado from convocatoria where IDconvocatoria = p_IDconvocatoria;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for USP_LISTAR_REPORTE_TOTAL
-- ----------------------------
DROP PROCEDURE IF EXISTS `USP_LISTAR_REPORTE_TOTAL`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `USP_LISTAR_REPORTE_TOTAL`()
BEGIN
SELECT fecha_reg, count(fecha_reg) as total_por_dia, count(case estado when 0 then 1 end) as no_evaluados,
count(case estado when 1 then 0 end) as si_evaluados,
(count(case estado when 1 then 0 end)/count(fecha_reg)*100) as porcentaje
from detalle_postulacion
group by fecha_reg;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for USP_VALIDAR_USUARIO
-- ----------------------------
DROP PROCEDURE IF EXISTS `USP_VALIDAR_USUARIO`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `USP_VALIDAR_USUARIO`(in p_usuario Varchar(20),
    in p_paswd varchar(40),
    in p_ip VARCHAR(36),
    in p_navegador TEXT,
    in p_session VARCHAR(40))
BEGIN
    Select Password,usuario,nombres from usuario where usuario = p_usuario and estado = 1;
END
;;
DELIMITER ;

-- ----------------------------
-- Function structure for initcap
-- ----------------------------
DROP FUNCTION IF EXISTS `initcap`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `initcap`(cadena VARCHAR(100)) RETURNS text CHARSET latin1
    READS SQL DATA
    DETERMINISTIC
BEGIN
DECLARE pos INT DEFAULT 0; 
DECLARE tmp VARCHAR(100) DEFAULT ''; 
DECLARE result VARCHAR(100) DEFAULT ''; 
REPEAT SET pos = LOCATE(' ', cadena); 
 IF pos = 0 THEN 
 SET pos = CHAR_LENGTH(cadena); 
 END IF; 
 SET tmp = LEFT(cadena,pos); 
 SET result = CONCAT(result, UPPER(LEFT(tmp,1)),SUBSTR(tmp,2)); 
 SET cadena = RIGHT(cadena,CHAR_LENGTH(cadena)-pos); 
UNTIL CHAR_LENGTH(cadena) = 0 END REPEAT; 
RETURN result; 
END
;;
DELIMITER ;
