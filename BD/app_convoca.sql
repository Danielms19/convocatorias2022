/*
Navicat MySQL Data Transfer

Source Server         : con
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : app_convoca

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2020-11-29 19:42:18
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for adaptacion_area
-- ----------------------------
DROP TABLE IF EXISTS `adaptacion_area`;
CREATE TABLE `adaptacion_area` (
  `AAID` int(11) NOT NULL AUTO_INCREMENT,
  `sum` varchar(10) NOT NULL,
  PRIMARY KEY (`AAID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of adaptacion_area
-- ----------------------------
INSERT INTO `adaptacion_area` VALUES ('1', '12.00');

-- ----------------------------
-- Table structure for adaptacion_entidad
-- ----------------------------
DROP TABLE IF EXISTS `adaptacion_entidad`;
CREATE TABLE `adaptacion_entidad` (
  `AEID` int(11) NOT NULL AUTO_INCREMENT,
  `sum` varchar(10) NOT NULL,
  PRIMARY KEY (`AEID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of adaptacion_entidad
-- ----------------------------
INSERT INTO `adaptacion_entidad` VALUES ('1', '12.00');

-- ----------------------------
-- Table structure for adaptacion_puesto
-- ----------------------------
DROP TABLE IF EXISTS `adaptacion_puesto`;
CREATE TABLE `adaptacion_puesto` (
  `APID` int(11) NOT NULL AUTO_INCREMENT,
  `sum` varchar(10) NOT NULL,
  PRIMARY KEY (`APID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of adaptacion_puesto
-- ----------------------------
INSERT INTO `adaptacion_puesto` VALUES ('1', '16.00');

-- ----------------------------
-- Table structure for aux_det_virtual
-- ----------------------------
DROP TABLE IF EXISTS `aux_det_virtual`;
CREATE TABLE `aux_det_virtual` (
  `ID_DETCAS` int(6) NOT NULL AUTO_INCREMENT,
  `ID_CAS` int(6) DEFAULT NULL,
  `PREG_1` varchar(2) DEFAULT NULL,
  `PREG_2` varchar(2) DEFAULT NULL,
  `DEC_JUR` varchar(2) DEFAULT NULL,
  `ESTADO_DOCUMENTO` varchar(10) DEFAULT NULL,
  `ESTADO_DOCENTE` varchar(10) DEFAULT NULL,
  `OBSERVACIONES` text,
  `REGISTRADO_POR_ID` int(11) DEFAULT NULL,
  `REGISTRADO_POR` varchar(100) DEFAULT NULL,
  `FEC_REGISTRO` datetime DEFAULT NULL,
  `DERIVADO_AID` int(11) DEFAULT NULL,
  `DERIVADO_A` varchar(100) DEFAULT NULL,
  `FEC_DERIVADO` datetime DEFAULT NULL,
  `MODIFICADO_POR_ID` int(11) DEFAULT NULL,
  `MODIFICADO_POR` varchar(100) DEFAULT NULL,
  `FEC_MODIFICACION` datetime DEFAULT NULL,
  `RADIO_A1` varchar(2) DEFAULT NULL,
  `RADIO_A2` varchar(12) DEFAULT NULL,
  `RADIO_A3` varchar(2) DEFAULT NULL,
  `RADIO_A4` varchar(2) DEFAULT NULL,
  `RADIO_A5` varchar(2) DEFAULT NULL,
  `RADIO_A6` varchar(2) DEFAULT NULL,
  `RADIO_A7` varchar(2) DEFAULT NULL,
  `REL_PARENT` varchar(20) DEFAULT NULL,
  `REL_APELLIDO` varchar(20) DEFAULT NULL,
  `REL_NOMBRE` varchar(20) DEFAULT NULL,
  `REL_TRABAJO` varchar(20) DEFAULT NULL,
  `FEC_POSTULACION` datetime DEFAULT NULL,
  `NOT_CORREO` varchar(5) DEFAULT NULL,
  `NOT_CELULAR` varchar(5) DEFAULT NULL,
  `NUM_FOLIO` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`ID_DETCAS`),
  KEY `ID_REGDOC` (`ID_CAS`) USING BTREE,
  CONSTRAINT `aux_det_virtual_ibfk_1` FOREIGN KEY (`ID_CAS`) REFERENCES `aux_reg_virtual` (`ID_CAS`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of aux_det_virtual
-- ----------------------------
INSERT INTO `aux_det_virtual` VALUES ('1', '401', null, null, 'SI', 'EN PROCESO', null, null, null, null, null, null, null, null, null, null, null, 'SI', 'DL 19990', 'NO', 'NO', 'NO', 'SI', null, ' ', ' ', ' ', ' ', '2020-11-11 11:18:16', 'SI', 'SI', null);
INSERT INTO `aux_det_virtual` VALUES ('2', '402', null, null, 'SI', 'EN PROCESO', null, null, null, null, null, null, null, null, null, null, null, 'SI', 'HABITAT', 'NO', 'NO', 'NO', 'SI', null, ' ', ' ', ' ', ' ', '2020-11-11 11:41:08', 'SI', 'SI', null);
INSERT INTO `aux_det_virtual` VALUES ('3', '403', null, null, 'SI', 'EN PROCESO', null, null, null, null, null, null, null, null, null, null, null, 'SI', 'DL 19990', 'NO', 'NO', 'NO', 'SI', null, ' ', ' ', ' ', ' ', '2020-11-12 14:38:48', 'SI', 'SI', null);
INSERT INTO `aux_det_virtual` VALUES ('4', '404', null, null, 'SI', 'EN PROCESO', null, null, null, null, null, null, null, null, null, null, null, 'SI', 'PRIMA', 'SI', 'SI', 'NO', 'SI', null, ' ', ' ', ' ', ' ', '2020-11-19 14:11:34', 'SI', 'SI', null);
INSERT INTO `aux_det_virtual` VALUES ('5', '405', null, null, 'SI', 'EN PROCESO', null, null, null, null, null, null, null, null, null, null, null, 'SI', 'PRIMA', 'NO', 'SI', 'NO', 'SI', null, ' ', ' ', ' ', ' ', '2020-11-26 16:45:13', 'SI', 'SI', null);

-- ----------------------------
-- Table structure for aux_reg_virtual
-- ----------------------------
DROP TABLE IF EXISTS `aux_reg_virtual`;
CREATE TABLE `aux_reg_virtual` (
  `ID_CAS` int(6) NOT NULL AUTO_INCREMENT,
  `FASE` varchar(20) DEFAULT NULL,
  `COD_CONV` int(5) DEFAULT NULL,
  `NUM_CAS` varchar(100) DEFAULT NULL,
  `DESC_CAS` varchar(100) DEFAULT NULL,
  `COD_VERIF` int(2) DEFAULT NULL,
  `FEC_NAC` date DEFAULT NULL,
  `NOMBRES` varchar(100) DEFAULT NULL,
  `DNI` varchar(9) DEFAULT NULL,
  `SEXO` varchar(10) DEFAULT NULL,
  `DIRECCION` varchar(255) DEFAULT NULL,
  `AP_PATERNO` varchar(50) DEFAULT NULL,
  `AP_MATERNO` varchar(50) DEFAULT NULL,
  `TELEFONO` varchar(9) DEFAULT NULL,
  `CELULAR` int(9) DEFAULT NULL,
  `CORREO` varchar(100) DEFAULT NULL,
  `ARCHIVO` varchar(120) DEFAULT NULL,
  PRIMARY KEY (`ID_CAS`)
) ENGINE=InnoDB AUTO_INCREMENT=406 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of aux_reg_virtual
-- ----------------------------
INSERT INTO `aux_reg_virtual` VALUES ('401', 'CONVOCATORIA', '869', 'CAS-072-2020', 'TÉCNICO EN SIAGIE', '1', '1990-12-12', 'CHRISTIAN ALEJANDRO', '46393043', 'MASCULINO', 'AV. BELAUNDE OESTE 121 COMAS', 'MENDOZA', 'SANTOS', '234567899', '961460579', 'profmendoza10@gmail.com', 'Ficha_postulación_46393043.pdf');
INSERT INTO `aux_reg_virtual` VALUES ('402', 'CONVOCATORIA', '4', 'CAS-111-2020', 'ESPECIALISTA DE PROYECTOS INFORMATICOS', '2', '1978-12-12', 'PEDRO MIGUEL', '12345678', 'MASCULINO', 'AV. SANCHEZ CACERES', 'PEREZ', 'JUAREZ', '232323232', '987654321', 'profmendoza10@gmail.com', 'Anexos_46393043.pdf');
INSERT INTO `aux_reg_virtual` VALUES ('403', 'CONVOCATORIA', '4', 'CAS-111-2020', 'ESPECIALISTA DE PROYECTOS INFORMATICOS', '2', '1990-12-12', 'ALVARO ALEXANDER', '888888888', 'MASCULINO', 'AV. PERU 123', 'MENA', 'SANTOS', '111111111', '111111111', 'amenas94@gmail.com', 'Anexos_12345678.pdf');
INSERT INTO `aux_reg_virtual` VALUES ('404', 'CONVOCATORIA', '869', 'CAS-072-2020', 'TÉCNICO EN SIAGIE', '4', '1994-07-16', 'NESTOR', '76187930', 'MASCULINO', 'DSDSSDSDDS', 'MENA', 'SILVA', '926353561', '989864564', 'amenas94@gmail.com', 'Instructivo_MS_Teams_-_Acceso_a_reunión_Reasignacion_o_Adjudicación_de_Contrato_Docente.pdf');
INSERT INTO `aux_reg_virtual` VALUES ('405', 'CONVOCATORIA', '4', 'CAS-111-2020', 'ESPECIALISTA DE PROYECTOS INFORMATICOS', '5', '1994-07-16', 'alvaro alexander', '76187930', 'MASCULINO', 'el palmo', 'mena', 'santos', '265465465', '926353561', 'amenas94@gmail.com', 'EBA_MATEMATICA_-_FASE_III.pdf');

-- ----------------------------
-- Table structure for capacitaciones
-- ----------------------------
DROP TABLE IF EXISTS `capacitaciones`;
CREATE TABLE `capacitaciones` (
  `IDCAPA` int(6) NOT NULL AUTO_INCREMENT,
  `ID_CAS` int(6) NOT NULL,
  `NOM_CURSO` varchar(255) DEFAULT NULL,
  `TIP_CURSO` varchar(255) DEFAULT NULL,
  `INSTITUCION` varchar(255) DEFAULT NULL,
  `DESDE` varchar(15) DEFAULT NULL,
  `HASTA` varchar(15) DEFAULT NULL,
  `TOTHORAS` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`IDCAPA`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of capacitaciones
-- ----------------------------
INSERT INTO `capacitaciones` VALUES ('1', '405', 'ccna', 'ccna curso', 'cisco', '2020', '2020', '200');

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
INSERT INTO `ci_sessions` VALUES ('d422c157ee90541810b6fe5544a11e2e4e892a67', '::1', '1606696916', 0x63617074636861576F72647C733A343A2232303839223B757365727C733A363A22616D656E6173223B6E6F6D627265737C733A353A2261646D696E223B7573756172696F49447C733A313A2231223B76697374617C693A303B);

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
  KEY `fk_idtipo_idx` (`IDtipo`) USING BTREE,
  CONSTRAINT `convocatoria_ibfk_1` FOREIGN KEY (`IDtipo`) REFERENCES `tipo` (`IDtipo`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=871 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of convocatoria
-- ----------------------------
INSERT INTO `convocatoria` VALUES ('1', '1', '001-I', '2016-01-13', '206', 'DOCENTES FORTALEZA', '3', 'admin', '2016-08-07 17:46:19', null, '2016-08-07 17:49:08');
INSERT INTO `convocatoria` VALUES ('2', '1', '002-I', '2016-01-13', '63', 'ACOMPAÑANTES PEDAGÓGICOS DE PRIMARIA', '3', 'admin', '2016-08-07 17:56:52', null, null);
INSERT INTO `convocatoria` VALUES ('3', '1', '123', '2020-11-06', '1', 'ANALISTA DE SISTEMAS', '2', 'admin', '2020-09-25 14:00:30', 'admin', '2020-10-27 09:24:35');
INSERT INTO `convocatoria` VALUES ('4', '1', '111', '2020-11-06', '1', 'ESPECIALISTA DE PROYECTOS INFORMATICOS', '1', 'admin', '2020-09-25 14:01:09', null, null);
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
INSERT INTO `convocatoria` VALUES ('486', '1', '037-IV', '2018-09-17', '1', 'Docente Responsable de Núcleo Distrital', '3', 'admin', '2018-09-17 09:46:29', 'admin', '2018-10-04 17:42:01');
INSERT INTO `convocatoria` VALUES ('487', '1', '065-II', '2018-09-17', '1', 'Notificador', '3', 'admin', '2018-09-17 09:49:41', 'admin', '2018-10-04 08:41:55');
INSERT INTO `convocatoria` VALUES ('488', '1', '068-I', '2018-09-17', '1', 'Responsable del Equipo de Planeamiento y Presupuesto', '3', 'admin', '2018-09-17 09:51:09', 'admin', '2018-10-03 18:03:54');
INSERT INTO `convocatoria` VALUES ('489', '1', '069-I', '2018-09-18', '1', 'Arquitecto o Ingeniero Civil', '3', 'admin', '2018-09-18 17:07:46', 'admin', '2018-10-05 18:15:28');
INSERT INTO `convocatoria` VALUES ('490', '1', '070-I', '2018-09-21', '1', 'Oficinista para Escalafón', '3', 'admin', '2018-09-22 18:04:25', 'admin', '2018-10-10 21:43:07');
INSERT INTO `convocatoria` VALUES ('491', '1', '071-I', '2018-09-24', '1', 'Técnico administrativo ', '3', 'admin', '2018-09-25 02:57:39', 'admin', '2018-10-11 22:30:11');
INSERT INTO `convocatoria` VALUES ('492', '1', '072-I', '2018-09-24', '1', 'Técnico administrativo para Trámite Documentario', '3', 'admin', '2018-09-25 02:58:57', 'admin', '2018-10-12 17:15:50');
INSERT INTO `convocatoria` VALUES ('493', '2', 'P009-I', '2018-09-24', '1', 'Practicante Profesional para el Equipo de Planillas y Pensiones', '3', 'admin', '2018-09-25 03:01:17', 'admin', '2018-10-03 18:04:11');
INSERT INTO `convocatoria` VALUES ('494', '1', '073-I', '2018-09-27', '1', 'Abogado', '3', 'admin', '2018-09-27 17:30:13', 'admin', '2018-10-16 21:04:11');
INSERT INTO `convocatoria` VALUES ('495', '1', '074-I', '2018-09-28', '1', 'Especialista en Tesorería', '3', 'admin', '2018-09-28 15:45:34', 'admin', '2018-10-19 17:49:44');
INSERT INTO `convocatoria` VALUES ('497', '1', '075-I', '2018-10-15', '1', 'Técnico administrativo', '3', 'admin', '2018-10-15 17:13:38', 'admin', '2018-11-01 12:44:57');
INSERT INTO `convocatoria` VALUES ('498', '1', '076-I', '2018-10-15', '1', 'Oficinista para escalafón', '3', 'admin', '2018-10-15 17:14:07', 'admin', '2018-11-06 17:27:58');
INSERT INTO `convocatoria` VALUES ('499', '1', '077-I', '2018-10-16', '1', 'Técnico en escalafón', '3', 'admin', '2018-10-16 17:27:38', 'admin', '2018-11-07 17:00:54');
INSERT INTO `convocatoria` VALUES ('500', '1', '078-I', '2018-10-18', '1', 'Técnico administrativo para el equipo de reclutamiento y selección', '3', 'admin', '2018-10-18 15:55:40', 'admin', '2018-11-07 17:00:43');
INSERT INTO `convocatoria` VALUES ('501', '1', '046-III', '2018-10-23', '1', 'Psicólogo', '3', 'admin', '2018-10-23 16:36:31', 'admin', '2018-11-13 19:16:12');
INSERT INTO `convocatoria` VALUES ('502', '1', '044-V', '2018-10-23', '1', 'Personal de vigilancia', '3', 'admin', '2018-10-23 16:37:01', 'admin', '2018-11-12 19:39:46');
INSERT INTO `convocatoria` VALUES ('503', '1', '032-III', '2018-10-23', '1', 'Personal de secretaria', '3', 'admin', '2018-10-23 16:37:45', 'admin', '2018-11-08 18:15:13');
INSERT INTO `convocatoria` VALUES ('504', '2', '010-I', '2018-10-25', '1', 'Practicante Pre Profesional para el Área de Administración', '3', 'admin', '2018-10-25 16:45:38', 'admin', '2018-11-06 17:26:26');
INSERT INTO `convocatoria` VALUES ('505', '1', '079-I', '2018-10-30', '1', 'Asistente administrativo', '3', 'admin', '2018-10-30 08:29:44', 'admin', '2018-11-19 12:48:40');
INSERT INTO `convocatoria` VALUES ('506', '1', '057-IV', '2018-11-08', '2', 'Coordinador de Innovación y Soporte Tecnológico', '3', 'admin', '2018-11-08 23:51:24', 'admin', '2018-11-27 17:04:29');
INSERT INTO `convocatoria` VALUES ('507', '1', '057-V', '2018-11-08', '1', 'Coordinador de Innovación y Soporte Tecnológico', '3', 'admin', '2018-11-08 23:53:57', 'admin', '2018-11-19 17:03:50');
INSERT INTO `convocatoria` VALUES ('508', '1', '032-IV', '2018-11-08', '1', 'Personal de secretaria', '3', 'admin', '2018-11-08 23:58:42', 'admin', '2018-11-19 17:04:13');
INSERT INTO `convocatoria` VALUES ('509', '1', '034-II', '2018-11-08', '1', 'Personal de apoyo educativo', '3', 'admin', '2018-11-08 23:59:59', 'admin', '2018-11-19 17:04:08');
INSERT INTO `convocatoria` VALUES ('510', '1', '047-II', '2018-11-08', '1', 'COORDINADOR ADMINISTRATIVO Y DE RECURSOS EDUCATIVOS PARA ZONAS URBANAS', '3', 'admin', '2018-11-09 00:02:15', 'admin', '2018-11-19 17:04:00');
INSERT INTO `convocatoria` VALUES ('511', '1', '048-II', '2018-11-08', '1', 'Personal de Mantenimiento', '3', 'admin', '2018-11-09 00:04:58', 'admin', '2018-11-26 17:42:12');
INSERT INTO `convocatoria` VALUES ('512', '2', 'P011-I', '2018-11-08', '1', 'Practicante Pre Profesional para el Área de Administración', '3', 'admin', '2018-11-09 00:09:50', 'admin', '2018-11-15 18:46:20');
INSERT INTO `convocatoria` VALUES ('513', '1', '080-I', '2018-11-12', '1', 'Abogado', '3', 'admin', '2018-11-12 19:40:58', 'admin', '2018-11-27 15:21:48');
INSERT INTO `convocatoria` VALUES ('514', '1', '081-I', '2018-11-14', '1', 'Técnico administrativo', '3', 'admin', '2018-11-14 16:06:08', 'admin', '2018-11-28 18:45:05');
INSERT INTO `convocatoria` VALUES ('515', '1', '082-I', '2018-11-14', '1', 'Especialista en Estadística', '3', 'admin', '2018-11-14 16:06:51', 'admin', '2018-11-27 15:21:21');
INSERT INTO `convocatoria` VALUES ('516', '1', '083-I', '2018-11-15', '1', 'Asistente administrativo', '3', 'admin', '2018-11-16 08:46:33', 'admin', '2018-12-03 16:38:10');
INSERT INTO `convocatoria` VALUES ('517', '1', '084-I', '2018-11-16', '1', 'Técnico administrativo', '3', 'admin', '2018-11-19 11:11:47', 'admin', '2018-12-06 16:34:36');
INSERT INTO `convocatoria` VALUES ('520', '1', '085-I', '2018-11-19', '1', 'Analista de tesorería', '3', 'admin', '2018-11-19 17:01:56', 'admin', '2018-12-04 17:13:43');
INSERT INTO `convocatoria` VALUES ('521', '1', '086-I', '2018-11-19', '1', 'Especialista en Recursos Humanos', '3', 'admin', '2018-11-19 17:03:26', 'admin', '2018-12-07 16:35:47');
INSERT INTO `convocatoria` VALUES ('522', '1', '032-V', '2018-11-20', '1', 'Personal de secretaria', '3', 'admin', '2018-11-20 17:45:40', 'admin', '2018-12-10 17:04:42');
INSERT INTO `convocatoria` VALUES ('523', '1', '044-VI', '2018-11-20', '1', 'Personal de vigilancia', '3', 'admin', '2018-11-20 17:46:21', 'admin', '2018-12-07 16:35:13');
INSERT INTO `convocatoria` VALUES ('524', '1', '032-VI', '2018-11-21', '1', 'Personal de secretaria', '3', 'admin', '2018-11-21 22:01:13', 'admin', '2018-12-11 17:46:17');
INSERT INTO `convocatoria` VALUES ('525', '1', '087-I', '2018-11-26', '1', 'Asistente administrativo', '3', 'admin', '2018-11-26 17:30:20', 'admin', '2018-12-12 16:46:20');
INSERT INTO `convocatoria` VALUES ('526', '1', '057-VI', '2018-11-29', '1', 'Coordinador de Innovación y Soporte Tecnológico', '3', 'admin', '2018-11-29 17:55:28', 'admin', '2018-12-18 17:52:22');
INSERT INTO `convocatoria` VALUES ('527', '1', '048-III', '2018-11-29', '1', 'Personal de Mantenimiento', '3', 'admin', '2018-11-29 17:56:12', 'admin', '2018-12-18 17:52:36');
INSERT INTO `convocatoria` VALUES ('528', '1', '088-I', '2018-12-03', '1', 'Asistente administrativo', '3', 'admin', '2018-12-03 16:38:38', 'admin', '2018-12-19 14:39:18');
INSERT INTO `convocatoria` VALUES ('529', '1', '089-I', '2018-12-17', '2', 'Estibadores', '3', 'admin', '2018-12-17 17:51:49', 'admin', '2019-01-08 17:49:00');
INSERT INTO `convocatoria` VALUES ('530', '1', '090-I', '2018-12-18', '1', 'Coordinador del Equipo de Estadística y Monitoreo', '3', 'admin', '2018-12-18 17:28:12', 'admin', '2019-01-09 20:52:53');
INSERT INTO `convocatoria` VALUES ('531', '1', '091-I', '2018-12-18', '1', 'Responsable del Equipo de Planeamiento y Presupuesto', '3', 'admin', '2018-12-18 17:31:03', 'admin', '2019-01-08 18:53:05');
INSERT INTO `convocatoria` VALUES ('532', '1', '092-I', '2018-12-21', '1', 'Especialista en Educación', '3', 'admin', '2018-12-21 14:18:38', 'admin', '2019-01-11 19:04:58');
INSERT INTO `convocatoria` VALUES ('533', '1', '093-I', '2018-12-27', '1', 'Asistente legal', '3', 'admin', '2018-12-27 17:06:10', 'admin', '2019-01-15 22:04:40');
INSERT INTO `convocatoria` VALUES ('534', '2', '012-I', '2018-12-28', '1', 'Practicante Pre Profesional para el Área de Asesoría Jurídica', '3', 'admin', '2018-12-28 19:27:35', 'admin', '2019-01-08 18:53:36');
INSERT INTO `convocatoria` VALUES ('535', '1', '094-I', '2018-12-31', '1', 'Técnico Administrativo para APAFA', '3', 'admin', '2018-12-31 12:24:16', 'admin', '2019-01-17 19:09:38');
INSERT INTO `convocatoria` VALUES ('536', '1', '095-I', '2018-12-31', '1', 'Abogado', '3', 'admin', '2018-12-31 12:27:06', 'admin', '2019-01-17 19:10:02');
INSERT INTO `convocatoria` VALUES ('537', '2', '001', '2019-01-02', '1', 'Practicante Pre Profesional', '3', 'admin', '2019-01-02 17:09:02', 'admin', '2019-01-10 21:41:24');
INSERT INTO `convocatoria` VALUES ('538', '1', '001-I', '2019-01-03', '1', 'Abogado', '3', 'admin', '2019-01-03 15:29:32', 'admin', '2019-01-21 17:46:04');
INSERT INTO `convocatoria` VALUES ('539', '1', '002-I', '2019-01-03', '1', 'Técnico administrativo', '3', 'admin', '2019-01-03 15:30:12', 'admin', '2019-01-22 18:22:13');
INSERT INTO `convocatoria` VALUES ('540', '1', '003-I', '2019-01-03', '1', 'Analista en Recursos Humanos', '3', 'admin', '2019-01-03 15:30:50', 'admin', '2019-01-22 18:21:39');
INSERT INTO `convocatoria` VALUES ('541', '2', '002-I', '2019-01-03', '1', 'Practicante Pre Profesional para el Equipo de Participación y Comunicación', '3', 'admin', '2019-01-03 16:32:15', 'admin', '2019-01-11 18:28:29');
INSERT INTO `convocatoria` VALUES ('542', '1', '004-I', '2019-01-04', '1', 'Analista de Tesorería', '3', 'admin', '2019-01-04 14:27:50', 'admin', '2019-01-22 18:20:55');
INSERT INTO `convocatoria` VALUES ('543', '1', '005-I', '2019-01-04', '1', 'Técnico en Infraestructura', '3', 'admin', '2019-01-04 14:29:33', 'admin', '2019-01-22 18:20:46');
INSERT INTO `convocatoria` VALUES ('544', '1', '006-I', '2019-01-10', '1', 'Abogado', '3', 'admin', '2019-01-10 17:20:18', 'admin', '2019-01-28 22:39:05');
INSERT INTO `convocatoria` VALUES ('545', '1', '007-I', '2019-01-10', '1', 'Médico', '3', 'admin', '2019-01-10 17:20:43', 'admin', '2019-01-28 22:40:04');
INSERT INTO `convocatoria` VALUES ('546', '1', '008-I', '2019-01-10', '1', 'Especialista en Educación Básica Alternativa', '3', 'admin', '2019-01-10 17:21:35', 'admin', '2019-01-28 22:40:48');
INSERT INTO `convocatoria` VALUES ('547', '1', '009-I', '2019-01-11', '1', 'Asistente legal', '3', 'admin', '2019-01-11 17:02:32', 'admin', '2019-01-29 19:31:00');
INSERT INTO `convocatoria` VALUES ('548', '1', '010-I', '2019-01-15', '2', 'Técnico administrativo orientador', '3', 'admin', '2019-01-15 22:05:24', 'admin', '2019-01-31 17:43:38');
INSERT INTO `convocatoria` VALUES ('549', '1', '011-I', '2019-01-15', '1', 'Coordinador administrativo y presupuestal de Recursos Educativos', '3', 'admin', '2019-01-15 22:06:00', 'admin', '2019-01-31 17:43:28');
INSERT INTO `convocatoria` VALUES ('550', '2', '003-I', '2019-01-21', '1', 'Practicante Pre Profesional para el Área de Administración', '3', 'admin', '2019-01-21 17:48:16', 'admin', '2019-01-25 18:25:04');
INSERT INTO `convocatoria` VALUES ('551', '1', '012-I', '2019-01-23', '1', 'Analista en Racionalización', '3', 'admin', '2019-01-23 17:39:58', 'admin', '2019-02-08 22:53:16');
INSERT INTO `convocatoria` VALUES ('552', '1', '013-I', '2019-01-23', '2', 'Técnicos legal', '3', 'admin', '2019-01-23 17:40:34', 'admin', '2019-02-08 22:53:52');
INSERT INTO `convocatoria` VALUES ('553', '1', '014-I', '2019-01-23', '1', 'Analista de Tesorería', '3', 'admin', '2019-01-23 17:41:04', 'admin', '2019-02-11 18:57:42');
INSERT INTO `convocatoria` VALUES ('554', '2', '004-I', '2019-01-23', '1', 'Practicante Pre o Profesional para el Equipo de Reclutamiento y Selección', '3', 'admin', '2019-01-23 17:41:59', 'admin', '2019-01-30 18:07:46');
INSERT INTO `convocatoria` VALUES ('555', '1', '015-I', '2019-01-24', '6', 'Personal de Vigilancia', '3', 'admin', '2019-01-24 18:17:13', 'admin', '2019-02-06 16:08:35');
INSERT INTO `convocatoria` VALUES ('556', '1', '016-I', '2019-01-24', '4', 'Coordinador de Innovación y Soporte Tecnológico', '3', 'admin', '2019-01-24 18:18:49', 'admin', '2019-02-06 16:08:46');
INSERT INTO `convocatoria` VALUES ('557', '1', '017-I', '2019-01-24', '2', 'Psicólogos', '3', 'admin', '2019-01-24 18:19:19', 'admin', '2019-02-06 16:09:03');
INSERT INTO `convocatoria` VALUES ('558', '1', '018-I', '2019-01-24', '1', 'Asistente administrativo', '3', 'admin', '2019-01-24 18:20:12', 'admin', '2019-02-11 18:57:30');
INSERT INTO `convocatoria` VALUES ('559', '1', '019-I', '2019-01-24', '1', 'Abogado en seguimiento contractual', '3', 'admin', '2019-01-24 18:21:00', 'admin', '2019-02-08 22:55:46');
INSERT INTO `convocatoria` VALUES ('560', '1', '020-I', '2019-02-05', '1', 'Abogado', '3', 'admin', '2019-02-05 17:50:18', 'admin', '2019-02-21 19:47:20');
INSERT INTO `convocatoria` VALUES ('561', '1', '021-I', '2019-02-05', '1', 'Asistente legal', '3', 'admin', '2019-02-05 17:50:49', 'admin', '2019-02-21 19:47:10');
INSERT INTO `convocatoria` VALUES ('562', '1', '022-I', '2019-02-05', '1', 'Personal de vigilancia', '3', 'admin', '2019-02-05 17:51:16', 'admin', '2019-02-06 16:08:22');
INSERT INTO `convocatoria` VALUES ('563', '1', '023-I', '2019-02-06', '1', 'Abogado', '3', 'admin', '2019-02-06 16:31:21', 'admin', '2019-02-22 17:09:21');
INSERT INTO `convocatoria` VALUES ('564', '1', '024-I', '2019-02-07', '1', 'Auditor contador público', '3', 'admin', '2019-02-07 10:18:05', 'admin', '2019-02-22 17:09:16');
INSERT INTO `convocatoria` VALUES ('565', '2', '005-I', '2019-02-19', '1', 'Practicante Profesional para el Equipo de Planillas y Pensiones', '3', 'admin', '2019-02-19 18:28:51', 'admin', '2019-02-26 16:24:22');
INSERT INTO `convocatoria` VALUES ('566', '1', '025-I', '2019-02-26', '1', 'Auditor-Contador Público', '3', 'admin', '2019-02-26 16:25:57', 'admin', '2019-03-14 22:16:28');
INSERT INTO `convocatoria` VALUES ('567', '1', '026-I', '2019-02-27', '4', 'Especialistas en Educación', '3', 'admin', '2019-02-27 16:20:51', 'admin', '2019-03-15 17:13:14');
INSERT INTO `convocatoria` VALUES ('568', '1', '027-I', '2019-03-06', '1', 'Abogado', '3', 'admin', '2019-03-06 17:29:09', 'admin', '2019-03-23 08:13:53');
INSERT INTO `convocatoria` VALUES ('569', '1', '028-I', '2019-03-08', '1', 'Abogado en seguimiento contractual', '3', 'admin', '2019-03-09 20:18:48', 'admin', '2019-03-28 16:59:30');
INSERT INTO `convocatoria` VALUES ('570', '1', '039-I', '2019-03-11', '3', 'Profesional en Educación Especial para la formación laboral.', '3', 'admin', '2019-03-11 17:22:28', 'admin', '2019-04-03 21:55:23');
INSERT INTO `convocatoria` VALUES ('571', '1', '038-I', '2019-03-11', '2', 'Modelos linguísticos de lengua de señas peruana para EBR/EBA', '3', 'admin', '2019-03-11 17:23:31', 'admin', '2019-04-03 21:54:17');
INSERT INTO `convocatoria` VALUES ('572', '1', '037-I', '2019-03-11', '2', 'Intérpretes de lengua de señas peruana para EBR/EBA', '3', 'admin', '2019-03-11 17:25:14', 'admin', '2019-04-03 21:53:46');
INSERT INTO `convocatoria` VALUES ('573', '1', '036-I', '2019-03-11', '2', 'Gestor(a) Curricular de Educación Primaria', '3', 'admin', '2019-03-11 17:25:49', 'admin', '2019-04-03 21:53:17');
INSERT INTO `convocatoria` VALUES ('574', '1', '035-I', '2019-03-11', '7', 'Personal de vigilancia', '3', 'admin', '2019-03-11 17:26:12', 'admin', '2019-03-28 23:13:23');
INSERT INTO `convocatoria` VALUES ('575', '1', '034-I', '2019-03-11', '1', 'Personal de mantenimiento', '3', 'admin', '2019-03-11 17:26:36', 'admin', '2019-03-28 23:13:54');
INSERT INTO `convocatoria` VALUES ('576', '1', '033-I', '2019-03-11', '8', 'Personal de secretaria', '3', 'admin', '2019-03-11 17:27:06', 'admin', '2019-03-29 23:50:36');
INSERT INTO `convocatoria` VALUES ('577', '1', '032-I', '2019-03-11', '12', 'Personal de apoyo educativo', '3', 'admin', '2019-03-11 17:28:07', 'admin', '2019-03-28 23:14:12');
INSERT INTO `convocatoria` VALUES ('578', '1', '031-I', '2019-03-11', '3', 'Psicólogo', '3', 'admin', '2019-03-11 17:28:32', 'admin', '2019-03-29 23:50:07');
INSERT INTO `convocatoria` VALUES ('579', '1', '030-I', '2019-03-11', '6', 'Coordinador de Innovación y Soporte Tecnológico', '3', 'admin', '2019-03-11 17:29:06', 'admin', '2019-03-29 23:49:28');
INSERT INTO `convocatoria` VALUES ('580', '1', '029-I', '2019-03-11', '10', 'Coordinador administrativo y de recursos educativos para zonas urbanas', '3', 'admin', '2019-03-11 17:30:41', 'admin', '2019-03-29 23:49:11');
INSERT INTO `convocatoria` VALUES ('581', '2', '006-I', '2019-03-12', '1', 'Practicante Pre Profesional para el Equipo de Tecnologías de Información', '3', 'admin', '2019-03-12 17:22:05', 'admin', '2019-03-19 18:47:28');
INSERT INTO `convocatoria` VALUES ('582', '1', '040-I', '2019-03-15', '1', 'Abogado', '3', 'admin', '2019-03-15 15:27:40', 'admin', '2019-04-02 20:29:52');
INSERT INTO `convocatoria` VALUES ('583', '1', '041-I', '2019-03-15', '1', 'Abogado', '3', 'admin', '2019-03-15 15:28:10', 'admin', '2019-04-02 20:29:35');
INSERT INTO `convocatoria` VALUES ('584', '1', '042-I', '2019-03-21', '1', 'Responsable en SIAGIE', '3', 'admin', '2019-03-21 16:22:26', 'admin', '2019-04-08 23:34:17');
INSERT INTO `convocatoria` VALUES ('585', '1', '043-I', '2019-03-21', '1', 'Especialista en Convivencia Escolar', '3', 'admin', '2019-03-21 16:23:59', 'admin', '2019-04-10 18:22:22');
INSERT INTO `convocatoria` VALUES ('588', '1', '044-I', '2019-03-26', '1', 'Asistente administrativo', '3', 'admin', '2019-03-26 14:48:36', 'admin', '2019-04-11 22:26:30');
INSERT INTO `convocatoria` VALUES ('589', '1', '035-II', '2019-03-28', '4', 'Personal de vigilancia', '3', 'admin', '2019-03-28 19:26:14', 'admin', '2019-04-15 20:35:25');
INSERT INTO `convocatoria` VALUES ('590', '1', '45', '2019-04-02', '1', ' Técnico en recursos humanos', '3', 'admin', '2019-04-02 20:11:39', 'admin', '2019-04-22 20:59:42');
INSERT INTO `convocatoria` VALUES ('591', '1', '46', '2019-04-02', '1', 'Técnico en Infraestructura', '3', 'admin', '2019-04-02 20:17:08', 'admin', '2019-04-22 21:00:54');
INSERT INTO `convocatoria` VALUES ('592', '1', '47', '2019-04-02', '1', 'Técnico en siagie', '3', 'admin', '2019-04-02 20:21:48', 'admin', '2019-04-22 21:01:31');
INSERT INTO `convocatoria` VALUES ('593', '1', '48', '2019-04-03', '1', 'Abogado', '3', 'admin', '2019-04-03 21:45:12', 'admin', '2019-04-22 21:05:36');
INSERT INTO `convocatoria` VALUES ('594', '1', '49', '2019-04-03', '1', 'Técnico para el equipo de tecnologías de la información', '3', 'admin', '2019-04-03 21:49:59', 'admin', '2019-04-23 18:54:45');
INSERT INTO `convocatoria` VALUES ('595', '1', '50', '2019-04-16', '1', 'Técnico Administrativo', '3', 'admin', '2019-04-16 21:47:04', 'admin', '2019-05-07 18:03:35');
INSERT INTO `convocatoria` VALUES ('596', '1', '51', '2019-04-16', '2', 'Abogados', '3', 'admin', '2019-04-16 21:48:53', 'admin', '2019-05-07 18:03:26');
INSERT INTO `convocatoria` VALUES ('597', '1', '32-II', '2019-04-23', '3', 'Personal apoyo educativo', '3', 'admin', '2019-04-23 18:58:39', 'admin', '2019-05-10 15:47:54');
INSERT INTO `convocatoria` VALUES ('598', '1', '35-III', '2019-04-23', '2', 'Personal de vigilancia', '3', 'admin', '2019-04-23 19:00:49', 'admin', '2019-05-12 10:27:15');
INSERT INTO `convocatoria` VALUES ('599', '1', '37-II', '2019-04-23', '1', 'Interprete de lengua de señas  peruana para EBR/EBA', '3', 'admin', '2019-04-23 19:04:38', 'admin', '2019-05-10 15:47:28');
INSERT INTO `convocatoria` VALUES ('600', '1', '39-II', '2019-04-23', '1', 'Profesional de educación especial para la formación laboral ', '3', 'admin', '2019-04-23 19:07:07', 'admin', '2019-05-10 15:47:16');
INSERT INTO `convocatoria` VALUES ('601', '1', '52', '2019-04-25', '1', 'Responsable en siagie', '3', 'admin', '2019-04-25 20:35:37', 'admin', '2019-05-02 17:57:56');
INSERT INTO `convocatoria` VALUES ('602', '1', '031-II', '2019-04-26', '2', 'Psicólogo', '3', 'admin', '2019-04-26 17:30:13', 'admin', '2019-05-16 17:59:34');
INSERT INTO `convocatoria` VALUES ('603', '1', '053-I', '2019-04-26', '1', 'Especialista en Convivencia Escolar', '3', 'admin', '2019-04-26 17:31:01', 'admin', '2019-05-16 17:59:20');
INSERT INTO `convocatoria` VALUES ('605', '1', '054-I', '2019-05-07', '1', 'Técnico en Servicios Generales', '3', 'admin', '2019-05-07 17:00:35', 'admin', '2019-05-23 16:15:20');
INSERT INTO `convocatoria` VALUES ('606', '1', '055-I', '2019-05-09', '1', 'Abogado', '3', 'admin', '2019-05-09 14:36:41', 'admin', '2019-05-27 20:34:29');
INSERT INTO `convocatoria` VALUES ('607', '1', '057-I', '2019-05-10', '1', 'Técnico administrativo', '3', 'admin', '2019-05-10 15:58:04', 'admin', '2019-05-28 18:18:05');
INSERT INTO `convocatoria` VALUES ('608', '1', '056-I', '2019-05-10', '1', 'Técnico administrativo', '3', 'admin', '2019-05-10 15:58:55', 'admin', '2019-05-28 18:17:52');
INSERT INTO `convocatoria` VALUES ('609', '1', '035-IV', '2019-05-17', '2', 'Personal de vigilancia', '3', 'admin', '2019-05-17 19:57:11', 'admin', '2019-06-04 17:07:27');
INSERT INTO `convocatoria` VALUES ('610', '1', '060-I', '2019-05-17', '1', 'Asistente administrativo en recursos humanos', '3', 'admin', '2019-05-17 19:57:41', 'admin', '2019-06-04 14:28:04');
INSERT INTO `convocatoria` VALUES ('611', '1', '059-I', '2019-05-17', '1', 'Analista legal', '3', 'admin', '2019-05-17 19:58:14', 'admin', '2019-06-05 21:22:49');
INSERT INTO `convocatoria` VALUES ('612', '1', '058-I', '2019-05-17', '1', 'Abogado en seguimiento contractual', '3', 'admin', '2019-05-17 19:58:50', 'admin', '2019-06-11 20:37:25');
INSERT INTO `convocatoria` VALUES ('613', '1', '062-I', '2019-05-21', '2', 'Asistente Legal', '3', 'admin', '2019-05-21 18:13:14', 'admin', '2019-06-06 19:35:06');
INSERT INTO `convocatoria` VALUES ('614', '1', '061-I', '2019-05-21', '1', 'Auxiliar administrativo', '3', 'admin', '2019-05-21 18:14:41', 'admin', '2019-06-07 17:31:19');
INSERT INTO `convocatoria` VALUES ('615', '1', 'C-032-III', '2019-05-23', '2', 'Personal de apoyo educativo', '3', 'admin', '2019-05-23 16:14:03', 'admin', '2019-06-10 21:58:53');
INSERT INTO `convocatoria` VALUES ('616', '1', '063', '2019-05-27', '1', 'Auxiliar Administrativo', '3', 'admin', '2019-05-27 20:32:54', 'admin', '2019-06-12 17:29:51');
INSERT INTO `convocatoria` VALUES ('617', '1', '064', '2019-05-29', '1', 'Asistente Legal', '3', 'admin', '2019-05-29 17:21:05', 'admin', '2019-06-14 18:41:54');
INSERT INTO `convocatoria` VALUES ('618', '1', '065', '2019-05-30', '1', 'Gestor Institucional', '3', 'admin', '2019-05-30 17:11:22', 'admin', '2019-06-17 17:31:30');
INSERT INTO `convocatoria` VALUES ('619', '1', '066', '2019-06-05', '1', 'Asistente legal', '3', 'admin', '2019-06-05 21:19:57', 'admin', '2019-06-21 14:59:16');
INSERT INTO `convocatoria` VALUES ('620', '1', '067', '2019-06-11', '1', 'Arquitecto o ingeniero Civil', '3', 'admin', '2019-06-11 20:38:16', 'admin', '2019-06-14 18:47:03');
INSERT INTO `convocatoria` VALUES ('621', '1', '068', '2019-06-12', '1', 'Jefe del Área de Supervisión y Gestión del Servicio Educativo', '3', 'admin', '2019-06-12 17:29:07', 'admin', '2019-06-28 16:23:48');
INSERT INTO `convocatoria` VALUES ('622', '1', '029-II', '2019-06-13', '1', 'Coordinador Administrativo y de recursos educativos para zonas urbanas', '3', 'admin', '2019-06-13 12:26:57', 'admin', '2019-07-02 17:22:50');
INSERT INTO `convocatoria` VALUES ('623', '1', '031-III', '2019-06-13', '1', 'Psicólogo', '3', 'admin', '2019-06-13 12:27:58', 'admin', '2019-07-01 21:59:38');
INSERT INTO `convocatoria` VALUES ('624', '1', '069', '2019-06-13', '1', 'Abogado para recursos humanos', '3', 'admin', '2019-06-13 19:30:31', 'admin', '2019-07-01 21:57:39');
INSERT INTO `convocatoria` VALUES ('626', '1', '070', '2019-06-17', '1', 'Abogado en seguimiento contractual', '3', 'admin', '2019-06-17 17:34:08', 'admin', '2019-07-09 18:56:07');
INSERT INTO `convocatoria` VALUES ('627', '1', '071', '2019-06-17', '1', 'Técnico para servicios generales', '3', 'admin', '2019-06-17 17:37:09', 'admin', '2019-07-03 18:04:30');
INSERT INTO `convocatoria` VALUES ('628', '1', '072', '2019-06-18', '1', 'Gestor institucional', '3', 'admin', '2019-06-18 16:35:35', 'admin', '2019-07-03 18:04:54');
INSERT INTO `convocatoria` VALUES ('629', '1', '073', '2019-06-18', '1', 'Asesor pedagógico', '3', 'admin', '2019-06-18 16:36:17', 'admin', '2019-07-04 18:15:08');
INSERT INTO `convocatoria` VALUES ('630', '1', '074', '2019-06-19', '1', 'Coordinador para el equipo de supervisión a II.EE.', '3', 'admin', '2019-06-19 17:41:21', 'admin', '2019-07-04 18:15:59');
INSERT INTO `convocatoria` VALUES ('631', '1', '075', '2019-06-19', '1', 'Responsable del equipo de planeamiento y presupuesto', '3', 'admin', '2019-06-19 17:42:23', 'admin', '2019-07-05 18:04:36');
INSERT INTO `convocatoria` VALUES ('632', '1', '076', '2019-06-20', '1', 'Abogado', '3', 'admin', '2019-06-20 16:49:13', 'admin', '2019-07-08 17:33:36');
INSERT INTO `convocatoria` VALUES ('635', '1', '077', '2019-06-20', '1', 'Especialista de materiales y recursos educativos.', '3', 'admin', '2019-06-20 16:59:27', 'admin', '2019-07-05 18:05:02');
INSERT INTO `convocatoria` VALUES ('636', '2', '007', '2019-06-20', '1', 'Practicante pre-profesional  para el equipo de planillas y pensiones', '3', 'admin', '2019-06-20 17:55:05', 'admin', '2019-07-08 17:34:29');
INSERT INTO `convocatoria` VALUES ('637', '1', '078', '2019-06-21', '1', 'ASISTENTE SOCIAL', '3', 'admin', '2019-06-21 16:56:28', 'admin', '2019-07-09 18:56:39');
INSERT INTO `convocatoria` VALUES ('638', '1', '030-II', '2019-06-21', '1', 'COORDINADOR DE INNOVACIÓN Y SOPORTE TECNOLÓGICO', '3', 'admin', '2019-06-21 20:43:34', 'admin', '2019-07-10 19:30:46');
INSERT INTO `convocatoria` VALUES ('639', '1', '029-III', '2019-06-21', '1', 'COORDINADOR ADMINISTRATIVO Y DE RECURSOS EDUCATIVOS PARA ZONAS URBANAS', '3', 'admin', '2019-06-21 20:46:21', 'admin', '2019-07-10 19:31:11');
INSERT INTO `convocatoria` VALUES ('640', '2', '008', '2019-06-21', '1', 'PRACTICANTE PRE PROFESIONAL PARA EL ÁREA DE ADMINISTRACIÓN', '3', 'admin', '2019-06-21 20:50:50', 'admin', '2019-07-10 19:29:11');
INSERT INTO `convocatoria` VALUES ('641', '1', '079', '2019-06-27', '1', 'ASISTENTE LEGAL', '3', 'admin', '2019-06-27 20:01:54', 'admin', '2019-07-15 22:06:32');
INSERT INTO `convocatoria` VALUES ('642', '1', '029-IV', '2019-06-28', '1', 'COORDINADOR ADMINISTRATIVO Y DE RECURSOS EDUCATIVOS PARA ZONAS URBANAS', '3', 'admin', '2019-06-28 16:25:00', 'admin', '2019-07-17 15:34:10');
INSERT INTO `convocatoria` VALUES ('643', '1', '035-V', '2019-06-28', '1', 'PERSONAL DE VIGILANCIA', '3', 'admin', '2019-06-28 16:27:03', 'admin', '2019-07-17 11:56:17');
INSERT INTO `convocatoria` VALUES ('644', '1', '080', '2019-07-04', '1', 'ASISTENTE ADMINISTRATIVO', '3', 'admin', '2019-07-04 18:04:42', 'admin', '2019-07-22 20:29:09');
INSERT INTO `convocatoria` VALUES ('645', '1', '081', '2019-07-08', '1', 'GESTOR INSTITUCIONAL', '3', 'admin', '2019-07-08 21:24:29', 'admin', '2019-07-24 17:48:48');
INSERT INTO `convocatoria` VALUES ('646', '1', '082', '2019-07-10', '1', 'GESTOR INSTITUCIONAL', '3', 'admin', '2019-07-10 19:32:33', 'admin', '2019-07-31 18:54:18');
INSERT INTO `convocatoria` VALUES ('647', '1', '083', '2019-07-11', '1', 'ASISTENTE ADMINISTRATIVO', '3', 'admin', '2019-07-11 18:41:01', 'admin', '2019-07-31 19:02:11');
INSERT INTO `convocatoria` VALUES ('648', '1', '084', '2019-07-11', '1', 'COORDINADOR PARA EL EQUIPO DE SUPERVISIÓN A II.EE.', '3', 'admin', '2019-07-11 18:42:06', 'admin', '2019-07-31 18:59:41');
INSERT INTO `convocatoria` VALUES ('649', '1', '085', '2019-07-15', '1', 'TECNICO LEGAL', '3', 'admin', '2019-07-15 22:08:10', 'admin', '2019-08-05 18:35:06');
INSERT INTO `convocatoria` VALUES ('650', '1', '035-VI', '2019-07-15', '1', 'PERSONAL DE VIGILANCIA', '3', 'admin', '2019-07-15 22:14:13', 'admin', '2019-08-05 20:52:51');
INSERT INTO `convocatoria` VALUES ('651', '1', '086', '2019-07-15', '1', 'ESPECIALISTA DE TESORERÍA', '3', 'admin', '2019-07-15 22:17:29', 'admin', '2019-08-07 17:54:14');
INSERT INTO `convocatoria` VALUES ('652', '1', '031-IV', '2019-07-16', '1', 'PSICÓLOGO', '3', 'admin', '2019-07-16 21:26:30', 'admin', '2019-08-05 20:52:14');
INSERT INTO `convocatoria` VALUES ('653', '1', '029-V', '2019-07-16', '1', 'COORDINADOR ADMINISTRATIVO Y DE RECURSOS EDUCATIVOS PARA ZONAS URBANAS', '3', 'admin', '2019-07-16 21:32:29', 'admin', '2019-08-08 21:03:46');
INSERT INTO `convocatoria` VALUES ('654', '1', '087', '2019-07-16', '1', 'ESPECIALISTA DE MATERIALES Y RECURSOS EDUCATIVOS', '3', 'admin', '2019-07-16 21:36:01', 'admin', '2019-08-06 21:28:11');
INSERT INTO `convocatoria` VALUES ('655', '2', '009', '2019-07-19', '1', 'PRACTICANTE PRE-PROFESIONAL PARA SECRETARIA TÉCNICA ', '3', 'admin', '2019-07-19 21:46:19', 'admin', '2019-08-09 17:45:51');
INSERT INTO `convocatoria` VALUES ('656', '2', '010', '2019-07-22', '1', 'PRACTICANTE PRE PROFESIONAL PARA EL EQUIPO DE PARTICIPACIÓN Y COMUNICACIÓN', '3', 'admin', '2019-07-22 16:50:01', 'admin', '2019-08-12 18:40:48');
INSERT INTO `convocatoria` VALUES ('657', '1', '088', '2019-07-24', '1', 'ABOGADO', '3', 'admin', '2019-07-24 17:45:40', 'admin', '2019-08-13 21:27:04');
INSERT INTO `convocatoria` VALUES ('658', '1', '089', '2019-08-01', '1', 'ANALISTA LEGAL', '3', 'admin', '2019-08-01 12:23:10', 'admin', '2019-08-16 17:25:37');
INSERT INTO `convocatoria` VALUES ('659', '1', '090', '2019-08-02', '1', 'ASISTENTE ADMINISTRATIVO', '3', 'admin', '2019-08-02 14:37:12', 'admin', '2019-08-20 17:26:41');
INSERT INTO `convocatoria` VALUES ('660', '1', '091', '2019-08-07', '1', 'ABOGADO EN SEGUIMIENTO CONTRACTUAL', '3', 'admin', '2019-08-07 17:57:56', 'admin', '2019-08-28 17:36:39');
INSERT INTO `convocatoria` VALUES ('661', '1', '092', '2019-08-09', '2', 'ABOGADOS', '3', 'admin', '2019-08-09 17:38:29', 'admin', '2019-08-27 17:38:04');
INSERT INTO `convocatoria` VALUES ('662', '1', '035-VII', '2019-08-12', '2', 'PERSONAL DE VIGILANCIA', '3', 'admin', '2019-08-12 18:37:21', 'admin', '2019-08-28 17:35:00');
INSERT INTO `convocatoria` VALUES ('663', '1', '093', '2019-08-16', '1', 'ESPECIALISTA EN INFRAESTRUCTURA', '3', 'admin', '2019-08-16 17:26:29', 'admin', '2019-09-05 17:45:33');
INSERT INTO `convocatoria` VALUES ('664', '1', '031-V', '2019-08-19', '1', 'PSICÓLOGO', '3', 'admin', '2019-08-19 12:42:08', 'admin', '2019-09-09 21:47:24');
INSERT INTO `convocatoria` VALUES ('665', '1', '036-II', '2019-08-19', '1', 'GESTOR(A) CURRICULAR  DE EDUCACIÓN PRIMARIA', '3', 'admin', '2019-08-19 12:44:05', 'admin', '2019-09-06 16:31:08');
INSERT INTO `convocatoria` VALUES ('666', '1', '039-III', '2019-08-19', '1', 'PROFESIONAL DE EDUCACIÓN ESPECIAL PARA LA FORMACIÓN LABORAL', '3', 'admin', '2019-08-19 12:48:55', 'admin', '2019-09-05 18:41:04');
INSERT INTO `convocatoria` VALUES ('667', '1', '094', '2019-08-20', '1', 'ABOGADO', '3', 'admin', '2019-08-20 17:25:22', 'admin', '2019-09-09 17:35:32');
INSERT INTO `convocatoria` VALUES ('668', '1', '095', '2019-08-20', '1', 'ABOGADO', '3', 'admin', '2019-08-20 17:25:58', 'admin', '2019-09-06 16:32:45');
INSERT INTO `convocatoria` VALUES ('669', '1', '096', '2019-08-21', '1', 'ANALISTA LEGAL', '3', 'admin', '2019-08-21 16:19:00', 'admin', '2019-09-10 16:09:12');
INSERT INTO `convocatoria` VALUES ('670', '1', '032-IV', '2019-08-23', '1', 'PERSONAL DE APOYO EDUCATIVO', '3', 'admin', '2019-08-23 15:37:11', 'admin', '2019-09-11 21:32:17');
INSERT INTO `convocatoria` VALUES ('671', '1', '097', '2019-08-27', '1', 'ARQUITECTO Y/O INGENIERO CIVIL', '3', 'admin', '2019-08-27 17:40:04', 'admin', '2019-09-16 20:16:19');
INSERT INTO `convocatoria` VALUES ('672', '1', '098', '2019-08-27', '1', 'ESPECIALISTA EN INFRAESTRUCTURA', '3', 'admin', '2019-08-27 17:40:38', 'admin', '2019-09-16 20:16:41');
INSERT INTO `convocatoria` VALUES ('673', '1', '029-VI', '2019-09-03', '1', 'COORDINADOR ADMINISTRATIVO Y DE RECURSOS EDUCATIVOS PARA ZONAS URBANAS', '3', 'admin', '2019-09-03 15:19:55', 'admin', '2019-09-23 18:39:49');
INSERT INTO `convocatoria` VALUES ('674', '1', '099', '2019-09-05', '1', 'ABOGADO', '3', 'admin', '2019-09-05 17:52:06', 'admin', '2019-09-20 17:49:11');
INSERT INTO `convocatoria` VALUES ('675', '2', '011', '2019-09-09', '1', 'PRACTICANTE PRE PROFESIONAL PARA EL EQUIPO DE RECLUTAMIENTO Y SELECCIÓN ', '3', 'admin', '2019-09-09 16:29:32', 'admin', '2019-09-25 18:43:23');
INSERT INTO `convocatoria` VALUES ('676', '1', '100-I', '2019-09-12', '1', 'Profesional SIGA', '3', 'admin', '2019-09-12 17:54:58', 'admin', '2019-10-04 21:15:49');
INSERT INTO `convocatoria` VALUES ('677', '1', '035-VIII', '2019-09-13', '2', 'PERSONAL DE VIGILANCIA', '3', 'admin', '2019-09-13 18:53:42', 'admin', '2019-10-03 16:45:03');
INSERT INTO `convocatoria` VALUES ('678', '1', '039-IV', '2019-09-13', '2', 'PROFESIONAL DE EDUCACIÓN ESPECIAL PARA LA FORMACIÓN LABORAL', '3', 'admin', '2019-09-13 18:57:03', 'admin', '2019-10-02 17:36:50');
INSERT INTO `convocatoria` VALUES ('679', '1', '101', '2019-09-18', '1', 'ABOGADO', '3', 'admin', '2019-09-18 17:14:32', 'admin', '2019-10-03 16:45:56');
INSERT INTO `convocatoria` VALUES ('682', '1', '031-VI', '2019-09-20', '2', 'PSICÓLOGO', '3', 'admin', '2019-09-20 17:33:46', 'admin', '2019-10-11 22:08:00');
INSERT INTO `convocatoria` VALUES ('683', '1', '032-V', '2019-09-20', '1', 'PERSONAL DE APOYO EDUCATIVO', '3', 'admin', '2019-09-20 17:34:39', 'admin', '2019-10-07 22:45:29');
INSERT INTO `convocatoria` VALUES ('684', '1', '102', '2019-09-20', '1', 'TÉCNICO ADMINISTRATIVO', '3', 'admin', '2019-09-20 17:35:31', 'admin', '2019-10-09 18:47:54');
INSERT INTO `convocatoria` VALUES ('685', '1', '103', '2019-09-23', '1', 'ESPECIALISTA EN INFRAESTRUCTURA', '3', 'admin', '2019-09-23 17:16:11', 'admin', '2019-10-10 17:59:48');
INSERT INTO `convocatoria` VALUES ('686', '1', '104', '2019-09-23', '1', 'PROFESIONAL EN EDUCACIÓN PARA SUPERVISIÓN', '3', 'admin', '2019-09-23 17:18:03', 'admin', '2019-10-09 18:48:53');
INSERT INTO `convocatoria` VALUES ('687', '1', '029-VII', '2019-09-27', '1', 'COORDINADOR ADMINISTRATIVO Y DE RECURSOS EDUCATIVOS PARA ZONAS URBANAS', '3', 'admin', '2019-09-27 22:38:08', 'admin', '2019-10-17 23:04:30');
INSERT INTO `convocatoria` VALUES ('688', '1', '030-III', '2019-10-01', '1', 'COORDINADOR DE INNOVACIÓN Y SOPORTE TECNOLÓGICO', '3', 'admin', '2019-10-01 20:31:50', 'admin', '2019-10-17 23:01:16');
INSERT INTO `convocatoria` VALUES ('689', '1', '105', '2019-10-01', '1', 'ASISTENTE SOCIAL PARA EL EQUIPO DE DESARROLLO Y BIENESTAR SOCIAL', '3', 'admin', '2019-10-01 20:37:01', 'admin', '2019-10-18 16:35:09');
INSERT INTO `convocatoria` VALUES ('690', '1', '106', '2019-10-02', '1', 'TÉCNICO ADMINISTRATIVO', '3', 'admin', '2019-10-02 17:51:02', 'admin', '2019-10-21 18:30:25');
INSERT INTO `convocatoria` VALUES ('691', '1', '107', '2019-10-03', '1', 'CHOFER', '3', 'admin', '2019-10-03 16:46:23', 'admin', '2019-10-22 22:35:30');
INSERT INTO `convocatoria` VALUES ('693', '1', '035-IX', '2019-10-04', '1', 'PERSONAL DE VIGILANCIA ', '3', 'admin', '2019-10-04 21:14:02', 'admin', '2019-10-23 09:25:46');
INSERT INTO `convocatoria` VALUES ('694', '1', '108', '2019-10-07', '1', 'ABOGADO', '3', 'admin', '2019-10-07 18:03:36', 'admin', '2019-10-23 23:09:04');
INSERT INTO `convocatoria` VALUES ('695', '1', '109', '2019-10-07', '2', 'ABOGADO', '3', 'admin', '2019-10-07 18:04:15', 'admin', '2019-10-24 23:09:25');
INSERT INTO `convocatoria` VALUES ('696', '1', '035-X', '2019-10-14', '1', 'PERSONAL DE VIGILANCIA ', '3', 'admin', '2019-10-14 20:13:47', 'admin', '2019-10-30 15:55:33');
INSERT INTO `convocatoria` VALUES ('697', '1', '110', '2019-10-14', '1', 'ABOGADO', '3', 'admin', '2019-10-14 20:19:33', 'admin', '2019-10-30 15:55:21');
INSERT INTO `convocatoria` VALUES ('698', '1', '32-VI', '2019-10-18', '1', 'PERSONAL DE APOYO EDUCATIVO', '3', 'admin', '2019-10-18 16:42:20', 'admin', '2019-11-06 22:20:16');
INSERT INTO `convocatoria` VALUES ('699', '1', '111', '2019-10-21', '1', 'ABOGADO', '3', 'admin', '2019-10-21 18:19:59', 'admin', '2019-11-08 22:21:50');
INSERT INTO `convocatoria` VALUES ('700', '1', '031-VII', '2019-10-23', '1', 'PSICÓLOGO', '3', 'admin', '2019-10-23 14:36:14', 'admin', '2019-11-11 17:19:51');
INSERT INTO `convocatoria` VALUES ('701', '1', '039-V', '2019-10-23', '1', 'PROFESIONAL DE EDUCACIÓN ESPECIAL PARA LA FORMACIÓN LABORAL', '3', 'admin', '2019-10-23 14:36:55', 'admin', '2019-11-13 16:50:42');
INSERT INTO `convocatoria` VALUES ('702', '1', '112-I', '2019-10-28', '1', 'PROFESIONAL EN EDUCACION PARA SUPERVISION', '3', 'admin', '2019-10-28 17:09:48', 'admin', '2019-11-14 17:09:22');
INSERT INTO `convocatoria` VALUES ('703', '1', '113-I', '2019-10-28', '1', 'TECNICO LEGAL', '3', 'admin', '2019-10-28 17:10:21', 'admin', '2019-11-11 17:19:04');
INSERT INTO `convocatoria` VALUES ('704', '1', '030-IV', '2019-10-28', '1', 'COORDINADOR DE INNOVACION Y SOPORTE TECNOLOGICO', '3', 'admin', '2019-10-28 17:11:10', 'admin', '2019-11-14 17:08:53');
INSERT INTO `convocatoria` VALUES ('705', '1', '029-VIII', '2019-10-28', '1', 'COORDINADOR ADMINISTRATIVO Y DE RECURSOS EDUCATIVOS PARA ZONAS URBANAS', '3', 'admin', '2019-10-28 17:11:54', 'admin', '2019-11-19 19:45:00');
INSERT INTO `convocatoria` VALUES ('706', '1', '114', '2019-11-04', '1', 'RESPONSABLE DEL EQUIPO DE PLANEAMIENTO Y PRESUPUESTO', '3', 'admin', '2019-11-04 18:40:11', 'admin', '2019-11-22 17:13:52');
INSERT INTO `convocatoria` VALUES ('707', '1', '115', '2019-11-04', '1', 'ABOGADO', '3', 'admin', '2019-11-04 18:40:55', 'admin', '2019-11-20 17:09:15');
INSERT INTO `convocatoria` VALUES ('708', '1', '30-V', '2019-11-07', '1', 'COORDINADOR DE INNOVACIÓN Y SOPORTE TECNOLÓGICO', '3', 'admin', '2019-11-07 18:03:27', 'admin', '2019-11-22 17:14:10');
INSERT INTO `convocatoria` VALUES ('710', '1', '032-VII', '2019-11-12', '1', 'PERSONAL DE APOYO EDUCATIVO', '3', 'admin', '2019-11-12 17:22:35', 'admin', '2019-11-28 21:04:06');
INSERT INTO `convocatoria` VALUES ('711', '1', '116', '2019-11-12', '1', 'ESPECIALISTA EN CONTRATACIONES DEL ESTADO', '3', 'admin', '2019-11-12 17:25:25', 'admin', '2019-11-28 20:17:02');
INSERT INTO `convocatoria` VALUES ('712', '1', '117', '2019-11-12', '1', 'TÉCNICO LEGAL', '3', 'admin', '2019-11-12 17:28:46', 'admin', '2019-11-28 20:17:49');
INSERT INTO `convocatoria` VALUES ('713', '1', '118', '2019-11-12', '1', 'TÉCNICO ADMINISTRATIVO', '3', 'admin', '2019-11-12 17:31:39', 'admin', '2019-11-28 20:19:23');
INSERT INTO `convocatoria` VALUES ('714', '1', '119', '2019-11-13', '1', 'TÉCNICO ADMINISTRATIVO', '3', 'admin', '2019-11-13 16:52:15', 'admin', '2019-11-29 23:06:07');
INSERT INTO `convocatoria` VALUES ('715', '1', '120', '2019-11-13', '1', 'AUXILIAR DE ALMACÉN', '3', 'admin', '2019-11-13 16:53:11', 'admin', '2019-11-30 10:17:03');
INSERT INTO `convocatoria` VALUES ('716', '1', '031-VIII', '2019-11-14', '1', 'PSICÓLOGO', '3', 'admin', '2019-11-14 12:35:07', 'admin', '2019-12-02 15:33:24');
INSERT INTO `convocatoria` VALUES ('717', '1', '121', '2019-11-18', '1', 'ABOGADO', '3', 'admin', '2019-11-18 11:13:18', 'admin', '2019-12-03 19:49:20');
INSERT INTO `convocatoria` VALUES ('719', '1', '039-VI', '2019-11-19', '1', 'PROFESIONAL DE EDUCACIÓN ESPECIAL PARA LA FORMACIÓN LABORAL', '3', 'admin', '2019-11-19 17:30:33', 'admin', '2019-12-04 21:12:53');
INSERT INTO `convocatoria` VALUES ('720', '1', '030-VI', '2019-11-20', '1', 'COORDINADOR DE INNOVACIÓN Y SOPORTE TECNOLÓGICO ', '3', 'admin', '2019-11-20 21:14:30', 'admin', '2019-12-06 00:29:51');
INSERT INTO `convocatoria` VALUES ('721', '1', '122', '2019-11-26', '1', 'RESPONSABLE DEL EQUIPO DE PLANEAMIENTO Y PRESUPUESTO', '3', 'admin', '2019-11-26 12:47:25', 'admin', '2020-09-19 22:07:23');
INSERT INTO `convocatoria` VALUES ('723', '1', '030-VII', '2019-11-27', '1', 'COORDINADOR DE INNOVACIÓN Y SOPORTE', '3', 'admin', '2019-11-27 17:02:03', 'admin', '2019-12-12 18:10:37');
INSERT INTO `convocatoria` VALUES ('724', '1', '123', '2019-11-27', '1', 'JEFE DEL ÁREA DE SUPERVISIÓN Y GESTIÓN DEL SERVICIO EDUCATIVO', '3', 'admin', '2019-11-27 17:03:48', 'admin', '2019-12-13 21:12:27');
INSERT INTO `convocatoria` VALUES ('725', '1', '124', '2019-11-27', '1', 'ANALISTA DE TESORERIA', '3', 'admin', '2019-11-27 17:04:47', 'admin', '2019-12-13 23:58:00');
INSERT INTO `convocatoria` VALUES ('726', '1', '125', '2019-11-28', '1', 'TÉCNICO PARA EL EQUIPO DE TECNOLOGÍAS DE LA INFORMACIÓN ', '3', 'admin', '2019-11-28 21:34:49', 'admin', '2019-12-16 18:28:23');
INSERT INTO `convocatoria` VALUES ('727', '1', '126', '2019-11-28', '1', 'PROFESIONAL EN EDUCACIÓN PARA SUPERVISIÓN ', '3', 'admin', '2019-11-28 21:39:11', 'admin', '2019-12-13 21:15:40');
INSERT INTO `convocatoria` VALUES ('728', '1', '035-XI', '2019-12-06', '1', 'PERSONAL DE VIGILANCIA', '3', 'admin', '2019-12-06 17:34:51', 'admin', '2019-12-24 16:21:31');
INSERT INTO `convocatoria` VALUES ('729', '1', '127', '2019-12-06', '1', 'ASISTENTE ADMINISTRATIVO ', '3', 'admin', '2019-12-06 17:36:40', 'admin', '2019-12-26 21:26:20');
INSERT INTO `convocatoria` VALUES ('730', '1', '128', '2019-12-06', '1', 'ANALISTA EN RACIONALIZACIÓN', '3', 'admin', '2019-12-06 17:37:12', 'admin', '2019-12-24 16:19:41');
INSERT INTO `convocatoria` VALUES ('731', '1', '030-VIII', '2019-12-09', '1', 'COORDINADOR DE INNOVACIÓN Y SOPORTE TECNOLÓGICO', '3', 'admin', '2019-12-09 22:55:07', 'admin', '2019-12-26 21:23:48');
INSERT INTO `convocatoria` VALUES ('732', '1', '035-XII', '2019-12-10', '1', 'PERSONAL DE VIGILANCIA', '3', 'admin', '2019-12-10 17:32:49', 'admin', '2019-12-27 15:43:12');
INSERT INTO `convocatoria` VALUES ('733', '2', '012', '2019-12-11', '1', 'PRACTICANTE PRE-PROFESIONAL PARA EL ÁREA DE ASESORÍA JURÍDICA', '3', 'admin', '2019-12-11 19:26:15', 'admin', '2019-12-31 00:18:30');
INSERT INTO `convocatoria` VALUES ('734', '2', '013', '2019-12-12', '1', 'PRACTICANTE PRE-PROFESIONAL PARA SECRETARIA TÉCNICA', '3', 'admin', '2019-12-12 17:57:29', 'admin', '2020-01-01 08:03:20');
INSERT INTO `convocatoria` VALUES ('735', '1', '129', '2019-12-17', '1', 'TÉCNICO PARA EL EQUIPO DE TECNOLOGÍAS DE LA INFORMACIÓN ', '3', 'admin', '2019-12-17 20:38:18', 'admin', '2020-01-06 15:31:28');
INSERT INTO `convocatoria` VALUES ('736', '1', '130', '2019-12-17', '1', 'RESPONSABLE DEL EQUIPO DE PLANEAMIENTO Y PRESUPUESTO', '3', 'admin', '2019-12-17 20:40:10', 'admin', '2020-01-08 22:43:36');
INSERT INTO `convocatoria` VALUES ('737', '1', '131', '2019-12-18', '1', 'ABOGADO', '3', 'admin', '2019-12-18 21:17:54', 'admin', '2020-01-07 17:46:10');
INSERT INTO `convocatoria` VALUES ('738', '1', '132', '2019-12-24', '1', 'ASISTENTE SOCIAL', '3', 'admin', '2019-12-24 16:22:17', 'admin', '2020-01-13 16:02:48');
INSERT INTO `convocatoria` VALUES ('739', '1', '133', '2019-12-24', '1', 'ASISTENTE ADMINISTRATIVO', '3', 'admin', '2019-12-24 16:23:09', 'admin', '2020-01-14 17:37:40');
INSERT INTO `convocatoria` VALUES ('740', '2', '014', '2019-12-26', '1', 'PRACTICANTE PROFESIONAL PARA EL EQUIPO DE PLANILLAS Y PENSIONES', '3', 'admin', '2019-12-26 17:18:16', 'admin', '2020-01-14 17:37:17');
INSERT INTO `convocatoria` VALUES ('741', '1', '001', '2020-01-02', '1', 'JEFE DEL ÁREA DE SUPERVISIÓN Y GESTIÓN DEL SERVICIO EDUCATIVO', '3', 'admin', '2020-01-02 16:47:51', 'admin', '2020-01-20 16:57:47');
INSERT INTO `convocatoria` VALUES ('742', '2', '001', '2020-01-14', '1', 'PRACTICANTE PRE PROFESIONAL', '3', 'admin', '2020-01-14 17:38:30', 'admin', '2020-01-30 14:21:02');
INSERT INTO `convocatoria` VALUES ('743', '2', '002', '2020-01-14', '1', 'PRACTICANTE PRE PROFESIONAL PARA EL EQUIPO DE RECLUTAMIENTO Y SELECCIÓN', '3', 'admin', '2020-01-14 17:39:37', 'admin', '2020-01-30 14:21:30');
INSERT INTO `convocatoria` VALUES ('744', '1', '002', '2020-01-20', '1', 'PROFESIONAL EN EDUCACIÓN PARA SUPERVISIÓN	\r\n', '3', 'admin', '2020-01-20 16:54:51', 'admin', '2020-02-06 21:36:32');
INSERT INTO `convocatoria` VALUES ('745', '1', '003', '2020-01-20', '1', 'AUXILIAR ADMINISTRATIVO', '3', 'admin', '2020-01-20 16:56:20', 'admin', '2020-02-06 21:38:43');
INSERT INTO `convocatoria` VALUES ('746', '1', '004', '2020-01-20', '1', 'COORDINADOR DE LA OFICINA DE ACTAS Y CERTIFICADOS', '3', 'admin', '2020-01-20 16:57:09', 'admin', '2020-02-05 17:39:55');
INSERT INTO `convocatoria` VALUES ('747', '2', '003', '2020-01-22', '1', 'PRACTICANTE PRE PROFESIONAL PARA EL EQUIPO DE TECNOLOGÍAS DE LA INFORMACIÓN ', '3', 'admin', '2020-01-22 22:39:47', 'admin', '2020-02-07 17:47:01');
INSERT INTO `convocatoria` VALUES ('748', '1', '005', '2020-01-24', '1', 'JEFE DEL ÁREA DE SUPERVISIÓN Y GESTIÓN DEL SERVICIO EDUCATIVO', '3', 'admin', '2020-01-24 20:46:54', 'admin', '2020-02-11 17:13:38');
INSERT INTO `convocatoria` VALUES ('749', '1', '006', '2020-01-24', '1', 'PERSONAL DE VIGILANCIA', '3', 'admin', '2020-01-24 20:52:11', 'admin', '2020-02-11 22:09:43');
INSERT INTO `convocatoria` VALUES ('750', '1', '007', '2020-01-24', '2', 'PERSONAL DE SECRETARIA', '3', 'admin', '2020-01-24 20:55:06', 'admin', '2020-02-11 22:10:46');
INSERT INTO `convocatoria` VALUES ('751', '1', '008', '2020-01-24', '1', 'PERSONAL DE MANTENIMIENTO ', '3', 'admin', '2020-01-24 20:57:09', 'admin', '2020-02-11 22:11:32');
INSERT INTO `convocatoria` VALUES ('752', '1', '009', '2020-01-28', '1', 'ABOGADO', '3', 'admin', '2020-01-28 19:51:21', 'admin', '2020-02-14 18:07:24');
INSERT INTO `convocatoria` VALUES ('753', '1', '010', '2020-01-31', '14', 'COORDINADOR DE INNOVACIÓN Y SOPORTE', '3', 'admin', '2020-01-31 22:43:36', 'admin', '2020-02-21 19:07:36');
INSERT INTO `convocatoria` VALUES ('754', '1', '011', '2020-01-31', '10', 'PSICÓLOGOS', '3', 'admin', '2020-01-31 22:47:02', 'admin', '2020-02-21 19:07:50');
INSERT INTO `convocatoria` VALUES ('755', '1', '012', '2020-01-31', '12', 'PERSONAL DE APOYO EDUCATIVO', '3', 'admin', '2020-01-31 22:49:35', 'admin', '2020-02-21 19:08:05');
INSERT INTO `convocatoria` VALUES ('756', '1', '013', '2020-02-03', '1', 'RESPONSABLE LOCAL DE CALIDAD DE LA INFORMACIÓN', '3', 'admin', '2020-02-03 22:42:47', 'admin', '2020-02-24 18:34:56');
INSERT INTO `convocatoria` VALUES ('757', '1', '014', '2020-02-03', '2', 'INTÉRPRETES DE LENGUA DE SEÑAS PERUANA PARA EBR/EBA', '3', 'admin', '2020-02-03 22:44:13', 'admin', '2020-02-25 21:15:21');
INSERT INTO `convocatoria` VALUES ('758', '1', '015', '2020-02-03', '2', 'MODELO LINGÜÍSTICO DE LENGUA DE SEÑAS PERUANA PARA EBR/EBA', '3', 'admin', '2020-02-03 22:46:20', 'admin', '2020-02-25 21:16:32');
INSERT INTO `convocatoria` VALUES ('759', '1', '016', '2020-02-03', '3', 'PROFESIONALES DE EDUCACIÓN ESPECIAL PARA LA FORMACIÓN LABORAL', '3', 'admin', '2020-02-03 22:48:42', 'admin', '2020-02-24 18:34:45');
INSERT INTO `convocatoria` VALUES ('760', '1', '017', '2020-02-04', '1', 'COORDINADOR DEL EQUIPO DE ESTADÍSTICA Y MONITOREO', '3', 'admin', '2020-02-04 17:51:09', 'admin', '2020-02-19 18:28:04');
INSERT INTO `convocatoria` VALUES ('761', '1', '018', '2020-02-04', '1', 'ARQUITECTO Y/O INGENIERO CIVIL', '3', 'admin', '2020-02-04 17:51:49', 'admin', '2020-02-21 19:08:28');
INSERT INTO `convocatoria` VALUES ('762', '1', '019', '2020-02-04', '1', 'TÉCNICO LEGAL', '3', 'admin', '2020-02-04 17:52:28', 'admin', '2020-02-21 19:08:46');
INSERT INTO `convocatoria` VALUES ('763', '1', '020', '2020-02-07', '3', 'ACOMPAÑANTE PEDAGÓGICO DE EDUCACIÓN INICIAL PARA IIEE POLIDOCENTE', '3', 'admin', '2020-02-07 17:54:01', 'admin', '2020-02-27 20:40:18');
INSERT INTO `convocatoria` VALUES ('764', '1', '021', '2020-02-07', '48', 'ACOMPAÑANTES PEDAGÓGICOS DE EDUCACIÓN PRIMARIA PARA IIEE POLIDOCENTE', '3', 'admin', '2020-02-07 17:55:29', 'admin', '2020-02-27 20:40:47');
INSERT INTO `convocatoria` VALUES ('765', '1', '022', '2020-02-07', '3', 'ACOMPAÑANTES PEDAGÓGICOS DE EDUCACIÓN SECUNDARIA-MATEMÁTICA PARA IIEE POLIDOCENTE', '3', 'admin', '2020-02-07 17:56:27', 'admin', '2020-02-27 20:42:02');
INSERT INTO `convocatoria` VALUES ('766', '1', '023', '2020-02-07', '4', 'ACOMPAÑANTES PEDAGÓGICOS DE EDUCACIÓN SECUNDARIA-COMUNICACIÓN PARA IIEE POLIDOCENTE', '3', 'admin', '2020-02-07 17:56:59', 'admin', '2020-02-27 20:42:19');
INSERT INTO `convocatoria` VALUES ('767', '1', '024', '2020-02-07', '1', 'ESPECIALISTA EN CONVIVENCIA ESCOLAR', '3', 'admin', '2020-02-07 17:57:50', 'admin', '2020-02-26 18:42:08');
INSERT INTO `convocatoria` VALUES ('768', '1', '025', '2020-02-07', '1', 'ASISTENTE DE CONVIVENCIA ESCOLAR', '3', 'admin', '2020-02-07 17:58:23', 'admin', '2020-02-25 20:36:04');
INSERT INTO `convocatoria` VALUES ('769', '1', '026', '2020-02-07', '1', 'PROFESIONAL I PARA EL EQUIPO ITINERANTE DE CONVIVENCIA ESCOLAR', '3', 'admin', '2020-02-07 17:59:14', 'admin', '2020-02-25 20:37:24');
INSERT INTO `convocatoria` VALUES ('770', '1', '027', '2020-02-07', '1', 'PROFESIONAL II PARA EQUIPO ITINERANTE DE CONVIVENCIA ESCOLAR', '3', 'admin', '2020-02-07 18:00:06', 'admin', '2020-02-27 20:42:54');
INSERT INTO `convocatoria` VALUES ('771', '1', '028', '2020-02-07', '1', 'PROFESIONAL III PARA EQUIPO ITINERANTE DE CONVIVENCIA ESCOLAR', '3', 'admin', '2020-02-07 18:00:42', 'admin', '2020-02-27 20:43:53');
INSERT INTO `convocatoria` VALUES ('772', '1', '029', '2020-02-07', '35', 'PROFESIONALES EN PSICOLOGIA', '3', 'admin', '2020-02-07 18:01:20', 'admin', '2020-02-26 18:42:29');
INSERT INTO `convocatoria` VALUES ('773', '1', '030', '2020-02-07', '6', 'DOCENTES RESPONSABLES', '3', 'admin', '2020-02-07 18:01:59', 'admin', '2020-02-27 20:44:11');
INSERT INTO `convocatoria` VALUES ('774', '1', '031', '2020-02-07', '1', 'PROFESIONAL DE TERAPIA FÍSICA PARA LOS PROGRAMAS DE INTERVENCIÓN TEMPRANA', '3', 'admin', '2020-02-07 18:02:57', 'admin', '2020-02-28 23:48:55');
INSERT INTO `convocatoria` VALUES ('775', '1', '032', '2020-02-07', '1', 'PROFESIONAL EN PSICOLOGIA', '3', 'admin', '2020-02-07 18:03:28', 'admin', '2020-02-28 21:56:34');
INSERT INTO `convocatoria` VALUES ('776', '1', '033', '2020-02-07', '1', 'EDUCADOR MUSICAL ESPECIALIZADO DE ORQUESTANDO EBE', '3', 'admin', '2020-02-07 18:04:17', 'admin', '2020-02-28 21:58:27');
INSERT INTO `convocatoria` VALUES ('777', '1', '014-II', '2020-02-07', '11', 'INTÉRPRETES DE LENGUAS DE SEÑAS PERUANA PARA EBR/EBA', '3', 'admin', '2020-02-07 18:04:59', 'admin', '2020-02-28 21:53:55');
INSERT INTO `convocatoria` VALUES ('778', '1', '034', '2020-02-10', '1', 'MÉDICO OCUPACIONAL', '3', 'admin', '2020-02-10 19:42:22', 'admin', '2020-02-26 18:43:51');
INSERT INTO `convocatoria` VALUES ('779', '1', '006-II', '2020-02-13', '1', 'PERSONAL DE VIGILANCIA', '3', 'admin', '2020-02-13 17:11:36', 'admin', '2020-03-02 23:34:53');
INSERT INTO `convocatoria` VALUES ('780', '1', '035', '2020-02-17', '1', 'ESPECIALISTA EN MONITOREO DE EVALUACIONES DE ESTUDIANTES Y DOCENTES ', '3', 'admin', '2020-02-17 19:53:21', 'admin', '2020-03-05 18:32:10');
INSERT INTO `convocatoria` VALUES ('781', '1', '007-II', '2020-02-18', '2', 'PERSONAL DE SECRETARIA', '3', 'admin', '2020-02-18 15:25:53', 'admin', '2020-03-05 18:32:57');
INSERT INTO `convocatoria` VALUES ('782', '1', '036', '2020-02-19', '1', 'PROFESIONAL EN EDUCACIÓN PARA SUPERVISIÓN ', '3', 'admin', '2020-02-19 18:23:05', 'admin', '2020-03-09 17:38:00');
INSERT INTO `convocatoria` VALUES ('783', '1', '037', '2020-02-19', '1', 'JEFE DEL ÁREA DE SUPERVISIÓN Y GESTIÓN DEL SERVICIO EDUCATIVO', '3', 'admin', '2020-02-19 18:24:12', 'admin', '2020-03-06 23:16:24');
INSERT INTO `convocatoria` VALUES ('784', '1', '012-II', '2020-02-26', '2', 'PERSONAL DE APOYO EDUCATIVO', '3', 'admin', '2020-02-26 18:44:25', 'admin', '2020-03-13 19:30:48');
INSERT INTO `convocatoria` VALUES ('785', '1', '016-II', '2020-02-26', '2', 'PROFESIONALES DE EDUCACIÓN ESPECIAL PARA LA FORMACIÓN LABORAL', '3', 'admin', '2020-02-26 18:45:36', 'admin', '2020-03-13 19:30:23');
INSERT INTO `convocatoria` VALUES ('786', '1', '038', '2020-02-27', '1', 'ABOGADO', '3', 'admin', '2020-02-27 20:47:09', 'admin', '2020-06-03 19:17:31');
INSERT INTO `convocatoria` VALUES ('787', '1', '010-II', '2020-03-03', '4', 'Coordinadores de Innovación y Soporte Tecnológico', '3', 'admin', '2020-03-03 16:25:30', 'admin', '2020-06-03 19:17:23');
INSERT INTO `convocatoria` VALUES ('788', '1', '012-III', '2020-03-03', '1', 'Personal de apoyo educativo', '3', 'admin', '2020-03-03 16:26:57', 'admin', '2020-06-03 19:17:18');
INSERT INTO `convocatoria` VALUES ('789', '1', '014-III', '2020-03-04', '4', 'INTERPRETES DE LENGUA DE SEÑAS PERUANA PARA EBR/EBA', '3', 'admin', '2020-03-04 21:48:58', 'admin', '2020-06-03 19:17:14');
INSERT INTO `convocatoria` VALUES ('790', '1', '022-II', '2020-03-04', '1', 'ACOMPAÑANTE PEDAGÓGICO DE EDUCACIÓN SECUNDARIA-MATEMÁTICA PARA IIEE POLIDOCENTE', '3', 'admin', '2020-03-04 21:50:05', 'admin', '2020-06-03 19:17:09');
INSERT INTO `convocatoria` VALUES ('791', '1', '023-II', '2020-03-04', '3', 'ACOMPAÑANTES PEDAGÓGICOS DE EDUCACIÓN SECUNDARIA-COMUNICACIÓN PARA IIEE POLIDOCENTE', '3', 'admin', '2020-03-04 21:51:21', 'admin', '2020-06-03 19:17:02');
INSERT INTO `convocatoria` VALUES ('792', '1', '025-II', '2020-03-04', '1', 'ASISTENTE EN CONVIVENCIA ESCOLAR', '3', 'admin', '2020-03-04 21:52:06', 'admin', '2020-06-03 19:16:57');
INSERT INTO `convocatoria` VALUES ('793', '1', '026-II', '2020-03-04', '1', 'PROFESIONAL I PARA EQUIPO ITINERANTE DE CONVIVENCIA ESCOLAR', '3', 'admin', '2020-03-04 21:52:57', 'admin', '2020-06-03 19:16:50');
INSERT INTO `convocatoria` VALUES ('794', '1', '29-II', '2020-03-05', '12', 'Profesionales en Psicología', '3', 'admin', '2020-03-05 18:34:32', 'admin', '2020-06-03 19:16:39');
INSERT INTO `convocatoria` VALUES ('795', '1', '30-II', '2020-03-05', '4', 'Docentes responsables', '3', 'admin', '2020-03-05 18:36:28', 'admin', '2020-06-03 19:16:35');
INSERT INTO `convocatoria` VALUES ('796', '1', '21-II', '2020-03-05', '16', 'Acompañantes pedagógicos de Educación Primaria para IIEE polidocentes', '3', 'admin', '2020-03-05 18:39:00', 'admin', '2020-06-03 19:16:43');
INSERT INTO `convocatoria` VALUES ('797', '1', '15-II', '2020-03-06', '1', 'Modelo linguistico de lengua de señas peruana para EBR/EBA', '3', 'admin', '2020-03-06 17:07:37', 'admin', '2020-06-03 19:16:10');
INSERT INTO `convocatoria` VALUES ('798', '1', '039-I', '2020-03-09', '1', 'Técnico administrativo para APAFA', '3', 'admin', '2020-03-09 17:38:45', 'admin', '2020-06-03 19:16:03');
INSERT INTO `convocatoria` VALUES ('799', '1', '035-II', '2020-03-10', '1', 'Especialista en Monitoreo de Evaluaciones de Estudiantes y Docentes', '3', 'admin', '2020-03-10 21:40:55', 'admin', '2020-06-03 19:15:57');
INSERT INTO `convocatoria` VALUES ('800', '1', '006-III', '2020-03-11', '1', 'Personal de vigilancia', '3', 'admin', '2020-03-11 23:37:21', 'admin', '2020-06-03 19:15:52');
INSERT INTO `convocatoria` VALUES ('801', '1', '007-III', '2020-03-11', '1', 'Personal de secretaria', '3', 'admin', '2020-03-11 23:38:41', 'admin', '2020-06-03 19:15:47');
INSERT INTO `convocatoria` VALUES ('802', '1', '032-II', '2020-03-11', '1', 'Profesional en psicología', '3', 'admin', '2020-03-11 23:39:50', 'admin', '2020-06-03 19:15:41');
INSERT INTO `convocatoria` VALUES ('803', '1', '040-I', '2020-03-11', '1', 'Coordinador administrativo y de recursos educativos para zonas urbanas', '3', 'admin', '2020-03-11 23:41:52', 'admin', '2020-06-03 19:15:34');
INSERT INTO `convocatoria` VALUES ('804', '1', '041-I', '2020-03-13', '1', 'Jefe del Área de Supervisión y Gestión del Servicio Educativo', '3', 'admin', '2020-03-13 19:33:29', 'admin', '2020-06-03 19:15:28');
INSERT INTO `convocatoria` VALUES ('805', '1', '042-I', '2020-03-13', '1', 'Abogado como Secretario Técnico', '3', 'admin', '2020-03-13 19:34:35', 'admin', '2020-06-03 19:15:22');
INSERT INTO `convocatoria` VALUES ('806', '1', '043-I', '2020-03-13', '1', 'Analista en Recursos Humanos', '3', 'admin', '2020-03-13 19:35:57', 'admin', '2020-06-03 19:15:11');
INSERT INTO `convocatoria` VALUES ('807', '1', '044-I', '2020-06-09', '1', 'Médico ocupacional', '3', 'admin', '2020-06-09 22:48:03', 'admin', '2020-06-26 21:55:49');
INSERT INTO `convocatoria` VALUES ('808', '1', '045', '2020-06-18', '1', 'Jefe del Área de Supervisión y Gestión del Servicio Educativo', '3', 'admin', '2020-06-18 20:25:38', 'admin', '2020-07-10 18:13:17');
INSERT INTO `convocatoria` VALUES ('809', '1', '046', '2020-06-18', '1', 'Analista en Recursos Humanos', '3', 'admin', '2020-06-18 20:26:33', 'admin', '2020-07-13 18:51:42');
INSERT INTO `convocatoria` VALUES ('810', '1', '032-III', '2020-06-19', '1', 'Profesional en Psicología', '3', 'admin', '2020-06-19 22:36:15', 'admin', '2020-07-21 19:01:17');
INSERT INTO `convocatoria` VALUES ('811', '1', '014-IV', '2020-06-19', '4', 'Interprete de lengua de señas peruana para EBR/EBA', '3', 'admin', '2020-06-19 22:37:49', 'admin', '2020-07-16 19:58:12');
INSERT INTO `convocatoria` VALUES ('812', '1', '015-III', '2020-06-19', '1', 'Modelo linguístico de lengua de señas peruana para EBR/EBA', '3', 'admin', '2020-06-19 22:39:02', 'admin', '2020-07-16 19:58:42');
INSERT INTO `convocatoria` VALUES ('813', '1', '023-III', '2020-06-19', '2', 'Acompañantes pedagógicos de Educación Secundaria-Comunicación para IIEE polidocente', '3', 'admin', '2020-06-19 22:40:17', 'admin', '2020-07-16 20:00:46');
INSERT INTO `convocatoria` VALUES ('814', '1', '022-III', '2020-06-19', '2', 'Acompañantes pedagógicos de Educación Secundaria-Matemática para IIEE polidocente', '3', 'admin', '2020-06-19 22:41:16', 'admin', '2020-07-16 19:59:39');
INSERT INTO `convocatoria` VALUES ('815', '1', '021-III', '2020-06-19', '8', 'Acompañantes pedagógicos de Educación Primaria para IIEE polidocente', '3', 'admin', '2020-06-19 22:42:00', 'admin', '2020-07-16 19:59:04');
INSERT INTO `convocatoria` VALUES ('816', '1', '047-I', '2020-06-23', '1', 'Especialista en Educación Secundaria - Matemática o Comunicación', '3', 'admin', '2020-06-23 22:44:45', 'admin', '2020-07-13 22:25:25');
INSERT INTO `convocatoria` VALUES ('817', '1', '035-III', '2020-06-24', '1', 'Especialista en Monitoreo de Evaluaciones de Estudiantes y Docentes', '3', 'admin', '2020-06-24 19:41:00', 'admin', '2020-07-16 19:05:05');
INSERT INTO `convocatoria` VALUES ('819', '1', '025-III', '2020-06-25', '1', 'Asistente de Convivencia Escolar', '3', 'admin', '2020-06-25 21:54:42', 'admin', '2020-07-20 18:54:14');
INSERT INTO `convocatoria` VALUES ('820', '1', '026-III', '2020-06-25', '1', 'Profesional I para equipo itinerante de Convivencia Escolar', '3', 'admin', '2020-06-25 21:56:03', 'admin', '2020-07-20 18:54:47');
INSERT INTO `convocatoria` VALUES ('821', '1', '029-II', '2020-06-25', '14', 'Profesionales en Psicología', '3', 'admin', '2020-06-25 21:57:23', 'admin', '2020-07-23 19:54:00');
INSERT INTO `convocatoria` VALUES ('822', '1', '006-IV', '2020-06-30', '1', 'Personal de vigilancia', '3', 'admin', '2020-06-30 22:51:25', 'admin', '2020-07-22 21:54:37');
INSERT INTO `convocatoria` VALUES ('823', '1', '007-IV', '2020-06-30', '1', 'Personal de secretaria', '3', 'admin', '2020-06-30 22:52:16', 'admin', '2020-07-22 21:55:58');
INSERT INTO `convocatoria` VALUES ('824', '1', '010-III', '2020-06-30', '5', 'Coordinadores de Innovación  y Soporte Tecnológico', '3', 'admin', '2020-06-30 22:53:57', 'admin', '2020-07-24 20:02:52');
INSERT INTO `convocatoria` VALUES ('825', '1', '040-II', '2020-06-30', '1', 'Coordinador Administrativo y de Recursos Educativos para Zonas Urbanas', '3', 'admin', '2020-06-30 22:59:30', 'admin', '2020-07-24 20:03:30');
INSERT INTO `convocatoria` VALUES ('826', '1', '048-I', '2020-06-30', '1', 'Médico ocupacional', '3', 'admin', '2020-06-30 23:00:28', 'admin', '2020-07-22 13:28:33');
INSERT INTO `convocatoria` VALUES ('827', '1', '049-I', '2020-07-01', '1', 'Responsable del Equipo de Estadística y Monitoreo', '3', 'admin', '2020-07-01 22:21:48', 'admin', '2020-07-22 13:28:44');
INSERT INTO `convocatoria` VALUES ('828', '1', '050-I', '2020-07-07', '1', 'Profesional en Educación para la supervisión de IIEE', '3', 'admin', '2020-07-07 15:01:39', 'admin', '2020-07-24 21:00:53');
INSERT INTO `convocatoria` VALUES ('829', '1', '051-I', '2020-07-07', '1', 'Técnico administrativo para APAFA y CONEI', '3', 'admin', '2020-07-07 15:02:59', 'admin', '2020-07-31 19:40:06');
INSERT INTO `convocatoria` VALUES ('831', '1', '012-IV', '2020-07-27', '1', 'PERSONAL DE APOYO EDUCATIVO', '3', 'admin', '2020-07-27 19:31:32', 'admin', '2020-08-18 18:15:22');
INSERT INTO `convocatoria` VALUES ('832', '1', '023-IV', '2020-07-27', '2', ' ACOMPAÑANTES PEDAGÓGICOS DE EDUCACIÓN SECUNDARIA - COMUNICACIÓN PARA IIEE POLIDOCENTE\r\n', '3', 'admin', '2020-07-27 19:34:04', 'admin', '2020-08-18 18:14:15');
INSERT INTO `convocatoria` VALUES ('833', '1', '052-I', '2020-07-29', '1', 'Asistente administrativo', '3', 'admin', '2020-07-29 15:35:55', 'admin', '2020-08-19 19:00:42');
INSERT INTO `convocatoria` VALUES ('834', '1', '014-V', '2020-07-30', '4', 'INTÉRPRETES DE LENGUA DE SEÑAS\r\nPERUANA PARA EBR/EBA', '3', 'admin', '2020-07-30 20:34:10', 'admin', '2020-08-21 19:31:58');
INSERT INTO `convocatoria` VALUES ('835', '1', '032-IV', '2020-07-30', '1', 'PROFESIONAL EN PSICOLOGÍA', '3', 'admin', '2020-07-30 20:35:08', 'admin', '2020-08-21 19:30:21');
INSERT INTO `convocatoria` VALUES ('836', '1', '053', '2020-07-30', '1', ' COORDINADOR DEL EQUIPO DE ESTADÍSTICA Y MONITOREO', '3', 'admin', '2020-07-30 20:36:26', 'admin', '2020-08-20 11:39:02');
INSERT INTO `convocatoria` VALUES ('837', '1', '054', '2020-08-03', '1', 'Especialista en Educación Secundaria- Matemática o Comunicación', '3', 'admin', '2020-08-03 18:40:31', 'admin', '2020-08-24 19:06:59');
INSERT INTO `convocatoria` VALUES ('838', '1', '022-IV', '2020-08-06', '1', 'ACOMPAÑANTE PEDAGÓGICO DE EDUCACIÓN SECUNDARIA-MATEMÁTICA PARA IIEE POLIDOCENTE', '3', 'admin', '2020-08-06 17:31:30', 'admin', '2020-08-27 17:12:32');
INSERT INTO `convocatoria` VALUES ('839', '1', '55', '2020-08-07', '1', 'Abogado', '3', 'admin', '2020-08-07 20:05:41', 'admin', '2020-08-28 17:08:37');
INSERT INTO `convocatoria` VALUES ('840', '1', '056', '2020-08-10', '1', 'PROFESIONAL EN EDUCACIÓN PARA LA SUPERVISIÓN DE IIEE\r\n', '3', 'admin', '2020-08-11 08:55:21', 'admin', '2020-08-31 17:25:22');
INSERT INTO `convocatoria` VALUES ('841', '1', '057', '2020-08-13', '1', 'Técnico en SIAGIE', '3', 'admin', '2020-08-13 18:00:30', 'admin', '2020-09-01 19:44:04');
INSERT INTO `convocatoria` VALUES ('842', '1', '006-V', '2020-08-19', '3', 'PERSONAL DE VIGILANCIA', '3', 'admin', '2020-08-19 18:55:31', 'admin', '2020-09-09 20:22:54');
INSERT INTO `convocatoria` VALUES ('843', '1', '008-II', '2020-08-19', '1', 'PERSONAL DE MANTENIMIENTO', '3', 'admin', '2020-08-19 18:56:47', 'admin', '2020-09-09 20:23:20');
INSERT INTO `convocatoria` VALUES ('844', '1', '058', '2020-08-19', '1', 'ARQUITECTO Y/O INGENIERO CIVIL', '3', 'admin', '2020-08-19 19:02:57', 'admin', '2020-09-09 20:22:08');
INSERT INTO `convocatoria` VALUES ('845', '1', '059-I', '2020-09-03', '1', 'COORDINADOR DEL EQUIPO DE ESTADÍSTICA Y MONITOREO', '3', 'admin', '2020-09-03 16:16:26', 'admin', '2020-09-24 19:47:00');
INSERT INTO `convocatoria` VALUES ('846', '1', '014-VI', '2020-09-07', '2', 'INTÉRPRETE DE LENGUA DE SEÑAS PERUANA PARA EBR/EBA', '3', 'admin', '2020-09-07 20:51:58', 'admin', '2020-09-28 19:29:01');
INSERT INTO `convocatoria` VALUES ('848', '1', '061', '2020-09-07', '70', 'Coordinador Administrativo de IE', '3', 'admin', '2020-09-07 21:12:56', 'admin', '2020-10-12 19:07:34');
INSERT INTO `convocatoria` VALUES ('849', '1', '062', '2020-09-07', '7', 'SECRETARIO/A IE', '3', 'admin', '2020-09-07 21:13:36', 'admin', '2020-10-12 19:08:19');
INSERT INTO `convocatoria` VALUES ('850', '1', '063', '2020-09-07', '43', 'OFICINISTA IE', '3', 'admin', '2020-09-07 21:14:53', 'admin', '2020-10-12 19:10:34');
INSERT INTO `convocatoria` VALUES ('851', '1', '060', '2020-09-07', '1', 'ASISTENTE ADMINISTRATIVO', '3', 'admin', '2020-09-07 22:19:02', 'admin', '2020-09-28 19:33:20');
INSERT INTO `convocatoria` VALUES ('852', '1', '064', '2020-09-08', '1', 'ABOGADO COMO SECRETARIO TÉCNICO DE SERVIR', '3', 'admin', '2020-09-08 19:22:31', 'admin', '2020-09-29 20:48:28');
INSERT INTO `convocatoria` VALUES ('853', '1', '065', '2020-09-11', '1', 'TÉCNICO EN SIAGIE', '3', 'admin', '2020-09-11 21:18:10', 'admin', '2020-10-02 23:24:11');
INSERT INTO `convocatoria` VALUES ('854', '1', '010-IV', '2020-09-11', '1', 'COORDINADOR DE INNOVACION Y SOPORTE TECNOLOGICO', '3', 'admin', '2020-09-11 21:18:49', 'admin', '2020-10-02 23:24:49');
INSERT INTO `convocatoria` VALUES ('855', '1', '027-II', '2020-09-15', '1', 'PROFESIONAL II PARA EQUIPO ITINERANTE DE CONVIVENCIA ESCOLAR', '3', 'admin', '2020-09-15 23:58:13', 'admin', '2020-10-06 22:14:25');
INSERT INTO `convocatoria` VALUES ('856', '1', '029-III', '2020-09-18', '2', 'Profesional en Psicología', '2', 'admin', '2020-09-19 22:04:54', 'admin', '2020-10-07 22:45:06');
INSERT INTO `convocatoria` VALUES ('857', '1', '021-IV', '2020-09-21', '1', 'ACOMPAÑANTE PEDAGÓGICO DE EDUCACIÓN PRIMARIA PARA IIEE POLIDOCENTE', '1', 'admin', '2020-09-21 22:14:22', 'admin', '2020-09-21 22:15:27');
INSERT INTO `convocatoria` VALUES ('858', '1', '006-VI', '2020-09-23', '1', 'PERSONAL DE VIGILANCIA', '1', 'admin', '2020-09-23 19:42:00', null, null);
INSERT INTO `convocatoria` VALUES ('859', '1', '066', '2020-10-12', '1', 'JEFE DEL ÁREA DE GESTIÓN DE LA EDUCACIÓN BÁSICA ALTERNATIVA Y TÉCNICO PRODUCTIVA', '3', 'admin', '2020-10-12 19:15:56', 'admin', '2020-10-30 17:25:09');
INSERT INTO `convocatoria` VALUES ('860', '1', '067', '2020-10-14', '1', 'Asistente administrativo', '3', 'admin', '2020-10-15 07:59:36', 'admin', '2020-11-04 18:06:28');
INSERT INTO `convocatoria` VALUES ('861', '1', '068-I', '2020-10-19', '1', 'Analista legal', '2', 'admin', '2020-10-19 20:08:36', 'admin', '2020-11-05 23:24:15');
INSERT INTO `convocatoria` VALUES ('862', '1', '006-VII', '2020-10-20', '2', 'PERSONAL DE VIGILANCIA', '2', 'admin', '2020-10-20 17:51:46', 'admin', '2020-11-06 22:24:15');
INSERT INTO `convocatoria` VALUES ('863', '1', '28', '2020-10-26', '1', 'PROFESIONAL III PARA EQUIPO ITINERANTE DE CONVIVENCIA ESCOLAR', '1', 'admin', '2020-10-26 21:47:32', null, null);
INSERT INTO `convocatoria` VALUES ('864', '1', '069', '2020-10-26', '1', 'TÉCNICO LEGAL', '1', 'admin', '2020-10-26 21:50:00', null, null);
INSERT INTO `convocatoria` VALUES ('865', '1', '061-II', '2020-10-29', '3', 'Coordinador Administrativo de IE', '1', 'admin', '2020-10-29 21:06:01', null, null);
INSERT INTO `convocatoria` VALUES ('866', '1', '006-VIII', '2020-10-29', '1', 'PERSONAL DE VIGILANCIA', '1', 'admin', '2020-10-29 21:08:57', 'admin', '2020-10-29 21:09:31');
INSERT INTO `convocatoria` VALUES ('867', '1', '070', '2020-10-30', '1', 'ASESOR DE DIRECCIÓN ', '1', 'admin', '2020-10-30 17:25:48', null, null);
INSERT INTO `convocatoria` VALUES ('868', '1', '071', '2020-11-02', '1', 'MEDICO OCUPACIONAL', '1', 'admin', '2020-11-02 18:31:17', null, null);
INSERT INTO `convocatoria` VALUES ('869', '1', '072', '2020-11-03', '1', 'TÉCNICO EN SIAGIE', '1', 'admin', '2020-11-03 19:41:44', null, null);
INSERT INTO `convocatoria` VALUES ('870', '1', '029-IV', '2020-11-03', '1', 'PROFESIONAL EN PSICOLOGÍA', '1', 'admin', '2020-11-03 19:43:01', null, null);

-- ----------------------------
-- Table structure for detalle_evaluacion_curricular
-- ----------------------------
DROP TABLE IF EXISTS `detalle_evaluacion_curricular`;
CREATE TABLE `detalle_evaluacion_curricular` (
  `detalle_evaluacion_cuID` int(11) NOT NULL AUTO_INCREMENT,
  `convocatoriaID` int(11) DEFAULT NULL,
  `puesto_convocatoria` text,
  `nro_cas` varchar(15) DEFAULT NULL,
  `dni` varchar(9) NOT NULL,
  `FAID` int(2) NOT NULL,
  `ELID` int(2) NOT NULL,
  `EXPID` int(2) NOT NULL,
  `suma_total` varchar(8) NOT NULL,
  `fecha_reg` date NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `reg_por` varchar(120) DEFAULT NULL,
  `obs` text,
  `condicion` varchar(15) DEFAULT NULL,
  `id_usuario_mod` int(11) DEFAULT NULL,
  `mod_por` varchar(120) DEFAULT NULL,
  `fecha_mod` datetime DEFAULT NULL,
  `estado` int(11) DEFAULT '1',
  `fecha_exacta` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`detalle_evaluacion_cuID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of detalle_evaluacion_curricular
-- ----------------------------
INSERT INTO `detalle_evaluacion_curricular` VALUES ('1', '4', 'ESPECIALISTA DE PROYECTOS INFORMATICOS', '111', '76187930', '1', '1', '1', '28.00', '2020-11-29', '1', 'amenas', 'DET 11', 'DESAPROBADO', '1', 'amenas', '2020-11-29 19:38:32', '1', '2020-11-29 17:41:30');

-- ----------------------------
-- Table structure for detalle_evaluacion_entrevista_final
-- ----------------------------
DROP TABLE IF EXISTS `detalle_evaluacion_entrevista_final`;
CREATE TABLE `detalle_evaluacion_entrevista_final` (
  `detalle_evaluacion_entrevistafinal_ID` int(11) NOT NULL AUTO_INCREMENT,
  `convocatoriaID` int(11) DEFAULT NULL,
  `puesto_convocatoria` text,
  `nro_cas` varchar(15) DEFAULT NULL,
  `dni` varchar(9) NOT NULL,
  `APID` int(2) NOT NULL,
  `AAID` int(2) NOT NULL,
  `AEID` int(2) NOT NULL,
  `suma_total` varchar(8) NOT NULL,
  `fecha_reg` date NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `reg_por` varchar(120) DEFAULT NULL,
  `obs` text,
  `condicion` varchar(15) DEFAULT NULL,
  `id_usuario_mod` int(11) DEFAULT NULL,
  `mod_por` varchar(120) DEFAULT NULL,
  `fecha_mod` datetime DEFAULT NULL,
  `estado` int(11) DEFAULT '1',
  `fecha_exacta` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`detalle_evaluacion_entrevistafinal_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of detalle_evaluacion_entrevista_final
-- ----------------------------
INSERT INTO `detalle_evaluacion_entrevista_final` VALUES ('1', '4', 'ESPECIALISTA DE PROYECTOS INFORMATICOS', '111', '76187930', '1', '1', '1', '40.00', '2020-11-29', '1', 'amenas', '1156', 'APROBADO', '1', 'amenas', '2020-11-29 19:41:56', '1', '2020-11-29 18:04:58');

-- ----------------------------
-- Table structure for detalle_evaluacion_tecnico
-- ----------------------------
DROP TABLE IF EXISTS `detalle_evaluacion_tecnico`;
CREATE TABLE `detalle_evaluacion_tecnico` (
  `detalle_evaluacion_tecnico_ID` int(11) NOT NULL AUTO_INCREMENT,
  `convocatoriaID` int(11) DEFAULT NULL,
  `puesto_convocatoria` text,
  `nro_cas` varchar(15) DEFAULT NULL,
  `dni` varchar(9) NOT NULL,
  `suma_total` varchar(8) NOT NULL,
  `fecha_reg` date NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `reg_por` varchar(120) DEFAULT NULL,
  `obs` text,
  `condicion` varchar(15) DEFAULT NULL,
  `id_usuario_mod` int(11) DEFAULT NULL,
  `mod_por` varchar(120) DEFAULT NULL,
  `fecha_mod` datetime DEFAULT NULL,
  `estado` int(11) DEFAULT '1',
  `fecha_exacta` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`detalle_evaluacion_tecnico_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of detalle_evaluacion_tecnico
-- ----------------------------
INSERT INTO `detalle_evaluacion_tecnico` VALUES ('1', '4', 'ESPECIALISTA DE PROYECTOS INFORMATICOS', '111', '76187930', '11', '2020-11-29', '1', 'amenas', 'DET 29', 'DESAPROBADO', '1', 'amenas', '2020-11-29 19:41:28', '1', '2020-11-29 18:03:55');

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
  `entrevista_personal` decimal(10,0) DEFAULT NULL,
  `resultado_final` decimal(10,0) DEFAULT NULL,
  `fecha_reg` date DEFAULT NULL,
  `estado` int(11) DEFAULT NULL,
  PRIMARY KEY (`IDdetalle_postulacion`),
  KEY `IDconvocatoria` (`IDconvocatoria`),
  KEY `IDpostulante` (`IDpostulante`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of detalle_postulacion
-- ----------------------------
INSERT INTO `detalle_postulacion` VALUES ('1', '405', '4', '28', '11', '40', '79', '2020-11-26', '1');

-- ----------------------------
-- Table structure for det_el_exped
-- ----------------------------
DROP TABLE IF EXISTS `det_el_exped`;
CREATE TABLE `det_el_exped` (
  `det_el_expedID` int(11) NOT NULL AUTO_INCREMENT,
  `ELID` int(11) NOT NULL,
  `b1` varchar(6) DEFAULT NULL,
  `b2` varchar(6) DEFAULT NULL,
  `b3` varchar(6) DEFAULT NULL,
  PRIMARY KEY (`det_el_expedID`),
  KEY `ELID` (`ELID`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of det_el_exped
-- ----------------------------
INSERT INTO `det_el_exped` VALUES ('1', '1', '', '', '');

-- ----------------------------
-- Table structure for det_exp_exped
-- ----------------------------
DROP TABLE IF EXISTS `det_exp_exped`;
CREATE TABLE `det_exp_exped` (
  `det_exp_expedID` int(11) NOT NULL AUTO_INCREMENT,
  `EXPID` int(11) NOT NULL,
  `c1` varchar(6) DEFAULT NULL,
  `c2` varchar(6) DEFAULT NULL,
  `c3` varchar(6) DEFAULT NULL,
  `c4` varchar(6) DEFAULT NULL,
  `c5` varchar(6) DEFAULT NULL,
  `c6` varchar(6) DEFAULT NULL,
  PRIMARY KEY (`det_exp_expedID`),
  KEY `CAID` (`EXPID`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of det_exp_exped
-- ----------------------------
INSERT INTO `det_exp_exped` VALUES ('1', '1', '', '', '2', '1', '5', '10');

-- ----------------------------
-- Table structure for det_fa_exped
-- ----------------------------
DROP TABLE IF EXISTS `det_fa_exped`;
CREATE TABLE `det_fa_exped` (
  `det_fa_expedID` int(11) NOT NULL AUTO_INCREMENT,
  `FAID` int(11) NOT NULL,
  `a1` varchar(6) DEFAULT NULL,
  `a2` varchar(6) DEFAULT NULL,
  `a3` varchar(6) DEFAULT NULL,
  PRIMARY KEY (`det_fa_expedID`),
  KEY `FPID` (`FAID`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of det_fa_exped
-- ----------------------------
INSERT INTO `det_fa_exped` VALUES ('1', '1', '10', '', '');

-- ----------------------------
-- Table structure for el_exped
-- ----------------------------
DROP TABLE IF EXISTS `el_exped`;
CREATE TABLE `el_exped` (
  `ELID` int(11) NOT NULL AUTO_INCREMENT,
  `sum` varchar(10) NOT NULL,
  PRIMARY KEY (`ELID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of el_exped
-- ----------------------------
INSERT INTO `el_exped` VALUES ('1', '');

-- ----------------------------
-- Table structure for exp_exped
-- ----------------------------
DROP TABLE IF EXISTS `exp_exped`;
CREATE TABLE `exp_exped` (
  `EXPID` int(11) NOT NULL AUTO_INCREMENT,
  `sum` varchar(10) NOT NULL,
  PRIMARY KEY (`EXPID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of exp_exped
-- ----------------------------
INSERT INTO `exp_exped` VALUES ('1', '18.00');

-- ----------------------------
-- Table structure for fa_exped
-- ----------------------------
DROP TABLE IF EXISTS `fa_exped`;
CREATE TABLE `fa_exped` (
  `FAID` int(11) NOT NULL AUTO_INCREMENT,
  `sum` varchar(10) NOT NULL,
  PRIMARY KEY (`FAID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of fa_exped
-- ----------------------------
INSERT INTO `fa_exped` VALUES ('1', '10.00');

-- ----------------------------
-- Table structure for form_academica
-- ----------------------------
DROP TABLE IF EXISTS `form_academica`;
CREATE TABLE `form_academica` (
  `IDFORACA` int(6) NOT NULL AUTO_INCREMENT,
  `ID_CAS` int(6) NOT NULL,
  `NIV_EDUCA` varchar(255) DEFAULT NULL,
  `GRAD_ACA` varchar(255) DEFAULT NULL,
  `NOM_CARRERA` varchar(255) DEFAULT NULL,
  `CENT_ESTUDIO` varchar(255) DEFAULT NULL,
  `DESDE` varchar(10) DEFAULT NULL,
  `HASTA` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`IDFORACA`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of form_academica
-- ----------------------------
INSERT INTO `form_academica` VALUES ('1', '405', 'titulado', 'titulador', 'ing. de sistemas', 'ucv lima norte', '2014', '2020');

-- ----------------------------
-- Table structure for laboral
-- ----------------------------
DROP TABLE IF EXISTS `laboral`;
CREATE TABLE `laboral` (
  `IDEXPLABORAL` int(6) NOT NULL AUTO_INCREMENT,
  `ID_CAS` int(6) NOT NULL,
  `EMPRESA` varchar(255) DEFAULT NULL,
  `CARGO` varchar(255) DEFAULT NULL,
  `SECTOR` varchar(255) DEFAULT NULL,
  `AÑO` varchar(5) DEFAULT NULL,
  `MES` varchar(5) DEFAULT NULL,
  `DIA` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`IDEXPLABORAL`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of laboral
-- ----------------------------
INSERT INTO `laboral` VALUES ('1', '405', 'ugel 4', 'programador', 'publico', '5', '8', '4');

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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of log_convocatoria
-- ----------------------------
INSERT INTO `log_convocatoria` VALUES ('1', '123', '1', '2020-09-25 14:00:30', 'ANALISTA DE SISTEMAS', '1', null, 'admin', 'REGISTRO', '2020-09-25 14:00:30');
INSERT INTO `log_convocatoria` VALUES ('2', '111', '1', '2020-09-25 14:01:09', 'ESPECIALISTA DE PROYECTOS INFORMATICOS', '1', null, 'admin', 'REGISTRO', '2020-09-25 14:01:10');
INSERT INTO `log_convocatoria` VALUES ('3', '123', '1', '2020-09-25 14:00:30', 'ANALISTA DE SISTEMAS', '2', null, 'admin', 'ACTUALIZACION', '2020-09-25 15:27:30');
INSERT INTO `log_convocatoria` VALUES ('4', '123', '1', '2020-09-25 14:00:30', 'ANALISTA DE SISTEMAS', '1', null, 'admin', 'ACTUALIZACION', '2020-10-27 08:52:31');
INSERT INTO `log_convocatoria` VALUES ('5', '123', '1', '2020-09-25 14:00:30', 'ANALISTA DE SISTEMAS', '2', null, 'admin', 'ACTUALIZACION', '2020-10-27 09:24:35');

-- ----------------------------
-- Table structure for miembro_comite
-- ----------------------------
DROP TABLE IF EXISTS `miembro_comite`;
CREATE TABLE `miembro_comite` (
  `miembro_comiteID` tinyint(2) NOT NULL AUTO_INCREMENT,
  `nombres` varchar(150) DEFAULT NULL,
  `cargo` varchar(150) DEFAULT NULL,
  `archivo` text,
  `condicion` tinyint(1) DEFAULT NULL,
  `firmaActa` tinyint(1) DEFAULT NULL,
  `firma` blob,
  `firmaActiva` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`miembro_comiteID`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of miembro_comite
-- ----------------------------
INSERT INTO `miembro_comite` VALUES ('1', 'JESÚS AMADEO BAQUERIZO ALIAGA', 'DIRECTOR DE SISTEMA ADMINISTRATIVO II DEL ÁREA DE PLANIFICACIÓN Y PRESUPUESTO', 'jesus_baquerizo.png', '1', '1', '', '1');
INSERT INTO `miembro_comite` VALUES ('2', 'JENNY ALIDA MORA ACUÑA', 'ESPECIALISTA EN EDUCACIÓN - EBR INICIAL', 'jenny_mora.png', '0', '1', '', '1');
INSERT INTO `miembro_comite` VALUES ('3', 'WALDIR WAGNER RAMOS SALAS', 'ESPECIALISTA EN EDUCACIÓN - EBR PRIMARIA', 'waldir_ramos.png', '0', '0', '', '0');
INSERT INTO `miembro_comite` VALUES ('4', 'EUGENIO LEON OSCCO', 'ESPECIALISTA EN EDUCACIÓN - EBR SECUNDARIA', 'eugenio_leon.png', '0', '0', '', '0');
INSERT INTO `miembro_comite` VALUES ('5', 'MARGOT MAGDALENA GONZALEZ Y ACOSTA', 'ESPECIALISTA EN EDUCACIÓN - EBE', 'margot_gonzalez.png', '0', '0', '', '0');
INSERT INTO `miembro_comite` VALUES ('6', 'MILAGROS HUAMAN ZUÑIGA', 'ESPECIALISTA EN EDUCACIÓN - EBA', 'milagros_huaman.png', '0', '0', '', '0');
INSERT INTO `miembro_comite` VALUES ('7', 'CARLOS ALBERTO TERRAZAS CHAVEZ', 'ESPECIALISTA EN EDUCACIÓN - ETP', 'carlos_terrazas.png', '0', '0', '', '0');
INSERT INTO `miembro_comite` VALUES ('8', 'SERGIO DELGADO DELGADO', 'ESPECIALISTA EN EDUCACIÓN - EBR EDUCACIÓN FÍSICA', 'sergio_delgado.png', '0', '0', '', '0');
INSERT INTO `miembro_comite` VALUES ('9', 'ROXANA JACQUELI MENESES AMAYA', 'DIRECTOR DE SISTEMA ADMINISTRATIVO I DEL ÁREA DE RECURSOS HUMANOS', 'roxana_meneses.png', '1', '1', '', '1');
INSERT INTO `miembro_comite` VALUES ('10', 'ANA BERTHA ULLOA SIGUEÑAS', 'ESPECIALISTA EN RACIONALIZACIÓN', 'ana_ulloa.png', '0', '0', '', '0');
INSERT INTO `miembro_comite` VALUES ('11', 'FRANCISCO WILFREDO RONDAN LOPEZ', 'ESPECIALISTA EN PLANIFICACIÓN', 'francisco_rondan.png', '0', '0', '', '0');
INSERT INTO `miembro_comite` VALUES ('12', 'MARY LITA PACHECO BARRETO', 'ESPECIALISTA EN EDUCACIÓN - EBR INICIAL', 'mary_pacheco.png', '0', '0', '', '0');
INSERT INTO `miembro_comite` VALUES ('13', 'NELLY RUFINA CUNZA PRINCIPE', 'ESPECIALISTA EN EDUCACIÓN - EBR PRIMARIA', 'nelly_cunza.png', '0', '1', '', '1');
INSERT INTO `miembro_comite` VALUES ('14', 'OLGA MARIA DE LA CRUZ RIVERA', 'ESPECIALISTA EN EDUCACIÓN - EBR SECUNDARIA', 'olga_delacruz.png', '1', '0', '', '0');
INSERT INTO `miembro_comite` VALUES ('15', 'MARIA JULIA ALVARADO FLORES', 'ESPECIALISTA EN EDUCACIÓN - EBA', 'maria_alvarado.png', '1', '0', '', '0');
INSERT INTO `miembro_comite` VALUES ('16', 'ELICERIA ADELI QUINTO POMA', 'TÉCNICO DE PERSONAL', 'adeli_quinto.png', '0', '0', '', '0');
INSERT INTO `miembro_comite` VALUES ('17', 'LISETT MILAGROS VERGARA ALARCON', 'ESPECIALISTA EN FINANZAS', 'lisett_vergara.png', '0', '0', '', '0');

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
  `archivo` varchar(120) DEFAULT NULL,
  PRIMARY KEY (`IDpostulante`)
) ENGINE=InnoDB AUTO_INCREMENT=406 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of postulante
-- ----------------------------
INSERT INTO `postulante` VALUES ('405', '76187930', 'alvaro alexander', 'mena', 'santos', '0', '926353561', 'amenas94@gmail.com', null, 'el palmo', 'EBA_MATEMATICA_-_FASE_III.pdf');

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
-- Table structure for tres_det_aarea
-- ----------------------------
DROP TABLE IF EXISTS `tres_det_aarea`;
CREATE TABLE `tres_det_aarea` (
  `tres_det_aareaID` int(11) NOT NULL AUTO_INCREMENT,
  `AAID` int(11) NOT NULL,
  `b1` varchar(6) DEFAULT NULL,
  `b2` varchar(6) DEFAULT NULL,
  `b3` varchar(6) DEFAULT NULL,
  PRIMARY KEY (`tres_det_aareaID`),
  KEY `ELID` (`AAID`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tres_det_aarea
-- ----------------------------
INSERT INTO `tres_det_aarea` VALUES ('1', '1', '4', '4', '4');

-- ----------------------------
-- Table structure for tres_det_aentidad
-- ----------------------------
DROP TABLE IF EXISTS `tres_det_aentidad`;
CREATE TABLE `tres_det_aentidad` (
  `tres_det_aentidadID` int(11) NOT NULL AUTO_INCREMENT,
  `AEID` int(11) NOT NULL,
  `c1` varchar(6) DEFAULT NULL,
  `c2` varchar(6) DEFAULT NULL,
  `c3` varchar(6) DEFAULT NULL,
  PRIMARY KEY (`tres_det_aentidadID`),
  KEY `CAID` (`AEID`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tres_det_aentidad
-- ----------------------------
INSERT INTO `tres_det_aentidad` VALUES ('1', '1', '4', '4', '4');

-- ----------------------------
-- Table structure for tres_det_apuesto
-- ----------------------------
DROP TABLE IF EXISTS `tres_det_apuesto`;
CREATE TABLE `tres_det_apuesto` (
  `tres_det_apuesto_ID` int(11) NOT NULL AUTO_INCREMENT,
  `APID` int(11) NOT NULL,
  `a1` varchar(6) DEFAULT NULL,
  `a2` varchar(6) DEFAULT NULL,
  `a3` varchar(6) DEFAULT NULL,
  `a4` varchar(6) DEFAULT NULL,
  PRIMARY KEY (`tres_det_apuesto_ID`),
  KEY `FPID` (`APID`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tres_det_apuesto
-- ----------------------------
INSERT INTO `tres_det_apuesto` VALUES ('1', '1', '4', '4', '4', '4');

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
INSERT INTO `usuario` VALUES ('1', 'amenas', 'yLkxVF2aLgs2yDAmvcNtkOQ1x7/qJpVLCRXev7d1aqdpebdDBZiojQay80kJn1/Kf/weRNx/S3PUVw8PXR9J8A==', 'admin', '1');
INSERT INTO `usuario` VALUES ('2', 'TEST', '4bp5sacbYhmYoG8u6u8p+qVSZDQJTdJ2MjCnb1YN9WUzGkp9M7YA9puEnFAxv9x/nVASDYDsGeer3cwCGKu6Uw==', 'TEST', '1');

-- ----------------------------
-- View structure for view_convocatorias
-- ----------------------------
DROP VIEW IF EXISTS `view_convocatorias`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER  VIEW `view_convocatorias` AS SELECT
	`c`.`IDconvocatoria` AS `IDconvocatoria`,
	`t`.`IDtipo` AS `IDtipo`,
	`t`.`descripcionCorta` AS `descripcionCorta`,
	`c`.`numero` AS `numero`,
	`c`.`fecha` AS `fecha`,
   CONCAT(`t`.`descripcionCorta`,'-', `c`.`numero`,'-',YEAR(`c`.`fechaRegistro`))   AS `CAS`,
  `c`.`IDconvocatoria` AS `NUMEXPE`,
	`c`.`cantidad` AS `cantidad`,
	`c`.`fechaRegistro` AS `fechaRegistro`,
	`c`.`asuntoContrato` AS `asuntoContrato`,
	`c`.`estado` AS `estado`,
	`c`.`registradoPor` AS `usuarioRegistro`,
	`c`.`fechaModificacion` AS `fechaModificacion`
FROM
	(
		`convocatoria` `c`
		JOIN `tipo` `t` ON (
			(`c`.`IDtipo` = `t`.`IDtipo`)
		)
	)
ORDER BY
	`c`.`fecha` DESC,
	`c`.`numero` DESC ;

-- ----------------------------
-- View structure for view_evaluar_postulante
-- ----------------------------
DROP VIEW IF EXISTS `view_evaluar_postulante`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER  VIEW `view_evaluar_postulante` AS SELECT
det.IDdetalle_postulacion,
det.IDconvocatoria,
d.IDCAS,
d.FASE,
d.COD_CONV,
d.NUM_CAS as CAS,
d.DESC_CAS as asuntoContrato,
d.COD_VERIF,
d.FEC_NAC,
d.NOMBRES,
d.DNI as dni,
d.SEXO as sexo,
d.DIRECCION as direccion,
d.AP_PATERNO,
d.AP_MATERNO,
CONCAT(d.AP_PATERNO, ' ', d.AP_MATERNO, ' ',d.NOMBRES) As nombre_completo,
d.TELEFONO,
d.CELULAR as celular,
d.CORREO as email,
d.ARCHIVO,
d.PREG_1,
d.PREG_2,
d.DEC_JUR,
d.REGISTRADO_POR_ID,
d.REGISTRADO_POR,
d.FEC_REGISTRO,
d.RADIO_A1,
d.RADIO_A2,
d.RADIO_A3,
d.RADIO_A4,
d.RADIO_A5,
d.RADIO_A6,
d.RADIO_A7,
d.REL_PARENT,
d.REL_APELLIDO,
d.REL_NOMBRE,
d.REL_TRABAJO,
d.FEC_POSTULACION,
d.NOT_CORREO,
d.NOT_CELULAR,
d.NUM_FOLIO,
d.NIV_EDUCA,
d.GRAD_ACA,
d.NOM_CARRERA,
d.CENT_ESTUDIO,
d.desde_academico,
d.hasta_academico,
d.EMPRESA,
d.CARGO,
d.SECTOR,
d.AÑO,
d.MES,
d.DIA,
d.NOM_CURSO,
d.TIP_CURSO,
d.INSTITUCION,
d.desde_capa,
d.hasta_capa,
d.TOTHORAS,
det.evaluacion_exp,
det.examen_tecnico,
det.resultado_final
FROM detalle_postulacion det
JOIN postulante p ON p.IDpostulante = det.IDpostulante 
JOIN view_reporte_general d ON d.COD_CONV = det.IDconvocatoria ;

-- ----------------------------
-- View structure for view_evaluar_postulante_demo
-- ----------------------------
DROP VIEW IF EXISTS `view_evaluar_postulante_demo`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER  VIEW `view_evaluar_postulante_demo` AS SELECT
det.IDdetalle_postulacion,
det.IDconvocatoria,
c.CAS,
c.asuntoContrato,
p.nombre,
p.apaterno,
p.amaterno,
CONCAT(p.apaterno, ' ', p.amaterno, ' ',p.nombre) As nombre_completo,
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
JOIN postulante p ON p.IDpostulante = det.IDpostulante 
JOIN view_convocatorias c ON c.IDconvocatoria = det.IDconvocatoria ;

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
-- View structure for view_miembro_comite
-- ----------------------------
DROP VIEW IF EXISTS `view_miembro_comite`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost`  VIEW `view_miembro_comite` AS SELECT
	`miembro_comite`.`miembro_comiteID` AS `miembro_comiteID`,
	`miembro_comite`.`nombres` AS `nombres`,
	`miembro_comite`.`cargo` AS `cargo`,
	`miembro_comite`.`archivo` AS `archivo`,
	`miembro_comite`.`condicion` AS `estado`
FROM
	`miembro_comite` ;

-- ----------------------------
-- View structure for view_postulaciones
-- ----------------------------
DROP VIEW IF EXISTS `view_postulaciones`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER  VIEW `view_postulaciones` AS SELECT
det.IDdetalle_postulacion,
det.IDconvocatoria,
det.IDpostulante,
con.numero,
p.documento,
CONCAT(p.apaterno,' ' ,p.amaterno, ', ', p.nombre) AS nombres,
p.archivo,
det.evaluacion_exp,
det.examen_tecnico,
det.entrevista_personal,
det.resultado_final,
det.fecha_reg, (SELECT convocatoriaID from detalle_evaluacion_curricular
where convocatoriaID = convocatoriaID ) as condicion_uno,
(SELECT convocatoriaID from detalle_evaluacion_tecnico
where convocatoriaID = convocatoriaID ) as condicion_dos,
(SELECT convocatoriaID from detalle_evaluacion_entrevista_final
where convocatoriaID = convocatoriaID ) as condicion_tres
FROM detalle_postulacion det
JOIN postulante p
ON p.IDpostulante = det.IDpostulante 
JOIN convocatoria con ON con.IDconvocatoria = det.IDconvocatoria ;

-- ----------------------------
-- View structure for view_reporte_dat_pers
-- ----------------------------
DROP VIEW IF EXISTS `view_reporte_dat_pers`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER  VIEW `view_reporte_dat_pers` AS SELECT
ID_DETCAS,
det.ID_CAS as IDCAS,
FASE,
COD_CONV,
NUM_CAS as CAS,
DESC_CAS as asuntoContrato,
COD_VERIF,
FEC_NAC,
NOMBRES,
DNI as dni,
SEXO as sexo,
DIRECCION as direccion,
AP_PATERNO,
AP_MATERNO,
CONCAT(AP_PATERNO, ' ', AP_MATERNO, ' ',NOMBRES) As nombre_completo,
TELEFONO,
CELULAR as celular,
CORREO as email,
ARCHIVO,
PREG_1,
PREG_2,
DEC_JUR,
REGISTRADO_POR_ID,
REGISTRADO_POR,
FEC_REGISTRO,
RADIO_A1,
RADIO_A2,
RADIO_A3,
RADIO_A4,
RADIO_A5,
RADIO_A6,
RADIO_A7,
REL_PARENT,
REL_APELLIDO,
REL_NOMBRE,
REL_TRABAJO,
FEC_POSTULACION,
NOT_CORREO,
NOT_CELULAR,
NUM_FOLIO
FROM
	aux_det_virtual det
JOIN aux_reg_virtual p ON p.ID_CAS = det.ID_CAS ;

-- ----------------------------
-- View structure for view_reporte_det_form
-- ----------------------------
DROP VIEW IF EXISTS `view_reporte_det_form`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER  VIEW `view_reporte_det_form` AS select * from form_academica where ID_CAS=ID_CAS
UNION
select * from capacitaciones where ID_CAS=ID_CAS
UNION
select * from laboral where ID_CAS=ID_CAS ;

-- ----------------------------
-- View structure for view_reporte_general
-- ----------------------------
DROP VIEW IF EXISTS `view_reporte_general`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER  VIEW `view_reporte_general` AS SELECT
ID_DETCAS,
det.ID_CAS as IDCAS,
FASE,
COD_CONV,
NUM_CAS,
DESC_CAS,
COD_VERIF,
FEC_NAC,
NOMBRES,
DNI,
SEXO,
DIRECCION,
AP_PATERNO,
AP_MATERNO,
TELEFONO,
CELULAR,
CORREO,
ARCHIVO,
PREG_1,
PREG_2,
DEC_JUR,
REGISTRADO_POR_ID,
REGISTRADO_POR,
FEC_REGISTRO,
RADIO_A1,
RADIO_A2,
RADIO_A3,
RADIO_A4,
RADIO_A5,
RADIO_A6,
RADIO_A7,
REL_PARENT,
REL_APELLIDO,
REL_NOMBRE,
REL_TRABAJO,
FEC_POSTULACION,
NOT_CORREO,
NOT_CELULAR,
NUM_FOLIO,
NIV_EDUCA,
GRAD_ACA,
NOM_CARRERA,
CENT_ESTUDIO,
f.DESDE as desde_academico,
f.HASTA as hasta_academico,
EMPRESA,
CARGO,
SECTOR,
AÑO,
MES,
DIA,
NOM_CURSO,
TIP_CURSO,
INSTITUCION,
c.DESDE as desde_capa,
c.HASTA as hasta_capa,
TOTHORAS
FROM
	aux_det_virtual det
JOIN aux_reg_virtual p ON p.ID_CAS = det.ID_CAS
JOIN laboral l ON l.ID_CAS = det.ID_CAS
JOIN form_academica f ON f.ID_CAS = det.ID_CAS
JOIN capacitaciones c ON c.ID_CAS = det.ID_CAS ;

-- ----------------------------
-- View structure for view_usuarios
-- ----------------------------
DROP VIEW IF EXISTS `view_usuarios`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER  VIEW `view_usuarios` AS select `usuario`.`usuario` AS `usuario`,`usuario`.`nombres` AS `nombres`,`usuario`.`estado` AS `estado` from `usuario` ;

-- ----------------------------
-- Procedure structure for AUX_USP_DERIVAR_F1
-- ----------------------------
DROP PROCEDURE IF EXISTS `AUX_USP_DERIVAR_F1`;
DELIMITER ;;
CREATE DEFINER=`app_docente`@`%` PROCEDURE `AUX_USP_DERIVAR_F1`(IN p_input_ID INT, IN p_input_nombre_derivadorID INT, IN p_input_nombre_derivador VARCHAR(100), IN p_cbx_especialistaID INT, IN p_cbx_especialista VARCHAR(100))
BEGIN
/*Actualización de derivacion*/

UPDATE AUX_DET_VIRTUAL set 
ESTADO_DOCUMENTO = 'DERIVADO' ,

REGISTRADO_POR_ID = p_input_nombre_derivadorID , 
REGISTRADO_POR = p_input_nombre_derivador , 
FEC_REGISTRO = NOW(),
DERIVADO_AID = p_cbx_especialistaID,
DERIVADO_A = p_cbx_especialista,
FEC_DERIVADO = NOW()

WHERE ID_REGAUX = p_input_ID;

Select p_input_ID as ID;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for AUX_USP_DERIVAR_F1_ESPECIALISTA
-- ----------------------------
DROP PROCEDURE IF EXISTS `AUX_USP_DERIVAR_F1_ESPECIALISTA`;
DELIMITER ;;
CREATE DEFINER=`app_docente`@`%` PROCEDURE `AUX_USP_DERIVAR_F1_ESPECIALISTA`(IN p_input_ID INT, IN p_estado_docente VARCHAR(10), IN p_input_observacion TEXT, IN p_cbx_fut VARCHAR(2), IN p_cbx_dni VARCHAR(2), IN p_cbx_titulo VARCHAR(2), IN p_input_especialista_asignadoID INT, IN p_input_especialista_asignado VARCHAR(100), IN p_obs_fut TEXT, IN p_obs_dni TEXT, IN p_obs_titulo TEXT,  IN p_input_num_folio VARCHAR(3))
BEGIN
/*Actualización de derivacion*/

UPDATE AUX_DET_VIRTUAL set 
ESTADO_DOCENTE = p_estado_docente,
OBSERVACIONES = p_input_observacion,
ANEX_FUT = p_cbx_fut,
ANEX_DNI = p_cbx_dni,
ANEX_TTULO = p_cbx_titulo,
MODIFICADO_POR_ID = p_input_especialista_asignadoID,
MODIFICADO_POR = p_input_especialista_asignado,
FEC_MODIFICACION = NOW(),

OBS_FUT = p_obs_fut,
OBS_DNI = p_obs_dni,
OBS_TITULO = p_obs_titulo,
NUM_FOLIO = p_input_num_folio

WHERE ID_REGAUX = p_input_ID;

Select p_input_ID as ID;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for AUX_USP_VIRTUAL
-- ----------------------------
DROP PROCEDURE IF EXISTS `AUX_USP_VIRTUAL`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `AUX_USP_VIRTUAL`(f_FASE varchar(20),
  f_COD_CONV int(5),
  f_NUM_CAS varchar(100),
  f_DESC_CAS varchar(100),
  f_DNI varchar(9),
  f_COD_VERIF int(2),
  f_FEC_NAC date,
  f_DIRECCION varchar(255),
  f_AP_PATERNO varchar(50),
  f_AP_MATERNO varchar(50),
  f_NOMBRES varchar(100),
  f_SEXO varchar(10),
  f_TELEFONO int(9),
  f_CELULAR int(9),
  f_CORREO varchar(100),
  f_ARCHIVO varchar(200),
  f_PREG_1 varchar(2),
  f_PREG_2 varchar(2),
  f_DEC_JUR varchar(2),
  f_fec_postulacion datetime,
  f_not_correo varchar(5), 
  f_not_celular varchar(5),
  /*ANEXOS*/
  f_RADIO_A1 varchar(2),
  f_RADIO_A2 varchar(12),
  f_RADIO_A3 varchar(2),
  f_RADIO_A4 varchar(2),
  f_RADIO_A5 varchar(2),
  f_RADIO_A6 varchar(2),
  f_REL_PARENT varchar(20),
  f_REL_APELLIDO varchar(20),
  f_REL_NOMBRE varchar(20),
  f_REL_TRABAJO varchar(20))
begin
	DECLARE vID INT;
INSERT INTO AUX_REG_VIRTUAL(
	FASE,
  COD_CONV,
  NUM_CAS,
  DESC_CAS,
  COD_VERIF,
  FEC_NAC,
  NOMBRES,
  DNI,
  SEXO,
  DIRECCION,
  AP_PATERNO,
  AP_MATERNO,
  TELEFONO,
  CELULAR,
  CORREO,
  ARCHIVO)
VALUES(
f_FASE,
f_COD_CONV,
f_NUM_CAS,
f_DESC_CAS,
f_COD_VERIF,
f_FEC_NAC,
f_NOMBRES,
f_DNI,
f_SEXO,
f_DIRECCION,
f_AP_PATERNO,
f_AP_MATERNO,
f_TELEFONO,
f_CELULAR,
f_CORREO,
f_ARCHIVO);

SET vID = (SELECT LAST_INSERT_ID());

INSERT INTO AUX_DET_VIRTUAL(
ID_CAS,
RADIO_A1,
RADIO_A2,
RADIO_A3,
RADIO_A4,
RADIO_A5,
RADIO_A6,
REL_PARENT,
REL_APELLIDO,
REL_NOMBRE,
REL_TRABAJO,
  ESTADO_DOCUMENTO,
  FEC_POSTULACION)
VALUES(vID, f_RADIO_A1, f_RADIO_A2, f_RADIO_A3, f_RADIO_A4, f_RADIO_A5, f_RADIO_A6, f_REL_PARENT, f_REL_APELLIDO, f_REL_NOMBRE, f_REL_TRABAJO, 'EN PROCESO', now());

SET vID = (SELECT LAST_INSERT_ID());

INSERT INTO postulante (
    IDpostulante,
    documento, nombre, apaterno,
    amaterno, sexo, celular, email, direccion, archivo)  
VALUES (
vID, f_DNI, f_NOMBRES, f_AP_PATERNO, f_AP_MATERNO, f_SEXO, f_CELULAR, f_CORREO, f_DIRECCION, f_ARCHIVO);

SET vID = (SELECT LAST_INSERT_ID());

INSERT INTO detalle_postulacion (
    IDpostulante, IDconvocatoria, fecha_reg, estado)  
VALUES (
vID, f_COD_CONV, now(), '1');

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for AUX_USP_VIRTUAL_copy
-- ----------------------------
DROP PROCEDURE IF EXISTS `AUX_USP_VIRTUAL_copy`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `AUX_USP_VIRTUAL_copy`(f_FASE varchar(20),
  f_COD_CONV int(5),
  f_NUM_CAS varchar(100),
  f_DESC_CAS varchar(100),
  f_COD_VERIF int(2),
  f_FEC_NAC date,
  f_NOMBRES varchar(100),
  f_DNI varchar(9),
  f_SEXO varchar(10),
  f_DIRECCION varchar(255),
  f_AP_PATERNO varchar(50),
  f_AP_MATERNO varchar(50),
  f_TELEFONO int(9),
  f_CELULAR int(9),
  f_CORREO varchar(100),
  /*
  f_RADIO_A1 varchar(2),
  f_RADIO_A2 varchar(12),
  f_RADIO_A3 varchar(2),
  f_RADIO_A4 varchar(2),
  f_RADIO_A5 varchar(2),
  f_RADIO_A6 varchar(2),
  f_RADIO_A7 varchar(2),
  f_REL_PARENT varchar(20),
  f_REL_APELLIDO varchar(20),
  f_REL_NOMBRE varchar(20),
  f_REL_TRABAJO varchar(20),
  */
    f_PREG_1 varchar(2),
  f_PREG_2 varchar(2),
  f_DEC_JUR varchar(2),
  f_ARCHIVO varchar(200),
  f_fec_postulacion datetime,
  f_not_correo varchar(5), 
  f_not_celular varchar(5))
begin
	DECLARE vID INT;
INSERT INTO AUX_REG_VIRTUAL(
	FASE,
  COD_CONV,
  NUM_CAS,
  DESC_CAS,
  COD_VERIF,
  FEC_NAC,
  NOMBRES,
  DNI,
  SEXO,
  DIRECCION,
  AP_PATERNO,
  AP_MATERNO,
  TELEFONO,
  CELULAR,
  CORREO,
  ARCHIVO)
VALUES(
f_FASE,
f_COD_CONV,
f_NUM_CAS,
f_DESC_CAS,
f_COD_VERIF,
f_FEC_NAC,
f_NOMBRES,
f_DNI,
f_SEXO,
f_DIRECCION,
f_AP_PATERNO,
f_AP_MATERNO,
f_TELEFONO,
f_CELULAR,
f_CORREO,
f_ARCHIVO);

SET vID = (SELECT LAST_INSERT_ID());

INSERT INTO AUX_DET_VIRTUAL(
ID_CAS,
/*
RADIO_A1,
RADIO_A2,
RADIO_A3,
RADIO_A4,
RADIO_A5,
RADIO_A6,
RADIO_A7,
REL_PARENT,
REL_APELLIDO,
REL_NOMBRE,
REL_TRABAJO,
*/
  ESTADO_DOCUMENTO,
  FEC_POSTULACION)
 /* VALUES(vID, f_RADIO_A1, f_RADIO_A2, f_RADIO_A3, f_RADIO_A4, f_RADIO_A5, f_RADIO_A6, f_RADIO_A7, f_REL_PARENT, f_REL_APELLIDO, f_REL_NOMBRE, f_REL_TRABAJO, 'EN PROCESO', now()); */

VALUES(vID, 'EN PROCESO', now());

SET vID = (SELECT LAST_INSERT_ID());

INSERT INTO postulante (
    IDpostulante,
    documento, nombre, apaterno,
    amaterno, sexo, celular, email, direccion, archivo)  
VALUES (
vID, f_DNI, f_NOMBRES, f_AP_PATERNO, f_AP_MATERNO, f_SEXO, f_CELULAR, f_CORREO, f_DIRECCION, f_ARCHIVO);

SET vID = (SELECT LAST_INSERT_ID());

INSERT INTO detalle_postulacion (
    IDpostulante, IDconvocatoria, fecha_reg, estado)  
VALUES (
vID, f_COD_CONV, now(), '1');

END
;;
DELIMITER ;

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
-- Procedure structure for USP_ACTUALIZAR_EVALUACION_CURRICULAR
-- ----------------------------
DROP PROCEDURE IF EXISTS `USP_ACTUALIZAR_EVALUACION_CURRICULAR`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `USP_ACTUALIZAR_EVALUACION_CURRICULAR`(IN p_dni_docente VARCHAR(9), IN a_1 VARCHAR(10), IN a_2 VARCHAR(10), IN a_3 VARCHAR(10),  IN suma_a VARCHAR(10), IN b_1 VARCHAR(10), IN b_2 VARCHAR(10), IN b_3 VARCHAR(10), IN suma_b VARCHAR(10), IN c_1 VARCHAR(10), IN c_2 VARCHAR(10), IN c_3 VARCHAR(10), IN c_4 VARCHAR(10), IN c_5 VARCHAR(10), IN c_6 VARCHAR(10), IN suma_c VARCHAR(10), IN p_input_suma_final VARCHAR(10), IN p_input_obse TEXT, IN p_valor_condicion VARCHAR(15), IN p_input_codigo_convocatoria INT, IN p_IDpostulante INT, IN p_usuario_modID INT, IN p_nombre_usuario VARCHAR(120))
BEGIN
DECLARE p_dni_postulante VARCHAR(9);

	SET p_dni_postulante = ( SELECT documento
	from postulante
	where IDpostulante = p_IDpostulante );

	UPDATE detalle_evaluacion_curricular

	inner join det_fa_exped dfa
	on dfa.det_fa_expedID = detalle_evaluacion_curricular.FAID
	inner join fa_exped
	on dfa.FAID = fa_exped.FAID

	inner join det_el_exped del
	on del.det_el_expedID = detalle_evaluacion_curricular.ELID
	inner join el_exped
	on del.ELID = el_exped.ELID

	inner join det_exp_exped dexp
	on dexp.det_exp_expedID = detalle_evaluacion_curricular.EXPID
	inner join exp_exped
	on dexp.EXPID = exp_exped.EXPID

	SET
	dfa.a1 = `a_1`,
	dfa.a2 = `a_2`,
	dfa.a3 = `a_3`,
	fa_exped.sum = `suma_a`,
	
	del.b1 = `b_1`,
	del.b2 = `b_2`,
	del.b3 = `b_3`,
	el_exped.sum = `suma_b`,

	dexp.c1 = `c_1`,
	dexp.c2 = `c_2`,
	dexp.c3 = `c_3`,
	dexp.c4 = `c_4`,
	dexp.c5 = `c_5`,
	dexp.c6 = `c_6`,
	exp_exped.sum = `suma_c`,

	detalle_evaluacion_curricular.suma_total = `p_input_suma_final`,
  detalle_evaluacion_curricular.obs = `p_input_obse`,
  detalle_evaluacion_curricular.condicion = `p_valor_condicion`,
  detalle_evaluacion_curricular.id_usuario_mod = p_usuario_modID,
  detalle_evaluacion_curricular.mod_por = p_nombre_usuario,
  detalle_evaluacion_curricular.fecha_mod = now()

	/*detalle_evaluacion_curricular.mod_ID = `mod_ID`,
  detalle_evaluacion_curricular.mod_por = p_usuarioID,
	detalle_evaluacion_curricular.fecha_mod = NOW()*/

	WHERE detalle_evaluacion_curricular.convocatoriaID = `p_input_codigo_convocatoria` 
	AND detalle_evaluacion_curricular.dni = p_dni_postulante;

	UPDATE detalle_postulacion
	SET evaluacion_exp = p_input_suma_final 
	WHERE IDpostulante = p_IDpostulante AND IDconvocatoria = p_input_codigo_convocatoria;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for USP_ACTUALIZAR_EVALUACION_ENTREVISTA_FINAL
-- ----------------------------
DROP PROCEDURE IF EXISTS `USP_ACTUALIZAR_EVALUACION_ENTREVISTA_FINAL`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `USP_ACTUALIZAR_EVALUACION_ENTREVISTA_FINAL`(IN p_dni_docente VARCHAR(9), IN a_1 VARCHAR(10), IN a_2 VARCHAR(10), IN a_3 VARCHAR(10), IN a_4 VARCHAR(10), IN suma_a VARCHAR(10), IN b_1 VARCHAR(10), IN b_2 VARCHAR(10), IN b_3 VARCHAR(10), IN suma_b VARCHAR(10), IN c_1 VARCHAR(10), IN c_2 VARCHAR(10), IN c_3 VARCHAR(10), IN suma_c VARCHAR(10), IN p_input_suma_final VARCHAR(10), IN p_input_obse TEXT, IN p_valor_condicion VARCHAR(15), IN p_input_codigo_convocatoria INT, IN p_IDpostulante INT , IN p_usuario_modID INT, IN p_nombre_usuario VARCHAR(120))
BEGIN
DECLARE p_dni_postulante VARCHAR(9);

	SET p_dni_postulante = ( SELECT documento
	from postulante
	where IDpostulante = p_IDpostulante );

	UPDATE detalle_evaluacion_entrevista_final

	inner join tres_det_apuesto dap
	on dap.tres_det_apuesto_ID = detalle_evaluacion_entrevista_final.APID
	inner join adaptacion_puesto
	on dap.APID = adaptacion_puesto.APID

	inner join tres_det_aarea darea
	on darea.tres_det_aareaID = detalle_evaluacion_entrevista_final.AAID
	inner join adaptacion_area
	on darea.AAID = adaptacion_area.AAID

	inner join tres_det_aentidad dent
	on dent.tres_det_aentidadID = detalle_evaluacion_entrevista_final.AEID
	inner join adaptacion_entidad
	on dent.AEID = adaptacion_entidad.AEID

	SET
	dap.a1 = `a_1`,
	dap.a2 = `a_2`,
	dap.a3 = `a_3`,
  dap.a4 = `a_4`,
	adaptacion_puesto.sum = `suma_a`,
	
	darea.b1 = `b_1`,
	darea.b2 = `b_2`,
	darea.b3 = `b_3`,
	adaptacion_area.sum = `suma_b`,

	dent.c1 = `c_1`,
	dent.c2 = `c_2`,
	dent.c3 = `c_3`,
	adaptacion_entidad.sum = `suma_c`,

	detalle_evaluacion_entrevista_final.suma_total = `p_input_suma_final`,
  detalle_evaluacion_entrevista_final.obs = `p_input_obse`,
  detalle_evaluacion_entrevista_final.condicion = `p_valor_condicion`,
	detalle_evaluacion_entrevista_final.id_usuario_mod = p_usuario_modID,
  detalle_evaluacion_entrevista_final.mod_por = p_nombre_usuario,
  detalle_evaluacion_entrevista_final.fecha_mod = now()

	WHERE detalle_evaluacion_entrevista_final.convocatoriaID = `p_input_codigo_convocatoria` 
	AND detalle_evaluacion_entrevista_final.dni = p_dni_postulante;

	UPDATE detalle_postulacion
	SET entrevista_personal = p_input_suma_final 
	WHERE IDpostulante = p_IDpostulante AND IDconvocatoria = p_input_codigo_convocatoria;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for USP_ACTUALIZAR_MIEMBRO
-- ----------------------------
DROP PROCEDURE IF EXISTS `USP_ACTUALIZAR_MIEMBRO`;
DELIMITER ;;
CREATE DEFINER=`app_docente`@`%` PROCEDURE `USP_ACTUALIZAR_MIEMBRO`(in p_miembroID int,in p_nombres VARCHAR(150),in p_cargo VARCHAR(150),in p_condicion tinyint(1),in p_firmaActa tinyint(1),in p_firmaActiva tinyint(1))
BEGIN
UPDATE miembro_comite set 
nombres = p_nombres,
cargo = p_cargo,
condicion = p_condicion,
firmaActa = p_firmaActa,
firmaActiva = p_firmaActiva
where miembro_comiteID = p_miembroID;
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
-- Procedure structure for USP_INSERTAR_MIEMBRO
-- ----------------------------
DROP PROCEDURE IF EXISTS `USP_INSERTAR_MIEMBRO`;
DELIMITER ;;
CREATE DEFINER=`app_docente`@`%` PROCEDURE `USP_INSERTAR_MIEMBRO`(in p_nombres VARCHAR(150), in p_cargo VARCHAR(150), p_archivo TEXT, in p_condicion tinyint(1), in p_firmaActa tinyint(1), p_firma blob, in p_firmaActiva tinyint(1))
BEGIN
INSERT INTO miembro_comite(comiteID, nombres, cargo, archivo, condicion, firmaActa, firma, firmaActiva)
VALUES ( (Select comiteID FROM comite where fecha = YEAR(CURDATE()) ),
p_nombres, p_cargo, p_archivo, p_condicion, p_firmaActa, p_firma, p_firmaActiva);
Select LAST_INSERT_ID() as ID;
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
-- Procedure structure for USP_SUMAR_RESULTADO_FINAL
-- ----------------------------
DROP PROCEDURE IF EXISTS `USP_SUMAR_RESULTADO_FINAL`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `USP_SUMAR_RESULTADO_FINAL`(IN p_IDpostulante INT, IN p_IDconvocatoria INT)
BEGIN
DECLARE p_evaluacion_curricular INT(3);
DECLARE p_evaluacion_tecnico INT(3);
DECLARE p_entrevista_final INT(3);
DECLARE p_valor_suma INT(3);

set p_evaluacion_curricular = ( SELECT 
ifnull( evaluacion_exp, 0 )
from detalle_postulacion
where IDpostulante = p_IDpostulante AND IDconvocatoria = p_IDconvocatoria );

set p_evaluacion_tecnico = ( SELECT 
ifnull( examen_tecnico, 0 )
from detalle_postulacion
where IDpostulante = p_IDpostulante AND IDconvocatoria = p_IDconvocatoria );

set p_entrevista_final = ( SELECT 
ifnull( entrevista_personal, 0 )
from detalle_postulacion
where IDpostulante = p_IDpostulante AND IDconvocatoria = p_IDconvocatoria );

set p_valor_suma = ( SELECT SUM( p_evaluacion_curricular + p_evaluacion_tecnico + p_entrevista_final ) );

UPDATE detalle_postulacion
SET resultado_final = p_valor_suma 
WHERE IDpostulante = p_IDpostulante AND IDconvocatoria = p_IDconvocatoria;

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
    Select Password,usuario,nombres, usuarioID from usuario where usuario = p_usuario and estado = 1;
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
