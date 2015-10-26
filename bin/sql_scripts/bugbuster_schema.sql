-- MySQL dump 10.13  Distrib 5.6.20, for osx10.9 (x86_64)
--
-- Host: localhost    Database: BugBusters
-- ------------------------------------------------------
-- Server version	5.6.20

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
-- Table structure for table `AgentFamily`
--

DROP TABLE IF EXISTS `AgentFamily`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AgentFamily` (
  `AgentFamilyCode` varchar(20) NOT NULL,
  `FamilyName` varchar(45) DEFAULT NULL,
  `Organism` enum('Antibiotic','Antiviral','Antifungal') DEFAULT NULL,
  PRIMARY KEY (`AgentFamilyCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `AgentRestriction`
--

DROP TABLE IF EXISTS `AgentRestriction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AgentRestriction` (
  `Code` char(1) NOT NULL DEFAULT 'A',
  `Description` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `BedDays`
--

DROP TABLE IF EXISTS `BedDays`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BedDays` (
  `idBedDays` int(11) NOT NULL AUTO_INCREMENT,
  `PeriodStart` datetime DEFAULT NULL,
  `PeriodEnd` datetime DEFAULT NULL,
  `Quantity` int(11) DEFAULT NULL,
  `AmortisedPerDay` float DEFAULT NULL,
  `LocationCode` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idBedDays`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Location`
--

DROP TABLE IF EXISTS `Location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Location` (
  `idLocation` int(11) NOT NULL AUTO_INCREMENT,
  `LocationType` varchar(20) NOT NULL DEFAULT 'ward',
  `LocationLevel1` varchar(45) NOT NULL,
  `LocationLevel2` varchar(45) DEFAULT NULL,
  `LocationLevel3` varchar(45) DEFAULT NULL,
  `Latitude` float DEFAULT NULL,
  `Longitude` float DEFAULT NULL,
  `LocationCode` varchar(45) DEFAULT NULL,
  `LocationAlias1` varchar(45) DEFAULT NULL,
  `LocationAlias2` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idLocation`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `LocationLookup`
--

DROP TABLE IF EXISTS `LocationLookup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `LocationLookup` (
  `idLocationLookup` int(11) NOT NULL AUTO_INCREMENT,
  `LocationDesc` varchar(255) DEFAULT NULL,
  `Location` int(11) DEFAULT NULL,
  PRIMARY KEY (`idLocationLookup`),
  UNIQUE KEY `LocationDesc_UNIQUE` (`LocationDesc`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ProductLookup`
--

DROP TABLE IF EXISTS `ProductLookup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ProductLookup` (
  `idProductLookup` int(11) NOT NULL AUTO_INCREMENT,
  `ProductDesc` varchar(255) DEFAULT NULL,
  `SupplyAgentName` varchar(45) DEFAULT NULL,
  `SupplyForm` char(1) DEFAULT NULL,
  `SupplyFormDetail` varchar(45) DEFAULT NULL,
  `SupplyAmountMg` int(11) DEFAULT NULL,
  PRIMARY KEY (`idProductLookup`),
  UNIQUE KEY `ProductDesc_UNIQUE` (`ProductDesc`)
) ENGINE=InnoDB AUTO_INCREMENT=196 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Supply`
--

DROP TABLE IF EXISTS `Supply`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Supply` (
  `idSupply` int(11) NOT NULL AUTO_INCREMENT,
  `SupplyDate` datetime NOT NULL,
  `Location` int(11) NOT NULL,
  `SupplyAgent` varchar(20) NOT NULL,
  `SupplyForm` char(1) NOT NULL,
  `SupplyAmountMg` int(11) NOT NULL,
  PRIMARY KEY (`idSupply`),
  KEY `FK_Location_idx` (`Location`),
  KEY `FK_SupplyAgentForm_idx` (`SupplyAgent`),
  KEY `FK_SupplyForm_idx` (`SupplyForm`),
  CONSTRAINT `FK_Location` FOREIGN KEY (`Location`) REFERENCES `Location` (`idLocation`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_SupplyAgent` FOREIGN KEY (`SupplyAgent`) REFERENCES `SupplyAgent` (`ATCCode`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `SupplyAgent`
--

DROP TABLE IF EXISTS `SupplyAgent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SupplyAgent` (
  `GenericName` varchar(45) DEFAULT NULL,
  `Family` varchar(20) NOT NULL,
  `ATCCode` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`ATCCode`),
  UNIQUE KEY `GenericName_UNIQUE` (`GenericName`),
  KEY `FK_Family_idx` (`Family`),
  CONSTRAINT `FK_Family` FOREIGN KEY (`Family`) REFERENCES `AgentFamily` (`AgentFamilyCode`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `SupplyAgentForm`
--

DROP TABLE IF EXISTS `SupplyAgentForm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SupplyAgentForm` (
  `idSupplyAgentForm` int(11) NOT NULL AUTO_INCREMENT,
  `ATCCode` varchar(20) NOT NULL,
  `Restriction` char(1) DEFAULT NULL,
  `SupplyForm` char(1) DEFAULT NULL,
  `DefinedDailyDoseMg` int(11) DEFAULT NULL,
  PRIMARY KEY (`idSupplyAgentForm`),
  KEY `FK_AgentRestriction_idx` (`Restriction`),
  KEY `FK_SupplyForm_idx` (`SupplyForm`),
  CONSTRAINT `FK_AgentRestriction` FOREIGN KEY (`Restriction`) REFERENCES `AgentRestriction` (`Code`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_SupplyForm` FOREIGN KEY (`SupplyForm`) REFERENCES `SupplyForm` (`idSupplyForm`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `SupplyForm`
--

DROP TABLE IF EXISTS `SupplyForm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SupplyForm` (
  `idSupplyForm` char(1) NOT NULL,
  `FormType` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idSupplyForm`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `SupplyInputData`
--

DROP TABLE IF EXISTS `SupplyInputData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SupplyInputData` (
  `idSupplyInput` bigint(20) NOT NULL AUTO_INCREMENT,
  `PeriodData` varchar(45) DEFAULT NULL,
  `LocationData` varchar(45) DEFAULT NULL,
  `ProductData` varchar(100) DEFAULT NULL,
  `QuantityData` varchar(45) DEFAULT NULL,
  `isProcessed` int(11) DEFAULT '0',
  `loadedDate` datetime DEFAULT NULL,
  `enteredBy` varchar(45) DEFAULT 'system',
  PRIMARY KEY (`idSupplyInput`),
  UNIQUE KEY `UQ_Input` (`PeriodData`,`LocationData`,`ProductData`,`QuantityData`)
) ENGINE=InnoDB AUTO_INCREMENT=2692 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-10-26 13:05:42
