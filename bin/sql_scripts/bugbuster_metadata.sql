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
-- Dumping data for table `AgentFamily`
--

LOCK TABLES `AgentFamily` WRITE;
/*!40000 ALTER TABLE `AgentFamily` DISABLE KEYS */;
REPLACE INTO `AgentFamily` (`AgentFamilyCode`, `FamilyName`, `Organism`) VALUES ('J01AA','Tetracyclines','Antibiotic'),('J01B ','Amphenicols','Antibiotic'),('J01C','B-lactam','Antibiotic'),('J01CE','B-Lactamase Sensitive Penicillins','Antibiotic'),('J01CF','B-Lactamase Resistant pencillins','Antibiotic'),('J01CR','Combintations of penicillins','Antibiotic'),('J01DB','First generation cephalosporins','Antibiotic'),('J01DC','Second generation cephalosporins','Antibiotic'),('J01DD','Third generation cephalosporins','Antibiotic'),('J01DE','Fourth generation cephalosporins','Antibiotic'),('J01DF','Monobactams','Antibiotic'),('J01DH','Carbapenems','Antibiotic'),('J01DI','Other cephalosporins','Antibiotic'),('J01E ','Sulfanomides and Trimethoprim','Antibiotic'),('J01FA','Macrolides','Antibiotic'),('J01FF','Lincosamides','Antibiotic'),('J01FG','Streptogramins','Antibiotic'),('J01GB','Aminoglcoside antibacterials','Antibiotic'),('J01MA','Quinolene Aantibacterials','Antibiotic'),('J01XA','Glycopeptide antibacterials','Antibiotic'),('J01XB','Polymyxins','Antibiotic'),('J01XC','Steroid antibacterials','Antibiotic'),('J01XX','Other antibacterials','Antibiotic'),('J04','Antimycobacterials',NULL);
/*!40000 ALTER TABLE `AgentFamily` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `AgentRestriction`
--

LOCK TABLES `AgentRestriction` WRITE;
/*!40000 ALTER TABLE `AgentRestriction` DISABLE KEYS */;
REPLACE INTO `AgentRestriction` (`Code`, `Description`) VALUES ('A','Unrestricted'),('B','Restricted'),('C','Highly Restricted'),('D','Unclassified');
/*!40000 ALTER TABLE `AgentRestriction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `BedDays`
--

LOCK TABLES `BedDays` WRITE;
/*!40000 ALTER TABLE `BedDays` DISABLE KEYS */;
REPLACE INTO `BedDays` (`idBedDays`, `PeriodStart`, `PeriodEnd`, `Quantity`, `AmortisedPerDay`, `LocationCode`) VALUES (1,'2015-01-01 00:00:00',NULL,104,NULL,'ICU'),(2,'2015-02-01 00:00:00',NULL,86,NULL,'ICU'),(3,'2015-03-01 00:00:00',NULL,110,NULL,'ICU'),(4,'2015-04-01 00:00:00',NULL,87,NULL,'ICU'),(5,'2015-05-01 00:00:00',NULL,140,NULL,'ICU'),(6,'2015-06-01 00:00:00',NULL,117,NULL,'ICU'),(7,'2015-01-01 00:00:00',NULL,243,NULL,'AMU'),(8,'2015-02-01 00:00:00',NULL,218,NULL,'AMU'),(9,'2015-03-01 00:00:00',NULL,245,NULL,'AMU'),(10,'2015-04-01 00:00:00',NULL,234,NULL,'AMU'),(11,'2015-05-01 00:00:00',NULL,247,NULL,'AMU'),(12,'2015-06-01 00:00:00',NULL,238,NULL,'AMU'),(13,'2015-01-01 00:00:00',NULL,267,NULL,'MTRNY'),(14,'2015-02-01 00:00:00',NULL,272,NULL,'MTRNY'),(15,'2015-03-01 00:00:00',NULL,276,NULL,'MTRNY'),(16,'2015-04-01 00:00:00',NULL,264,NULL,'MTRNY'),(17,'2015-05-01 00:00:00',NULL,264,NULL,'MTRNY'),(18,'2015-06-01 00:00:00',NULL,239,NULL,'MTRNY'),(19,'2015-01-01 00:00:00',NULL,237,NULL,'BCKLY'),(20,'2015-02-01 00:00:00',NULL,241,NULL,'BCKLY'),(21,'2015-03-01 00:00:00',NULL,236,NULL,'BCKLY'),(22,'2015-04-01 00:00:00',NULL,248,NULL,'BCKLY'),(23,'2015-05-01 00:00:00',NULL,244,NULL,'BCKLY'),(24,'2015-06-01 00:00:00',NULL,227,NULL,'BCKLY'),(25,'2015-01-01 00:00:00',NULL,878,NULL,'BENSN'),(26,'2015-02-01 00:00:00',NULL,743,NULL,'BENSN'),(27,'2015-03-01 00:00:00',NULL,888,NULL,'BENSN'),(28,'2015-04-01 00:00:00',NULL,826,NULL,'BENSN'),(29,'2015-05-01 00:00:00',NULL,882,NULL,'BENSN'),(30,'2015-06-01 00:00:00',NULL,881,NULL,'BENSN'),(31,'2015-01-01 00:00:00',NULL,815,NULL,'CANNG'),(32,'2015-02-01 00:00:00',NULL,680,NULL,'CANNG'),(33,'2015-03-01 00:00:00',NULL,779,NULL,'CANNG'),(34,'2015-04-01 00:00:00',NULL,722,NULL,'CANNG'),(35,'2015-05-01 00:00:00',NULL,810,NULL,'CANNG'),(36,'2015-06-01 00:00:00',NULL,799,NULL,'CANNG'),(37,'2015-01-01 00:00:00',NULL,414,NULL,'COLYR'),(38,'2015-02-01 00:00:00',NULL,388,NULL,'COLYR'),(39,'2015-03-01 00:00:00',NULL,444,NULL,'COLYR'),(40,'2015-04-01 00:00:00',NULL,414,NULL,'COLYR'),(41,'2015-05-01 00:00:00',NULL,479,NULL,'COLYR'),(42,'2015-06-01 00:00:00',NULL,429,NULL,'COLYR');
/*!40000 ALTER TABLE `BedDays` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `Location`
--

LOCK TABLES `Location` WRITE;
/*!40000 ALTER TABLE `Location` DISABLE KEYS */;
REPLACE INTO `Location` (`idLocation`, `LocationType`, `LocationLevel1`, `LocationLevel2`, `LocationLevel3`, `Latitude`, `Longitude`, `LocationCode`, `LocationAlias1`, `LocationAlias2`) VALUES (1,'Ward','Armadale Hospital','ICU','Intensive Care Unit',NULL,NULL,'ICU',NULL,NULL),(2,'Ward','Armadale Hospital','AMU','Acute Medical Unit',NULL,NULL,'AMU',NULL,NULL),(3,'Ward','Armadale Hospital','Maternity','Maude Bellas Maternity Ward',NULL,NULL,'MTRNY',NULL,NULL),(4,'Ward','Armadale Hospital','Medical','Galliers Bickley Ward',NULL,NULL,'BICKLY','Galliers Bickley Ward (Maternity)',NULL),(5,'Ward','Armadale Hospital','Medical','Benson Medical Ward',NULL,NULL,'BENSN',NULL,NULL),(6,'Ward','Armadale Hospital','Medical','Galliers Canning Ward',NULL,NULL,'CANNG','Galliers Canning Ward (Med/205SURG)',NULL),(7,'Ward','Armadale Hospital','Surgical','Colyer Surgical Ward',NULL,NULL,'COLYR',NULL,NULL);
/*!40000 ALTER TABLE `Location` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `LocationLookup`
--

LOCK TABLES `LocationLookup` WRITE;
/*!40000 ALTER TABLE `LocationLookup` DISABLE KEYS */;
/*!40000 ALTER TABLE `LocationLookup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ProductLookup`
--

LOCK TABLES `ProductLookup` WRITE;
/*!40000 ALTER TABLE `ProductLookup` DISABLE KEYS */;
REPLACE INTO `ProductLookup` (`idProductLookup`, `ProductDesc`, `SupplyAgentName`, `SupplyForm`, `SupplyFormDetail`, `SupplyAmountMg`) VALUES (1,'Amoxycillin 400mg Clavulanate 57mg per 5mL Suspension (60mL)','Amoxycillin Clavulanate','O','Suspension',4800),(2,'Sulfamethoxazole 400mg Trimethoprim 80mg Ampoule (5 x 5mL)','Sulfamethoxazole Trimethoprim','P','Ampoule',400),(3,'Vancomycin 3g in Sodium Chloride 0.9% Infusor LV10 (240mL)','Vancomycin in Sodium Chloride','P','Infusor',3000),(4,'Flucloxacillin 8g in Sodium Chloride 0.9% Infusor LV10 (240mL)','Flucloxacillin in Sodium Chloride','P','Infusor',8000),(5,'Vancomycin 1g Vial','Vancomycin','P','Vial',1000),(6,'Fluconazole 100mg Capsule','Fluconazole','O','Capsule',100),(7,'Hydroxychloroquine 200mg Tablet','Hydroxychloroquine','O','Tablet',200),(8,'Meropenem 1g Vial','Meropenem','P','Vial',1000),(9,'Amoxycillin 1g Vial','Amoxycillin','P','Vial',1000),(10,'Amoxycillin 500mg Vial','Amoxycillin','P','Vial',500),(11,'Amoxycillin 500mg Capsule','Amoxycillin','O','Capsule',500),(12,'Amoxycillin 875mg Clavulanic Acid 125mg Tablet','Amoxycillin Clavulanic Acid','O','Tablet',875),(13,'Azithromycin 500mg Vial','Azithromycin','P','Vial',500),(14,'Azithromycin 500mg Tablet','Azithromycin','O','Tablet',500),(15,'Benzylpenicillin 1.2g Vial','Benzylpenicillin','P','Vial',1200),(16,'Benzylpenicillin 600mg Vial','Benzylpenicillin','P','Vial',600),(17,'Ceftriaxone 1g Vial','Ceftriaxone','P','Vial',1000),(18,'Cefuroxime 250mg Tablet','Cefuroxime','O','Tablet',250),(19,'Cephalexin 500mg Capsule','Cephalexin','O','Capsule',500),(20,'Clindamycin 150mg Capsule','Clindamycin','O','Capsule',150),(21,'Doxycycline 100mg Tablet','Doxycycline','O','Tablet',100),(22,'Flucloxacillin 1g Vial','Flucloxacillin','P','Vial',1000),(23,'Flucloxacillin 500mg Capsule','Flucloxacillin','O','Capsule',500),(24,'Gentamicin 80mg/2mL Ampoule','Gentamicin','P','Ampoule',80),(25,'Lincomycin 600mg/2mL Vial','Lincomycin','P','Vial',600),(26,'Metronidazole 500mg/100mL Infusion','Metronidazole','P','Infusion',500),(27,'Metronidazole 500mg Suppository','Metronidazole','O','Suppository',500),(28,'Piperacillin 4g Tazobactam 500mg Vial','Piperacillin Tazobactam','P','Vial',4000),(29,'Roxithromycin 150mg Tablet','Roxithromycin','O','Tablet',150),(30,'Sulfamethoxazole 800mg Trimethoprim 160mg Tablet','Sulfamethoxazole Trimethoprim','O','Tablet',800),(31,'Trimethoprim 300mg Tablet','Trimethoprim','O','Tablet',300),(32,'Vancomycin 500mg Vial','Vancomycin','P','Vial',500),(33,'Tobramycin 80mg/2mL Ampoule','Tobramycin','P','Ampoule',80),(34,'Moxifloxacin 400mg Tablet','Moxifloxacin','O','Tablet',400),(35,'Amoxycillin 500mg Clavulanic Acid 125mg Tablet','Amoxycillin Clavulanic Acid','O','Tablet',500),(36,'Aciclovir 200mg Tablet','Aciclovir','O','Tablet',200),(37,'Valaciclovir 500mg Tablet','Valaciclovir','O','Tablet',500),(38,'Nitrofurantoin 100mg Capsule','Nitrofurantoin','O','Capsule',100),(39,'Fluconazole 200mg Capsule','Fluconazole','O','Capsule',200),(40,'Dicloxacillin 250mg Capsule','Dicloxacillin','O','Capsule',250),(41,'Cephalexin 250mg Capsule','Cephalexin','O','Capsule',250),(42,'Cephazolin 1g Vial','Cephazolin','P','Vial',1000),(43,'Flucloxacillin 500mg Vial','Flucloxacillin','P','Vial',500),(44,'Metronidazole 200mg Tablet','Metronidazole','O','Tablet',200),(45,'Metronidazole 400mg Tablet','Metronidazole','O','Tablet',400),(46,'Norfloxacin 400mg Tablet','Norfloxacin','O','Tablet',400),(47,'Nitrofurantoin 50mg Capsule','Nitrofurantoin','O','Capsule',50),(48,'Ciprofloxacin 500mg Tablet','Ciprofloxacin','O','Tablet',500),(49,'Ticarcillin 3g Clavulanic Acid 100mg Vial','Ticarcillin Clavulanic Acid','P','Vial',3000),(50,'Cefepime 2g Vial','Cefepime','P','Vial',2000),(51,'Ertapenem 1g Vial','Ertapenem','P','Vial',1000),(52,'Terbinafine 250mg Tablet','Terbinafine','O','Tablet',250),(53,'Amphotericin B 10mg Lozenge','Amphotericin B','O','Lozenge',10),(54,'Fluconazole 50mg Capsule','Fluconazole','O','Capsule',50),(55,'Meropenem 500mg Vial','Meropenem','P','Vial',500),(56,'Fluconazole 150mg Capsule','Fluconazole','O','Capsule',150),(57,'Itraconazole 100mg Capsule','Itraconazole','O','Capsule',100),(58,'Sodium Fusidate 250mg Tablet','Sodium Fusidate','O','Tablet',250),(59,'Amoxycillin 250mg Capsule','Amoxycillin','O','Capsule',250),(60,'Caspofungin 50mg Vial','Caspofungin','P','Vial',50),(61,'Cefotaxime 1g Vial','Cefotaxime','P','Vial',1000),(62,'Erythromycin 250mg Capsule: EC','Erythromycin','O','Capsule',250),(63,'Aciclovir 500mg Vial','Aciclovir','P','Vial',500),(64,'Moxifloxacin 400mg/250mL Infusion','Moxifloxacin','P','Infusion',400),(65,'Oseltamivir 75mg Capsule','Oseltamivir','O','Capsule',75),(66,'Roxithromycin 300mg Tablet','Roxithromycin','O','Tablet',300),(67,'Amoxycillin 400mg Clavulanate 57mg per 5mL Suspension','Amoxycillin Clavulanate','O','Suspension',400),(68,'Vancomycin 125mg Capsule','Vancomycin','O','Capsule',125),(69,'Hexamine Hippurate 1g Tablet','Hexamine Hippurate','O','Tablet',1000),(70,'Clarithromycin 250mg Tablet','Clarithromycin','O','Tablet',250),(71,'Rifampicin 300mg Capsule','Rifampicin','O','Capsule',300),(72,'Rifaximin (SAS) 550mg Tablet','Rifaximin (SAS)','O','Tablet',550),(73,'Valganciclovir 450mg Tablet','Valganciclovir','O','Tablet',450),(74,'Phenoxymethylpenicillin 250mg Tablet','Phenoxymethylpenicillin','O','Tablet',250),(75,'Erythromycin Lactobionate 1g Vial','Erythromycin Lactobionate','P','Vial',1000),(76,'Cefepime 1g Vial','Cefepime','P','Vial',1000),(77,'Erythromycin Ethyl Succinate 400mg/5mL Suspension','Erythromycin Ethyl Succinate','O','Suspension',400),(78,'Dicloxacillin 500mg Capsule','Dicloxacillin','O','Capsule',500),(79,'Flucloxacillin 250mg/5mL Suspension','Flucloxacillin','O','Suspension',250),(80,'Abacavir 600mg Lamivudine 300mg Tablet','Abacavir Lamivudine','O','Tablet',600),(81,'Ritonavir 100mg Tablet','Ritonavir','O','Tablet',100),(82,'Famciclovir 250mg Tablet','Famciclovir','O','Tablet',250),(83,'Metronidazole 200mg/5mL Suspension','Metronidazole','O','Suspension',200),(84,'Cephalexin 250mg/5mL Suspension','Cephalexin','O','Suspension',250),(85,'Ivermectin 3mg Tablet','Ivermectin','O','Tablet',3),(86,'Erythromycin Ethyl Succinate 400mg/5mL Suspension 100mL','Erythromycin Ethyl Succinate','O','Suspension',8000),(87,'Rifampicin 600mg Vial','Rifampicin','P','Vial',600),(88,'Cefaclor 375mg Tablet: MR','Cefaclor','O','Tablet',375),(89,'Isoniazid 100mg Tablet','Isoniazid','O','Tablet',100),(90,'Entecavir 500microgram Tablet','Entecavir','O','Tablet',1),(91,'Fluconazole 200mg/100mL Infusion','Fluconazole','P','Infusion',200),(92,'Flucloxacillin 250mg Capsule','Flucloxacillin','O','Capsule',250),(93,'Fluconazole 100mg/50mL Vial','Fluconazole','P','Vial',100),(94,'Minocycline 50mg Tablet','Minocycline','O','Tablet',50),(95,'Aciclovir 800mg Tablet','Aciclovir','O','Tablet',800),(96,'Clotrimazole 100mg Pessary','Clotrimazole','O','Pessary',100),(97,'Griseofulvin 125mg Tablet','Griseofulvin','O','Tablet',125),(98,'Amoxycillin 250mg/5mL Suspension','Amoxycillin','O','Suspension',250),(99,'Dapsone 100mg Tablet','Dapsone','O','Tablet',100),(100,'Dapsone 25mg Tablet (100)','Dapsone','O','Tablet',25),(101,'Aciclovir 800mg Tablet (35)','Aciclovir','O','Tablet',800),(102,'Meropenem 1g Vial (5)','Meropenem','P','Vial',1000),(103,'Hydroxychloroquine 200mg Tablet (100)','Hydroxychloroquine','O','Tablet',200),(104,'Moxifloxacin 400mg/250mL Infusion (1)','Moxifloxacin','P','Infusion',400),(105,'Amoxycillin 1g Vial (10)','Amoxycillin','P','Vial',1000),(106,'Amoxycillin 500mg Capsule (20)','Amoxycillin','O','Capsule',500),(107,'Amoxycillin 500mg Clavulanic Acid 125mg Tablet (10)','Amoxycillin Clavulanic Acid','O','Tablet',500),(108,'Azithromycin 500mg Vial (1)','Azithromycin','P','Vial',500),(109,'Azithromycin 500mg Tablet (3)','Azithromycin','O','Tablet',500),(110,'Benzylpenicillin 1.2g Vial (1)','Benzylpenicillin','P','Vial',1200),(111,'Benzylpenicillin 600mg Vial (1)','Benzylpenicillin','P','Vial',600),(112,'Cefotaxime 1g Vial (10)','Cefotaxime','P','Vial',1000),(113,'Ceftriaxone 1g Vial (1)','Ceftriaxone','P','Vial',1000),(114,'Cephazolin 1g Vial (10)','Cephazolin','P','Vial',1000),(115,'Ciprofloxacin 500mg Tablet (14)','Ciprofloxacin','O','Tablet',500),(116,'Clarithromycin 250mg Tablet (14)','Clarithromycin','O','Tablet',250),(117,'Doxycycline 100mg Tablet (7)','Doxycycline','O','Tablet',100),(118,'Flucloxacillin 1g Vial (10)','Flucloxacillin','P','Vial',1000),(119,'Flucloxacillin 1g Vial (5)','Flucloxacillin','P','Vial',1000),(120,'Lincomycin 600mg/2mL Vial (5)','Lincomycin','P','Vial',600),(121,'Metronidazole 500mg/100mL Infusion (10)','Metronidazole','P','Infusion',500),(122,'Metronidazole 400mg Tablet (21)','Metronidazole','O','Tablet',400),(123,'Oseltamivir 75mg Capsule (10)','Oseltamivir','O','Capsule',75),(124,'Piperacillin 4g Tazobactam 500mg Vial (1)','Piperacillin Tazobactam','P','Vial',4000),(125,'Vancomycin 500mg Vial (10)','Vancomycin','P','Vial',500),(126,'Meropenem 500mg Vial (5)','Meropenem','P','Vial',500),(127,'Cefepime 1g Vial (1)','Cefepime','P','Vial',1000),(128,'Ceftazidime 1g Vial (1)','Ceftazidime','P','Vial',1000),(129,'Moxifloxacin 400mg Tablet (5)','Moxifloxacin','O','Tablet',400),(130,'Sulfamethoxazole 800mg Trimethoprim 160mg Tablet (10)','Sulfamethoxazole Trimethoprim','O','Tablet',800),(131,'Lamivudine 100mg Tablet (28)','Lamivudine','O','Tablet',100),(132,'Adefovir Dipivoxil 10mg Tablet (30)','Adefovir Dipivoxil','O','Tablet',10),(133,'Cefaclor 375mg Tablet: MR (10)','Cefaclor','O','Tablet',375),(134,'Fluconazole 200mg Capsule (28)','Fluconazole','O','Capsule',200),(135,'Nitrofurantoin 100mg Capsule (30)','Nitrofurantoin','O','Capsule',100),(136,'Fluconazole 100mg Capsule (28)','Fluconazole','O','Capsule',100),(137,'Teicoplanin 400mg Vial (1)','Teicoplanin','P','Vial',400),(138,'Ertapenem 1g Vial (1)','Ertapenem','P','Vial',1000),(139,'Amoxycillin 875mg Clavulanic Acid 125mg Tablet (10)','Amoxycillin Clavulanic Acid','O','Tablet',875),(140,'Cefuroxime 250mg Tablet (14)','Cefuroxime','O','Tablet',250),(141,'Cephalexin 500mg Capsule (20)','Cephalexin','O','Capsule',500),(142,'Cephalexin 250mg Capsule (20)','Cephalexin','O','Capsule',250),(143,'Ciprofloxacin 100mg/50mL Infusion (10)','Ciprofloxacin','P','Infusion',100),(144,'Ciprofloxacin 200mg/100mL Infusion (10)','Ciprofloxacin','P','Infusion',200),(145,'Clindamycin 150mg Capsule (24)','Clindamycin','O','Capsule',150),(146,'Flucloxacillin 500mg Vial (5)','Flucloxacillin','P','Vial',500),(147,'Flucloxacillin 500mg Capsule (24)','Flucloxacillin','O','Capsule',500),(148,'Fluconazole 150mg Capsule (1)','Fluconazole','O','Capsule',150),(149,'Metronidazole 200mg Tablet (21)','Metronidazole','O','Tablet',200),(150,'Norfloxacin 400mg Tablet (14)','Norfloxacin','O','Tablet',400),(151,'Roxithromycin 150mg Tablet (10)','Roxithromycin','O','Tablet',150),(152,'Trimethoprim 300mg Tablet (7)','Trimethoprim','O','Tablet',300),(153,'Vancomycin 1g Vial (1)','Vancomycin','P','Vial',1000),(154,'Aciclovir 500mg Vial (5)','Aciclovir','P','Vial',500),(155,'Erythromycin Ethyl Succinate 400mg Tablet (25)','Erythromycin Ethyl Succinate','O','Tablet',400),(156,'Valaciclovir 500mg Tablet (42)','Valaciclovir','O','Tablet',500),(157,'Gentamicin 80mg/2mL Ampoule (50)','Gentamicin','P','Ampoule',80),(158,'Nitrofurantoin 50mg Capsule (30)','Nitrofurantoin','O','Capsule',50),(159,'Ethambutol 100mg Tablet (56)','Ethambutol','O','Tablet',100),(160,'Albendazole 200mg Tablet: Chewable (6)','Albendazole','O','Tablet',200),(161,'Erythromycin Lactobionate 1g Vial (1)','Erythromycin Lactobionate','P','Vial',1000),(162,'Mebendazole 100mg Tablet (2)','Mebendazole','O','Tablet',100),(163,'Azithromycin 500mg/10mL Vial (10)','Azithromycin','P','Vial',500),(164,'Ceftriaxone 1g Vial (5)','Ceftriaxone','P','Vial',1000),(165,'Dicloxacillin 500mg Capsule (24)','Dicloxacillin','O','Capsule',500),(166,'Cephalexin 250mg/5mL Suspension (100mL)','Cephalexin','O','Suspension',5000),(167,'Vancomycin 125mg Capsule (20)','Vancomycin','O','Capsule',125),(168,'Metronidazole 200mg/5mL Suspension (100mL)','Metronidazole','O','Suspension',4000),(169,'Roxithromycin 300mg Tablet (5)','Roxithromycin','O','Tablet',300),(170,'Minocycline 50mg Tablet (60)','Minocycline','O','Tablet',50),(171,'Rifampicin 150mg Capsule (100)','Rifampicin','O','Capsule',150),(172,'Rifampicin 300mg Capsule (100)','Rifampicin','O','Capsule',300),(173,'Aciclovir 250mg/10mL Vial (5)','Aciclovir','P','Vial',250),(174,'Aciclovir 250mg/10mL Ampoule (5)','Aciclovir','P','Ampoule',250),(175,'Ivermectin 3mg Tablet (4)','Ivermectin','O','Tablet',3),(176,'Fluconazole 50mg Capsule (28)','Fluconazole','O','Capsule',50),(177,'Cefepime 2g Vial (1)','Cefepime','P','Vial',2000),(178,'Dicloxacillin 250mg Capsule (24)','Dicloxacillin','O','Capsule',250),(179,'Cefalotin 1g Vial (10)','Cefalotin','P','Vial',1000),(180,'Tinidazole 500mg Tablet (4)','Tinidazole','O','Tablet',500),(181,'Aciclovir 200mg Tablet (90)','Aciclovir','O','Tablet',200),(182,'Amoxycillin 1g Vial (5)','Amoxycillin','P','Vial',1000),(183,'Isoniazid 100mg Tablet (100)','Isoniazid','O','Tablet',100),(184,'Amoxycillin 250mg Capsule (20)','Amoxycillin','O','Capsule',250),(185,'Erythromycin 250mg Capsule: EC (25)','Erythromycin','O','Capsule',250),(186,'Famciclovir 250mg Tablet (20)','Famciclovir','O','Tablet',250),(187,'Amoxycillin 250mg/5mL Suspension (100mL)','Amoxycillin','O','Suspension',5000),(188,'Flucloxacillin 250mg Capsule (24)','Flucloxacillin','O','Capsule',250),(189,'Metronidazole 500mg Suppository (10)','Metronidazole','O','Suppository',500),(190,'Flucloxacillin 500mg Vial (10)','Flucloxacillin','P','Vial',500),(191,'Phenoxymethylpenicillin 500mg Tablet (25)','Phenoxymethylpenicillin','O','Tablet',500),(192,'Linezolid 600mg/300mL Infusion (10)','Linezolid','P','Infusion',600),(193,'Aciclovir 500mg/20mL Vial (5)','Aciclovir','P','Vial',500),(194,'Terbinafine 250mg Tablet (42)','Terbinafine','O','Tablet',250),(195,'Sodium Fusidate 250mg Tablet (36)','Sodium Fusidate','O','Tablet',250);
/*!40000 ALTER TABLE `ProductLookup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `Supply`
--

LOCK TABLES `Supply` WRITE;
/*!40000 ALTER TABLE `Supply` DISABLE KEYS */;
/*!40000 ALTER TABLE `Supply` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `SupplyAgent`
--

LOCK TABLES `SupplyAgent` WRITE;
/*!40000 ALTER TABLE `SupplyAgent` DISABLE KEYS */;
REPLACE INTO `SupplyAgent` (`GenericName`, `Family`, `ATCCode`) VALUES ('Doxycycline','J01AA','J01AA02'),('Tigecycline','J01AA','J01AA12'),('Choloramphenicol','J01B','J01BA01'),('Ampicillin','J01C','J01CA01'),('Amoxycillin','J01C','J01CA04'),('Benzylpenicillin','J01CE','J01CE01'),('Benzathanine benzylpenecillin','J01CE','J01CE08'),('Procaine Penicillin','J01CE','J01CE09'),('Dicloxacillin','J01CF','J01CF01'),('Amoxycillin and enzyme inhibitor','J01CR','J01CR02'),('Ticarcillin and enzyme inhibitor','J01CR','J01CR03'),('Cefalotin','J01DB','J01DB03'),('Cefazolin','J01DB','J01DB04'),('Cefoxitin','J01DC','J01DC01'),('Cefuroxime','J01DC','J01DC02'),('Cefaclor','J01DC','J01DC04'),('Cefotaxime','J01DD','J01DD01'),('Ceftazidime','J01DD','J01DD02'),('Ceftriaxone','J01DD','J01DD04'),('Cefepime','J01DE','J01DE01'),('Aztreonam','J01DF','J01DF01'),('Ertapenem','J01DH','J01DH03'),('Doripenem','J01DH','J01DH04'),('Ceftaroline','J01DI','J01DI02'),('Trimethoprim','J01E','J01EA01'),('Erythromycin','J01FA','J01FA01'),('Roxithromycin','J01FA','J01FA06'),('Clarithromycin','J01FA','J01FA09'),('Azithromycin','J01FA','J01FA10'),('Clindamycin','J01FF','J01FF01'),('Quinupristin - dalfopristin','J01FG','J01FG02'),('Tobramycin','J01GB','J01GB01'),('Amikacin','J01GB','J01GB06'),('Ciproflaxin','J01MA','J01MA02'),('Vanomycin','J01XA','J01XA01'),('Teicoplanin','J01XA','J01XA02'),('Colistin','J01XB','J01XB01'),('Tinidazole','J01DD','J01XD02'),('Daptomycin','J01XX','J01XX09'),('Rifampicin','J04','J04AB03'),('Cefalexin','J01DB','J0DBB01');
/*!40000 ALTER TABLE `SupplyAgent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `SupplyAgentForm`
--

LOCK TABLES `SupplyAgentForm` WRITE;
/*!40000 ALTER TABLE `SupplyAgentForm` DISABLE KEYS */;
REPLACE INTO `SupplyAgentForm` (`idSupplyAgentForm`, `ATCCode`, `Restriction`, `SupplyForm`, `DefinedDailyDoseMg`) VALUES (1,'J01GB06','C','P',1000),(2,'J01CR02','A','O',1000),(3,'J01CA04','A','O',1000),(4,'J01CA04','A','P',1000),(5,'J01CA01','D','O',2000),(6,'J01CA01','D','P',2000),(7,'J01FA10','B','O',300),(8,'J01FA10','B','P',500),(9,'J01DF01','B','P',4000),(10,'J01CE08','D','O',3600),(11,'J01CE08','D','P',3600),(12,'J01CE01','A','P',3600),(13,'J01DC04','A','O',1000),(14,'J0DBB01','A','O',2000),(15,'J01DB03','A','P',4000),(16,'J01DB04','A','P',3000),(17,'J01DE01','B','P',2000),(18,'J01DD01','B','P',4000),(19,'J01DC01','A','P',6000),(20,'J01DI02','D','P',1200),(21,'J01DD02','B','P',4000),(22,'J01DD04','D','P',2000),(23,'J01DC02','A','O',500),(24,'J01BA01','D','O',3000),(25,'J01BA01','D','P',3000),(26,'J01MA02','D','O',1000),(27,'J01MA02','D','P',500),(28,'J01FA09','A','O',500),(29,'J01FF01','A','P',1200),(30,'J01FF01','A','P',1800),(31,'J01XX09','B','P',280),(32,'J01CF01','A','O',2000),(33,'J01CF01','A','P',2000),(34,'J01DH04','D','P',1500),(35,'J01AA02','A','O',100),(36,'J01AA02','A','P',100),(37,'J01DH03','C','P',1000),(38,'J01FA01','A','O',1000),(39,'J01FA01','A','P',1000),(40,'J01FA01','D','O',2000),(41,'J01CF05','A','O',2000),(42,'J01CF05','A','P',2000),(43,'J01XC01','A','O',1500),(44,'J01XC01','A','P',1500),(45,'J01GB03','B','P',240),(46,'J01DH51','D','P',2000),(47,'J01FF02','A','O',1800),(48,'J01FF02','A','P',1800),(49,'J01XX08','C','O',1200),(50,'J01XX08','C','P',1200),(51,'J01DH02','B','P',2000),(52,'J01XD01','A','P',1500),(53,'J01XD01','A','O',2000),(55,'J01EE01','A','P',1920);
/*!40000 ALTER TABLE `SupplyAgentForm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `SupplyForm`
--

LOCK TABLES `SupplyForm` WRITE;
/*!40000 ALTER TABLE `SupplyForm` DISABLE KEYS */;
REPLACE INTO `SupplyForm` (`idSupplyForm`, `FormType`) VALUES ('I','Inhalant'),('O','Oral'),('P','Parenteral'),('T','Topical');
/*!40000 ALTER TABLE `SupplyForm` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-10-26 13:13:57
