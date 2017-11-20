-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: sgtg
-- ------------------------------------------------------
-- Server version	5.7.19-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `afiliacion`
--

DROP TABLE IF EXISTS `afiliacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `afiliacion` (
  `correo` varchar(100) NOT NULL,
  `nombreProyecto` varchar(200) NOT NULL,
  `modalidad` varchar(100) NOT NULL,
  `estado` int(1) NOT NULL,
  `periodoAcademico` varchar(10) NOT NULL,
  PRIMARY KEY (`correo`),
  UNIQUE KEY `nombreProyecto_UNIQUE` (`nombreProyecto`),
  KEY `FK_Proyecto_idx` (`nombreProyecto`),
  KEY `FK_PROY_idx` (`nombreProyecto`),
  KEY `FK_PROYAFI_idx` (`nombreProyecto`),
  CONSTRAINT `FK_AFIPROY` FOREIGN KEY (`nombreProyecto`) REFERENCES `proyectos` (`nombreProy`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `afiliacion`
--

LOCK TABLES `afiliacion` WRITE;
/*!40000 ALTER TABLE `afiliacion` DISABLE KEYS */;
INSERT INTO `afiliacion` VALUES ('angie_martinez82162@elpoli.edu.co','App Politécnico Colombiano Jaime Isaza Cadavid.','Práctica Profesional',1,'2017-2'),('dfmmatlpa@gmail.com','Sistema de Gestón para Trabajos de Grado en Ingeniería Informática.','Investigacion',0,'2017-2');
/*!40000 ALTER TABLE `afiliacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `asesorias`
--

DROP TABLE IF EXISTS `asesorias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `asesorias` (
  `idAsesoria` int(11) NOT NULL AUTO_INCREMENT,
  `temaTratado` varchar(200) NOT NULL,
  `tareasAsignadas` varchar(200) NOT NULL,
  `fechaAseroria` date NOT NULL,
  `horaAsesoria` varchar(20) NOT NULL,
  `nombreProyecto` varchar(200) NOT NULL,
  PRIMARY KEY (`idAsesoria`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asesorias`
--

LOCK TABLES `asesorias` WRITE;
/*!40000 ALTER TABLE `asesorias` DISABLE KEYS */;
INSERT INTO `asesorias` VALUES (1,'documentacion,codigo fuente','solucionar las incidencias','2017-10-15','12pm - 1pm','App Politécnico Colombiano Jaime Isaza Cadavid.'),(2,'marco conceptual, Vistas de paginas','aplicar normas APA','2017-10-24','8am - 9am','Sistema de Gestón para Trabajos de Grado en Ingeniería Informática.'),(3,'Codigo comentado','aplicar normas APA','2017-10-24','8am - 9am','Sistema de Gestón para Trabajos de Grado en Ingeniería Informática.'),(16,'Documento y codigo','Corregir Todo','2017-01-29','8am - 9am','App Politécnico Colombiano Jaime Isaza Cadavid.'),(17,'Prototipo','Correciones','2017-12-14','8am - 9am','App Politécnico Colombiano Jaime Isaza Cadavid.'),(18,'zxczxc','zczsc','2017-11-08','8am - 9am','App Politécnico Colombiano Jaime Isaza Cadavid.'),(19,'fghj','fgh','2017-11-16','6am - 7am','Sistema de Gestón para Trabajos de Grado en Ingeniería Informática.'),(20,'gosy','gosy','2017-11-17','6am - 7am','Sistema de Gestón para Trabajos de Grado en Ingeniería Informática.');
/*!40000 ALTER TABLE `asesorias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `evaluacionftg`
--

DROP TABLE IF EXISTS `evaluacionftg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `evaluacionftg` (
  `indicador` varchar(200) NOT NULL,
  `descIndicador` varchar(200) NOT NULL,
  `valor` varchar(10) NOT NULL,
  `calificacion` varchar(10) NOT NULL,
  `observaciones` varchar(300) NOT NULL,
  PRIMARY KEY (`indicador`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `evaluacionftg`
--

LOCK TABLES `evaluacionftg` WRITE;
/*!40000 ALTER TABLE `evaluacionftg` DISABLE KEYS */;
/*!40000 ALTER TABLE `evaluacionftg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `items_evaluaciontg`
--

DROP TABLE IF EXISTS `items_evaluaciontg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `items_evaluaciontg` (
  `ItemID` int(11) NOT NULL AUTO_INCREMENT,
  `Descripcion` varchar(500) NOT NULL,
  `valor` double(3,1) NOT NULL,
  `modalidad` varchar(100) NOT NULL,
  `tipo` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ItemID`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `items_evaluaciontg`
--

LOCK TABLES `items_evaluaciontg` WRITE;
/*!40000 ALTER TABLE `items_evaluaciontg` DISABLE KEYS */;
INSERT INTO `items_evaluaciontg` VALUES (1,'Se usan adecuadamente los estándares del formato tipo artículo Revista Politécnica y a los Lineamientos de Trabajo de Grado en Modalidad Investigación establecidos',2.0,'Investigación','Parcial'),(2,'El Resumen y la Introducción son apropiados para ilustrar el Trabajo.',2.0,'Investigación','Parcial'),(3,'La Revisión de la Literatura es pertinente y actualizada. Demuestra conocimiento de la revisión realizada.',4.0,'Investigación','Parcial'),(4,'Cumple el trabajo con todos los objetivos.',10.0,'Investigación','Parcial'),(5,'En el desarrollo de los objetivos, sustenta adecuadamente los procesos realizados mediante modelos, planos, diagramas, etc.',2.0,'Investigación','Parcial'),(6,'Se hace una adecuada validación los métodos y/o modelos utilizados en el trabajo.',4.0,'Investigación','Parcial'),(7,'Aplica tecnología acorde al desarrollo de su trabajo',2.0,'Investigación','Parcial'),(8,'Establece conclusiones claras y coherentes de acuerdo a los resultados y alcance del trabajo. Plantea las limitaciones del trabajo como posibles trabajos futuros',2.0,'Investigación','Parcial'),(9,'Se presentan las referencias bibliográficas descritas en el contenidos del proyecto, ajustadas a la Norma. Se Incluyen todas las referencias citadas.',2.0,'Investigación','Parcial'),(10,'El prototipo funciona adecuadamente y posee una guía de usuario',5.0,'Investigación','Parcial'),(11,'Maneja adecuada presentación personal.',2.0,'Práctica Profesional','Parcial'),(12,'Evidencia habilidades de comunicación oral y escrita, presentando en forma clara y objetiva la información desarrollada.',2.0,'Práctica Profesional','Parcial'),(13,'Es puntual en el cumplimiento de compromisos.',2.0,'Práctica Profesional','Parcial'),(14,'Demuestra que aprende autónomamente. Es analítico en realizar su labor.',2.0,'Práctica Profesional','Parcial'),(15,'Posee habilidades de liderazgo.',1.0,'Práctica Profesional','Parcial'),(16,'Identifica las tareas, roles y responsabilidades de los miembros del equipo de trabajo. Solicita ayuda a los miembros del equipo y ofrece su colaboración a los otros equipos.',1.0,'Práctica Profesional','Parcial'),(17,'Aplica tecnología acorde al desarrollo de su trabajo.',4.0,'Práctica Profesional','Parcial'),(18,'Cumple el trabajo con todos los objetivos y está acorde con la delimitación y alcance expuestos.',10.0,'Práctica Profesional','Parcial'),(19,'Es empoderado y plantea ideas innovadoras a los proyectos',4.0,'Práctica Profesional','Parcial'),(20,'Analiza e interpreta la información en relación con los requerimientos del proyecto.',2.0,'Práctica Profesional','Parcial'),(21,'Incorpora adecuadamente cambios y modificaciones al proyecto en relación con el alcance de objetivos propuestos.',2.0,'Práctica Profesional','Parcial'),(22,'Aplica técnicas competentes y buenas prácticas a su área de trabajo, para la solución del proyecto asignado.',4.0,'Práctica Profesional','Parcial'),(23,'Tiene actitud de servicio con los usuarios internos y externos de la organización.',4.0,'Práctica Profesional','Parcial'),(24,'Elabora documentación (manuales técnicos, manual de usuario, manual de configuración, base de conocimiento, entre otros) del sistema y/o modelo de acuerdo a los estándares definidos.',2.0,'Práctica Profesional','Parcial'),(25,'El software / modelo entregado funciona adecuadamente de acuerdo con la metodología seleccionada, arquitectura y las especificaciones dadas por el cliente.',2.0,'Práctica Profesional','Parcial'),(26,'Realiza un plan de pruebas, teniendo en cuenta los tipos de',2.0,'Práctica Profesional','Parcial'),(27,'Establece conclusiones claras y coherentes de acuerdo a los resultados y alcance del trabajo. Plantea las limitaciones del trabajo como posibles trabajos futuros.',2.0,'Práctica Profesional','Parcial'),(28,'Demostró cumplimiento en las asesorías programadas.',2.0,'Práctica Profesional','Parcial');
/*!40000 ALTER TABLE `items_evaluaciontg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `preafiliacion`
--

DROP TABLE IF EXISTS `preafiliacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `preafiliacion` (
  `correo` varchar(100) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `apellido` varchar(45) NOT NULL,
  PRIMARY KEY (`correo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `preafiliacion`
--

LOCK TABLES `preafiliacion` WRITE;
/*!40000 ALTER TABLE `preafiliacion` DISABLE KEYS */;
INSERT INTO `preafiliacion` VALUES ('angie_martinez45367@elpoli.edu.co','Angie','Martinez'),('daniel_mejia53467@elpoli.edu.co','Daniel','Mejia'),('hola@elpoli.edu.co','asdasd','asdasd'),('salome_rios1234@elpoli.edu.co','Salome','Rios');
/*!40000 ALTER TABLE `preafiliacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proyectos`
--

DROP TABLE IF EXISTS `proyectos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `proyectos` (
  `nombreProy` varchar(200) NOT NULL,
  `correoAsesor` varchar(100) DEFAULT NULL,
  `modalidad` varchar(100) NOT NULL,
  `correoEvaluador` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`nombreProy`),
  UNIQUE KEY `nombreProy_UNIQUE` (`nombreProy`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proyectos`
--

LOCK TABLES `proyectos` WRITE;
/*!40000 ALTER TABLE `proyectos` DISABLE KEYS */;
INSERT INTO `proyectos` VALUES ('App Politécnico Colombiano Jaime Isaza Cadavid.','danifmejia@gmail.com','Práctica Profesional','angie_martinez82162@elpoli.edu.co'),('Red Parqueaderos',NULL,'Práctica Profesional',NULL),('Sistema Contable',NULL,'Investigación',NULL),('Sistema de Gestón para Trabajos de Grado en Ingeniería Informática.','danifmejia@gmail.com','Investigación','angie_martinez82162@elpoli.edu.co'),('Sistema IA','correoA@elpoli.edu.co','Práctica Profesional',NULL);
/*!40000 ALTER TABLE `proyectos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario_conf`
--

DROP TABLE IF EXISTS `usuario_conf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuario_conf` (
  `idCorreo` varchar(100) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `apellido` varchar(45) NOT NULL,
  `tipoUsuario` int(1) NOT NULL,
  `fechaVencimiento` datetime DEFAULT NULL,
  `contrasena` varchar(50) NOT NULL,
  `estadoCuenta` int(1) NOT NULL DEFAULT '1',
  `conceptoCambio` varchar(200) DEFAULT '',
  PRIMARY KEY (`idCorreo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario_conf`
--

LOCK TABLES `usuario_conf` WRITE;
/*!40000 ALTER TABLE `usuario_conf` DISABLE KEYS */;
INSERT INTO `usuario_conf` VALUES ('angie_martinez82162@elpoli.edu.co','Angie','Martinez',4,'2018-02-15 00:00:00','c4203c24359553b730e4f0a57d4d226810f6eed1',1,'Plazo'),('asdasd','asdasdasd','aasdw',2,'2018-02-14 00:00:00','e25e690044e7510605b7fecb0d028bcdc78ea375',1,''),('asdasd@elpoli.edu.co','asdasd','asdasd',2,'2017-11-22 00:00:00','cc9bb555fc0351025c579d79fb58c3a2eee39051',1,''),('daniel_mejia82092@elpoli.edu.co','Daniel','mejia',1,'2017-10-31 00:00:00','3090456a8df44a69725f43ca1dd789960a91a941',1,''),('daniel_rios82112@elpoli.edu.co','Daniel','Rios',2,'2017-12-21 00:00:00','5066b7f56d8521596b9e3a58d1c468f379d60a1c',1,''),('danifmejia@gmail.com','Felipe','Sañudo',3,'2017-11-20 00:00:00','19fa53b29a41c51ada5fc960d6d98f3fcfd6a7ee',1,''),('dfmmatlpa@gmail.com','Daniel','Mejia',2,'2017-11-18 00:00:00','25514ad954408757beea5aa5cfc452d52766aac5',1,''),('holam','rrrr','eeee',2,'2017-11-10 00:00:00','ff973fcb254ac383f4c03a47ce60c0c51db50ecf',1,''),('retereerer@elpoli.edu.co','erer','erer',2,'2017-11-25 00:00:00','2988c7a61e20c9ab24dda05586354630ca87ced1',1,''),('spmateus@elpoli.edu.co','Sandra','Mateus',2,'2018-01-17 00:00:00','e2b97f7bf6a4927df36e84f8ebefcccd68e9fdc8',1,''),('werty@elpoli.edu.co','asd','asd',1,'2017-12-21 00:00:00','f0d0a1b4e9ba71f8f2f43d5e0961c9233de6388d',1,'');
/*!40000 ALTER TABLE `usuario_conf` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-11-12 15:31:10
