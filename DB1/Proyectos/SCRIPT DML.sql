-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: localhost    Database: solicitud_empleo
-- ------------------------------------------------------
-- Server version	8.0.40

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `tbl_certificado`
--

DROP TABLE IF EXISTS `tbl_certificado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_certificado` (
  `IDCertificado` int NOT NULL,
  `TipoCertificado` varchar(45) DEFAULT NULL,
  `IDEducacion` int NOT NULL,
  PRIMARY KEY (`IDCertificado`),
  KEY `fk_TBL_Certificado_TBL_Educacion1_idx` (`IDEducacion`),
  CONSTRAINT `fk_TBL_Certificado_TBL_Educacion1` FOREIGN KEY (`IDEducacion`) REFERENCES `tbl_educacion` (`IDEducacion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_certificado`
--

LOCK TABLES `tbl_certificado` WRITE;
/*!40000 ALTER TABLE `tbl_certificado` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_certificado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_contacto`
--

DROP TABLE IF EXISTS `tbl_contacto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_contacto` (
  `IDContacto` int NOT NULL,
  `Telefono` varchar(15) DEFAULT NULL,
  `Celular` varchar(15) DEFAULT NULL,
  `IDPersona` int NOT NULL,
  PRIMARY KEY (`IDContacto`),
  KEY `fk_tbl_contacto_TBL_Persona1_idx` (`IDPersona`),
  CONSTRAINT `fk_tbl_contacto_TBL_Persona1` FOREIGN KEY (`IDPersona`) REFERENCES `tbl_persona` (`IDPersona`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_contacto`
--

LOCK TABLES `tbl_contacto` WRITE;
/*!40000 ALTER TABLE `tbl_contacto` DISABLE KEYS */;
INSERT INTO `tbl_contacto` VALUES (1,'´22456328´','´96952325´',1),(2,'´33562432´','´98742125´',2),(3,'´33587213´','´94959632´',3);
/*!40000 ALTER TABLE `tbl_contacto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_dependientes`
--

DROP TABLE IF EXISTS `tbl_dependientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_dependientes` (
  `IDDependientes` int NOT NULL,
  `NumeroTelefono` varchar(45) DEFAULT NULL,
  `IDPersona` int NOT NULL,
  PRIMARY KEY (`IDDependientes`),
  KEY `fk_tbl_dependientes_TBL_Persona1_idx` (`IDPersona`),
  CONSTRAINT `fk_tbl_dependientes_TBL_Persona1` FOREIGN KEY (`IDPersona`) REFERENCES `tbl_persona` (`IDPersona`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_dependientes`
--

LOCK TABLES `tbl_dependientes` WRITE;
/*!40000 ALTER TABLE `tbl_dependientes` DISABLE KEYS */;
INSERT INTO `tbl_dependientes` VALUES (1,'´23654125´',1),(2,'´35641278´',2),(3,'´65843674´',3);
/*!40000 ALTER TABLE `tbl_dependientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_documentos`
--

DROP TABLE IF EXISTS `tbl_documentos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_documentos` (
  `IDDocumento` int NOT NULL,
  `NumeroCurp` varchar(45) DEFAULT NULL,
  `Pasaporte` varchar(45) DEFAULT NULL,
  `IDPersona` int NOT NULL,
  PRIMARY KEY (`IDDocumento`),
  KEY `fk_tbl_documentos_TBL_Persona1_idx` (`IDPersona`),
  CONSTRAINT `fk_tbl_documentos_TBL_Persona1` FOREIGN KEY (`IDPersona`) REFERENCES `tbl_persona` (`IDPersona`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_documentos`
--

LOCK TABLES `tbl_documentos` WRITE;
/*!40000 ALTER TABLE `tbl_documentos` DISABLE KEYS */;
INSERT INTO `tbl_documentos` VALUES (1,'23','658982',1),(2,'25','528656',2),(3,'45','254556',3);
/*!40000 ALTER TABLE `tbl_documentos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_educacion`
--

DROP TABLE IF EXISTS `tbl_educacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_educacion` (
  `IDEducacion` int NOT NULL,
  `NombreInstituto` varchar(100) DEFAULT NULL,
  `DomicilioInstituto` varchar(250) DEFAULT NULL,
  `FechaInicio` date DEFAULT NULL,
  `FechaCierre` date DEFAULT NULL,
  `IDPersona` int NOT NULL,
  PRIMARY KEY (`IDEducacion`),
  KEY `fk_tbl_educacion_TBL_Persona1_idx` (`IDPersona`),
  CONSTRAINT `fk_tbl_educacion_TBL_Persona1` FOREIGN KEY (`IDPersona`) REFERENCES `tbl_persona` (`IDPersona`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_educacion`
--

LOCK TABLES `tbl_educacion` WRITE;
/*!40000 ALTER TABLE `tbl_educacion` DISABLE KEYS */;
INSERT INTO `tbl_educacion` VALUES (1,'´Manuel Sevilla´','´Tegucigalpa´','2022-09-12','2023-08-13',1),(2,'´Jesus Morazan´','´Tegucigalpa´','2020-03-14','2024-03-12',2),(3,'´Juan Manuel Palacios´','´Tela´','2009-06-21','2012-06-24',3);
/*!40000 ALTER TABLE `tbl_educacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_estadocivil`
--

DROP TABLE IF EXISTS `tbl_estadocivil`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_estadocivil` (
  `IDEstadoCivil` int NOT NULL,
  `IDPersona` int NOT NULL,
  PRIMARY KEY (`IDEstadoCivil`),
  KEY `fk_tbl_estadocivil_TBL_Persona1_idx` (`IDPersona`),
  CONSTRAINT `fk_tbl_estadocivil_TBL_Persona1` FOREIGN KEY (`IDPersona`) REFERENCES `tbl_persona` (`IDPersona`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_estadocivil`
--

LOCK TABLES `tbl_estadocivil` WRITE;
/*!40000 ALTER TABLE `tbl_estadocivil` DISABLE KEYS */;
INSERT INTO `tbl_estadocivil` VALUES (1,1),(2,2),(3,3);
/*!40000 ALTER TABLE `tbl_estadocivil` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_familiares`
--

DROP TABLE IF EXISTS `tbl_familiares`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_familiares` (
  `IDFamiliares` int NOT NULL,
  `Nombre` varchar(45) DEFAULT NULL,
  `Apellido` varchar(45) DEFAULT NULL,
  `Estado` varchar(45) DEFAULT NULL,
  `Domicilio` varchar(250) DEFAULT NULL,
  `Ocupacion` varchar(45) DEFAULT NULL,
  `IDPersona` int NOT NULL,
  PRIMARY KEY (`IDFamiliares`),
  KEY `fk_tbl_familiar_TBL_Persona1_idx` (`IDPersona`),
  CONSTRAINT `fk_tbl_familiar_TBL_Persona1` FOREIGN KEY (`IDPersona`) REFERENCES `tbl_persona` (`IDPersona`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_familiares`
--

LOCK TABLES `tbl_familiares` WRITE;
/*!40000 ALTER TABLE `tbl_familiares` DISABLE KEYS */;
INSERT INTO `tbl_familiares` VALUES (1,'´Juana´','´Perez´','´vivo´','´SPS´','Carpintero',1),(2,'´Ramon´','´Rodriguez´','´vivo´','´Tegucigalpa´','´abogado´',2),(3,'´Eva´','´Alfaro´','´Fallecido´','´La Ceiba´','´Enfermera´',3);
/*!40000 ALTER TABLE `tbl_familiares` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_habitos`
--

DROP TABLE IF EXISTS `tbl_habitos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_habitos` (
  `IDHabitos` int NOT NULL,
  `Pasatiempo` varchar(100) DEFAULT NULL,
  `Deporte` varchar(45) DEFAULT NULL,
  `IDPersona` int NOT NULL,
  PRIMARY KEY (`IDHabitos`),
  KEY `fk_tbl_Habitos_TBL_Persona1_idx` (`IDPersona`),
  CONSTRAINT `fk_tbl_Habitos_TBL_Persona1` FOREIGN KEY (`IDPersona`) REFERENCES `tbl_persona` (`IDPersona`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_habitos`
--

LOCK TABLES `tbl_habitos` WRITE;
/*!40000 ALTER TABLE `tbl_habitos` DISABLE KEYS */;
INSERT INTO `tbl_habitos` VALUES (1,'´dormir´','´futbol´',1),(2,'´comer´','´golf´',2),(3,'´cantar´','´Natacion´',3);
/*!40000 ALTER TABLE `tbl_habitos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_licencia`
--

DROP TABLE IF EXISTS `tbl_licencia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_licencia` (
  `IDLicencia` int NOT NULL,
  `TipoLicencia` varchar(45) DEFAULT NULL,
  `NumeroLicencia` varchar(45) DEFAULT NULL,
  `IDDocumentos` int NOT NULL,
  PRIMARY KEY (`IDLicencia`),
  KEY `fk_tbl_licencia_tbl_documento1_idx` (`IDDocumentos`),
  CONSTRAINT `fk_tbl_licencia_tbl_documento1` FOREIGN KEY (`IDDocumentos`) REFERENCES `tbl_documentos` (`IDDocumento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_licencia`
--

LOCK TABLES `tbl_licencia` WRITE;
/*!40000 ALTER TABLE `tbl_licencia` DISABLE KEYS */;
INSERT INTO `tbl_licencia` VALUES (1,'´liviana´','´84515644´',1),(2,'´pesada´','´41454212´',2),(3,'´moto´','´56235656´',3);
/*!40000 ALTER TABLE `tbl_licencia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_nacionalidad`
--

DROP TABLE IF EXISTS `tbl_nacionalidad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_nacionalidad` (
  `IDNacionalidad` int NOT NULL,
  `IDPersona` int NOT NULL,
  PRIMARY KEY (`IDNacionalidad`),
  KEY `fk_tbl_nacionalidad_TBL_Persona1_idx` (`IDPersona`),
  CONSTRAINT `fk_tbl_nacionalidad_TBL_Persona1` FOREIGN KEY (`IDPersona`) REFERENCES `tbl_persona` (`IDPersona`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_nacionalidad`
--

LOCK TABLES `tbl_nacionalidad` WRITE;
/*!40000 ALTER TABLE `tbl_nacionalidad` DISABLE KEYS */;
INSERT INTO `tbl_nacionalidad` VALUES (1,1),(2,2),(3,3);
/*!40000 ALTER TABLE `tbl_nacionalidad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_persona`
--

DROP TABLE IF EXISTS `tbl_persona`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_persona` (
  `IDPersona` int NOT NULL,
  `NombreCompleto` varchar(45) DEFAULT NULL,
  `ApellidoPaterno` varchar(45) DEFAULT NULL,
  `ApellidoMaterno` varchar(45) DEFAULT NULL,
  `Domicilio` varchar(250) DEFAULT NULL,
  `Direccion` varchar(100) DEFAULT NULL,
  `Colonia` varchar(45) DEFAULT NULL,
  `CodigoPostal` varchar(45) DEFAULT NULL,
  `FechaNacimiento` date DEFAULT NULL,
  `Edad` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`IDPersona`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_persona`
--

LOCK TABLES `tbl_persona` WRITE;
/*!40000 ALTER TABLE `tbl_persona` DISABLE KEYS */;
INSERT INTO `tbl_persona` VALUES (1,'Juan','Velez','Barrios','Casa Propia','Calle Paris','Miraflores','11101','2023-12-01','24'),(2,'Mario','Martinez','Barrios','Casa alquilada','Calle España','Miramotes','11101','2007-11-11','17'),(3,'Eva','Morales','Ramirez','Casa propia','Calle Bonita','Villa Nueva','11101','2008-07-21','16');
/*!40000 ALTER TABLE `tbl_persona` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_puesto_solicitado`
--

DROP TABLE IF EXISTS `tbl_puesto_solicitado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_puesto_solicitado` (
  `IDPuestoSolicitado` int NOT NULL,
  `SueldoSolicitado` varchar(45) DEFAULT NULL,
  `IDSolicitud` int NOT NULL,
  PRIMARY KEY (`IDPuestoSolicitado`),
  KEY `fk_tbl_puesto_solicitado_tbl_solicitud1_idx` (`IDSolicitud`),
  CONSTRAINT `fk_tbl_puesto_solicitado_tbl_solicitud1` FOREIGN KEY (`IDSolicitud`) REFERENCES `tbl_solicitud` (`IDsolicitud`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_puesto_solicitado`
--

LOCK TABLES `tbl_puesto_solicitado` WRITE;
/*!40000 ALTER TABLE `tbl_puesto_solicitado` DISABLE KEYS */;
INSERT INTO `tbl_puesto_solicitado` VALUES (1,'´1000´',1),(2,'´20000´',2),(3,'´300000´',3);
/*!40000 ALTER TABLE `tbl_puesto_solicitado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_reside`
--

DROP TABLE IF EXISTS `tbl_reside`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_reside` (
  `IDReside` int NOT NULL,
  `Padres` varchar(45) DEFAULT NULL,
  `Familiares` varchar(45) DEFAULT NULL,
  `Parientes` varchar(45) DEFAULT NULL,
  `Amigos` varchar(45) DEFAULT NULL,
  `Solo` int DEFAULT NULL,
  `IDPersona` int NOT NULL,
  PRIMARY KEY (`IDReside`),
  KEY `fk_tbl_reside_TBL_Persona1_idx` (`IDPersona`),
  CONSTRAINT `fk_tbl_reside_TBL_Persona1` FOREIGN KEY (`IDPersona`) REFERENCES `tbl_persona` (`IDPersona`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_reside`
--

LOCK TABLES `tbl_reside` WRITE;
/*!40000 ALTER TABLE `tbl_reside` DISABLE KEYS */;
INSERT INTO `tbl_reside` VALUES (1,'´s´','´n´','´n´','´n´',1,1),(2,'´n´','´s´','´n´','´n´',1,2),(3,'´n´','´n´','´n´','´s´',1,3);
/*!40000 ALTER TABLE `tbl_reside` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_salud`
--

DROP TABLE IF EXISTS `tbl_salud`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_salud` (
  `IDSalud` int NOT NULL,
  `Estado` varchar(45) DEFAULT NULL,
  `EnfermedadCronica` varchar(45) DEFAULT NULL,
  `IDHabitos` int NOT NULL,
  PRIMARY KEY (`IDSalud`),
  KEY `fk_tbl_salud_tbl_Habitos1_idx` (`IDHabitos`),
  CONSTRAINT `fk_tbl_salud_tbl_Habitos1` FOREIGN KEY (`IDHabitos`) REFERENCES `tbl_habitos` (`IDHabitos`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_salud`
--

LOCK TABLES `tbl_salud` WRITE;
/*!40000 ALTER TABLE `tbl_salud` DISABLE KEYS */;
INSERT INTO `tbl_salud` VALUES (1,'´bien´','´no´',1),(2,'´mal´','´cancer´',2),(3,'´bien´','´no´',3);
/*!40000 ALTER TABLE `tbl_salud` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_sexo`
--

DROP TABLE IF EXISTS `tbl_sexo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_sexo` (
  `IDSexo` int NOT NULL,
  `Masculino` varchar(45) DEFAULT NULL,
  `Femenino` varchar(45) DEFAULT NULL,
  `IDPersona` int NOT NULL,
  PRIMARY KEY (`IDSexo`),
  KEY `fk_tbl_sexo_TBL_Persona1_idx` (`IDPersona`),
  CONSTRAINT `fk_tbl_sexo_TBL_Persona1` FOREIGN KEY (`IDPersona`) REFERENCES `tbl_persona` (`IDPersona`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_sexo`
--

LOCK TABLES `tbl_sexo` WRITE;
/*!40000 ALTER TABLE `tbl_sexo` DISABLE KEYS */;
INSERT INTO `tbl_sexo` VALUES (1,'´s´','´n´',1),(2,'´s','´n´',2),(3,'´n´','´s',3);
/*!40000 ALTER TABLE `tbl_sexo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_solicitud`
--

DROP TABLE IF EXISTS `tbl_solicitud`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_solicitud` (
  `IDsolicitud` int NOT NULL AUTO_INCREMENT,
  `TiipoSolicitud` varchar(45) DEFAULT NULL,
  `Fecha` varchar(45) DEFAULT NULL,
  `IDPersona` int NOT NULL,
  PRIMARY KEY (`IDsolicitud`),
  KEY `fk_tbl_solicitud_TBL_Persona1_idx` (`IDPersona`),
  CONSTRAINT `fk_tbl_solicitud_TBL_Persona1` FOREIGN KEY (`IDPersona`) REFERENCES `tbl_persona` (`IDPersona`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_solicitud`
--

LOCK TABLES `tbl_solicitud` WRITE;
/*!40000 ALTER TABLE `tbl_solicitud` DISABLE KEYS */;
INSERT INTO `tbl_solicitud` VALUES (1,'´empleo´','´2024/12/12´',1),(2,'´empleo´','´2024/12/12´',2),(3,'´empleo´','´2024/12/12´',3);
/*!40000 ALTER TABLE `tbl_solicitud` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'solicitud_empleo'
--

--
-- Dumping routines for database 'solicitud_empleo'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-12-07 22:22:53
