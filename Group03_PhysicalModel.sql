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
  PRIMARY KEY (`Member_NIC`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `agency_member`
--

LOCK TABLES `agency_member` WRITE;
/*!40000 ALTER TABLE `agency_member` DISABLE KEYS */;
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
  `Size` float(2,2) NOT NULL,
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

-- Dump completed on 2020-10-25 20:40:38
