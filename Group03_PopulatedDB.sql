-- MariaDB dump 10.17  Distrib 10.4.13-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: Project_Group_03
-- ------------------------------------------------------
-- Server version	10.4.13-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `agency`
--

DROP TABLE IF EXISTS `agency`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `agency` (
  `Agency_Reg_No` varchar(10) NOT NULL,
  `Address` varchar(50) NOT NULL,
  `Name` varchar(20) NOT NULL,
  `Email` varchar(30) NOT NULL,
  PRIMARY KEY (`Agency_Reg_No`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `agency`
--

LOCK TABLES `agency` WRITE;
/*!40000 ALTER TABLE `agency` DISABLE KEYS */;
INSERT INTO `agency` VALUES ('145866','48,Main Steet, Colombo 3','Lanka Gas Company','lgascompany@gmail.com');
/*!40000 ALTER TABLE `agency` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `agency_member`
--

DROP TABLE IF EXISTS `agency_member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `agency_member` (
  `Member_NIC` varchar(10) NOT NULL,
  `Tele_No` int(10) NOT NULL,
  `Sex` varchar(6) NOT NULL,
  `DOB` date DEFAULT NULL,
  `Address` varchar(50) NOT NULL,
  `MemberName` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`Member_NIC`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `agency_member`
--

LOCK TABLES `agency_member` WRITE;
/*!40000 ALTER TABLE `agency_member` DISABLE KEYS */;
INSERT INTO `agency_member` VALUES ('784569828V',772223168,'Male','1978-02-15','455A,Colombo rd, Pilimathalawa','M.K.L.Silva'),('785123455V',784423168,'Female','1978-02-12','123,Colombo rd, Gampaha','S.D.Rajasiri'),('785462368V',747823168,'Male','1978-02-12','455A,Temple rd, Gampaha','A.C.C.Jayaweera'),('794511233V',774478968,'Male','1979-02-12','78,Temple rd, Rathnapura','J.K.Peris'),('798561342V',785642358,'Male','1979-03-12','45,Temple rd, Colombo','M.L.L.Perera'),('815756368V',778556357,'Male','1981-02-12','5A,Main street, Gampola','S.F.D.Weerasiri'),('854146369V',712452146,'Female','1985-08-12','800,Gampola rd, Peradeniya','D.D.Darmapala'),('864512368V',771233168,'Female','1986-02-12','44A,Cross lane, Peradeniya','M.J.Jayaweera'),('874511368V',774421453,'Male','1987-02-12','4A,School lane , Colombo 5','K.K.S.Silva'),('884511458V',774423668,'Male','1988-02-10','455A,Colombo rd, Kandy','A.B.K.Ramanadan'),('884512368V',728792668,'Female','1988-02-14','78,Samagi lane , Kegalle','S.S.S.Jayakody'),('904002368V',774785668,'Male','1990-04-15','5A,Temple rd, Bandaragama','M.Bandara'),('904153268V',771403168,'Male','1990-12-12','123,Upper lane, Galle','S.T.Perera'),('904512368V',774423168,'Male','1990-02-12','455A,Temple rd, Piliyandala','M.K.Perera'),('904514789V',771452361,'Male','1990-04-14','8A,Low street , Badulla','M.K.Abdul'),('913658978V',711472368,'Male','1991-01-14','47,Main rd, Kurunagala','M.G.Karunarathna'),('914514128V',774412368,'Male','1991-03-12','455A,Temple rd, Kurunagala','S.M.Bandara'),('924112368V',774123168,'Male','1992-03-12','45A,School rd, Matara','S.S.Silva'),('944512368V',704421588,'Female','1994-05-22','42A,High level rd, Colombo 5','K.K.Gunathilaka'),('954514768V',771458648,'Male','1995-07-21','55CA,Temple rd, Jaffna','M.Kumar');
/*!40000 ALTER TABLE `agency_member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `commercial_customer`
--

DROP TABLE IF EXISTS `commercial_customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `commercial_customer` (
  `Customer_NIC` varchar(10) NOT NULL,
  `Email` varchar(30) NOT NULL,
  `Address` varchar(50) NOT NULL,
  `Name` varchar(20) NOT NULL,
  `DOB` date DEFAULT NULL,
  `Ordered_Date` date NOT NULL,
  `Total_Money` float(8,2) NOT NULL,
  `Member_NIC` varchar(10) NOT NULL,
  `Reg_No` varchar(10) NOT NULL,
  `Item_No` int(2) NOT NULL,
  `Amount` int(3) NOT NULL,
  PRIMARY KEY (`Customer_NIC`),
  KEY `Member_NIC` (`Member_NIC`),
  KEY `Item_No` (`Item_No`),
  CONSTRAINT `commercial_customer_ibfk_1` FOREIGN KEY (`Member_NIC`) REFERENCES `commercial_delivary_boy` (`Member_NIC`),
  CONSTRAINT `commercial_customer_ibfk_2` FOREIGN KEY (`Item_No`) REFERENCES `gas_cylinder` (`Item_No`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `commercial_customer`
--

LOCK TABLES `commercial_customer` WRITE;
/*!40000 ALTER TABLE `commercial_customer` DISABLE KEYS */;
INSERT INTO `commercial_customer` VALUES ('691245697V','rtj@gmail.com','6a,high level road, Colombo.3','K.Perera','1969-02-01','2020-10-31',20000.00,'874511368V','789',3,8),('711245697V','kkj@gmail.com','4a,high level road, Colombo.2','L.Pala','1971-02-01','2020-10-30',5000.00,'864512368V','123',3,2),('841245697V','hm@gmail.com','5a,high level road, Colombo.3','L.Fernando','1984-02-01','2020-10-31',10000.00,'884511458V','456',3,4),('861245697V','lj@gmail.com','8a,high level road, Colombo.5','K.Kumara','1986-02-01','2020-10-30',20000.00,'954514768V','258',3,8),('871245697V','ss@gmail.com','3a,high level road, Colombo.4','M.Silva','1987-02-01','2020-10-30',20000.00,'785123455V','147',3,8);
/*!40000 ALTER TABLE `commercial_customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `commercial_delivary_boy`
--

DROP TABLE IF EXISTS `commercial_delivary_boy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `commercial_delivary_boy` (
  `Member_NIC` varchar(10) NOT NULL,
  `Vehicle_No` varchar(10) NOT NULL,
  PRIMARY KEY (`Member_NIC`),
  KEY `Vehicle_No` (`Vehicle_No`),
  CONSTRAINT `commercial_delivary_boy_ibfk_1` FOREIGN KEY (`Vehicle_No`) REFERENCES `lorry` (`Vehicle_No`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `commercial_delivary_boy`
--

LOCK TABLES `commercial_delivary_boy` WRITE;
/*!40000 ALTER TABLE `commercial_delivary_boy` DISABLE KEYS */;
INSERT INTO `commercial_delivary_boy` VALUES ('874511368V','145237'),('864512368V','1452378'),('954514768V','147221'),('785123455V','4535552'),('884511458V','4785236');
/*!40000 ALTER TABLE `commercial_delivary_boy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `domestic_customer`
--

DROP TABLE IF EXISTS `domestic_customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `domestic_customer` (
  `Customer_NIC` varchar(10) NOT NULL,
  `Email` varchar(30) NOT NULL,
  `Address` varchar(50) NOT NULL,
  `Name` varchar(20) NOT NULL,
  `DOB` date DEFAULT NULL,
  `Ordered_Date` date NOT NULL,
  `Total_Money` float(8,2) NOT NULL,
  `Member_NIC` varchar(10) NOT NULL,
  `Item_No` int(2) NOT NULL,
  `Amount` int(2) NOT NULL,
  PRIMARY KEY (`Customer_NIC`),
  KEY `Member_NIC` (`Member_NIC`),
  KEY `Item_No` (`Item_No`),
  CONSTRAINT `domestic_customer_ibfk_1` FOREIGN KEY (`Member_NIC`) REFERENCES `domestic_delivary_boy` (`Member_NIC`),
  CONSTRAINT `domestic_customer_ibfk_2` FOREIGN KEY (`Item_No`) REFERENCES `gas_cylinder` (`Item_No`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `domestic_customer`
--

LOCK TABLES `domestic_customer` WRITE;
/*!40000 ALTER TABLE `domestic_customer` DISABLE KEYS */;
INSERT INTO `domestic_customer` VALUES ('701245697V','hmj@gmail.com','46a,high level road, Colombo.7','K.Peries','1970-02-01','2020-10-31',1500.00,'904512368V',2,1),('801245697V','haj@gmail.com','45a,high level road, Colombo.5','L.L.S.Siripala','1980-02-01','2020-10-30',600.00,'904512368V',1,1),('821245697V','haj@gmail.com','43a,high level road, Colombo.8','M.Dias','1982-02-01','2020-10-30',600.00,'904512368V',1,1),('891245697V','kaj@gmail.com','488a,high level road, Colombo.10','K.silva','1989-02-01','2020-10-30',1500.00,'904512368V',2,1),('901245697V','hkj@gmail.com','47a,high level road, Colombo.6','L.Perera','1990-02-01','2020-10-31',600.00,'904512368V',1,1);
/*!40000 ALTER TABLE `domestic_customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `domestic_delivary_boy`
--

DROP TABLE IF EXISTS `domestic_delivary_boy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `domestic_delivary_boy` (
  `Member_NIC` varchar(10) NOT NULL,
  `Vehicle_No` varchar(10) NOT NULL,
  `Delivered_Dtae` date NOT NULL,
  `Total_Money` float(8,2) NOT NULL,
  PRIMARY KEY (`Member_NIC`),
  KEY `Vehicle_No` (`Vehicle_No`),
  CONSTRAINT `domestic_delivary_boy_ibfk_1` FOREIGN KEY (`Vehicle_No`) REFERENCES `three_wheel` (`Vehicle_No`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `domestic_delivary_boy`
--

LOCK TABLES `domestic_delivary_boy` WRITE;
/*!40000 ALTER TABLE `domestic_delivary_boy` DISABLE KEYS */;
INSERT INTO `domestic_delivary_boy` VALUES ('904153268V','45231','2020-10-30',1500.00),('904512368V','147852','2020-10-30',600.00),('914514128V','789561','2020-10-30',600.00),('924112368V','12345','2020-10-31',600.00),('944512368V','4563123','2020-10-31',1500.00);
/*!40000 ALTER TABLE `domestic_delivary_boy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gas_cylinder`
--

DROP TABLE IF EXISTS `gas_cylinder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gas_cylinder` (
  `Item_No` int(2) NOT NULL,
  `Size` float(8,2) DEFAULT NULL,
  `Price` float(8,2) DEFAULT NULL,
  `Agency_Reg_No` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`Item_No`),
  KEY `Agency_Reg_No` (`Agency_Reg_No`),
  CONSTRAINT `gas_cylinder_ibfk_1` FOREIGN KEY (`Agency_Reg_No`) REFERENCES `agency` (`Agency_Reg_No`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gas_cylinder`
--

LOCK TABLES `gas_cylinder` WRITE;
/*!40000 ALTER TABLE `gas_cylinder` DISABLE KEYS */;
INSERT INTO `gas_cylinder` VALUES (1,5.00,600.00,'145866'),(2,12.50,1500.00,'145866'),(3,20.00,2500.00,'145866');
/*!40000 ALTER TABLE `gas_cylinder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lorry`
--

DROP TABLE IF EXISTS `lorry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lorry` (
  `Vehicle_No` varchar(10) NOT NULL,
  PRIMARY KEY (`Vehicle_No`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lorry`
--

LOCK TABLES `lorry` WRITE;
/*!40000 ALTER TABLE `lorry` DISABLE KEYS */;
INSERT INTO `lorry` VALUES ('12345'),('123782'),('1444237'),('145237'),('1452378'),('147221'),('147852'),('15567'),('451191'),('45231'),('4527850'),('4535552'),('4563123'),('45645813'),('4755236'),('4785236'),('55445'),('78952562'),('789561');
/*!40000 ALTER TABLE `lorry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sales_manager`
--

DROP TABLE IF EXISTS `sales_manager`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sales_manager` (
  `Member_NIC` varchar(10) NOT NULL,
  `Member_NIC_DB` varchar(10) NOT NULL,
  `Delivered_Dtae` date NOT NULL,
  `Total_Money` float(8,2) NOT NULL,
  `Customer_NIC` varchar(10) NOT NULL,
  PRIMARY KEY (`Member_NIC`),
  KEY `Member_NIC_DB` (`Member_NIC_DB`),
  KEY `Customer_NIC` (`Customer_NIC`),
  CONSTRAINT `sales_manager_ibfk_1` FOREIGN KEY (`Member_NIC_DB`) REFERENCES `commercial_delivary_boy` (`Member_NIC`),
  CONSTRAINT `sales_manager_ibfk_2` FOREIGN KEY (`Customer_NIC`) REFERENCES `commercial_customer` (`Customer_NIC`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sales_manager`
--

LOCK TABLES `sales_manager` WRITE;
/*!40000 ALTER TABLE `sales_manager` DISABLE KEYS */;
INSERT INTO `sales_manager` VALUES ('785462368V','874511368V','2020-10-31',20000.00,'691245697V'),('798561342V','884511458V','2020-10-31',10000.00,'841245697V'),('815756368V','785123455V','2020-10-31',20000.00,'871245697V'),('884512368V','864512368V','2020-10-30',5000.00,'711245697V'),('904002368V','954514768V','2020-10-30',20000.00,'861245697V');
/*!40000 ALTER TABLE `sales_manager` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `three_wheel`
--

DROP TABLE IF EXISTS `three_wheel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `three_wheel` (
  `Vehicle_No` varchar(10) NOT NULL,
  PRIMARY KEY (`Vehicle_No`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `three_wheel`
--

LOCK TABLES `three_wheel` WRITE;
/*!40000 ALTER TABLE `three_wheel` DISABLE KEYS */;
INSERT INTO `three_wheel` VALUES ('123222'),('12345'),('1444237'),('145237'),('1452378'),('145378'),('147811'),('147852'),('451191'),('452300'),('45231'),('453602'),('4563113'),('4563123'),('4755236'),('4785236'),('556412'),('789561'),('7895612');
/*!40000 ALTER TABLE `three_wheel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vehicle`
--

DROP TABLE IF EXISTS `vehicle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vehicle` (
  `Vehicle_No` varchar(10) NOT NULL,
  `Agency_Reg_No` varchar(10) NOT NULL,
  PRIMARY KEY (`Vehicle_No`),
  KEY `Agency_Reg_No` (`Agency_Reg_No`),
  CONSTRAINT `vehicle_ibfk_1` FOREIGN KEY (`Agency_Reg_No`) REFERENCES `agency` (`Agency_Reg_No`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicle`
--

LOCK TABLES `vehicle` WRITE;
/*!40000 ALTER TABLE `vehicle` DISABLE KEYS */;
INSERT INTO `vehicle` VALUES ('123222','145866'),('12345','145866'),('1444237','145866'),('145237','145866'),('1452378','145866'),('145378','145866'),('147811','145866'),('147852','145866'),('451191','145866'),('452300','145866'),('45231','145866'),('453602','145866'),('4563113','145866'),('4563123','145866'),('4755236','145866'),('4785236','145866'),('789561','145866'),('7895612','145866');
/*!40000 ALTER TABLE `vehicle` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-11-02  6:55:48
