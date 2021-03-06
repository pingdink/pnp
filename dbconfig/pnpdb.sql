-- MySQL dump 10.16  Distrib 10.1.36-MariaDB, for Win32 (AMD64)
--
-- Host: localhost    Database: pnpdb
-- ------------------------------------------------------
-- Server version	10.1.36-MariaDB

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
-- Table structure for table `Bookings`
--

DROP TABLE IF EXISTS `Bookings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Bookings` (
  `UsernameClient` varchar(255) NOT NULL,
  `UsernameOwner` varchar(255) NOT NULL,
  `PlaceID` varchar(255) NOT NULL,
  `BookDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Bookings`
--

LOCK TABLES `Bookings` WRITE;
/*!40000 ALTER TABLE `Bookings` DISABLE KEYS */;
INSERT INTO `Bookings` VALUES ('jdoe','dgand','9B8111CEF816337D33A3CD33742C1980BC4EAF5A60E18B17AFD002D6B8955B5D','2018-12-25'),('jdoe','oprah','1882AEC64E12C316C0126CF639FDA5F4246188F9F4DF85F9B25BB2EF06FA861B','2019-01-12'),('frodo','dgand','9B8111CEF816337D33A3CD33742C1980BC4EAF5A60E18B17AFD002D6B8955B5D','2018-11-30'),('catniss','oprah','1882AEC64E12C316C0126CF639FDA5F4246188F9F4DF85F9B25BB2EF06FA861B','2018-12-31'),('gandalf','dgand','C0031638E846DFC2F1A7723A134383324C51B227B302F75F684C8320192B6981','2019-05-12'),('bilbo','frodo','561BA5C96BE25908AD3B7D08F1042763AA51447C6C593503363A720795C0D2B0','2018-12-05'),('oprah','catniss','123388A507701765A306910B87098B65032B6827FC3AA6E9BAFE7DF305224B2B','2018-12-20');
/*!40000 ALTER TABLE `Bookings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Places`
--

DROP TABLE IF EXISTS `Places`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Places` (
  `Username` varchar(255) NOT NULL,
  `PlaceID` varchar(255) NOT NULL,
  `StreetName` varchar(255) NOT NULL,
  `ApartmentNumber` varchar(255) DEFAULT NULL,
  `City` varchar(255) NOT NULL,
  `Province` varchar(255) NOT NULL,
  `Country` varchar(255) NOT NULL,
  `PostalCode` varchar(255) NOT NULL,
  `TypeOfSpace` varchar(255) NOT NULL,
  `Description` varchar(255) NOT NULL,
  `PricePerNight` int(11) NOT NULL,
  `Rating` float NOT NULL,
  `RatingNumber` int(11) NOT NULL,
  `Pets` tinyint(1) NOT NULL,
  `Alcohol` tinyint(1) NOT NULL,
  `Wheelchair` tinyint(1) NOT NULL,
  `Smoking` tinyint(1) NOT NULL,
  `OutdoorAccess` tinyint(1) NOT NULL,
  `ImgUrl` varchar(255) NOT NULL,
  PRIMARY KEY (`PlaceID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Places`
--

LOCK TABLES `Places` WRITE;
/*!40000 ALTER TABLE `Places` DISABLE KEYS */;
INSERT INTO `Places` VALUES ('catniss','123388A507701765A306910B87098B65032B6827FC3AA6E9BAFE7DF305224B2B','3555 Edouard-Montpetit','0','Montreal','Quebec','Canada','H3T1K7','Home','Basic Surburban Home',100,3.8,1,1,0,1,1,0,'http://localhost/pnp/place_images/catniss/123388A507701765A306910B87098B65032B6827FC3AA6E9BAFE7DF305224B2B/'),('frodo','143DF2883552099E21E1B6487A2697676DE8F95AF799E28FCE1E8FD9F3AEB0BA','4430 St Catherine Ouest','0','Montreal','Quebec','Canada','H3Z3E4','Apartment','Small chill compact apartment',200,3.8,3,0,1,1,1,1,'http://localhost/pnp/place_images/frodo/143DF2883552099E21E1B6487A2697676DE8F95AF799E28FCE1E8FD9F3AEB0BA/'),('oprah','1882AEC64E12C316C0126CF639FDA5F4246188F9F4DF85F9B25BB2EF06FA861B','1940 Jolicouer Street','0','Montreal','Quebec','Canada','H4E4M2','Warehouse','Industry views and lots of concrete',350,4.2,213,0,1,1,1,1,'http://localhost/pnp/place_images/oprah/1882AEC64E12C316C0126CF639FDA5F4246188F9F4DF85F9B25BB2EF06FA861B/'),('oprah','2EC25AA3959F4743EF6DB708A8A4A1ED089BC56243E943495AA5348492B289CA','16 Kenaston Av','0','Montreal','Quebec','Canada','H3R1L8','Rooftop','Skyline view of downtown with a grill',200,4.5,9913,1,0,1,1,0,'http://localhost/pnp/place_images/oprah/2EC25AA3959F4743EF6DB708A8A4A1ED089BC56243E943495AA5348492B289CA/'),('gandalf','381E0B5128188039AB32016F106B8D6DE73B5884F1C2939169CCC15E1176F210','717 Charron Street','3','Montreal','Quebec','Canada','H8P3T8','Loft','Huge views of Mont Royal',300,2.3,657,1,1,0,0,1,'http://localhost/pnp/place_images/gandalf/381E0B5128188039AB32016F106B8D6DE73B5884F1C2939169CCC15E1176F210/'),('oprah','45271ED8BC0289331D159E489F5AB0E590EE8E6EBCEAED082ADF3303C4213193','5240 Randall Av','0','Montreal','Quebec','Canada','H4V2V3','Club','Typical club',1000,3.4,2111113,1,1,0,0,1,'http://localhost/pnp/place_images/oprah/45271ED8BC0289331D159E489F5AB0E590EE8E6EBCEAED082ADF3303C4213193/'),('frodo','561BA5C96BE25908AD3B7D08F1042763AA51447C6C593503363A720795C0D2B0','5930 Rue Hurteau','4','Montreal','Quebec','Canada','H4E2Y2','Basement','Big open basement',100,4,99913,1,1,0,1,0,'http://localhost/pnp/place_images/frodo/561BA5C96BE25908AD3B7D08F1042763AA51447C6C593503363A720795C0D2B0/'),('jdoe','7812782B6A8C101094D509FC53507AFA0019F681510999FC57FA5E09E79F4570','7503 Rue St Denis','0','Montreal','Quebec','Canada','H2R2E7','Home','3 Floor Apartment Home',400,3.3,21233,1,1,1,1,1,'http://localhost/pnp/place_images/jdoe/7812782B6A8C101094D509FC53507AFA0019F681510999FC57FA5E09E79F4570/'),('dgand','995629BC7AF715D9A88B35FB28EE18D23C87F1AF707E1F685EC100839CFC84D9','5745 17 Av','1','Montreal','Quebec','Canada','H1X2R7','Apartment','Simple Montreal Apartment',100,5,5213,1,0,0,0,0,'http://localhost/pnp/place_images/dgand/995629BC7AF715D9A88B35FB28EE18D23C87F1AF707E1F685EC100839CFC84D9/'),('dgand','9D59F8B5541E61B4D0B2800A77EBE281675AB13FE37350C456D09E3E6F3DB5F9','11727 Rue Notre Dame E','20','Montreal','Quebec','Canada','H1B2X8','Apartment','Top Floor Apartment',34,3.1,12113,1,1,1,0,1,'http://localhost/pnp/place_images/dgand/9D59F8B5541E61B4D0B2800A77EBE281675AB13FE37350C456D09E3E6F3DB5F9/'),('oprah','9F6A7181380048090E82D2082A2A59FDAAEBD3EBF93CDC2AE1C9007069BAFEDE','673044av','0','Montreal','Quebec','Canada','H1T2P2','Penthouse','Downtown Views',800,4.1,21,1,1,1,1,1,'http://localhost/pnp/place_images/oprah/9F6A7181380048090E82D2082A2A59FDAAEBD3EBF93CDC2AE1C9007069BAFEDE/'),('dgand','C0031638E846DFC2F1A7723A134383324C51B227B302F75F684C8320192B6981','7766 George Street','2','Montreal','Quebec','Canada','H8P1E1','Porch','Big deck on back of apartment',80,4.87,23213,0,1,0,0,1,'http://localhost/pnp/place_images/dgand/C0031638E846DFC2F1A7723A134383324C51B227B302F75F684C8320192B6981/'),('jdoe','CA9FC358E81E48777F4FE212882323FE16F8C38A80BB5D2A096096B20945F8C0','6817 43e Av','0','Montreal','Quebec','Canada','H1T2R9','Home','Large Victorian House',100,5,13,1,0,1,1,1,'http://localhost/pnp/place_images/jdoe/CA9FC358E81E48777F4FE212882323FE16F8C38A80BB5D2A096096B20945F8C0/'),('bilbo','D634808F3578E22869AD310D15A2B570F17BF923215DA621C5D68A612800D674','800 Rue Gagne Lasalle','0','Montreal','Quebec','Canada','H8P3W3','Yard','Big Green Yard with Trees',300,0.7,23,0,1,1,1,1,'http://localhost/pnp/place_images/bilbo/D634808F3578E22869AD310D15A2B570F17BF923215DA621C5D68A612800D674/'),('jdoe','E150B9BE6E00295E88E4659B58191599481430F0CD2095413DB3B6FBE22E9620','251 Av Percival','0','Montreal','Quebec','Canada','H4X1T8','Home','Architectural Marvel',250,4,213,1,1,1,0,1,'http://localhost/pnp/place_images/jdoe/E150B9BE6E00295E88E4659B58191599481430F0CD2095413DB3B6FBE22E9620/'),('gandalf','F57DD77131563FC185623214BA1FB786DBA6EEF6BF208FDFECBE660678FB5B20','2630 St Germain Street','2','Montreal','Quebec','Canada','H1W2V3','Loft','Views of the St Lawrence',500,1.1,34,0,1,1,1,1,'http://localhost/pnp/place_images/gandalf/F57DD77131563FC185623214BA1FB786DBA6EEF6BF208FDFECBE660678FB5B20/');
/*!40000 ALTER TABLE `Places` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Users`
--

DROP TABLE IF EXISTS `Users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Users` (
  `Username` varchar(255) NOT NULL,
  `FirstName` varchar(255) NOT NULL,
  `LastName` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `Phone` int(11) NOT NULL,
  `Rating` float NOT NULL,
  `NumOfRatings` int(11) NOT NULL,
  `Gender` int(11) NOT NULL,
  `Description` varchar(255) NOT NULL,
  `Birthdate` int(11) NOT NULL,
  `NumOfPlaces` int(11) NOT NULL,
  PRIMARY KEY (`Username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Users`
--

LOCK TABLES `Users` WRITE;
/*!40000 ALTER TABLE `Users` DISABLE KEYS */;
INSERT INTO `Users` VALUES ('bilbo','Bilbo','Baggins','bobag@shire.com','bilbopass',2147483647,5,50,0,'From Middle Earth',18000101,1),('catniss','Catniss','Everdeen','catniss@hugames.com','catnisspass',2147483647,4.33,888,1,'From District 13',20500923,1),('dgand','Doug','Anderson','dgand@yahoo.com','dougpass',2147483647,39,12,0,'From space',19961201,4),('frodo','Frodo','Baggins','frodo@shire.com','frodopass',2147483647,2.1,2,0,'From Middle Earth',18800203,2),('gandalf','Gandalf','Greybeard','gandalf@wizard.com','gandalfpass',2147483647,2.2,80,0,'From Beyond',12000505,2),('jdoe','Jane','Doe','doe@gmail.com','janepass',2147483647,4.1,22,1,'From the internet',20010810,3),('oprah','Oprah','Winefry','oprah@winefry.com','oprahpass',2147483647,4.987,37,1,'From Chicago',19640312,4);
/*!40000 ALTER TABLE `Users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-12-05 18:27:27
