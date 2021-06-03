-- MySQL dump 10.13  Distrib 5.6.51, for Linux (x86_64)
--
-- Host: localhost    Database: cms
-- ------------------------------------------------------
-- Server version	5.6.51

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
-- Table structure for table `auditlog`
--

DROP TABLE IF EXISTS `auditlog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auditlog` (
  `logId` int(11) NOT NULL AUTO_INCREMENT,
  `logDate` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `message` varchar(255) NOT NULL,
  `entity` varchar(50) NOT NULL,
  `entityId` int(11) NOT NULL,
  `objectAfter` text,
  PRIMARY KEY (`logId`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auditlog`
--

LOCK TABLES `auditlog` WRITE;
/*!40000 ALTER TABLE `auditlog` DISABLE KEYS */;
INSERT INTO `auditlog` VALUES (1,1622625342,0,'Added','Widget',1,'{\"widgetId\":1,\"type\":\"image\",\"layoutId\":\"1\",\"campaignId\":\"1\"}'),(2,1622625342,0,'Saved','Widget',1,'{\"widgetId\":1,\"playlistId\":1,\"ownerId\":1,\"type\":\"image\",\"duration\":\"60\",\"displayOrder\":1,\"useDuration\":\"1\",\"calculatedDuration\":\"60\",\"createdDt\":null,\"modifiedDt\":null,\"fromDt\":0,\"toDt\":2147483647,\"transitionIn\":null,\"transitionOut\":null,\"transitionDurationIn\":null,\"transitionDurationOut\":null,\"widgetOptions\":[{\"widgetId\":1,\"type\":\"attrib\",\"option\":\"uri\",\"value\":\"1.png\"},{\"widgetId\":1,\"type\":\"attrib\",\"option\":\"align\",\"value\":\"center\"},{\"widgetId\":1,\"type\":\"attrib\",\"option\":\"enableStat\",\"value\":\"Inherit\"},{\"widgetId\":1,\"type\":\"attrib\",\"option\":\"name\",\"value\":\"Company Logo\"},{\"widgetId\":1,\"type\":\"attrib\",\"option\":\"scaleType\",\"value\":\"center\"},{\"widgetId\":1,\"type\":\"attrib\",\"option\":\"valign\",\"value\":\"middle\"}],\"mediaIds\":[1],\"audio\":[],\"permissions\":[],\"playlist\":null,\"tempId\":\"53\",\"isNew\":true}'),(3,1622625342,0,'Saved','Playlist',1,'{\"campaignId\":[\"1\"],\"layoutId\":[\"1\"]}'),(4,1622625343,0,'Added','Widget',2,'{\"widgetId\":2,\"type\":\"text\",\"layoutId\":\"1\",\"campaignId\":\"1\"}'),(5,1622625343,0,'Saved','Widget',2,'{\"widgetId\":2,\"playlistId\":2,\"ownerId\":1,\"type\":\"text\",\"duration\":\"10\",\"displayOrder\":1,\"useDuration\":\"1\",\"calculatedDuration\":\"10\",\"createdDt\":null,\"modifiedDt\":null,\"fromDt\":0,\"toDt\":2147483647,\"transitionIn\":null,\"transitionOut\":null,\"transitionDurationIn\":null,\"transitionDurationOut\":null,\"widgetOptions\":[{\"widgetId\":2,\"type\":\"attrib\",\"option\":\"effect\",\"value\":\"none\"},{\"widgetId\":2,\"type\":\"attrib\",\"option\":\"enableStat\",\"value\":\"Inherit\"},{\"widgetId\":2,\"type\":\"attrib\",\"option\":\"lowerLimit\",\"value\":\"0\"},{\"widgetId\":2,\"type\":\"attrib\",\"option\":\"name\",\"value\":\"Header Text\"},{\"widgetId\":2,\"type\":\"attrib\",\"option\":\"ta_text_advanced\",\"value\":\"0\"},{\"widgetId\":2,\"type\":\"attrib\",\"option\":\"upperLimit\",\"value\":\"0\"},{\"widgetId\":2,\"type\":\"attrib\",\"option\":\"xmds\",\"value\":\"1\"},{\"widgetId\":2,\"type\":\"cdata\",\"option\":\"text\",\"value\":\"<p style=\\\"text-align: center;\\\"><span style=\\\"color:#FFFFFF;\\\"><span style=\\\"font-size: 48px;\\\">powered by...<\\/span><\\/span><\\/p>\\n\\n<p style=\\\"text-align: center;\\\"><strong><span style=\\\"font-size:96px;\\\"><span style=\\\"color:#FFFFFF;\\\">Xibo Digital Signage<\\/span><\\/span><\\/strong><\\/p>\\n\"}],\"mediaIds\":[],\"audio\":[],\"permissions\":[],\"playlist\":null,\"tempId\":\"\",\"isNew\":true}'),(6,1622625343,0,'Saved','Playlist',2,'{\"campaignId\":[\"1\"],\"layoutId\":[\"1\"]}'),(7,1622625343,0,'Added','Widget',3,'{\"widgetId\":3,\"type\":\"spacer\",\"layoutId\":\"1\",\"campaignId\":\"1\"}'),(8,1622625343,0,'Saved','Widget',3,'{\"widgetId\":3,\"playlistId\":3,\"ownerId\":1,\"type\":\"spacer\",\"duration\":\"5\",\"displayOrder\":1,\"useDuration\":\"1\",\"calculatedDuration\":\"5\",\"createdDt\":null,\"modifiedDt\":null,\"fromDt\":0,\"toDt\":2147483647,\"transitionIn\":null,\"transitionOut\":null,\"transitionDurationIn\":null,\"transitionDurationOut\":null,\"widgetOptions\":[{\"widgetId\":3,\"type\":\"attrib\",\"option\":\"enableStat\",\"value\":\"Inherit\"},{\"widgetId\":3,\"type\":\"attrib\",\"option\":\"lowerLimit\",\"value\":\"0\"},{\"widgetId\":3,\"type\":\"attrib\",\"option\":\"upperLimit\",\"value\":\"0\"}],\"mediaIds\":[],\"audio\":[],\"permissions\":[],\"playlist\":null,\"tempId\":\"\",\"isNew\":true}'),(9,1622625343,0,'Added','Widget',4,'{\"widgetId\":4,\"type\":\"text\",\"layoutId\":\"1\",\"campaignId\":\"1\"}'),(10,1622625343,0,'Saved','Widget',4,'{\"widgetId\":4,\"playlistId\":3,\"ownerId\":1,\"type\":\"text\",\"duration\":\"20\",\"displayOrder\":2,\"useDuration\":\"1\",\"calculatedDuration\":\"20\",\"createdDt\":null,\"modifiedDt\":null,\"fromDt\":0,\"toDt\":2147483647,\"transitionIn\":null,\"transitionOut\":null,\"transitionDurationIn\":null,\"transitionDurationOut\":null,\"widgetOptions\":[{\"widgetId\":4,\"type\":\"attrib\",\"option\":\"effect\",\"value\":\"fade\"},{\"widgetId\":4,\"type\":\"attrib\",\"option\":\"enableStat\",\"value\":\"Inherit\"},{\"widgetId\":4,\"type\":\"attrib\",\"option\":\"lowerLimit\",\"value\":\"0\"},{\"widgetId\":4,\"type\":\"attrib\",\"option\":\"name\",\"value\":\"Explainer Text\"},{\"widgetId\":4,\"type\":\"attrib\",\"option\":\"speed\",\"value\":\"6000\"},{\"widgetId\":4,\"type\":\"attrib\",\"option\":\"ta_text_advanced\",\"value\":\"0\"},{\"widgetId\":4,\"type\":\"attrib\",\"option\":\"upperLimit\",\"value\":\"0\"},{\"widgetId\":4,\"type\":\"attrib\",\"option\":\"xmds\",\"value\":\"1\"},{\"widgetId\":4,\"type\":\"cdata\",\"option\":\"text\",\"value\":\"<p style=\\\"text-align: center;\\\"><span style=\\\"color:#FFFFFF;\\\"><span style=\\\"font-size: 48px;\\\">This is the Default Layout to assign to displays<\\/span><\\/span><\\/p>\\n\\n<p style=\\\"text-align: center;\\\"><span style=\\\"color:#FFFFFF;\\\"><span style=\\\"font-size: 48px;\\\">It will be shown when nothing else is scheduled<\\/span><\\/span><\\/p>\\n\\n<p style=\\\"text-align: center;\\\"><span style=\\\"font-size: 48px;\\\"><span style=\\\"color:#FFFFFF;\\\">Edit this Default Layout to personalise or create your own to assign to <\\/span><span style=\\\"color: #fcfce5;\\\">your displays!<\\/span><\\/span><\\/p>\\n\\n<p>&nbsp;<\\/p>\\n\"}],\"mediaIds\":[],\"audio\":[],\"permissions\":[],\"playlist\":null,\"tempId\":\"\",\"isNew\":true}'),(11,1622625343,0,'Saved','Playlist',3,'{\"campaignId\":[\"1\"],\"layoutId\":[\"1\"]}'),(12,1622625343,0,'Added','Widget',5,'{\"widgetId\":5,\"type\":\"clock\",\"layoutId\":\"1\",\"campaignId\":\"1\"}'),(13,1622625343,0,'Saved','Widget',5,'{\"widgetId\":5,\"playlistId\":4,\"ownerId\":1,\"type\":\"clock\",\"duration\":\"1\",\"displayOrder\":1,\"useDuration\":\"0\",\"calculatedDuration\":5,\"createdDt\":null,\"modifiedDt\":null,\"fromDt\":0,\"toDt\":2147483647,\"transitionIn\":null,\"transitionOut\":null,\"transitionDurationIn\":null,\"transitionDurationOut\":null,\"widgetOptions\":[{\"widgetId\":5,\"type\":\"attrib\",\"option\":\"clockFace\",\"value\":\"TwentyFourHourClock\"},{\"widgetId\":5,\"type\":\"attrib\",\"option\":\"clockTypeId\",\"value\":\"2\"},{\"widgetId\":5,\"type\":\"attrib\",\"option\":\"enableStat\",\"value\":\"Inherit\"},{\"widgetId\":5,\"type\":\"attrib\",\"option\":\"lowerLimit\",\"value\":\"0\"},{\"widgetId\":5,\"type\":\"attrib\",\"option\":\"offset\",\"value\":\"0\"},{\"widgetId\":5,\"type\":\"attrib\",\"option\":\"showSeconds\",\"value\":\"1\"},{\"widgetId\":5,\"type\":\"attrib\",\"option\":\"ta_text_advanced\",\"value\":\"0\"},{\"widgetId\":5,\"type\":\"attrib\",\"option\":\"theme\",\"value\":\"1\"},{\"widgetId\":5,\"type\":\"attrib\",\"option\":\"upperLimit\",\"value\":\"0\"},{\"widgetId\":5,\"type\":\"cdata\",\"option\":\"format\",\"value\":\"<p style=\\\"text-align: justify;\\\"><span style=\\\"color:#FFFFFF;\\\"><span style=\\\"font-size: 48px;\\\">[HH:mm]<\\/span><\\/span><\\/p>\\n\"}],\"mediaIds\":[],\"audio\":[],\"permissions\":[],\"playlist\":null,\"tempId\":\"\",\"isNew\":true}'),(14,1622625343,0,'Saved','Playlist',4,'{\"campaignId\":[\"1\"],\"layoutId\":[\"1\"]}'),(15,1622625347,1,'Login Granted','User',1,'{\"IPAddress\":\"172.18.0.1\",\"UserAgent\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/90.0.4430.212 Safari\\/537.36\"}'),(16,1622625361,0,'Saved','Playlist',3,'{\"duration\":\"0 > 25\",\"requiresDurationUpdate\":\"1 > 0\",\"campaignId\":[\"1\"],\"layoutId\":[\"1\"]}'),(17,1622625361,0,'Saved','Playlist',2,'{\"duration\":\"0 > 10\",\"requiresDurationUpdate\":\"1 > 0\",\"campaignId\":[\"1\"],\"layoutId\":[\"1\"]}'),(18,1622625361,0,'Saved','Playlist',1,'{\"duration\":\"0 > 60\",\"requiresDurationUpdate\":\"1 > 0\",\"campaignId\":[\"1\"],\"layoutId\":[\"1\"]}'),(19,1622625361,0,'Saved','Playlist',4,'{\"duration\":\"0 > 5\",\"requiresDurationUpdate\":\"1 > 0\",\"campaignId\":[\"1\"],\"layoutId\":[\"1\"]}'),(20,1622625361,0,'Saved','Playlist',1,'{\"campaignId\":[\"1\"],\"layoutId\":[\"1\"]}'),(21,1622625361,0,'Saved','Playlist',2,'{\"campaignId\":[\"1\"],\"layoutId\":[\"1\"]}'),(22,1622625361,0,'Saved','Playlist',3,'{\"campaignId\":[\"1\"],\"layoutId\":[\"1\"]}'),(23,1622625361,0,'Saved','Playlist',4,'{\"campaignId\":[\"1\"],\"layoutId\":[\"1\"]}'),(24,1622714832,1,'Login Granted','User',1,'{\"IPAddress\":\"172.19.0.1\",\"UserAgent\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/90.0.4430.212 Safari\\/537.36\"}'),(25,1622714933,1,'Display Saved','Display',1,'{\"licensed\":\"0 > 1\"}'),(26,1622714941,1,'Display Saved','Display',1,'[]'),(27,1622714974,1,'Login Granted','User',1,'{\"IPAddress\":\"172.19.0.1\",\"UserAgent\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/90.0.4430.212 Safari\\/537.36\"}');
/*!40000 ALTER TABLE `auditlog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bandwidth`
--

DROP TABLE IF EXISTS `bandwidth`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bandwidth` (
  `displayId` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `month` int(11) NOT NULL,
  `size` bigint(20) NOT NULL,
  PRIMARY KEY (`displayId`,`type`,`month`),
  KEY `type` (`type`),
  CONSTRAINT `bandwidth_ibfk_1` FOREIGN KEY (`type`) REFERENCES `bandwidthtype` (`bandwidthTypeId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bandwidth`
--

LOCK TABLES `bandwidth` WRITE;
/*!40000 ALTER TABLE `bandwidth` DISABLE KEYS */;
INSERT INTO `bandwidth` VALUES (1,1,1622588400,2793),(1,2,1622588400,6710),(1,3,1622588400,922),(1,5,1622588400,8376),(1,6,1622588400,2897),(1,9,1622588400,290);
/*!40000 ALTER TABLE `bandwidth` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bandwidthtype`
--

DROP TABLE IF EXISTS `bandwidthtype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bandwidthtype` (
  `bandwidthTypeId` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(25) NOT NULL,
  PRIMARY KEY (`bandwidthTypeId`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bandwidthtype`
--

LOCK TABLES `bandwidthtype` WRITE;
/*!40000 ALTER TABLE `bandwidthtype` DISABLE KEYS */;
INSERT INTO `bandwidthtype` VALUES (1,'Register'),(2,'Required Files'),(3,'Schedule'),(4,'Get File'),(5,'Get Resource'),(6,'Media Inventory'),(7,'Notify Status'),(8,'Submit Stats'),(9,'Submit Log'),(10,'Blacklist'),(11,'Screen Shot');
/*!40000 ALTER TABLE `bandwidthtype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blacklist`
--

DROP TABLE IF EXISTS `blacklist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blacklist` (
  `blacklistId` int(11) NOT NULL AUTO_INCREMENT,
  `mediaId` int(11) NOT NULL,
  `displayId` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `reportingDisplayId` int(11) DEFAULT NULL,
  `reason` text,
  `isIgnored` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`blacklistId`),
  KEY `mediaId` (`mediaId`),
  KEY `displayId` (`displayId`),
  CONSTRAINT `blacklist_ibfk_1` FOREIGN KEY (`mediaId`) REFERENCES `media` (`mediaId`),
  CONSTRAINT `blacklist_ibfk_2` FOREIGN KEY (`displayId`) REFERENCES `display` (`displayId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blacklist`
--

LOCK TABLES `blacklist` WRITE;
/*!40000 ALTER TABLE `blacklist` DISABLE KEYS */;
/*!40000 ALTER TABLE `blacklist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `campaign`
--

DROP TABLE IF EXISTS `campaign`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `campaign` (
  `campaignId` int(11) NOT NULL AUTO_INCREMENT,
  `campaign` varchar(254) NOT NULL,
  `isLayoutSpecific` tinyint(4) NOT NULL,
  `userId` int(11) NOT NULL,
  PRIMARY KEY (`campaignId`),
  KEY `userId` (`userId`),
  CONSTRAINT `campaign_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `user` (`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `campaign`
--

LOCK TABLES `campaign` WRITE;
/*!40000 ALTER TABLE `campaign` DISABLE KEYS */;
INSERT INTO `campaign` VALUES (1,'Default Layout',1,1);
/*!40000 ALTER TABLE `campaign` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `command`
--

DROP TABLE IF EXISTS `command`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `command` (
  `commandId` int(11) NOT NULL AUTO_INCREMENT,
  `command` varchar(254) NOT NULL,
  `code` varchar(50) NOT NULL,
  `description` varchar(1000) DEFAULT NULL,
  `userId` int(11) NOT NULL,
  PRIMARY KEY (`commandId`),
  KEY `userId` (`userId`),
  CONSTRAINT `command_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `user` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `command`
--

LOCK TABLES `command` WRITE;
/*!40000 ALTER TABLE `command` DISABLE KEYS */;
/*!40000 ALTER TABLE `command` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dataset`
--

DROP TABLE IF EXISTS `dataset`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dataset` (
  `dataSetId` int(11) NOT NULL AUTO_INCREMENT,
  `dataSet` varchar(50) NOT NULL,
  `description` varchar(254) DEFAULT NULL,
  `userId` int(11) NOT NULL,
  `lastDataEdit` int(11) NOT NULL DEFAULT '0',
  `code` varchar(50) DEFAULT NULL,
  `isLookup` tinyint(4) NOT NULL,
  `isRemote` tinyint(4) NOT NULL DEFAULT '0',
  `method` enum('GET','POST') DEFAULT NULL,
  `uri` varchar(250) DEFAULT NULL,
  `postData` text,
  `authentication` varchar(10) DEFAULT NULL,
  `username` varchar(250) DEFAULT NULL,
  `password` varchar(250) DEFAULT NULL,
  `customHeaders` text,
  `refreshRate` int(11) NOT NULL DEFAULT '86400',
  `clearRate` int(11) NOT NULL DEFAULT '0',
  `runsAfter` int(11) DEFAULT NULL,
  `dataRoot` varchar(250) DEFAULT NULL,
  `lastSync` int(11) NOT NULL DEFAULT '0',
  `summarize` varchar(10) DEFAULT NULL,
  `summarizeField` varchar(250) DEFAULT NULL,
  `lastClear` int(11) NOT NULL DEFAULT '0',
  `ignoreFirstRow` tinyint(4) DEFAULT NULL,
  `sourceId` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`dataSetId`),
  KEY `userId` (`userId`),
  CONSTRAINT `dataset_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `user` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dataset`
--

LOCK TABLES `dataset` WRITE;
/*!40000 ALTER TABLE `dataset` DISABLE KEYS */;
/*!40000 ALTER TABLE `dataset` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `datasetcolumn`
--

DROP TABLE IF EXISTS `datasetcolumn`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `datasetcolumn` (
  `dataSetColumnId` int(11) NOT NULL AUTO_INCREMENT,
  `dataSetId` int(11) NOT NULL,
  `heading` varchar(50) NOT NULL,
  `dataTypeId` int(11) NOT NULL,
  `dataSetColumnTypeId` int(11) NOT NULL,
  `listContent` varchar(1000) DEFAULT NULL,
  `columnOrder` smallint(6) NOT NULL,
  `formula` varchar(1000) DEFAULT NULL,
  `remoteField` varchar(250) DEFAULT NULL,
  `showFilter` tinyint(4) NOT NULL DEFAULT '1',
  `showSort` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`dataSetColumnId`),
  KEY `dataSetId` (`dataSetId`),
  KEY `dataTypeId` (`dataTypeId`),
  KEY `dataSetColumnTypeId` (`dataSetColumnTypeId`),
  CONSTRAINT `datasetcolumn_ibfk_1` FOREIGN KEY (`dataSetId`) REFERENCES `dataset` (`dataSetId`),
  CONSTRAINT `datasetcolumn_ibfk_2` FOREIGN KEY (`dataTypeId`) REFERENCES `datatype` (`dataTypeId`),
  CONSTRAINT `datasetcolumn_ibfk_3` FOREIGN KEY (`dataSetColumnTypeId`) REFERENCES `datasetcolumntype` (`dataSetColumnTypeId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `datasetcolumn`
--

LOCK TABLES `datasetcolumn` WRITE;
/*!40000 ALTER TABLE `datasetcolumn` DISABLE KEYS */;
/*!40000 ALTER TABLE `datasetcolumn` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `datasetcolumntype`
--

DROP TABLE IF EXISTS `datasetcolumntype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `datasetcolumntype` (
  `dataSetColumnTypeId` int(11) NOT NULL AUTO_INCREMENT,
  `dataSetColumnType` varchar(100) NOT NULL,
  PRIMARY KEY (`dataSetColumnTypeId`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `datasetcolumntype`
--

LOCK TABLES `datasetcolumntype` WRITE;
/*!40000 ALTER TABLE `datasetcolumntype` DISABLE KEYS */;
INSERT INTO `datasetcolumntype` VALUES (1,'Value'),(2,'Formula'),(3,'Remote');
/*!40000 ALTER TABLE `datasetcolumntype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `datasetrss`
--

DROP TABLE IF EXISTS `datasetrss`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `datasetrss` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dataSetId` int(11) NOT NULL,
  `psk` varchar(254) NOT NULL,
  `title` varchar(254) NOT NULL,
  `author` varchar(254) NOT NULL,
  `titleColumnId` int(11) DEFAULT NULL,
  `summaryColumnId` int(11) DEFAULT NULL,
  `contentColumnId` int(11) DEFAULT NULL,
  `publishedDateColumnId` int(11) DEFAULT NULL,
  `sort` text,
  `filter` text,
  PRIMARY KEY (`id`),
  KEY `dataSetId` (`dataSetId`),
  CONSTRAINT `datasetrss_ibfk_1` FOREIGN KEY (`dataSetId`) REFERENCES `dataset` (`dataSetId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `datasetrss`
--

LOCK TABLES `datasetrss` WRITE;
/*!40000 ALTER TABLE `datasetrss` DISABLE KEYS */;
/*!40000 ALTER TABLE `datasetrss` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `datatype`
--

DROP TABLE IF EXISTS `datatype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `datatype` (
  `dataTypeId` int(11) NOT NULL AUTO_INCREMENT,
  `dataType` varchar(100) NOT NULL,
  PRIMARY KEY (`dataTypeId`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `datatype`
--

LOCK TABLES `datatype` WRITE;
/*!40000 ALTER TABLE `datatype` DISABLE KEYS */;
INSERT INTO `datatype` VALUES (1,'String'),(2,'Number'),(3,'Date'),(4,'External Image'),(5,'Library Image'),(6,'HTML');
/*!40000 ALTER TABLE `datatype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `daypart`
--

DROP TABLE IF EXISTS `daypart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `daypart` (
  `dayPartId` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `description` varchar(50) DEFAULT NULL,
  `isRetired` tinyint(4) NOT NULL DEFAULT '0',
  `userId` int(11) NOT NULL,
  `startTime` varchar(8) NOT NULL DEFAULT '00:00:00',
  `endTime` varchar(8) NOT NULL DEFAULT '00:00:00',
  `exceptions` text,
  `isAlways` tinyint(4) NOT NULL DEFAULT '0',
  `isCustom` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`dayPartId`),
  KEY `userId` (`userId`),
  CONSTRAINT `daypart_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `user` (`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `daypart`
--

LOCK TABLES `daypart` WRITE;
/*!40000 ALTER TABLE `daypart` DISABLE KEYS */;
INSERT INTO `daypart` VALUES (1,'Custom','User specifies the from/to date',0,1,'','','',0,1),(2,'Always','Event runs always',0,1,'','','',1,0);
/*!40000 ALTER TABLE `daypart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `display`
--

DROP TABLE IF EXISTS `display`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `display` (
  `displayId` int(11) NOT NULL AUTO_INCREMENT,
  `display` varchar(50) NOT NULL,
  `auditingUntil` int(11) NOT NULL DEFAULT '0',
  `defaultLayoutId` int(11) NOT NULL,
  `license` varchar(40) DEFAULT NULL,
  `licensed` tinyint(4) NOT NULL DEFAULT '0',
  `loggedIn` tinyint(4) NOT NULL DEFAULT '0',
  `lastaccessed` int(11) DEFAULT NULL,
  `inc_schedule` tinyint(4) NOT NULL DEFAULT '0',
  `email_alert` int(11) DEFAULT '0',
  `alert_timeout` int(11) DEFAULT '0',
  `clientAddress` varchar(50) DEFAULT NULL,
  `mediaInventoryStatus` tinyint(4) NOT NULL DEFAULT '0',
  `macAddress` varchar(254) DEFAULT NULL,
  `lastChanged` int(11) DEFAULT NULL,
  `numberOfMacAddressChanges` int(11) DEFAULT '0',
  `lastWakeOnLanCommandSent` int(11) DEFAULT NULL,
  `wakeOnLan` tinyint(4) NOT NULL DEFAULT '0',
  `wakeOnLanTime` varchar(5) DEFAULT NULL,
  `broadCastAddress` varchar(100) DEFAULT NULL,
  `secureOn` varchar(17) DEFAULT NULL,
  `cidr` varchar(6) DEFAULT NULL,
  `geoLocation` point DEFAULT NULL,
  `client_type` varchar(20) DEFAULT NULL,
  `client_version` varchar(15) DEFAULT NULL,
  `client_code` smallint(6) DEFAULT NULL,
  `displayProfileId` int(11) DEFAULT NULL,
  `screenShotRequested` tinyint(4) NOT NULL DEFAULT '0',
  `storageAvailableSpace` bigint(20) DEFAULT NULL,
  `storageTotalSpace` bigint(20) DEFAULT NULL,
  `xmrChannel` varchar(254) DEFAULT NULL,
  `xmrPubKey` text,
  `lastCommandSuccess` tinyint(4) NOT NULL DEFAULT '2',
  `deviceName` varchar(254) DEFAULT NULL,
  `timeZone` varchar(254) DEFAULT NULL,
  `overrideConfig` text,
  `newCmsAddress` varchar(40) DEFAULT NULL,
  `newCmsKey` varchar(40) DEFAULT NULL,
  `orientation` varchar(10) DEFAULT NULL,
  `resolution` varchar(10) DEFAULT NULL,
  `commercialLicence` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`displayId`),
  UNIQUE KEY `license` (`license`),
  KEY `defaultLayoutId` (`defaultLayoutId`),
  KEY `displayProfileId` (`displayProfileId`),
  CONSTRAINT `display_ibfk_1` FOREIGN KEY (`displayProfileId`) REFERENCES `displayprofile` (`displayProfileId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `display`
--

LOCK TABLES `display` WRITE;
/*!40000 ALTER TABLE `display` DISABLE KEYS */;
INSERT INTO `display` VALUES (1,'Display',0,1,'2501f165b236f7c131e6593f12327adc',1,1,1622714982,0,0,0,'172.19.0.1',1,'74:40:bb:0a:a6:89',0,0,0,0,NULL,NULL,NULL,NULL,NULL,'linux','1.8-R6',108,NULL,0,NULL,NULL,'1c4ca177cb155b1ae82642c4fd42b9da','-----BEGIN PUBLIC KEY-----\nMIGdMA0GCSqGSIb3DQEBAQUAA4GLADCBhwKBgQC2sbwv8oYzG3WlgRkYLvNJiOk9\n7PfbShVJVPMQ0XNhNYrr9rhOvXyrFLP4It+nCha4rWkbS/oxtuepF8W1mh1MI8xU\nc0EBUrKk21bq+4K2kMqo2fbazLeR4Zj3f22g6h0+5dp+bKYZZK9YX8nCweG+maD4\n9b1M2DeKu9mvCj/7tQIBEQ==\n-----END PUBLIC KEY-----',0,NULL,NULL,'[]',NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `display` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `displayevent`
--

DROP TABLE IF EXISTS `displayevent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `displayevent` (
  `displayEventId` int(11) NOT NULL AUTO_INCREMENT,
  `eventDate` int(11) NOT NULL,
  `displayId` int(11) NOT NULL,
  `start` int(11) NOT NULL,
  `end` int(11) DEFAULT NULL,
  PRIMARY KEY (`displayEventId`),
  KEY `eventDate` (`eventDate`),
  KEY `displayId` (`displayId`,`end`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `displayevent`
--

LOCK TABLES `displayevent` WRITE;
/*!40000 ALTER TABLE `displayevent` DISABLE KEYS */;
/*!40000 ALTER TABLE `displayevent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `displaygroup`
--

DROP TABLE IF EXISTS `displaygroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `displaygroup` (
  `displayGroupId` int(11) NOT NULL AUTO_INCREMENT,
  `displayGroup` varchar(50) NOT NULL,
  `description` varchar(254) DEFAULT NULL,
  `isDisplaySpecific` tinyint(4) NOT NULL DEFAULT '0',
  `isDynamic` tinyint(4) NOT NULL DEFAULT '0',
  `dynamicCriteria` varchar(254) DEFAULT NULL,
  `userId` int(11) NOT NULL,
  `dynamicCriteriaTags` varchar(254) DEFAULT NULL,
  `bandwidthLimit` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`displayGroupId`),
  KEY `userId` (`userId`),
  CONSTRAINT `displaygroup_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `user` (`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `displaygroup`
--

LOCK TABLES `displaygroup` WRITE;
/*!40000 ALTER TABLE `displaygroup` DISABLE KEYS */;
INSERT INTO `displaygroup` VALUES (1,'Display',NULL,1,0,NULL,1,NULL,0);
/*!40000 ALTER TABLE `displaygroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `displayprofile`
--

DROP TABLE IF EXISTS `displayprofile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `displayprofile` (
  `displayProfileId` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `type` varchar(15) NOT NULL,
  `config` text,
  `isDefault` tinyint(4) NOT NULL DEFAULT '0',
  `userId` int(11) NOT NULL,
  PRIMARY KEY (`displayProfileId`),
  KEY `userId` (`userId`),
  CONSTRAINT `displayprofile_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `user` (`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `displayprofile`
--

LOCK TABLES `displayprofile` WRITE;
/*!40000 ALTER TABLE `displayprofile` DISABLE KEYS */;
INSERT INTO `displayprofile` VALUES (1,'Windows','windows','[]',1,1),(2,'Android','android','[]',1,1),(3,'webOS','lg','[]',1,1),(4,'Tizen','sssp','[]',1,1),(5,'Linux','linux','[]',1,1);
/*!40000 ALTER TABLE `displayprofile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `group`
--

DROP TABLE IF EXISTS `group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `group` (
  `groupId` int(11) NOT NULL AUTO_INCREMENT,
  `group` varchar(50) NOT NULL,
  `isUserSpecific` tinyint(4) NOT NULL DEFAULT '0',
  `isEveryone` tinyint(4) NOT NULL DEFAULT '0',
  `libraryQuota` int(11) DEFAULT NULL,
  `isSystemNotification` tinyint(4) NOT NULL DEFAULT '0',
  `isDisplayNotification` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`groupId`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `group`
--

LOCK TABLES `group` WRITE;
/*!40000 ALTER TABLE `group` DISABLE KEYS */;
INSERT INTO `group` VALUES (1,'Users',0,0,NULL,0,0),(2,'Everyone',0,1,NULL,0,0),(3,'xibo_admin',1,0,0,1,0),(4,'System Notifications',0,0,NULL,1,0),(5,'Playlist Dashboard User',0,0,NULL,0,0);
/*!40000 ALTER TABLE `group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `help`
--

DROP TABLE IF EXISTS `help`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `help` (
  `helpId` int(11) NOT NULL AUTO_INCREMENT,
  `topic` varchar(254) NOT NULL,
  `category` varchar(254) NOT NULL DEFAULT 'General',
  `link` varchar(254) NOT NULL,
  PRIMARY KEY (`helpId`)
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `help`
--

LOCK TABLES `help` WRITE;
/*!40000 ALTER TABLE `help` DISABLE KEYS */;
INSERT INTO `help` VALUES (1,'Layout','General','layouts.html'),(2,'Content','General','media.html'),(4,'Schedule','General','scheduling.html'),(5,'Group','General','users_groups.html'),(6,'Admin','General','cms_settings.html'),(7,'Report','General','troubleshooting.html'),(8,'Dashboard','General','tour.html'),(9,'User','General','users.html'),(10,'Display','General','displays.html'),(11,'DisplayGroup','General','displays_groups.html'),(12,'Layout','Add','layouts.html#Add_Layout'),(13,'Layout','Background','layouts_designer.html#Background'),(14,'Content','Assign','layouts_playlists.html#Assigning_Content'),(15,'Layout','RegionOptions','layouts_regions.html'),(16,'Content','AddtoLibrary','media_library.html'),(17,'Display','Edit','displays.html#Display_Edit'),(18,'Display','Delete','displays.html#Display_Delete'),(19,'Displays','Groups','displays_groups.html#Group_Members'),(20,'UserGroup','Add','users_groups.html#Adding_Group'),(21,'User','Add','users_administration.html#Add_User'),(22,'User','Delete','users_administration.html#Delete_User'),(23,'Content','Config','cms_settings.html#Content'),(24,'LayoutMedia','Permissions','users_permissions.html'),(25,'Region','Permissions','users_permissions.html'),(26,'Library','Assign','layouts_playlists.html#Add_From_Library'),(27,'Media','Delete','media_library.html#Delete'),(28,'DisplayGroup','Add','displays_groups.html#Add_Group'),(29,'DisplayGroup','Edit','displays_groups.html#Edit_Group'),(30,'DisplayGroup','Delete','displays_groups.html#Delete_Group'),(31,'DisplayGroup','Members','displays_groups.html#Group_Members'),(32,'DisplayGroup','Permissions','users_permissions.html'),(34,'Schedule','ScheduleNow','scheduling_now.html'),(35,'Layout','Delete','layouts.html#Delete_Layout'),(36,'Layout','Copy','layouts.html#Copy_Layout'),(37,'Schedule','Edit','scheduling_events.html#Edit'),(38,'Schedule','Add','scheduling_events.html#Add'),(39,'Layout','Permissions','users_permissions.html'),(40,'Display','MediaInventory','displays.html#Media_Inventory'),(41,'User','ChangePassword','users.html#Change_Password'),(42,'Schedule','Delete','scheduling_events.html'),(43,'Layout','Edit','layouts_designer.html#Edit_Layout'),(44,'Media','Permissions','users_permissions.html'),(45,'Display','DefaultLayout','displays.html#DefaultLayout'),(46,'UserGroup','Edit','users_groups.html#Edit_Group'),(47,'UserGroup','Members','users_groups.html#Group_Member'),(48,'User','PageSecurity','users_permissions.html#Page_Security'),(49,'User','MenuSecurity','users_permissions.html#Menu_Security'),(50,'UserGroup','Delete','users_groups.html#Delete_Group'),(51,'User','Edit','users_administration.html#Edit_User'),(52,'User','Applications','users_administration.html#Users_MyApplications'),(53,'User','SetHomepage','users_administration.html#Media_Dashboard'),(54,'DataSet','General','media_datasets.html'),(55,'DataSet','Add','media_datasets.html#Create_Dataset'),(56,'DataSet','Edit','media_datasets.html#Edit_Dataset'),(57,'DataSet','Delete','media_datasets.html#Delete_Dataset'),(58,'DataSet','AddColumn','media_datasets.html#Dataset_Column'),(59,'DataSet','EditColumn','media_datasets.html#Dataset_Column'),(60,'DataSet','DeleteColumn','media_datasets.html#Dataset_Column'),(61,'DataSet','Data','media_datasets.html#Dataset_Row'),(62,'DataSet','Permissions','users_permissions.html'),(63,'Fault','General','troubleshooting.html#Report_Fault'),(65,'Stats','General','displays_metrics.html'),(66,'Resolution','General','layouts_resolutions.html'),(67,'Template','General','layouts_templates.html'),(68,'Services','Register','#Registered_Applications'),(69,'OAuth','General','api_oauth.html'),(70,'Services','Log','api_oauth.html#oAuthLog'),(71,'Module','Edit','media_modules.html'),(72,'Module','General','media_modules.html'),(73,'Campaign','General','layouts_campaigns.html'),(74,'License','General','licence_information.html'),(75,'DataSet','ViewColumns','media_datasets.html#Dataset_Column'),(76,'Campaign','Permissions','users_permissions.html'),(77,'Transition','Edit','layouts_transitions.html'),(78,'User','SetPassword','users_administration.html#Set_Password'),(79,'DataSet','ImportCSV','media_datasets.htmlmedia_datasets.html#Import_CSV'),(80,'DisplayGroup','FileAssociations','displays_fileassociations.html'),(81,'Statusdashboard','General','tour_status_dashboard.html'),(82,'Displayprofile','General','displays_settings.html'),(83,'DisplayProfile','Edit','displays_settings.html#edit'),(84,'DisplayProfile','Delete','displays_settings.html#delete');
/*!40000 ALTER TABLE `help` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `layout`
--

DROP TABLE IF EXISTS `layout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `layout` (
  `layoutId` int(11) NOT NULL AUTO_INCREMENT,
  `layout` varchar(254) NOT NULL,
  `userId` int(11) NOT NULL,
  `createdDt` datetime NOT NULL,
  `modifiedDt` datetime NOT NULL,
  `description` varchar(254) DEFAULT NULL,
  `retired` tinyint(4) NOT NULL DEFAULT '0',
  `duration` int(11) NOT NULL,
  `backgroundImageId` int(11) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `width` decimal(10,0) NOT NULL,
  `height` decimal(10,0) NOT NULL,
  `backgroundColor` varchar(25) DEFAULT NULL,
  `backgroundzIndex` int(11) NOT NULL DEFAULT '1',
  `schemaVersion` tinyint(4) NOT NULL DEFAULT '2',
  `statusMessage` text,
  `parentId` int(11) DEFAULT NULL,
  `publishedStatusId` int(11) NOT NULL DEFAULT '1',
  `enableStat` int(11) DEFAULT NULL,
  `publishedDate` datetime DEFAULT NULL,
  `autoApplyTransitions` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`layoutId`),
  KEY `userId` (`userId`),
  KEY `backgroundImageId` (`backgroundImageId`),
  KEY `publishedStatusId` (`publishedStatusId`),
  CONSTRAINT `layout_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `user` (`userId`),
  CONSTRAINT `layout_ibfk_2` FOREIGN KEY (`backgroundImageId`) REFERENCES `media` (`mediaId`),
  CONSTRAINT `layout_ibfk_3` FOREIGN KEY (`publishedStatusId`) REFERENCES `status` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `layout`
--

LOCK TABLES `layout` WRITE;
/*!40000 ALTER TABLE `layout` DISABLE KEYS */;
INSERT INTO `layout` VALUES (1,'Default Layout',1,'2021-06-02 10:15:42','2021-06-02 10:16:01','Default Layout assigned to Players to show in the event scheduled content cannot be shown.',0,60,2,1,1920,1080,'#03031a',0,3,NULL,NULL,1,0,NULL,0);
/*!40000 ALTER TABLE `layout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `layouthistory`
--

DROP TABLE IF EXISTS `layouthistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `layouthistory` (
  `layoutHistoryId` int(11) NOT NULL AUTO_INCREMENT,
  `campaignId` int(11) NOT NULL,
  `layoutId` int(11) NOT NULL,
  `publishedDate` datetime NOT NULL,
  PRIMARY KEY (`layoutHistoryId`),
  KEY `campaignId` (`campaignId`),
  CONSTRAINT `layouthistory_ibfk_1` FOREIGN KEY (`campaignId`) REFERENCES `campaign` (`campaignId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `layouthistory`
--

LOCK TABLES `layouthistory` WRITE;
/*!40000 ALTER TABLE `layouthistory` DISABLE KEYS */;
INSERT INTO `layouthistory` VALUES (1,1,1,'2021-06-02 10:15:42');
/*!40000 ALTER TABLE `layouthistory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lkcampaignlayout`
--

DROP TABLE IF EXISTS `lkcampaignlayout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lkcampaignlayout` (
  `lkCampaignLayoutId` int(11) NOT NULL AUTO_INCREMENT,
  `campaignId` int(11) NOT NULL,
  `layoutId` int(11) NOT NULL,
  `displayOrder` int(11) NOT NULL,
  PRIMARY KEY (`lkCampaignLayoutId`),
  UNIQUE KEY `campaignId` (`campaignId`,`layoutId`,`displayOrder`),
  KEY `layoutId` (`layoutId`),
  CONSTRAINT `lkcampaignlayout_ibfk_1` FOREIGN KEY (`campaignId`) REFERENCES `campaign` (`campaignId`),
  CONSTRAINT `lkcampaignlayout_ibfk_2` FOREIGN KEY (`layoutId`) REFERENCES `layout` (`layoutId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lkcampaignlayout`
--

LOCK TABLES `lkcampaignlayout` WRITE;
/*!40000 ALTER TABLE `lkcampaignlayout` DISABLE KEYS */;
INSERT INTO `lkcampaignlayout` VALUES (1,1,1,1);
/*!40000 ALTER TABLE `lkcampaignlayout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lkcommanddisplayprofile`
--

DROP TABLE IF EXISTS `lkcommanddisplayprofile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lkcommanddisplayprofile` (
  `commandId` int(11) NOT NULL,
  `displayProfileId` int(11) NOT NULL,
  `commandString` varchar(1000) NOT NULL,
  `validationString` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`commandId`,`displayProfileId`),
  KEY `displayProfileId` (`displayProfileId`),
  CONSTRAINT `lkcommanddisplayprofile_ibfk_1` FOREIGN KEY (`commandId`) REFERENCES `command` (`commandId`),
  CONSTRAINT `lkcommanddisplayprofile_ibfk_2` FOREIGN KEY (`displayProfileId`) REFERENCES `displayprofile` (`displayProfileId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lkcommanddisplayprofile`
--

LOCK TABLES `lkcommanddisplayprofile` WRITE;
/*!40000 ALTER TABLE `lkcommanddisplayprofile` DISABLE KEYS */;
/*!40000 ALTER TABLE `lkcommanddisplayprofile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lkdgdg`
--

DROP TABLE IF EXISTS `lkdgdg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lkdgdg` (
  `parentId` int(11) NOT NULL,
  `childId` int(11) NOT NULL,
  `depth` int(11) NOT NULL,
  KEY `parentId` (`parentId`,`childId`,`depth`),
  KEY `childId` (`childId`,`parentId`,`depth`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lkdgdg`
--

LOCK TABLES `lkdgdg` WRITE;
/*!40000 ALTER TABLE `lkdgdg` DISABLE KEYS */;
INSERT INTO `lkdgdg` VALUES (1,1,0);
/*!40000 ALTER TABLE `lkdgdg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lkdisplaydg`
--

DROP TABLE IF EXISTS `lkdisplaydg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lkdisplaydg` (
  `LkDisplayDGID` int(11) NOT NULL AUTO_INCREMENT,
  `displayGroupId` int(11) NOT NULL,
  `displayId` int(11) NOT NULL,
  PRIMARY KEY (`LkDisplayDGID`),
  UNIQUE KEY `displayGroupId` (`displayGroupId`,`displayId`),
  KEY `displayId` (`displayId`),
  CONSTRAINT `lkdisplaydg_ibfk_1` FOREIGN KEY (`displayGroupId`) REFERENCES `displaygroup` (`displayGroupId`),
  CONSTRAINT `lkdisplaydg_ibfk_2` FOREIGN KEY (`displayId`) REFERENCES `display` (`displayId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lkdisplaydg`
--

LOCK TABLES `lkdisplaydg` WRITE;
/*!40000 ALTER TABLE `lkdisplaydg` DISABLE KEYS */;
INSERT INTO `lkdisplaydg` VALUES (1,1,1);
/*!40000 ALTER TABLE `lkdisplaydg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lklayoutdisplaygroup`
--

DROP TABLE IF EXISTS `lklayoutdisplaygroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lklayoutdisplaygroup` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `displayGroupId` int(11) NOT NULL,
  `layoutId` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `displayGroupId` (`displayGroupId`,`layoutId`),
  KEY `layoutId` (`layoutId`),
  CONSTRAINT `lklayoutdisplaygroup_ibfk_1` FOREIGN KEY (`displayGroupId`) REFERENCES `displaygroup` (`displayGroupId`),
  CONSTRAINT `lklayoutdisplaygroup_ibfk_2` FOREIGN KEY (`layoutId`) REFERENCES `layout` (`layoutId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lklayoutdisplaygroup`
--

LOCK TABLES `lklayoutdisplaygroup` WRITE;
/*!40000 ALTER TABLE `lklayoutdisplaygroup` DISABLE KEYS */;
/*!40000 ALTER TABLE `lklayoutdisplaygroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lkmediadisplaygroup`
--

DROP TABLE IF EXISTS `lkmediadisplaygroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lkmediadisplaygroup` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `displayGroupId` int(11) NOT NULL,
  `mediaId` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `displayGroupId` (`displayGroupId`,`mediaId`),
  KEY `mediaId` (`mediaId`),
  CONSTRAINT `lkmediadisplaygroup_ibfk_1` FOREIGN KEY (`displayGroupId`) REFERENCES `displaygroup` (`displayGroupId`),
  CONSTRAINT `lkmediadisplaygroup_ibfk_2` FOREIGN KEY (`mediaId`) REFERENCES `media` (`mediaId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lkmediadisplaygroup`
--

LOCK TABLES `lkmediadisplaygroup` WRITE;
/*!40000 ALTER TABLE `lkmediadisplaygroup` DISABLE KEYS */;
/*!40000 ALTER TABLE `lkmediadisplaygroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lknotificationdg`
--

DROP TABLE IF EXISTS `lknotificationdg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lknotificationdg` (
  `lkNotificationDgId` int(11) NOT NULL AUTO_INCREMENT,
  `notificationId` int(11) NOT NULL,
  `displayGroupId` int(11) NOT NULL,
  PRIMARY KEY (`lkNotificationDgId`),
  UNIQUE KEY `notificationId` (`notificationId`,`displayGroupId`),
  CONSTRAINT `lknotificationdg_ibfk_1` FOREIGN KEY (`notificationId`) REFERENCES `notification` (`notificationId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lknotificationdg`
--

LOCK TABLES `lknotificationdg` WRITE;
/*!40000 ALTER TABLE `lknotificationdg` DISABLE KEYS */;
/*!40000 ALTER TABLE `lknotificationdg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lknotificationgroup`
--

DROP TABLE IF EXISTS `lknotificationgroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lknotificationgroup` (
  `lkNotificationGroupId` int(11) NOT NULL AUTO_INCREMENT,
  `notificationId` int(11) NOT NULL,
  `groupId` int(11) NOT NULL,
  PRIMARY KEY (`lkNotificationGroupId`),
  UNIQUE KEY `notificationId` (`notificationId`,`groupId`),
  KEY `groupId` (`groupId`),
  CONSTRAINT `lknotificationgroup_ibfk_1` FOREIGN KEY (`notificationId`) REFERENCES `notification` (`notificationId`),
  CONSTRAINT `lknotificationgroup_ibfk_2` FOREIGN KEY (`groupId`) REFERENCES `group` (`groupId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lknotificationgroup`
--

LOCK TABLES `lknotificationgroup` WRITE;
/*!40000 ALTER TABLE `lknotificationgroup` DISABLE KEYS */;
/*!40000 ALTER TABLE `lknotificationgroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lknotificationuser`
--

DROP TABLE IF EXISTS `lknotificationuser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lknotificationuser` (
  `lkNotificationUserId` int(11) NOT NULL AUTO_INCREMENT,
  `notificationId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `read` tinyint(4) NOT NULL,
  `readDt` int(11) NOT NULL,
  `emailDt` int(11) NOT NULL,
  PRIMARY KEY (`lkNotificationUserId`),
  UNIQUE KEY `notificationId` (`notificationId`,`userId`),
  KEY `userId` (`userId`),
  CONSTRAINT `lknotificationuser_ibfk_1` FOREIGN KEY (`notificationId`) REFERENCES `notification` (`notificationId`),
  CONSTRAINT `lknotificationuser_ibfk_2` FOREIGN KEY (`userId`) REFERENCES `user` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lknotificationuser`
--

LOCK TABLES `lknotificationuser` WRITE;
/*!40000 ALTER TABLE `lknotificationuser` DISABLE KEYS */;
/*!40000 ALTER TABLE `lknotificationuser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lkplaylistplaylist`
--

DROP TABLE IF EXISTS `lkplaylistplaylist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lkplaylistplaylist` (
  `parentId` int(11) NOT NULL,
  `childId` int(11) NOT NULL,
  `depth` int(11) NOT NULL,
  PRIMARY KEY (`parentId`,`childId`,`depth`),
  UNIQUE KEY `childId` (`childId`,`parentId`,`depth`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lkplaylistplaylist`
--

LOCK TABLES `lkplaylistplaylist` WRITE;
/*!40000 ALTER TABLE `lkplaylistplaylist` DISABLE KEYS */;
INSERT INTO `lkplaylistplaylist` VALUES (1,1,0),(2,2,0),(3,3,0),(4,4,0);
/*!40000 ALTER TABLE `lkplaylistplaylist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lkscheduledisplaygroup`
--

DROP TABLE IF EXISTS `lkscheduledisplaygroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lkscheduledisplaygroup` (
  `eventId` int(11) NOT NULL,
  `displayGroupId` int(11) NOT NULL,
  PRIMARY KEY (`eventId`,`displayGroupId`),
  KEY `displayGroupId` (`displayGroupId`),
  CONSTRAINT `lkscheduledisplaygroup_ibfk_1` FOREIGN KEY (`eventId`) REFERENCES `schedule` (`eventId`),
  CONSTRAINT `lkscheduledisplaygroup_ibfk_2` FOREIGN KEY (`displayGroupId`) REFERENCES `displaygroup` (`displayGroupId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lkscheduledisplaygroup`
--

LOCK TABLES `lkscheduledisplaygroup` WRITE;
/*!40000 ALTER TABLE `lkscheduledisplaygroup` DISABLE KEYS */;
/*!40000 ALTER TABLE `lkscheduledisplaygroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lktagcampaign`
--

DROP TABLE IF EXISTS `lktagcampaign`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lktagcampaign` (
  `lkTagCampaignId` int(11) NOT NULL AUTO_INCREMENT,
  `tagId` int(11) NOT NULL,
  `campaignId` int(11) NOT NULL,
  `value` text,
  PRIMARY KEY (`lkTagCampaignId`),
  UNIQUE KEY `tagId` (`tagId`,`campaignId`),
  KEY `campaignId` (`campaignId`),
  CONSTRAINT `lktagcampaign_ibfk_1` FOREIGN KEY (`tagId`) REFERENCES `tag` (`tagId`),
  CONSTRAINT `lktagcampaign_ibfk_2` FOREIGN KEY (`campaignId`) REFERENCES `campaign` (`campaignId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lktagcampaign`
--

LOCK TABLES `lktagcampaign` WRITE;
/*!40000 ALTER TABLE `lktagcampaign` DISABLE KEYS */;
/*!40000 ALTER TABLE `lktagcampaign` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lktagdisplaygroup`
--

DROP TABLE IF EXISTS `lktagdisplaygroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lktagdisplaygroup` (
  `lkTagDisplayGroupId` int(11) NOT NULL AUTO_INCREMENT,
  `tagId` int(11) NOT NULL,
  `displayGroupId` int(11) NOT NULL,
  `value` text,
  PRIMARY KEY (`lkTagDisplayGroupId`),
  UNIQUE KEY `tagId` (`tagId`,`displayGroupId`),
  KEY `displayGroupId` (`displayGroupId`),
  CONSTRAINT `lktagdisplaygroup_ibfk_1` FOREIGN KEY (`tagId`) REFERENCES `tag` (`tagId`),
  CONSTRAINT `lktagdisplaygroup_ibfk_2` FOREIGN KEY (`displayGroupId`) REFERENCES `displaygroup` (`displayGroupId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lktagdisplaygroup`
--

LOCK TABLES `lktagdisplaygroup` WRITE;
/*!40000 ALTER TABLE `lktagdisplaygroup` DISABLE KEYS */;
INSERT INTO `lktagdisplaygroup` VALUES (1,8,1,NULL);
/*!40000 ALTER TABLE `lktagdisplaygroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lktaglayout`
--

DROP TABLE IF EXISTS `lktaglayout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lktaglayout` (
  `lkTagLayoutId` int(11) NOT NULL AUTO_INCREMENT,
  `tagId` int(11) NOT NULL,
  `layoutId` int(11) NOT NULL,
  `value` text,
  PRIMARY KEY (`lkTagLayoutId`),
  UNIQUE KEY `tagId` (`tagId`,`layoutId`),
  KEY `layoutId` (`layoutId`),
  CONSTRAINT `lktaglayout_ibfk_1` FOREIGN KEY (`tagId`) REFERENCES `tag` (`tagId`),
  CONSTRAINT `lktaglayout_ibfk_2` FOREIGN KEY (`layoutId`) REFERENCES `layout` (`layoutId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lktaglayout`
--

LOCK TABLES `lktaglayout` WRITE;
/*!40000 ALTER TABLE `lktaglayout` DISABLE KEYS */;
INSERT INTO `lktaglayout` VALUES (1,5,1,NULL),(2,6,1,NULL);
/*!40000 ALTER TABLE `lktaglayout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lktagmedia`
--

DROP TABLE IF EXISTS `lktagmedia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lktagmedia` (
  `lkTagMediaId` int(11) NOT NULL AUTO_INCREMENT,
  `tagId` int(11) NOT NULL,
  `mediaId` int(11) NOT NULL,
  `value` text,
  PRIMARY KEY (`lkTagMediaId`),
  UNIQUE KEY `tagId` (`tagId`,`mediaId`),
  KEY `mediaId` (`mediaId`),
  CONSTRAINT `lktagmedia_ibfk_1` FOREIGN KEY (`tagId`) REFERENCES `tag` (`tagId`),
  CONSTRAINT `lktagmedia_ibfk_2` FOREIGN KEY (`mediaId`) REFERENCES `media` (`mediaId`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lktagmedia`
--

LOCK TABLES `lktagmedia` WRITE;
/*!40000 ALTER TABLE `lktagmedia` DISABLE KEYS */;
INSERT INTO `lktagmedia` VALUES (1,4,1,NULL),(2,4,2,NULL),(3,7,23,NULL),(4,7,24,NULL);
/*!40000 ALTER TABLE `lktagmedia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lktagplaylist`
--

DROP TABLE IF EXISTS `lktagplaylist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lktagplaylist` (
  `lkTagPlaylistId` int(11) NOT NULL AUTO_INCREMENT,
  `tagId` int(11) NOT NULL,
  `playlistId` int(11) NOT NULL,
  `value` text,
  PRIMARY KEY (`lkTagPlaylistId`),
  UNIQUE KEY `tagId` (`tagId`,`playlistId`),
  KEY `lktagplaylist_ibfk_2` (`playlistId`),
  CONSTRAINT `lktagplaylist_ibfk_1` FOREIGN KEY (`tagId`) REFERENCES `tag` (`tagId`),
  CONSTRAINT `lktagplaylist_ibfk_2` FOREIGN KEY (`playlistId`) REFERENCES `playlist` (`playlistId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lktagplaylist`
--

LOCK TABLES `lktagplaylist` WRITE;
/*!40000 ALTER TABLE `lktagplaylist` DISABLE KEYS */;
/*!40000 ALTER TABLE `lktagplaylist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lkusergroup`
--

DROP TABLE IF EXISTS `lkusergroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lkusergroup` (
  `lkUserGroupID` int(11) NOT NULL AUTO_INCREMENT,
  `groupId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  PRIMARY KEY (`lkUserGroupID`),
  UNIQUE KEY `groupId` (`groupId`,`userId`),
  KEY `userId` (`userId`),
  CONSTRAINT `lkusergroup_ibfk_1` FOREIGN KEY (`groupId`) REFERENCES `group` (`groupId`),
  CONSTRAINT `lkusergroup_ibfk_2` FOREIGN KEY (`userId`) REFERENCES `user` (`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lkusergroup`
--

LOCK TABLES `lkusergroup` WRITE;
/*!40000 ALTER TABLE `lkusergroup` DISABLE KEYS */;
INSERT INTO `lkusergroup` VALUES (1,3,1);
/*!40000 ALTER TABLE `lkusergroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lkwidgetaudio`
--

DROP TABLE IF EXISTS `lkwidgetaudio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lkwidgetaudio` (
  `widgetId` int(11) NOT NULL,
  `mediaId` int(11) NOT NULL,
  `volume` tinyint(4) NOT NULL,
  `loop` tinyint(4) NOT NULL,
  PRIMARY KEY (`widgetId`,`mediaId`),
  KEY `mediaId` (`mediaId`),
  CONSTRAINT `lkwidgetaudio_ibfk_1` FOREIGN KEY (`widgetId`) REFERENCES `widget` (`widgetId`),
  CONSTRAINT `lkwidgetaudio_ibfk_2` FOREIGN KEY (`mediaId`) REFERENCES `media` (`mediaId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lkwidgetaudio`
--

LOCK TABLES `lkwidgetaudio` WRITE;
/*!40000 ALTER TABLE `lkwidgetaudio` DISABLE KEYS */;
/*!40000 ALTER TABLE `lkwidgetaudio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lkwidgetmedia`
--

DROP TABLE IF EXISTS `lkwidgetmedia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lkwidgetmedia` (
  `widgetId` int(11) NOT NULL,
  `mediaId` int(11) NOT NULL,
  PRIMARY KEY (`widgetId`,`mediaId`),
  KEY `mediaId` (`mediaId`),
  CONSTRAINT `lkwidgetmedia_ibfk_1` FOREIGN KEY (`widgetId`) REFERENCES `widget` (`widgetId`),
  CONSTRAINT `lkwidgetmedia_ibfk_2` FOREIGN KEY (`mediaId`) REFERENCES `media` (`mediaId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lkwidgetmedia`
--

LOCK TABLES `lkwidgetmedia` WRITE;
/*!40000 ALTER TABLE `lkwidgetmedia` DISABLE KEYS */;
INSERT INTO `lkwidgetmedia` VALUES (1,1);
/*!40000 ALTER TABLE `lkwidgetmedia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `log`
--

DROP TABLE IF EXISTS `log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `log` (
  `logId` int(11) NOT NULL AUTO_INCREMENT,
  `runNo` varchar(10) NOT NULL,
  `logDate` datetime NOT NULL,
  `channel` varchar(20) NOT NULL,
  `type` varchar(254) NOT NULL,
  `page` varchar(50) NOT NULL,
  `function` varchar(50) DEFAULT NULL,
  `message` longtext NOT NULL,
  `userId` int(11) NOT NULL DEFAULT '0',
  `displayId` int(11) DEFAULT NULL,
  PRIMARY KEY (`logId`),
  KEY `logDate` (`logDate`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log`
--

LOCK TABLES `log` WRITE;
/*!40000 ALTER TABLE `log` DISABLE KEYS */;
INSERT INTO `log` VALUES (1,'6185ced','2021-06-03 12:08:42','PLAYER','ERROR','[12343] ','POST','[CollectionInterval] [CMS] Display is now Registered and awaiting Authorisation from an Administrator in the CMS',0,1);
/*!40000 ALTER TABLE `log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media`
--

DROP TABLE IF EXISTS `media`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `media` (
  `mediaId` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `type` varchar(15) NOT NULL,
  `duration` int(11) NOT NULL,
  `originalFileName` varchar(254) DEFAULT NULL,
  `storedAs` varchar(254) DEFAULT NULL,
  `md5` varchar(32) DEFAULT NULL,
  `fileSize` bigint(20) DEFAULT NULL,
  `userId` int(11) NOT NULL,
  `retired` tinyint(4) NOT NULL DEFAULT '0',
  `isEdited` tinyint(4) NOT NULL DEFAULT '0',
  `editedMediaId` int(11) DEFAULT NULL,
  `moduleSystemFile` tinyint(4) NOT NULL DEFAULT '0',
  `valid` tinyint(4) NOT NULL DEFAULT '1',
  `expires` int(11) DEFAULT NULL,
  `released` tinyint(4) NOT NULL DEFAULT '1',
  `apiRef` varchar(254) DEFAULT NULL,
  `createdDt` datetime NOT NULL,
  `modifiedDt` datetime NOT NULL,
  `enableStat` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`mediaId`),
  KEY `userId` (`userId`),
  KEY `editedMediaId` (`editedMediaId`),
  CONSTRAINT `media_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `user` (`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media`
--

LOCK TABLES `media` WRITE;
/*!40000 ALTER TABLE `media` DISABLE KEYS */;
INSERT INTO `media` VALUES (1,'Logo','image',10,'xibo_logo_square.png','1.png','1b14e03ce0f249780372d8c833ee29f4',19214,1,0,0,NULL,0,1,0,1,NULL,'2021-06-02 10:15:42','2021-06-02 10:15:42','Inherit'),(2,'Default Layout Background','image',10,'default layout3 background.jpg','2.jpg','1723376616232e8d354f4362c9670fa0',119781,1,0,0,NULL,0,1,0,1,NULL,'2021-06-02 10:15:42','2021-06-02 10:15:42','Inherit'),(3,'jquery-1.11.1.min.js','module',0,'jquery-1.11.1.min.js','jquery-1.11.1.min.js','3c9137d88a00b1ae0b41ff6a70571615',95785,1,0,0,0,1,1,0,1,NULL,'2021-06-02 10:15:43','2021-06-03 11:08:00',NULL),(4,'moment.js','module',0,'moment.js','moment.js','67bb26c11dba6c366834e65f5933aff2',160251,1,0,0,0,1,1,0,1,NULL,'2021-06-02 10:15:43','2021-06-03 11:08:00',NULL),(5,'xibo-layout-scaler.js','module',0,'xibo-layout-scaler.js','xibo-layout-scaler.js','5752497a5715d4aceeba4896fea99c62',3694,1,0,0,0,1,1,0,1,NULL,'2021-06-02 10:15:43','2021-06-03 11:08:00',NULL),(6,'xibo-text-render.js','module',0,'xibo-text-render.js','xibo-text-render.js','8d72e0c1775cba38c44bf02aee0c8d83',12150,1,0,0,0,1,1,0,1,NULL,'2021-06-02 10:15:43','2021-06-03 11:08:00',NULL),(7,'Chart.min.js','module',0,'Chart.min.js','Chart.min.js','f6c8efa65711e0cbbc99ba72997ecd0e',159638,1,0,0,0,1,1,0,1,NULL,'2021-06-02 10:15:43','2021-06-03 11:08:00',NULL),(8,'jquery-cycle-2.1.6.min.js','module',0,'jquery-cycle-2.1.6.min.js','jquery-cycle-2.1.6.min.js','212480cf1292db459557814e2d7a571d',28876,1,0,0,0,1,1,0,1,NULL,'2021-06-02 10:15:43','2021-06-03 11:08:00',NULL),(9,'flipclock.min.js','module',0,'flipclock.min.js','flipclock.min.js','b9d7742384bdf912c51b6a1b5d674f7a',21107,1,0,0,0,1,1,0,1,NULL,'2021-06-02 10:15:43','2021-06-03 11:08:00',NULL),(10,'xibo-countdown-render.js','module',0,'xibo-countdown-render.js','xibo-countdown-render.js','db15414501ff0a084b61fc1273e73e2f',6744,1,0,0,0,1,1,0,1,NULL,'2021-06-02 10:15:43','2021-06-03 11:08:00',NULL),(11,'jquery.marquee.min.js','module',0,'jquery.marquee.min.js','jquery.marquee.min.js','2286bb4f44d9ea301131a25c5204ca0a',2248,1,0,0,0,1,1,0,1,NULL,'2021-06-02 10:15:43','2021-06-03 11:08:00',NULL),(12,'xibo-image-render.js','module',0,'xibo-image-render.js','xibo-image-render.js','6152d3e99b2c61bb3db365d108337483',2988,1,0,0,0,1,1,0,1,NULL,'2021-06-02 10:15:43','2021-06-03 11:08:00',NULL),(13,'xibo-dataset-render.js','module',0,'xibo-dataset-render.js','xibo-dataset-render.js','e04ad2bff2a293cc7c7e162a9ef1a4c8',1687,1,0,0,0,1,1,0,1,NULL,'2021-06-02 10:15:43','2021-06-03 11:08:00',NULL),(14,'Aileron Heavy Regular','font',0,'Aileron-Heavy.otf','14.otf','621ba5aaf66e52f3def0cf69807104b9',30060,1,0,0,NULL,0,1,0,1,NULL,'2021-06-02 10:15:43','2021-06-02 10:15:43',NULL),(15,'Aileron Regular','font',0,'Aileron-Regular.otf','15.otf','d321fa78bb7190a8ca7e14213ef63203',27644,1,0,0,NULL,0,1,0,1,NULL,'2021-06-02 10:15:43','2021-06-02 10:15:43',NULL),(16,'Dancing Script Regular','font',0,'DancingScript-Regular.ttf','16.ttf','86aadd0451f9e7dafa957e1e61dd2ed7',116580,1,0,0,NULL,0,1,0,1,NULL,'2021-06-02 10:15:43','2021-06-02 10:15:43',NULL),(17,'Railway Regular','font',0,'Railway.ttf','17.ttf','58963d3a57da7a70ac36d331416746c5',45884,1,0,0,NULL,0,1,0,1,NULL,'2021-06-02 10:15:43','2021-06-02 10:15:43',NULL),(18,'Linear Regular','font',0,'linear-by-braydon-fuller.otf','18.otf','afb33470c582079834acd8b9f979ce1a',19684,1,0,0,NULL,0,1,0,1,NULL,'2021-06-02 10:15:43','2021-06-02 10:15:43',NULL),(19,'pdf.js','module',0,'pdf.js','pdf.js','dec9b89b936438760291e401c09f52aa',333388,1,0,0,0,1,1,0,1,NULL,'2021-06-02 10:15:43','2021-06-03 11:08:00',NULL),(20,'pdf.worker.js','module',0,'pdf.worker.js','pdf.worker.js','926affd0ae3d3b69e6071b26875638c8',1337459,1,0,0,0,1,1,0,1,NULL,'2021-06-02 10:15:43','2021-06-03 11:08:00',NULL),(21,'compatibility.js','module',0,'compatibility.js','compatibility.js','758c582a7fd2f30ec9dd8f91803a9882',18126,1,0,0,0,1,1,0,1,NULL,'2021-06-02 10:15:43','2021-06-03 11:08:00',NULL),(22,'xibo-webpage-render.js','module',0,'xibo-webpage-render.js','xibo-webpage-render.js','d59f5fc84ef7747f27baddc07fe81487',4832,1,0,0,0,1,1,0,1,NULL,'2021-06-02 10:15:43','2021-06-03 11:08:00',NULL),(23,'example.mp4','video',30,'example.mp4','23.mp4','d9061d3da8601932e98f79ec8ba1c877',1570024,1,0,0,0,0,1,0,1,NULL,'2021-06-02 10:16:26','2021-06-03 11:07:53','Inherit'),(24,'sample-mp4-file.mp4','video',125,'sample-mp4-file.mp4','24.mp4','5021b3b7c402468d5b018a8b4a2b448a',10546620,1,0,0,NULL,0,1,0,1,NULL,'2021-06-03 11:08:04','2021-06-03 11:08:04','Inherit'),(25,'example2.mp4','video',30,'example.mp4','25.mp4','d9061d3da8601932e98f79ec8ba1c877',1570024,1,0,0,NULL,0,1,0,1,NULL,'2021-06-03 11:08:24','2021-06-03 11:08:24','Inherit');
/*!40000 ALTER TABLE `media` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `module`
--

DROP TABLE IF EXISTS `module`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `module` (
  `moduleId` int(11) NOT NULL AUTO_INCREMENT,
  `module` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `enabled` tinyint(4) NOT NULL DEFAULT '0',
  `regionSpecific` tinyint(4) NOT NULL DEFAULT '1',
  `description` varchar(254) DEFAULT NULL,
  `schemaVersion` int(11) NOT NULL DEFAULT '1',
  `validExtensions` varchar(254) DEFAULT NULL,
  `previewEnabled` tinyint(4) NOT NULL DEFAULT '1',
  `assignable` tinyint(4) NOT NULL DEFAULT '1',
  `render_as` varchar(10) DEFAULT NULL,
  `settings` text,
  `viewPath` varchar(254) NOT NULL DEFAULT '../modules',
  `class` varchar(254) NOT NULL,
  `defaultDuration` int(11) NOT NULL,
  `installName` varchar(254) DEFAULT NULL,
  PRIMARY KEY (`moduleId`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `module`
--

LOCK TABLES `module` WRITE;
/*!40000 ALTER TABLE `module` DISABLE KEYS */;
INSERT INTO `module` VALUES (1,'Image','Image',1,0,'Upload Image files to assign to Layouts',1,'jpg,jpeg,png,bmp,gif',1,1,NULL,NULL,'../modules','Xibo\\Widget\\Image',10,NULL),(2,'Video','Video',1,0,'Upload Video files to assign to Layouts',1,'wmv,avi,mpg,mpeg,webm,mp4,m4v',0,1,NULL,NULL,'../modules','Xibo\\Widget\\Video',0,NULL),(3,'Flash','Flash',1,0,'Upload SWF files to assign to Layouts',1,'swf',1,1,NULL,NULL,'../modules','Xibo\\Widget\\Flash',10,NULL),(4,'PowerPoint','PowerPoint',1,0,'Upload a PowerPoint file to assign to Layouts',1,'ppt,pps,pptx',1,1,NULL,NULL,'../modules','Xibo\\Widget\\PowerPoint',10,NULL),(5,'Webpage','Webpage',1,1,'Embed a Webpage',1,NULL,1,1,NULL,NULL,'../modules','Xibo\\Widget\\WebPage',60,NULL),(6,'Ticker','Ticker',1,1,'Display dynamic feed content',1,NULL,1,1,NULL,'[]','../modules','Xibo\\Widget\\Ticker',5,NULL),(7,'Text','Text',1,1,'Add Text directly to a Layout',1,NULL,1,1,NULL,NULL,'../modules','Xibo\\Widget\\Text',5,NULL),(8,'Embedded','Embedded',1,1,'Embed HTML and JavaScript',1,NULL,1,1,NULL,NULL,'../modules','Xibo\\Widget\\Embedded',60,NULL),(11,'datasetview','DataSet View',1,1,'Organise and display DataSet data in a tabular format',1,NULL,1,1,NULL,NULL,'../modules','Xibo\\Widget\\DataSetView',60,NULL),(12,'shellcommand','Shell Command',1,1,'Instruct a Display to execute a command using the operating system shell',1,NULL,1,1,NULL,NULL,'../modules','Xibo\\Widget\\ShellCommand',3,NULL),(13,'localvideo','Local Video',1,1,'Display Video that only exists on the Display by providing a local file path or URL',1,NULL,0,1,NULL,NULL,'../modules','Xibo\\Widget\\LocalVideo',60,NULL),(14,'genericfile','Generic File',1,0,'A generic file to be stored in the library',1,',js,html,htm',0,0,NULL,NULL,'../modules','Xibo\\Widget\\GenericFile',10,NULL),(15,'clock','Clock',1,1,'Assign a type of Clock or a Countdown',1,NULL,1,1,'html','[]','../modules','Xibo\\Widget\\Clock',5,NULL),(16,'font','Font',1,0,'A font to use in other Modules',1,'ttf,otf,eot,svg,woff',0,0,NULL,NULL,'../modules','Xibo\\Widget\\Font',10,NULL),(17,'audio','Audio',1,0,'Upload Audio files to assign to Layouts',1,'mp3,wav',0,1,NULL,NULL,'../modules','Xibo\\Widget\\Audio',0,NULL),(18,'pdf','PDF',1,0,'Upload PDF files to assign to Layouts',1,'pdf',1,1,'html',NULL,'../modules','Xibo\\Widget\\Pdf',60,NULL),(19,'notificationview','Notification',1,1,'Display messages created in the Notification Drawer of the CMS',1,NULL,1,1,'html',NULL,'../modules','Xibo\\Widget\\NotificationView',10,NULL),(20,'subplaylist','Sub-Playlist',1,1,'Embed a Sub-Playlist',1,NULL,1,1,'native',NULL,'../modules','Xibo\\Widget\\SubPlaylist',10,NULL),(21,'datasetticker','DataSet Ticker',1,1,'Ticker with a DataSet providing the items',1,NULL,1,1,'html',NULL,'../modules','Xibo\\Widget\\DataSetTicker',10,NULL),(22,'playersoftware','Player Software',1,0,'A module for managing Player Versions',1,'apk,ipk,wgt',0,0,NULL,NULL,'../modules','Xibo\\Widget\\PlayerSoftware',10,NULL),(23,'htmlpackage','HTML Package',1,0,'Upload a complete package to distribute to Players',1,'htz',0,1,'native',NULL,'../modules','Xibo\\Widget\\HtmlPackage',60,NULL),(24,'videoin','Video In',1,1,'Display input from an external source',1,NULL,0,1,'native',NULL,'../modules','Xibo\\Widget\\VideoIn',60,NULL),(25,'hls','HLS',1,1,'Display live streamed content',1,NULL,1,1,'html',NULL,'../modules','Xibo\\Widget\\Hls',60,NULL),(26,'calendar','Calendar',1,1,'Display events from an iCAL feed',1,NULL,1,1,'html',NULL,'../modules','Xibo\\Widget\\Calendar',60,NULL),(27,'chart','Chart',1,1,'Display information held in a DataSet as a type of Chart',1,NULL,1,1,'html',NULL,'../modules','Xibo\\Widget\\Chart',240,NULL),(28,'savedreport','Saved Reports',1,0,'A saved report to be stored in the library',1,'json',0,0,NULL,NULL,'../modules','Xibo\\Widget\\SavedReport',10,'savedreport'),(29,'spacer','Spacer',1,1,'Make a Region empty for a specified duration',1,NULL,0,1,'html',NULL,'../modules','Xibo\\Widget\\Spacer',60,'spacer'),(30,'countdown','Countdown',1,1,'Countdown Module',1,NULL,1,1,'html',NULL,'../modules','Xibo\\Widget\\Countdown',60,'countdown');
/*!40000 ALTER TABLE `module` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notification`
--

DROP TABLE IF EXISTS `notification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notification` (
  `notificationId` int(11) NOT NULL AUTO_INCREMENT,
  `subject` varchar(255) NOT NULL,
  `body` longtext NOT NULL,
  `createDt` int(11) NOT NULL,
  `releaseDt` int(11) NOT NULL,
  `isEmail` tinyint(4) NOT NULL,
  `isInterrupt` tinyint(4) NOT NULL,
  `isSystem` tinyint(4) NOT NULL,
  `userId` int(11) NOT NULL,
  `filename` varchar(1000) DEFAULT NULL,
  `nonusers` varchar(1000) DEFAULT NULL,
  `originalFileName` varchar(254) DEFAULT NULL,
  PRIMARY KEY (`notificationId`),
  KEY `userId` (`userId`),
  CONSTRAINT `notification_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `user` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notification`
--

LOCK TABLES `notification` WRITE;
/*!40000 ALTER TABLE `notification` DISABLE KEYS */;
/*!40000 ALTER TABLE `notification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_access_token_scopes`
--

DROP TABLE IF EXISTS `oauth_access_token_scopes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_access_token_scopes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `access_token` varchar(254) NOT NULL,
  `scope` varchar(254) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `access_token` (`access_token`),
  KEY `scope` (`scope`),
  CONSTRAINT `oauth_access_token_scopes_ibfk_1` FOREIGN KEY (`access_token`) REFERENCES `oauth_access_tokens` (`access_token`) ON DELETE CASCADE,
  CONSTRAINT `oauth_access_token_scopes_ibfk_2` FOREIGN KEY (`scope`) REFERENCES `oauth_scopes` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_access_token_scopes`
--

LOCK TABLES `oauth_access_token_scopes` WRITE;
/*!40000 ALTER TABLE `oauth_access_token_scopes` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_access_token_scopes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_access_tokens`
--

DROP TABLE IF EXISTS `oauth_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_access_tokens` (
  `access_token` varchar(254) NOT NULL,
  `session_id` int(11) NOT NULL,
  `expire_time` int(11) NOT NULL,
  PRIMARY KEY (`access_token`),
  KEY `session_id` (`session_id`),
  CONSTRAINT `oauth_access_tokens_ibfk_1` FOREIGN KEY (`session_id`) REFERENCES `oauth_sessions` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_access_tokens`
--

LOCK TABLES `oauth_access_tokens` WRITE;
/*!40000 ALTER TABLE `oauth_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_auth_code_scopes`
--

DROP TABLE IF EXISTS `oauth_auth_code_scopes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_auth_code_scopes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `auth_code` varchar(254) NOT NULL,
  `scope` varchar(254) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `auth_code` (`auth_code`),
  KEY `scope` (`scope`),
  CONSTRAINT `oauth_auth_code_scopes_ibfk_1` FOREIGN KEY (`auth_code`) REFERENCES `oauth_auth_codes` (`auth_code`) ON DELETE CASCADE,
  CONSTRAINT `oauth_auth_code_scopes_ibfk_2` FOREIGN KEY (`scope`) REFERENCES `oauth_scopes` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_auth_code_scopes`
--

LOCK TABLES `oauth_auth_code_scopes` WRITE;
/*!40000 ALTER TABLE `oauth_auth_code_scopes` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_auth_code_scopes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_auth_codes`
--

DROP TABLE IF EXISTS `oauth_auth_codes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_auth_codes` (
  `auth_code` varchar(254) NOT NULL,
  `session_id` int(11) NOT NULL,
  `expire_time` int(11) NOT NULL,
  `client_redirect_uri` varchar(500) NOT NULL,
  PRIMARY KEY (`auth_code`),
  KEY `session_id` (`session_id`),
  CONSTRAINT `oauth_auth_codes_ibfk_1` FOREIGN KEY (`session_id`) REFERENCES `oauth_sessions` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_auth_codes`
--

LOCK TABLES `oauth_auth_codes` WRITE;
/*!40000 ALTER TABLE `oauth_auth_codes` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_auth_codes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_client_redirect_uris`
--

DROP TABLE IF EXISTS `oauth_client_redirect_uris`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_client_redirect_uris` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `client_id` varchar(254) NOT NULL,
  `redirect_uri` varchar(500) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_client_redirect_uris`
--

LOCK TABLES `oauth_client_redirect_uris` WRITE;
/*!40000 ALTER TABLE `oauth_client_redirect_uris` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_client_redirect_uris` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_client_scopes`
--

DROP TABLE IF EXISTS `oauth_client_scopes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_client_scopes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `clientId` varchar(254) NOT NULL,
  `scopeId` varchar(254) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `clientId` (`clientId`,`scopeId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_client_scopes`
--

LOCK TABLES `oauth_client_scopes` WRITE;
/*!40000 ALTER TABLE `oauth_client_scopes` DISABLE KEYS */;
INSERT INTO `oauth_client_scopes` VALUES (1,'jgm9CsI60TstOhrTBCwYbnrTqVBy7btOF34Dt2u7','all');
/*!40000 ALTER TABLE `oauth_client_scopes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_clients`
--

DROP TABLE IF EXISTS `oauth_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_clients` (
  `id` varchar(254) NOT NULL,
  `secret` varchar(254) NOT NULL,
  `name` varchar(254) NOT NULL,
  `userId` int(11) NOT NULL,
  `authCode` tinyint(4) NOT NULL,
  `clientCredentials` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `userId` (`userId`),
  CONSTRAINT `oauth_clients_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `user` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_clients`
--

LOCK TABLES `oauth_clients` WRITE;
/*!40000 ALTER TABLE `oauth_clients` DISABLE KEYS */;
INSERT INTO `oauth_clients` VALUES ('jgm9CsI60TstOhrTBCwYbnrTqVBy7btOF34Dt2u7','1yZE6eNSqryMlvuILrV7MmWCN7adEfelULYpd6dt7v09GUjNln2U2uvvA7MWBviGnCx2YetqUw83oA04uQmRh2amRg5LnltvUS2zvdzUJ24CxMwDJZ6YqtTttfxV9fj6zKeUxBDg3mUrQJ0lGw8FrzvnJW7Wt54pwpCdWPcasKZAT81jks9lzjBWsqSfcLQmjKXqM7T5l2tqhSRKefJu78doqgtcGZ7RBbKMyfGzNJtt2PXzhLdKKnqoL6xEly','video-on-demand',1,0,1);
/*!40000 ALTER TABLE `oauth_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_refresh_tokens`
--

DROP TABLE IF EXISTS `oauth_refresh_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_refresh_tokens` (
  `refresh_token` varchar(254) NOT NULL,
  `expire_time` int(11) NOT NULL,
  `access_token` varchar(254) NOT NULL,
  PRIMARY KEY (`refresh_token`),
  KEY `access_token` (`access_token`),
  CONSTRAINT `oauth_refresh_tokens_ibfk_1` FOREIGN KEY (`access_token`) REFERENCES `oauth_access_tokens` (`access_token`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_refresh_tokens`
--

LOCK TABLES `oauth_refresh_tokens` WRITE;
/*!40000 ALTER TABLE `oauth_refresh_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_refresh_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_scope_routes`
--

DROP TABLE IF EXISTS `oauth_scope_routes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_scope_routes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `scopeId` varchar(254) NOT NULL,
  `route` varchar(1000) NOT NULL,
  `method` varchar(8) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_scope_routes`
--

LOCK TABLES `oauth_scope_routes` WRITE;
/*!40000 ALTER TABLE `oauth_scope_routes` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_scope_routes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_scopes`
--

DROP TABLE IF EXISTS `oauth_scopes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_scopes` (
  `id` varchar(254) NOT NULL,
  `description` varchar(1000) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_scopes`
--

LOCK TABLES `oauth_scopes` WRITE;
/*!40000 ALTER TABLE `oauth_scopes` DISABLE KEYS */;
INSERT INTO `oauth_scopes` VALUES ('all','All');
/*!40000 ALTER TABLE `oauth_scopes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_session_scopes`
--

DROP TABLE IF EXISTS `oauth_session_scopes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_session_scopes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `session_id` int(11) NOT NULL,
  `scope` varchar(254) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `session_id` (`session_id`),
  KEY `scope` (`scope`),
  CONSTRAINT `oauth_session_scopes_ibfk_1` FOREIGN KEY (`session_id`) REFERENCES `oauth_sessions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `oauth_session_scopes_ibfk_2` FOREIGN KEY (`scope`) REFERENCES `oauth_scopes` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_session_scopes`
--

LOCK TABLES `oauth_session_scopes` WRITE;
/*!40000 ALTER TABLE `oauth_session_scopes` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_session_scopes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_sessions`
--

DROP TABLE IF EXISTS `oauth_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_sessions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner_type` varchar(254) NOT NULL,
  `owner_id` varchar(254) NOT NULL,
  `client_id` varchar(254) NOT NULL,
  `client_redirect_uri` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `client_id` (`client_id`),
  CONSTRAINT `oauth_sessions_ibfk_1` FOREIGN KEY (`client_id`) REFERENCES `oauth_clients` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_sessions`
--

LOCK TABLES `oauth_sessions` WRITE;
/*!40000 ALTER TABLE `oauth_sessions` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pages` (
  `pageId` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `title` varchar(100) NOT NULL,
  `asHome` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`pageId`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` VALUES (1,'icondashboard','Icon Dashboard',1),(2,'schedule','Schedule',1),(3,'mediamanager','Media Dashboard',1),(4,'layout','Layout',1),(5,'library','Library',1),(6,'display','Displays',1),(7,'update','Update',0),(8,'admin','Administration',0),(9,'group','User Groups',1),(10,'log','Log',1),(11,'user','Users',1),(12,'license','Licence',1),(13,'index','Home',0),(14,'module','Modules',1),(15,'template','Templates',1),(16,'fault','Report Fault',1),(17,'stats','Statistics',1),(18,'manual','Manual',0),(19,'resolution','Resolutions',1),(20,'help','Help Links',1),(21,'clock','Clock',0),(22,'displaygroup','Display Groups',1),(23,'application','Applications',1),(24,'dataset','DataSets',1),(25,'campaign','Campaigns',1),(26,'transition','Transitions',1),(27,'sessions','Sessions',1),(28,'preview','Preview',0),(29,'statusdashboard','Status Dashboard',1),(30,'displayprofile','Display Profiles',1),(31,'audit','Audit Trail',0),(32,'region','Regions',0),(33,'playlist','Playlist',1),(34,'maintenance','Maintenance',0),(35,'command','Commands',1),(36,'notification','Notifications',0),(37,'drawer','Notification Drawer',0),(38,'daypart','Dayparting',0),(39,'task','Tasks',1),(40,'playersoftware','Player Software',0),(41,'schedulenow','Schedule Now',0),(42,'report','Report',0),(43,'playlistdashboard','Playlist Dashboard',1);
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permission`
--

DROP TABLE IF EXISTS `permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permission` (
  `permissionId` int(11) NOT NULL AUTO_INCREMENT,
  `entityId` int(11) NOT NULL,
  `groupId` int(11) NOT NULL,
  `objectId` int(11) NOT NULL,
  `view` tinyint(4) NOT NULL,
  `edit` tinyint(4) NOT NULL,
  `delete` tinyint(4) NOT NULL,
  PRIMARY KEY (`permissionId`),
  KEY `permission_ibfk_1` (`groupId`),
  KEY `permission_ibfk_2` (`entityId`),
  KEY `permission_objectId_index` (`objectId`),
  CONSTRAINT `permission_ibfk_1` FOREIGN KEY (`groupId`) REFERENCES `group` (`groupId`),
  CONSTRAINT `permission_ibfk_2` FOREIGN KEY (`entityId`) REFERENCES `permissionentity` (`entityId`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permission`
--

LOCK TABLES `permission` WRITE;
/*!40000 ALTER TABLE `permission` DISABLE KEYS */;
INSERT INTO `permission` VALUES (1,1,1,1,1,0,0),(2,1,1,13,1,0,0),(3,1,1,4,1,0,0),(4,1,1,5,1,0,0),(5,1,1,3,1,0,0),(6,1,1,33,1,0,0),(7,1,1,28,1,0,0),(8,1,1,32,1,0,0),(9,1,1,2,1,0,0),(10,1,1,29,1,0,0),(11,1,1,11,1,0,0),(12,11,2,1,1,0,0),(13,11,2,2,1,0,0),(15,1,1,41,1,0,0),(16,1,3,41,1,0,0),(17,1,4,41,1,0,0),(18,1,5,43,1,0,0),(19,1,5,5,1,0,0),(20,1,5,11,1,0,0),(21,3,2,14,1,0,0),(22,3,2,15,1,0,0),(23,3,2,16,1,0,0),(24,3,2,17,1,0,0),(25,3,2,18,1,0,0);
/*!40000 ALTER TABLE `permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permissionentity`
--

DROP TABLE IF EXISTS `permissionentity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permissionentity` (
  `entityId` int(11) NOT NULL AUTO_INCREMENT,
  `entity` varchar(50) NOT NULL,
  PRIMARY KEY (`entityId`),
  UNIQUE KEY `entity` (`entity`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissionentity`
--

LOCK TABLES `permissionentity` WRITE;
/*!40000 ALTER TABLE `permissionentity` DISABLE KEYS */;
INSERT INTO `permissionentity` VALUES (4,'Xibo\\Entity\\Campaign'),(12,'Xibo\\Entity\\Command'),(9,'Xibo\\Entity\\DataSet'),(11,'Xibo\\Entity\\DayPart'),(2,'Xibo\\Entity\\DisplayGroup'),(3,'Xibo\\Entity\\Media'),(10,'Xibo\\Entity\\Notification'),(1,'Xibo\\Entity\\Page'),(8,'Xibo\\Entity\\Playlist'),(7,'Xibo\\Entity\\Region'),(5,'Xibo\\Entity\\Widget');
/*!40000 ALTER TABLE `permissionentity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phinxlog`
--

DROP TABLE IF EXISTS `phinxlog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phinxlog` (
  `version` bigint(20) NOT NULL,
  `migration_name` varchar(100) DEFAULT NULL,
  `start_time` timestamp NULL DEFAULT NULL,
  `end_time` timestamp NULL DEFAULT NULL,
  `breakpoint` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phinxlog`
--

LOCK TABLES `phinxlog` WRITE;
/*!40000 ALTER TABLE `phinxlog` DISABLE KEYS */;
INSERT INTO `phinxlog` VALUES (20180130073838,'InstallMigration','2021-06-02 09:15:23','2021-06-02 09:15:28',0),(20180131113100,'OldUpgradeStep85Migration','2021-06-02 09:15:28','2021-06-02 09:15:28',0),(20180131113853,'OldUpgradeStep86Migration','2021-06-02 09:15:28','2021-06-02 09:15:28',0),(20180131113941,'OldUpgradeStep87Migration','2021-06-02 09:15:28','2021-06-02 09:15:28',0),(20180131113948,'OldUpgradeStep88Migration','2021-06-02 09:15:28','2021-06-02 09:15:28',0),(20180131113952,'OldUpgradeStep92Migration','2021-06-02 09:15:28','2021-06-02 09:15:28',0),(20180131113957,'OldUpgradeStep120Migration','2021-06-02 09:15:28','2021-06-02 09:15:28',0),(20180131114002,'OldUpgradeStep121Migration','2021-06-02 09:15:28','2021-06-02 09:15:28',0),(20180131114007,'OldUpgradeStep122Migration','2021-06-02 09:15:28','2021-06-02 09:15:28',0),(20180131114013,'OldUpgradeStep123Migration','2021-06-02 09:15:28','2021-06-02 09:15:28',0),(20180131114017,'OldUpgradeStep124Migration','2021-06-02 09:15:28','2021-06-02 09:15:28',0),(20180131114021,'OldUpgradeStep125Migration','2021-06-02 09:15:28','2021-06-02 09:15:28',0),(20180131114025,'OldUpgradeStep126Migration','2021-06-02 09:15:28','2021-06-02 09:15:28',0),(20180131114030,'OldUpgradeStep127Migration','2021-06-02 09:15:28','2021-06-02 09:15:28',0),(20180131114050,'OldUpgradeStep128Migration','2021-06-02 09:15:28','2021-06-02 09:15:28',0),(20180131114058,'OldUpgradeStep129Migration','2021-06-02 09:15:28','2021-06-02 09:15:28',0),(20180131114103,'OldUpgradeStep130Migration','2021-06-02 09:15:28','2021-06-02 09:15:28',0),(20180131114107,'OldUpgradeStep131Migration','2021-06-02 09:15:28','2021-06-02 09:15:28',0),(20180131114110,'OldUpgradeStep132Migration','2021-06-02 09:15:28','2021-06-02 09:15:28',0),(20180131114114,'OldUpgradeStep133Migration','2021-06-02 09:15:28','2021-06-02 09:15:28',0),(20180131114118,'OldUpgradeStep134Migration','2021-06-02 09:15:28','2021-06-02 09:15:28',0),(20180131114123,'OldUpgradeStep135Migration','2021-06-02 09:15:28','2021-06-02 09:15:28',0),(20180131122645,'OneRegionPerPlaylistMigration','2021-06-02 09:15:28','2021-06-02 09:15:28',0),(20180131123038,'PlaylistTagsMigration','2021-06-02 09:15:28','2021-06-02 09:15:28',0),(20180131123248,'WidgetFromToDtMigration','2021-06-02 09:15:28','2021-06-02 09:15:28',0),(20180212143336,'DaypartSystemEntriesAsRecords','2021-06-02 09:15:28','2021-06-02 09:15:28',0),(20180213173846,'MailFromNameSettingMigration','2021-06-02 09:15:28','2021-06-02 09:15:28',0),(20180219141257,'DisplayGroupClosureIndexToNonUnique','2021-06-02 09:15:28','2021-06-02 09:15:28',0),(20180223180534,'DataSetColumnFilterAndSortOptionsMigration','2021-06-02 09:15:28','2021-06-02 09:15:29',0),(20180302182421,'WidgetCreatedAndModifiedDtMigration','2021-06-02 09:15:29','2021-06-02 09:15:29',0),(20180313085749,'MediaTableEditedIdIndexMigration','2021-06-02 09:15:29','2021-06-02 09:15:29',0),(20180320154652,'PlaylistAddDynamicFilterMigration','2021-06-02 09:15:29','2021-06-02 09:15:29',0),(20180327153325,'RemoveUserLoggedInMigration','2021-06-02 09:15:29','2021-06-02 09:15:29',0),(20180514114415,'FixCaseOnHelpTextFieldMigration','2021-06-02 09:15:29','2021-06-02 09:15:29',0),(20180515123835,'LayoutPublishDraftMigration','2021-06-02 09:15:29','2021-06-02 09:15:29',0),(20180529065816,'DataSetTruncateFixMigration','2021-06-02 09:15:29','2021-06-02 09:15:29',0),(20180529073531,'DisplayAsVncLinkMigration','2021-06-02 09:15:29','2021-06-02 09:15:29',0),(20180621134013,'AddWidgetSyncTaskMigration','2021-06-02 09:15:29','2021-06-02 09:15:29',0),(20180621134250,'EventLayoutPermissionSettingMigration','2021-06-02 09:15:29','2021-06-02 09:15:29',0),(20180906115552,'AddForeignKeysToTagsMigration','2021-06-02 09:15:29','2021-06-02 09:15:29',0),(20180906115606,'AddForeignKeysToPermissionsMigration','2021-06-02 09:15:29','2021-06-02 09:15:30',0),(20180906115712,'AddForeignKeysToWidgetMediaMigration','2021-06-02 09:15:30','2021-06-02 09:15:30',0),(20180906131643,'ForgottenPasswordReminderMigration','2021-06-02 09:15:30','2021-06-02 09:15:30',0),(20180906131716,'DataSetRssMigration','2021-06-02 09:15:30','2021-06-02 09:15:30',0),(20181011160130,'SimpleSettingsMigration','2021-06-02 09:15:30','2021-06-02 09:15:31',0),(20181113173310,'RemoveFinanceModuleMigration','2021-06-02 09:15:31','2021-06-02 09:15:31',0),(20181113180337,'SplitTickerModuleMigration','2021-06-02 09:15:31','2021-06-02 09:15:31',0),(20181126113231,'Release1812Migration','2021-06-02 09:15:31','2021-06-02 09:15:31',0),(20181210092443,'RemoveImageUriModuleMigration','2021-06-02 09:15:31','2021-06-02 09:15:31',0),(20181212114400,'CreatePlayerVersionsTableMigration','2021-06-02 09:15:31','2021-06-02 09:15:31',0),(20181217135044,'EventSyncMigration','2021-06-02 09:15:31','2021-06-02 09:15:31',0),(20190121092556,'PlayerUpgradeAndOverrideConfigMigration','2021-06-02 09:15:31','2021-06-02 09:15:31',0),(20190125170130,'PlayerSoftwareVersionFieldMigration','2021-06-02 09:15:31','2021-06-02 09:15:31',0),(20190129103831,'AddLinuxDisplayProfileMigration','2021-06-02 09:15:31','2021-06-02 09:15:31',0),(20190212112534,'AddProofOfPlayStatsDurationAndCountMigration','2021-06-02 09:15:31','2021-06-02 09:15:31',0),(20190212115432,'AddDefaultTransitionDurationSettingMigration','2021-06-02 09:15:31','2021-06-02 09:15:31',0),(20190213160914,'AddGlobalStatSettingMigration','2021-06-02 09:15:31','2021-06-02 09:15:32',0),(20190213162212,'AddHorizontalMenuSettingMigration','2021-06-02 09:15:32','2021-06-02 09:15:32',0),(20190214102508,'AddLayoutEnableStat','2021-06-02 09:15:32','2021-06-02 09:15:32',0),(20190214102516,'AddMediaEnableStat','2021-06-02 09:15:32','2021-06-02 09:15:32',0),(20190220165703,'AddScheduleRecurrenceMonthlyRepeatsOnMigration','2021-06-02 09:15:32','2021-06-02 09:15:32',0),(20190227101705,'MakeDisplayLicenseColumnUniqueMigration','2021-06-02 09:15:32','2021-06-02 09:15:32',0),(20190228120603,'AddDynamicCriteriaTagsMigration','2021-06-02 09:15:32','2021-06-02 09:15:32',0),(20190301115046,'AdjustGenericfileValidExtensionsMigration','2021-06-02 09:15:32','2021-06-02 09:15:32',0),(20190315134628,'AddBandwidthLimitColumnToDisplaygroupMigration','2021-06-02 09:15:32','2021-06-02 09:15:32',0),(20190322162052,'AddPublishedDateColumnMigration','2021-06-02 09:15:32','2021-06-02 09:15:32',0),(20190326163016,'CreateLayoutHistoryTableMigration','2021-06-02 09:15:32','2021-06-02 09:15:32',0),(20190328111718,'AddCampaignStatMigration','2021-06-02 09:15:32','2021-06-02 09:15:32',0),(20190401150256,'AddScheduleNowPageMigration','2021-06-02 09:15:32','2021-06-02 09:15:32',0),(20190509101525,'CreateReportScheduleTableMigration','2021-06-02 09:15:32','2021-06-02 09:15:32',0),(20190509102648,'CreateSavedReportTableMigration','2021-06-02 09:15:32','2021-06-02 09:15:32',0),(20190509113001,'AddReportPageMigration','2021-06-02 09:15:32','2021-06-02 09:15:32',0),(20190510140126,'TwoFactorAuthMigration','2021-06-02 09:15:32','2021-06-02 09:15:32',0),(20190514134430,'NullableTextFieldsMigration','2021-06-02 09:15:32','2021-06-02 09:15:32',0),(20190515094133,'AddHtmlDatatypeMigration','2021-06-02 09:15:32','2021-06-02 09:15:32',0),(20190515105624,'InstallAdditionalStandardModulesMigration','2021-06-02 09:15:32','2021-06-02 09:15:32',0),(20190517080033,'AddForeignKeysToLktagTablesMigration','2021-06-02 09:15:32','2021-06-02 09:15:32',0),(20190521092700,'AddReportScheduleTaskMigration','2021-06-02 09:15:32','2021-06-02 09:15:32',0),(20190521092930,'AddPreviousRunDateReportScheduleMigration','2021-06-02 09:15:32','2021-06-02 09:15:32',0),(20190521102635,'PlaylistDurationUpdateAtTimestamp','2021-06-02 09:15:32','2021-06-02 09:15:32',0),(20190603083836,'ChangeStatTableStartEndColumnMigration','2021-06-02 09:15:32','2021-06-02 09:15:32',0),(20190610150331,'TagsWithValuesMigration','2021-06-02 09:15:32','2021-06-02 09:15:33',0),(20190611145607,'RemoveOldVersionTableMigration','2021-06-02 09:15:33','2021-06-02 09:15:33',0),(20190612140955,'DisplayTableDatabaseSchemaAdjustmentsMigration','2021-06-02 09:15:33','2021-06-02 09:15:33',0),(20190620112611,'MoveTidyStatsToStatsArchiveTaskMigration','2021-06-02 09:15:33','2021-06-02 09:15:33',0),(20190620142655,'AddPlaylistEnableStatMigration','2021-06-02 09:15:33','2021-06-02 09:15:33',0),(20190626091331,'WidgetHistoryMigration','2021-06-02 09:15:33','2021-06-02 09:15:33',0),(20190626110359,'CreateStatTableMigration','2021-06-02 09:15:33','2021-06-02 09:15:33',0),(20190628083649,'AddStatsMigrationTaskMigration','2021-06-02 09:15:33','2021-06-02 09:15:33',0),(20190710213414,'AddIsActiveReportScheduleMigration','2021-06-02 09:15:33','2021-06-02 09:15:33',0),(20190717101342,'NullableCommandValidationStringMigration','2021-06-02 09:15:33','2021-06-02 09:15:33',0),(20190719074601,'MissingDefaultValueMigration','2021-06-02 09:15:33','2021-06-02 09:15:33',0),(20190725115532,'AddScheduleReminderTaskMigration','2021-06-02 09:15:33','2021-06-02 09:15:33',0),(20190801102042,'DisplayProfileCommandLinkFixMigration','2021-06-02 09:15:33','2021-06-02 09:15:33',0),(20190801141737,'DatasetAddCustomHeadersColumnMigration','2021-06-02 09:15:33','2021-06-02 09:15:33',0),(20190801142302,'AddDoohUserTypeMigration','2021-06-02 09:15:33','2021-06-02 09:15:33',0),(20190802145636,'CreateScheduleReminderTableMigration','2021-06-02 09:15:33','2021-06-02 09:15:33',0),(20190806144729,'AddShowContentFromMigration','2021-06-02 09:15:33','2021-06-02 09:15:34',0),(20190823081448,'AddImageProcessingTaskMigration','2021-06-02 09:15:34','2021-06-02 09:15:34',0),(20190828123735,'AddDefaultSettingResizeLimitResizeThresholdMigration','2021-06-02 09:15:34','2021-06-02 09:15:34',0),(20190903083314,'AddGlobalSettingForCascadePermissionsMigration','2021-06-02 09:15:34','2021-06-02 09:15:34',0),(20190905084201,'AddSettingForDefaultTransitionTypeMigration','2021-06-02 09:15:34','2021-06-02 09:15:34',0),(20190905084642,'AddSettingForAutoLayoutPublishMigration','2021-06-02 09:15:34','2021-06-02 09:15:34',0),(20190910132520,'DisplayMoveCmsMigration','2021-06-02 09:15:34','2021-06-02 09:15:34',0),(20190917093141,'InterruptLayoutMigration','2021-06-02 09:15:34','2021-06-02 09:15:34',0),(20190918090608,'AddDefaultSettingQuickChartMigration','2021-06-02 09:15:34','2021-06-02 09:15:34',0),(20190919154513,'AddNotificationAttachmentFilenameNonUsersMigration','2021-06-02 09:15:34','2021-06-02 09:15:34',0),(20190926135518,'AddSettingForTransitionAutoApplyToLayoutMigration','2021-06-02 09:15:34','2021-06-02 09:15:34',0),(20190926140809,'InstallSavedReportsAndSpacerModulesMigration','2021-06-02 09:15:34','2021-06-02 09:15:34',0),(20191001092651,'AddNotificationOriginalFilenameMigration','2021-06-02 09:15:34','2021-06-02 09:15:34',0),(20191022101141,'AddCommandEntityToPermissionEntityMigration','2021-06-02 09:15:34','2021-06-02 09:15:34',0),(20191024152519,'AddScheduleExclusionsTableMigration','2021-06-02 09:15:34','2021-06-02 09:15:34',0),(20191122114104,'FixDuplicateModuleFilesMigration','2021-06-02 09:15:34','2021-06-02 09:15:34',0),(20191126103120,'GeoScheduleMigration','2021-06-02 09:15:34','2021-06-02 09:15:34',0),(20191126141140,'RemoteDataSetCsvSourceMigration','2021-06-02 09:15:34','2021-06-02 09:15:34',0),(20191205180116,'AddPlaylistDashboardPageUserMigration','2021-06-02 09:15:34','2021-06-02 09:15:34',0),(20200107082625,'DisplayAddResolutionMigration','2021-06-02 09:15:34','2021-06-02 09:15:34',0),(20200115115935,'AddReportScheduleMessageMigration','2021-06-02 09:15:34','2021-06-02 09:15:34',0),(20200122143630,'AddReleasedRequiredFileMigration','2021-06-02 09:15:34','2021-06-02 09:15:34',0),(20200122191232,'AddCommercialLicenceColumnMigration','2021-06-02 09:15:34','2021-06-02 09:15:34',0),(20200129104944,'AddEngagementsStatsMigration','2021-06-02 09:15:34','2021-06-02 09:15:34',0),(20200130165443,'CountdownModuleAddMigration','2021-06-02 09:15:34','2021-06-02 09:15:34',0);
/*!40000 ALTER TABLE `phinxlog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `player_software`
--

DROP TABLE IF EXISTS `player_software`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `player_software` (
  `versionId` int(11) NOT NULL AUTO_INCREMENT,
  `player_type` varchar(20) DEFAULT NULL,
  `player_version` varchar(15) DEFAULT NULL,
  `player_code` smallint(6) DEFAULT NULL,
  `mediaId` int(11) NOT NULL,
  `playerShowVersion` varchar(50) NOT NULL,
  PRIMARY KEY (`versionId`),
  KEY `mediaId` (`mediaId`),
  CONSTRAINT `player_software_ibfk_1` FOREIGN KEY (`mediaId`) REFERENCES `media` (`mediaId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `player_software`
--

LOCK TABLES `player_software` WRITE;
/*!40000 ALTER TABLE `player_software` DISABLE KEYS */;
/*!40000 ALTER TABLE `player_software` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `playlist`
--

DROP TABLE IF EXISTS `playlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `playlist` (
  `playlistId` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(254) NOT NULL,
  `ownerId` int(11) NOT NULL,
  `regionId` int(11) DEFAULT NULL,
  `createdDt` datetime NOT NULL,
  `modifiedDt` datetime NOT NULL,
  `duration` int(11) NOT NULL DEFAULT '0',
  `requiresDurationUpdate` int(11) NOT NULL DEFAULT '0',
  `isDynamic` tinyint(4) NOT NULL DEFAULT '0',
  `filterMediaName` varchar(255) DEFAULT NULL,
  `filterMediaTags` varchar(255) DEFAULT NULL,
  `enableStat` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`playlistId`),
  KEY `ownerId` (`ownerId`),
  CONSTRAINT `playlist_ibfk_1` FOREIGN KEY (`ownerId`) REFERENCES `user` (`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `playlist`
--

LOCK TABLES `playlist` WRITE;
/*!40000 ALTER TABLE `playlist` DISABLE KEYS */;
INSERT INTO `playlist` VALUES (1,'Logo',1,1,'2021-06-02 10:15:42','2021-06-02 10:16:01',60,0,0,NULL,NULL,NULL),(2,'Header',1,2,'2021-06-02 10:15:42','2021-06-02 10:16:01',10,0,0,NULL,NULL,NULL),(3,'Explainer',1,3,'2021-06-02 10:15:43','2021-06-02 10:16:01',25,0,0,NULL,NULL,NULL),(4,'Time',1,4,'2021-06-02 10:15:43','2021-06-02 10:16:01',5,0,0,NULL,NULL,NULL);
/*!40000 ALTER TABLE `playlist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `region`
--

DROP TABLE IF EXISTS `region`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `region` (
  `regionId` int(11) NOT NULL AUTO_INCREMENT,
  `layoutId` int(11) NOT NULL,
  `ownerId` int(11) NOT NULL,
  `name` varchar(254) DEFAULT NULL,
  `width` decimal(10,0) NOT NULL,
  `height` decimal(10,0) NOT NULL,
  `top` decimal(10,0) NOT NULL,
  `left` decimal(10,0) NOT NULL,
  `zIndex` smallint(6) NOT NULL,
  `duration` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`regionId`),
  KEY `ownerId` (`ownerId`),
  CONSTRAINT `region_ibfk_1` FOREIGN KEY (`ownerId`) REFERENCES `user` (`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `region`
--

LOCK TABLES `region` WRITE;
/*!40000 ALTER TABLE `region` DISABLE KEYS */;
INSERT INTO `region` VALUES (1,1,1,'Logo',267,157,16,24,0,60),(2,1,1,'Header',1109,216,290,413,0,10),(3,1,1,'Explainer',1626,145,618,147,0,25),(4,1,1,'Time',126,58,971,1741,0,5);
/*!40000 ALTER TABLE `region` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `regionoption`
--

DROP TABLE IF EXISTS `regionoption`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `regionoption` (
  `regionId` int(11) NOT NULL,
  `option` varchar(50) NOT NULL,
  `value` text,
  PRIMARY KEY (`regionId`,`option`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `regionoption`
--

LOCK TABLES `regionoption` WRITE;
/*!40000 ALTER TABLE `regionoption` DISABLE KEYS */;
/*!40000 ALTER TABLE `regionoption` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reportschedule`
--

DROP TABLE IF EXISTS `reportschedule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reportschedule` (
  `reportScheduleId` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `reportName` varchar(255) NOT NULL,
  `filterCriteria` text,
  `schedule` varchar(255) NOT NULL,
  `lastSavedReportId` int(11) NOT NULL DEFAULT '0',
  `lastRunDt` int(11) NOT NULL DEFAULT '0',
  `previousRunDt` int(11) NOT NULL DEFAULT '0',
  `userId` int(11) NOT NULL,
  `isActive` int(11) NOT NULL DEFAULT '1',
  `createdDt` int(11) NOT NULL,
  `message` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`reportScheduleId`),
  KEY `userId` (`userId`),
  CONSTRAINT `reportschedule_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `user` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reportschedule`
--

LOCK TABLES `reportschedule` WRITE;
/*!40000 ALTER TABLE `reportschedule` DISABLE KEYS */;
/*!40000 ALTER TABLE `reportschedule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `requiredfile`
--

DROP TABLE IF EXISTS `requiredfile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `requiredfile` (
  `rfId` int(11) NOT NULL AUTO_INCREMENT,
  `displayId` int(11) NOT NULL,
  `type` varchar(1) NOT NULL,
  `itemId` int(11) DEFAULT NULL,
  `bytesRequested` bigint(20) NOT NULL,
  `complete` tinyint(4) NOT NULL DEFAULT '0',
  `path` varchar(255) DEFAULT NULL,
  `size` bigint(20) NOT NULL DEFAULT '0',
  `released` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`rfId`),
  KEY `displayId` (`displayId`,`type`),
  CONSTRAINT `requiredfile_ibfk_1` FOREIGN KEY (`displayId`) REFERENCES `display` (`displayId`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `requiredfile`
--

LOCK TABLES `requiredfile` WRITE;
/*!40000 ALTER TABLE `requiredfile` DISABLE KEYS */;
INSERT INTO `requiredfile` VALUES (1,1,'M',10,0,1,'xibo-countdown-render.js',6744,1),(2,1,'M',8,0,1,'jquery-cycle-2.1.6.min.js',28876,1),(3,1,'M',6,0,1,'xibo-text-render.js',12150,1),(4,1,'M',21,0,1,'compatibility.js',18126,1),(5,1,'M',4,0,1,'moment.js',160251,1),(6,1,'M',19,0,1,'pdf.js',333388,1),(7,1,'M',17,0,1,'17.ttf',45884,1),(8,1,'M',15,0,1,'15.otf',27644,1),(9,1,'M',13,0,1,'xibo-dataset-render.js',1687,1),(10,1,'M',11,0,1,'jquery.marquee.min.js',2248,1),(11,1,'M',9,0,1,'flipclock.min.js',21107,1),(12,1,'M',7,0,1,'Chart.min.js',159638,1),(13,1,'M',22,0,1,'xibo-webpage-render.js',4832,1),(14,1,'M',5,0,1,'xibo-layout-scaler.js',3694,1),(15,1,'M',20,0,1,'pdf.worker.js',1337459,1),(16,1,'M',3,0,1,'jquery-1.11.1.min.js',95785,1),(17,1,'M',18,0,1,'18.otf',19684,1),(18,1,'M',16,0,1,'16.ttf',116580,1),(19,1,'M',14,0,1,'14.otf',30060,1),(20,1,'M',12,0,1,'xibo-image-render.js',2988,1),(21,1,'M',1,0,1,'1.png',19214,1),(22,1,'M',2,0,1,'2.jpg',119781,1),(23,1,'L',1,0,1,'1.xlf',3468,1),(24,1,'W',2,2247,1,NULL,0,1),(25,1,'W',3,1189,1,NULL,0,1),(26,1,'W',4,2634,1,NULL,0,1),(27,1,'W',5,2306,1,NULL,0,1);
/*!40000 ALTER TABLE `requiredfile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `resolution`
--

DROP TABLE IF EXISTS `resolution`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `resolution` (
  `resolutionId` int(11) NOT NULL AUTO_INCREMENT,
  `resolution` varchar(254) NOT NULL,
  `width` smallint(6) NOT NULL,
  `height` smallint(6) NOT NULL,
  `intended_width` smallint(6) NOT NULL,
  `intended_height` smallint(6) NOT NULL,
  `version` tinyint(4) NOT NULL DEFAULT '1',
  `enabled` tinyint(4) NOT NULL DEFAULT '1',
  `userId` int(11) NOT NULL,
  PRIMARY KEY (`resolutionId`),
  KEY `userId` (`userId`),
  CONSTRAINT `resolution_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `user` (`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resolution`
--

LOCK TABLES `resolution` WRITE;
/*!40000 ALTER TABLE `resolution` DISABLE KEYS */;
INSERT INTO `resolution` VALUES (1,'1080p HD Landscape',800,450,1920,1080,2,1,1),(2,'720p HD Landscape',800,450,1280,720,2,1,1),(3,'1080p HD Portrait',450,800,1080,1920,2,1,1),(4,'720p HD Portrait',450,800,720,1280,2,1,1),(5,'4k cinema',800,450,4096,2304,2,1,1),(6,'Common PC Monitor 4:3',800,600,1024,768,2,1,1),(7,'4k UHD Landscape',450,800,3840,2160,2,1,1),(8,'4k UHD Portrait',800,450,2160,3840,2,1,1);
/*!40000 ALTER TABLE `resolution` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `saved_report`
--

DROP TABLE IF EXISTS `saved_report`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `saved_report` (
  `savedReportId` int(11) NOT NULL AUTO_INCREMENT,
  `saveAs` varchar(255) NOT NULL,
  `reportName` varchar(255) NOT NULL,
  `mediaId` int(11) NOT NULL,
  `reportScheduleId` int(11) NOT NULL,
  `generatedOn` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  PRIMARY KEY (`savedReportId`),
  KEY `userId` (`userId`),
  KEY `mediaId` (`mediaId`),
  KEY `reportScheduleId` (`reportScheduleId`),
  CONSTRAINT `saved_report_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `user` (`userId`),
  CONSTRAINT `saved_report_ibfk_2` FOREIGN KEY (`mediaId`) REFERENCES `media` (`mediaId`),
  CONSTRAINT `saved_report_ibfk_3` FOREIGN KEY (`reportScheduleId`) REFERENCES `reportschedule` (`reportScheduleId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `saved_report`
--

LOCK TABLES `saved_report` WRITE;
/*!40000 ALTER TABLE `saved_report` DISABLE KEYS */;
/*!40000 ALTER TABLE `saved_report` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schedule`
--

DROP TABLE IF EXISTS `schedule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schedule` (
  `eventId` int(11) NOT NULL AUTO_INCREMENT,
  `eventTypeId` int(11) NOT NULL,
  `campaignId` int(11) DEFAULT NULL,
  `commandId` int(11) DEFAULT NULL,
  `dayPartId` int(11) NOT NULL DEFAULT '0',
  `userId` int(11) NOT NULL,
  `fromDt` bigint(20) DEFAULT NULL,
  `toDt` bigint(20) DEFAULT NULL,
  `is_priority` tinyint(4) NOT NULL,
  `displayOrder` int(11) NOT NULL DEFAULT '0',
  `lastRecurrenceWatermark` bigint(20) DEFAULT NULL,
  `syncTimezone` tinyint(4) NOT NULL DEFAULT '0',
  `recurrence_type` enum('Minute','Hour','Day','Week','Month','Year') DEFAULT NULL,
  `recurrence_detail` int(11) DEFAULT NULL,
  `recurrence_range` bigint(20) DEFAULT NULL,
  `recurrenceRepeatsOn` varchar(14) DEFAULT NULL,
  `syncEvent` int(11) NOT NULL DEFAULT '0',
  `recurrenceMonthlyRepeatsOn` tinyint(4) NOT NULL DEFAULT '0',
  `shareOfVoice` tinyint(4) DEFAULT NULL,
  `isGeoAware` tinyint(4) NOT NULL DEFAULT '0',
  `geoLocation` text,
  PRIMARY KEY (`eventId`),
  KEY `campaignId` (`campaignId`),
  KEY `userId` (`userId`),
  CONSTRAINT `schedule_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `user` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schedule`
--

LOCK TABLES `schedule` WRITE;
/*!40000 ALTER TABLE `schedule` DISABLE KEYS */;
/*!40000 ALTER TABLE `schedule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `scheduleexclusions`
--

DROP TABLE IF EXISTS `scheduleexclusions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `scheduleexclusions` (
  `scheduleExclusionId` int(11) NOT NULL AUTO_INCREMENT,
  `eventId` int(11) NOT NULL,
  `fromDt` int(11) NOT NULL,
  `toDt` int(11) NOT NULL,
  PRIMARY KEY (`scheduleExclusionId`),
  KEY `eventId` (`eventId`),
  CONSTRAINT `scheduleexclusions_ibfk_1` FOREIGN KEY (`eventId`) REFERENCES `schedule` (`eventId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `scheduleexclusions`
--

LOCK TABLES `scheduleexclusions` WRITE;
/*!40000 ALTER TABLE `scheduleexclusions` DISABLE KEYS */;
/*!40000 ALTER TABLE `scheduleexclusions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schedulereminder`
--

DROP TABLE IF EXISTS `schedulereminder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schedulereminder` (
  `scheduleReminderId` int(11) NOT NULL AUTO_INCREMENT,
  `eventId` int(11) NOT NULL,
  `value` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `option` int(11) NOT NULL,
  `reminderDt` int(11) NOT NULL,
  `lastReminderDt` int(11) NOT NULL,
  `isEmail` tinyint(4) NOT NULL,
  PRIMARY KEY (`scheduleReminderId`),
  KEY `eventId` (`eventId`),
  CONSTRAINT `schedulereminder_ibfk_1` FOREIGN KEY (`eventId`) REFERENCES `schedule` (`eventId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schedulereminder`
--

LOCK TABLES `schedulereminder` WRITE;
/*!40000 ALTER TABLE `schedulereminder` DISABLE KEYS */;
/*!40000 ALTER TABLE `schedulereminder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `session`
--

DROP TABLE IF EXISTS `session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `session` (
  `session_id` varchar(160) NOT NULL,
  `session_data` longtext NOT NULL,
  `session_expiration` int(10) unsigned NOT NULL DEFAULT '0',
  `lastAccessed` datetime DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  `isExpired` tinyint(4) NOT NULL DEFAULT '1',
  `userAgent` varchar(255) DEFAULT NULL,
  `remoteAddr` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`session_id`),
  KEY `userId` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `session`
--

LOCK TABLES `session` WRITE;
/*!40000 ALTER TABLE `session` DISABLE KEYS */;
INSERT INTO `session` VALUES ('1hqli6188bo6gv6i9avtdb8k2p','init|s:1:\"1\";csrfToken|s:40:\"b05cf4811ca6dcbfb2b5d7b1005d926cf3de2080\";slim.flash|a:1:{s:10:\"priorRoute\";s:11:\"/admin/view\";}',1622716394,'2021-06-03 11:09:14',0,0,'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36','172.19.0.1'),('bofjo4u35sr7aeggh41eg48rvf','init|s:1:\"1\";csrfToken|s:40:\"11d14ae52ae744c2098fed12c572965fe43636d2\";slim.flash|a:0:{}userid|i:1;',1622716432,'2021-06-03 11:10:46',1,0,'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36','172.19.0.1'),('pmi7nr9fla7l2mook46hibs387','init|s:1:\"1\";csrfToken|s:40:\"be71d8b141cbbd1822a13fc0ce4789b2f12beed6\";slim.flash|a:0:{}userid|i:1;',1622628499,'2021-06-02 10:57:19',1,0,'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36','172.18.0.1'),('tr7bdtkhag96p1p55jb3hhpl7n','init|s:1:\"1\";csrfToken|s:40:\"b02dc72a34076aef0f978a84071a77b0f2cd1c3f\";slim.flash|a:0:{}userid|i:1;',1622716418,'2021-06-03 11:09:38',1,0,'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36','172.19.0.1');
/*!40000 ALTER TABLE `session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `setting`
--

DROP TABLE IF EXISTS `setting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `setting` (
  `settingId` int(11) NOT NULL AUTO_INCREMENT,
  `setting` varchar(50) NOT NULL,
  `value` varchar(1000) NOT NULL,
  `userSee` tinyint(4) NOT NULL DEFAULT '1',
  `userChange` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`settingId`)
) ENGINE=InnoDB AUTO_INCREMENT=123 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `setting`
--

LOCK TABLES `setting` WRITE;
/*!40000 ALTER TABLE `setting` DISABLE KEYS */;
INSERT INTO `setting` VALUES (1,'MEDIA_DEFAULT','private',1,1),(2,'LAYOUT_DEFAULT','private',1,1),(3,'defaultUsertype','User',1,1),(7,'userModule','module_user_general.php',0,0),(11,'defaultTimezone','Europe/London',1,1),(18,'mail_to','mail@yoursite.com',1,1),(19,'mail_from','mail@yoursite.com',1,1),(30,'audit','Error',1,1),(33,'LIBRARY_LOCATION','/var/www/cms/library/',0,0),(34,'SERVER_KEY','9GEsZXmH',1,1),(35,'HELP_BASE','http://www.xibo.org.uk/manual/en/',1,1),(36,'PHONE_HOME','1',1,1),(37,'PHONE_HOME_KEY','',0,0),(38,'PHONE_HOME_URL','http://www.xibo.org.uk/stats/track.php',0,0),(39,'PHONE_HOME_DATE','1622714982',0,0),(40,'SERVER_MODE','Production',1,1),(41,'MAINTENANCE_ENABLED','Protected',1,1),(42,'MAINTENANCE_EMAIL_ALERTS','1',1,1),(43,'MAINTENANCE_KEY','zYk83AQTLgbw3hry',1,1),(44,'MAINTENANCE_LOG_MAXAGE','30',1,1),(45,'MAINTENANCE_STAT_MAXAGE','30',1,1),(46,'MAINTENANCE_ALERT_TOUT','12',1,1),(47,'SHOW_DISPLAY_AS_VNCLINK','',1,1),(48,'SHOW_DISPLAY_AS_VNC_TGT','_top',1,1),(49,'MAINTENANCE_ALWAYS_ALERT','0',1,1),(50,'SCHEDULE_LOOKAHEAD','1',1,0),(51,'REQUIRED_FILES_LOOKAHEAD','172800',1,1),(52,'REGION_OPTIONS_COLOURING','Media Colouring',1,1),(53,'LAYOUT_COPY_MEDIA_CHECKB','0',1,1),(54,'MAX_LICENSED_DISPLAYS','0',0,0),(55,'LIBRARY_MEDIA_UPDATEINALL_CHECKB','1',1,1),(56,'USER_PASSWORD_POLICY','',1,1),(57,'USER_PASSWORD_ERROR','',1,1),(58,'MODULE_CONFIG_LOCKED_CHECKB','0',0,0),(59,'LIBRARY_SIZE_LIMIT_KB','0',1,0),(60,'MONTHLY_XMDS_TRANSFER_LIMIT_KB','0',1,0),(61,'DEFAULT_LANGUAGE','en_GB',1,1),(62,'TRANSITION_CONFIG_LOCKED_CHECKB','0',1,0),(63,'GLOBAL_THEME_NAME','default',1,1),(64,'DEFAULT_LAT','51.504',1,1),(65,'DEFAULT_LONG','-0.104',1,1),(66,'SCHEDULE_WITH_VIEW_PERMISSION','0',1,1),(67,'SETTING_IMPORT_ENABLED','1',1,1),(68,'SETTING_LIBRARY_TIDY_ENABLED','1',1,1),(69,'SENDFILE_MODE','Apache',0,0),(70,'EMBEDDED_STATUS_WIDGET','',1,0),(71,'PROXY_HOST','',1,1),(72,'PROXY_PORT','0',1,1),(73,'PROXY_AUTH','',1,1),(74,'DATE_FORMAT','Y-m-d H:i',1,1),(75,'DETECT_LANGUAGE','1',1,1),(76,'DEFAULTS_IMPORTED','1',0,0),(77,'FORCE_HTTPS','0',1,1),(78,'ISSUE_STS','0',1,1),(79,'STS_TTL','600',1,1),(81,'CALENDAR_TYPE','Gregorian',1,1),(82,'DASHBOARD_LATEST_NEWS_ENABLED','1',1,1),(83,'LIBRARY_MEDIA_DELETEOLDVER_CHECKB','1',1,1),(84,'PROXY_EXCEPTIONS','',1,1),(85,'INSTANCE_SUSPENDED','0',0,0),(86,'INHERIT_PARENT_PERMISSIONS','1',1,1),(87,'XMR_ADDRESS','tcp://cms-xmr:50001',0,0),(88,'XMR_PUB_ADDRESS','tcp://cms.example.org:9505',1,1),(89,'CDN_URL','',0,0),(90,'ELEVATE_LOG_UNTIL','1463396415',1,1),(91,'RESTING_LOG_LEVEL','Error',1,1),(92,'TASK_CONFIG_LOCKED_CHECKB','0',0,0),(93,'WHITELIST_LOAD_BALANCERS','',1,1),(94,'DEFAULT_LAYOUT','1',1,1),(95,'DISPLAY_PROFILE_STATS_DEFAULT','0',1,1),(96,'DISPLAY_PROFILE_CURRENT_LAYOUT_STATUS_ENABLED','1',1,1),(97,'DISPLAY_PROFILE_SCREENSHOT_INTERVAL_ENABLED','1',1,1),(98,'DISPLAY_PROFILE_SCREENSHOT_SIZE_DEFAULT','200',1,1),(99,'LATEST_NEWS_URL','http://xibo.org.uk/feed',0,0),(100,'DISPLAY_LOCK_NAME_TO_DEVICENAME','0',1,1),(101,'mail_from_name','',1,1),(102,'SCHEDULE_SHOW_LAYOUT_NAME','0',1,1),(103,'DEFAULT_USERGROUP','1',1,1),(104,'PASSWORD_REMINDER_ENABLED','Off',1,1),(105,'DISPLAY_AUTO_AUTH','0',0,0),(106,'EVENT_SYNC','0',0,0),(107,'DEFAULT_TRANSITION_DURATION','1000',1,1),(108,'LAYOUT_STATS_ENABLED_DEFAULT','0',1,1),(109,'DISPLAY_PROFILE_AGGREGATION_LEVEL_DEFAULT','Individual',1,1),(110,'MEDIA_STATS_ENABLED_DEFAULT','Inherit',1,1),(111,'WIDGET_STATS_ENABLED_DEFAULT','Inherit',1,1),(112,'NAVIGATION_MENU_POSITION','vertical',1,1),(113,'TWOFACTOR_ISSUER','',1,1),(114,'PLAYLIST_STATS_ENABLED_DEFAULT','Inherit',1,1),(115,'DEFAULT_RESIZE_LIMIT','6000',1,1),(116,'DEFAULT_RESIZE_THRESHOLD','1920',1,1),(117,'DEFAULT_CASCADE_PERMISSION_CHECKB','1',1,1),(118,'DEFAULT_TRANSITION_IN','fadeIn',1,1),(119,'DEFAULT_TRANSITION_OUT','fadeOut',1,1),(120,'DEFAULT_LAYOUT_AUTO_PUBLISH_CHECKB','0',1,1),(121,'QUICK_CHART_URL','http://cms-quickchart:3400',0,1),(122,'DEFAULT_TRANSITION_AUTO_APPLY','0',1,1);
/*!40000 ALTER TABLE `setting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stat`
--

DROP TABLE IF EXISTS `stat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stat` (
  `statId` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(20) NOT NULL,
  `statDate` int(11) NOT NULL,
  `scheduleId` int(11) NOT NULL,
  `displayId` int(11) NOT NULL,
  `campaignId` int(11) DEFAULT NULL,
  `layoutId` int(11) DEFAULT NULL,
  `mediaId` int(11) DEFAULT NULL,
  `widgetId` int(11) DEFAULT NULL,
  `start` int(11) NOT NULL,
  `end` int(11) NOT NULL,
  `tag` varchar(254) DEFAULT NULL,
  `duration` int(11) NOT NULL,
  `count` int(11) NOT NULL,
  `engagements` text,
  PRIMARY KEY (`statId`),
  KEY `statDate` (`statDate`),
  KEY `displayId` (`displayId`,`end`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stat`
--

LOCK TABLES `stat` WRITE;
/*!40000 ALTER TABLE `stat` DISABLE KEYS */;
/*!40000 ALTER TABLE `stat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `status`
--

DROP TABLE IF EXISTS `status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `status` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status` varchar(254) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `status`
--

LOCK TABLES `status` WRITE;
/*!40000 ALTER TABLE `status` DISABLE KEYS */;
INSERT INTO `status` VALUES (1,'Published'),(2,'Draft'),(3,'Pending Approval');
/*!40000 ALTER TABLE `status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tag`
--

DROP TABLE IF EXISTS `tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tag` (
  `tagId` int(11) NOT NULL AUTO_INCREMENT,
  `tag` varchar(50) NOT NULL,
  `isSystem` int(11) NOT NULL DEFAULT '0',
  `options` text,
  `isRequired` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`tagId`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tag`
--

LOCK TABLES `tag` WRITE;
/*!40000 ALTER TABLE `tag` DISABLE KEYS */;
INSERT INTO `tag` VALUES (1,'template',1,NULL,0),(2,'background',1,NULL,0),(3,'thumbnail',1,NULL,0),(4,'imported',0,NULL,0),(5,'imported',0,NULL,0),(6,'imported',0,NULL,0),(7,'on-demand',0,NULL,0),(8,'on-demand-display',0,NULL,0);
/*!40000 ALTER TABLE `tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `task`
--

DROP TABLE IF EXISTS `task`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `task` (
  `taskId` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(254) NOT NULL,
  `class` varchar(254) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '2',
  `pid` int(11) DEFAULT NULL,
  `options` text,
  `schedule` varchar(254) NOT NULL,
  `lastRunDt` int(11) NOT NULL DEFAULT '0',
  `lastRunStartDt` int(11) DEFAULT NULL,
  `lastRunMessage` varchar(255) DEFAULT NULL,
  `lastRunStatus` tinyint(4) NOT NULL DEFAULT '0',
  `lastRunDuration` smallint(6) NOT NULL DEFAULT '0',
  `lastRunExitCode` smallint(6) NOT NULL DEFAULT '0',
  `isActive` tinyint(4) NOT NULL,
  `runNow` tinyint(4) NOT NULL DEFAULT '0',
  `configFile` varchar(254) NOT NULL,
  PRIMARY KEY (`taskId`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `task`
--

LOCK TABLES `task` WRITE;
/*!40000 ALTER TABLE `task` DISABLE KEYS */;
INSERT INTO `task` VALUES (1,'Daily Maintenance','\\Xibo\\XTR\\MaintenanceDailyTask',2,0,'[]','0 0 * * * *',1622714880,1622714880,'# Daily Maintenance\n\n## Import Layouts\n - Not Required.\n\n## Tidy Logs\n - Done.\n\n## Tidy Cache\n - Done.\n\n## Purge Expired API Tokens\n - Done.\n\n',4,0,0,1,0,'/tasks/maintenance-daily.task'),(2,'Regular Maintenance','\\Xibo\\XTR\\MaintenanceRegularTask',2,0,'[]','*/5 * * * * *',1622715001,1622715000,'# Wake On LAN\n - Done\n\n## Playlist Duration Updates\n - Done\n\n## Build Layouts\n - Done\n\n## Tidy Library\n - Done\n\n## Publishing layouts with set publish dates\n - Done\n\n',4,0,0,1,0,'/tasks/maintenance-regular.task'),(3,'Email Notifications','\\Xibo\\XTR\\EmailNotificationsTask',2,0,'[]','*/5 * * * * *',1622715000,1622715000,'# Email Notifications\n\n## Email Notifications\n - Done\n',4,0,0,1,0,'/tasks/email-notifications.task'),(4,'Stats Archive','\\Xibo\\XTR\\StatsArchiveTask',2,0,'{\"periodSizeInDays\":\"7\",\"maxPeriods\":\"4\",\"archiveStats\":\"On\"}','0 0 * * Mon',1622625361,1622625361,'# Stats Archive\n\n - Done\n\n## Tidy Stats\n',4,0,0,1,0,'/tasks/stats-archiver.task'),(5,'Remove old Notifications','\\Xibo\\XTR\\NotificationTidyTask',2,0,'{\"maxAgeDays\":\"7\",\"systemOnly\":\"1\",\"readOnly\":\"0\"}','15 0 * * *',1622714880,1622714880,'# Notification Tidy\n\nDone\n\n',4,0,0,1,0,'/tasks/notification-tidy.task'),(6,'Fetch Remote DataSets','\\Xibo\\XTR\\RemoteDataSetFetchTask',2,0,'[]','30 * * * * *',1622714880,1622714880,'# Fetching Remote-DataSets\n\nDone\n',4,0,0,1,0,'/tasks/remote-dataset.task'),(7,'Drop Player Cache','\\Xibo\\XTR\\DropPlayerCacheTask',2,NULL,'[]','0 0 1 1 *',0,NULL,NULL,0,0,0,0,0,'/tasks/drop-player-cache.task'),(8,'Sync Dynamic Playlists','\\Xibo\\XTR\\DynamicPlaylistSyncTask',2,0,'[]','* * * * * *',1622715060,1622715060,'No library media/playlist updates since we last ran\n',4,0,0,1,0,'/tasks/dynamic-playlist-sync.task'),(9,'Widget Sync','\\Xibo\\XTR\\WidgetSyncTask',2,0,'[]','*/3 * * * *',1622714940,1622714940,'Synced 0 widgets across 0 layouts.\n',4,0,0,1,0,'/tasks/widget-sync.task'),(10,'Report Schedule','\\Xibo\\XTR\\ReportScheduleTask',2,0,'[]','*/5 * * * * *',1622715000,1622715000,'# Report schedule\n\n',4,0,0,1,0,'/tasks/report-schedule.task'),(11,'Statistics Migration','\\Xibo\\XTR\\StatsMigrationTask',2,0,'{\"killSwitch\":\"0\",\"numberOfRecords\":\"5000\",\"numberOfLoops\":\"10\",\"pauseBetweenLoops\":\"1\",\"optimiseOnComplete\":\"1\"}','*/10 * * * * *',1622625361,1622625361,'## Moving from stat_archive to stat (MySQL)\nDisabling Stats Archive Task.\n- Initial watermark is 1\n\n# End of records.\n- Dropping stat_archive.\nDone.\n\n# Disabling task.\nDone.\n\nEnabling Stats Archive Task.\n',4,0,0,0,0,'/tasks/stats-migration.task'),(12,'Schedule Reminder','\\Xibo\\XTR\\ScheduleReminderTask',2,0,'[]','*/5 * * * * *',1622715000,1622715000,'# Schedule reminder\n\n',4,0,0,1,0,'/tasks/schedule-reminder.task'),(13,'Image Processing','\\Xibo\\XTR\\ImageProcessingTask',2,0,'[]','*/5 * * * * *',1622715001,1622715001,'# Image Processing\n\nReleased and modified image count. 0\n',4,0,0,1,0,'/tasks/image-processing.task');
/*!40000 ALTER TABLE `task` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transition`
--

DROP TABLE IF EXISTS `transition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transition` (
  `transitionId` int(11) NOT NULL AUTO_INCREMENT,
  `transition` varchar(254) NOT NULL,
  `code` varchar(254) NOT NULL,
  `hasDuration` tinyint(4) NOT NULL,
  `hasDirection` tinyint(4) NOT NULL,
  `availableAsIn` tinyint(4) NOT NULL,
  `availableAsOut` tinyint(4) NOT NULL,
  PRIMARY KEY (`transitionId`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transition`
--

LOCK TABLES `transition` WRITE;
/*!40000 ALTER TABLE `transition` DISABLE KEYS */;
INSERT INTO `transition` VALUES (1,'Fade In','fadeIn',1,0,1,0),(2,'Fade Out','fadeOut',1,0,0,1),(3,'Fly','fly',1,1,1,1);
/*!40000 ALTER TABLE `transition` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `userId` int(11) NOT NULL AUTO_INCREMENT,
  `userTypeId` int(11) NOT NULL,
  `userName` varchar(50) NOT NULL,
  `userPassword` varchar(255) NOT NULL,
  `lastAccessed` datetime DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `homePageId` tinyint(4) NOT NULL DEFAULT '1',
  `retired` tinyint(4) NOT NULL DEFAULT '0',
  `csprng` tinyint(4) NOT NULL DEFAULT '0',
  `newUserWizard` tinyint(4) NOT NULL DEFAULT '0',
  `firstName` varchar(254) DEFAULT NULL,
  `lastName` varchar(254) DEFAULT NULL,
  `phone` varchar(254) DEFAULT NULL,
  `ref1` varchar(254) DEFAULT NULL,
  `ref2` varchar(254) DEFAULT NULL,
  `ref3` varchar(254) DEFAULT NULL,
  `ref4` varchar(254) DEFAULT NULL,
  `ref5` varchar(254) DEFAULT NULL,
  `isPasswordChangeRequired` tinyint(4) NOT NULL DEFAULT '0',
  `twoFactorTypeId` int(11) NOT NULL DEFAULT '0',
  `twoFactorSecret` text,
  `twoFactorRecoveryCodes` text,
  `showContentFrom` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`userId`),
  KEY `userTypeId` (`userTypeId`),
  CONSTRAINT `user_ibfk_1` FOREIGN KEY (`userTypeId`) REFERENCES `usertype` (`userTypeId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,1,'xibo_admin','$2y$10$sfl0zKFSaP9OYcOF1mxSyOz0Ep.QmArQkEKmOAcT6wk09T8DsPd1C','2021-06-03 11:09:34',NULL,29,0,2,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,1);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `useroption`
--

DROP TABLE IF EXISTS `useroption`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `useroption` (
  `userId` int(11) NOT NULL,
  `option` varchar(50) NOT NULL,
  `value` text,
  PRIMARY KEY (`userId`,`option`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `useroption`
--

LOCK TABLES `useroption` WRITE;
/*!40000 ALTER TABLE `useroption` DISABLE KEYS */;
INSERT INTO `useroption` VALUES (1,'applicationsGrid','{\"time\":1622627059800,\"start\":0,\"length\":10,\"order\":[[0,\"asc\"]],\"search\":{\"search\":\"\",\"smart\":true,\"regex\":false,\"caseInsensitive\":true},\"columns\":[{\"visible\":true,\"search\":{\"search\":\"\",\"smart\":true,\"regex\":false,\"caseInsensitive\":true}},{\"visible\":true,\"search\":{\"search\":\"\",\"smart\":true,\"regex\":false,\"caseInsensitive\":true}},{\"visible\":true,\"search\":{\"search\":\"\",\"smart\":true,\"regex\":false,\"caseInsensitive\":true}}]}'),(1,'displayGrid','{\"time\":1622714992629,\"start\":0,\"length\":10,\"order\":[[1,\"asc\"]],\"search\":{\"search\":\"\",\"smart\":true,\"regex\":false,\"caseInsensitive\":true},\"columns\":[{\"visible\":true,\"search\":{\"search\":\"\",\"smart\":true,\"regex\":false,\"caseInsensitive\":true}},{\"visible\":true,\"search\":{\"search\":\"\",\"smart\":true,\"regex\":false,\"caseInsensitive\":true}},{\"visible\":true,\"search\":{\"search\":\"\",\"smart\":true,\"regex\":false,\"caseInsensitive\":true}},{\"visible\":true,\"search\":{\"search\":\"\",\"smart\":true,\"regex\":false,\"caseInsensitive\":true}},{\"visible\":false,\"search\":{\"search\":\"\",\"smart\":true,\"regex\":false,\"caseInsensitive\":true}},{\"visible\":false,\"search\":{\"search\":\"\",\"smart\":true,\"regex\":false,\"caseInsensitive\":true}},{\"visible\":false,\"search\":{\"search\":\"\",\"smart\":true,\"regex\":false,\"caseInsensitive\":true}},{\"visible\":false,\"search\":{\"search\":\"\",\"smart\":true,\"regex\":false,\"caseInsensitive\":true}},{\"visible\":false,\"search\":{\"search\":\"\",\"smart\":true,\"regex\":false,\"caseInsensitive\":true}},{\"visible\":false,\"search\":{\"search\":\"\",\"smart\":true,\"regex\":false,\"caseInsensitive\":true}},{\"visible\":false,\"search\":{\"search\":\"\",\"smart\":true,\"regex\":false,\"caseInsensitive\":true}},{\"visible\":true,\"search\":{\"search\":\"\",\"smart\":true,\"regex\":false,\"caseInsensitive\":true}},{\"visible\":false,\"search\":{\"search\":\"\",\"smart\":true,\"regex\":false,\"caseInsensitive\":true}},{\"visible\":false,\"search\":{\"search\":\"\",\"smart\":true,\"regex\":false,\"caseInsensitive\":true}},{\"visible\":false,\"search\":{\"search\":\"\",\"smart\":true,\"regex\":false,\"caseInsensitive\":true}},{\"visible\":true,\"search\":{\"search\":\"\",\"smart\":true,\"regex\":false,\"caseInsensitive\":true}},{\"visible\":true,\"search\":{\"search\":\"\",\"smart\":true,\"regex\":false,\"caseInsensitive\":true}},{\"visible\":false,\"search\":{\"search\":\"\",\"smart\":true,\"regex\":false,\"caseInsensitive\":true}},{\"visible\":false,\"search\":{\"search\":\"\",\"smart\":true,\"regex\":false,\"caseInsensitive\":true}},{\"visible\":false,\"search\":{\"search\":\"\",\"smart\":true,\"regex\":false,\"caseInsensitive\":true}},{\"visible\":false,\"search\":{\"search\":\"\",\"smart\":true,\"regex\":false,\"caseInsensitive\":true}},{\"visible\":true,\"search\":{\"search\":\"\",\"smart\":true,\"regex\":false,\"caseInsensitive\":true}},{\"visible\":false,\"search\":{\"search\":\"\",\"smart\":true,\"regex\":false,\"caseInsensitive\":true}},{\"visible\":false,\"search\":{\"search\":\"\",\"smart\":true,\"regex\":false,\"caseInsensitive\":true}},{\"visible\":false,\"search\":{\"search\":\"\",\"smart\":true,\"regex\":false,\"caseInsensitive\":true}},{\"visible\":false,\"search\":{\"search\":\"\",\"smart\":true,\"regex\":false,\"caseInsensitive\":true}},{\"visible\":false,\"search\":{\"search\":\"\",\"smart\":true,\"regex\":false,\"caseInsensitive\":true}},{\"visible\":false,\"search\":{\"search\":\"\",\"smart\":true,\"regex\":false,\"caseInsensitive\":true}},{\"visible\":false,\"search\":{\"search\":\"\",\"smart\":true,\"regex\":false,\"caseInsensitive\":true}},{\"visible\":false,\"search\":{\"search\":\"\",\"smart\":true,\"regex\":false,\"caseInsensitive\":true}},{\"visible\":false,\"search\":{\"search\":\"\",\"smart\":true,\"regex\":false,\"caseInsensitive\":true}},{\"visible\":true,\"search\":{\"search\":\"\",\"smart\":true,\"regex\":false,\"caseInsensitive\":true}},{\"visible\":true,\"search\":{\"search\":\"\",\"smart\":true,\"regex\":false,\"caseInsensitive\":true}}]}'),(1,'displaysGrid','{\"time\":1622714975106,\"start\":0,\"length\":10,\"order\":[[1,\"asc\"]],\"search\":{\"search\":\"\",\"smart\":true,\"regex\":false,\"caseInsensitive\":true},\"columns\":[{\"visible\":true,\"search\":{\"search\":\"\",\"smart\":true,\"regex\":false,\"caseInsensitive\":true}},{\"visible\":true,\"search\":{\"search\":\"\",\"smart\":true,\"regex\":false,\"caseInsensitive\":true}},{\"visible\":true,\"search\":{\"search\":\"\",\"smart\":true,\"regex\":false,\"caseInsensitive\":true}},{\"visible\":true,\"search\":{\"search\":\"\",\"smart\":true,\"regex\":false,\"caseInsensitive\":true}},{\"visible\":false,\"search\":{\"search\":\"\",\"smart\":true,\"regex\":false,\"caseInsensitive\":true}},{\"visible\":false,\"search\":{\"search\":\"\",\"smart\":true,\"regex\":false,\"caseInsensitive\":true}},{\"visible\":false,\"search\":{\"search\":\"\",\"smart\":true,\"regex\":false,\"caseInsensitive\":true}},{\"visible\":false,\"search\":{\"search\":\"\",\"smart\":true,\"regex\":false,\"caseInsensitive\":true}},{\"visible\":false,\"search\":{\"search\":\"\",\"smart\":true,\"regex\":false,\"caseInsensitive\":true}},{\"visible\":false,\"search\":{\"search\":\"\",\"smart\":true,\"regex\":false,\"caseInsensitive\":true}},{\"visible\":false,\"search\":{\"search\":\"\",\"smart\":true,\"regex\":false,\"caseInsensitive\":true}},{\"visible\":false,\"search\":{\"search\":\"\",\"smart\":true,\"regex\":false,\"caseInsensitive\":true}},{\"visible\":false,\"search\":{\"search\":\"\",\"smart\":true,\"regex\":false,\"caseInsensitive\":true}},{\"visible\":true,\"search\":{\"search\":\"\",\"smart\":true,\"regex\":false,\"caseInsensitive\":true}},{\"visible\":true,\"search\":{\"search\":\"\",\"smart\":true,\"regex\":false,\"caseInsensitive\":true}},{\"visible\":false,\"search\":{\"search\":\"\",\"smart\":true,\"regex\":false,\"caseInsensitive\":true}},{\"visible\":false,\"search\":{\"search\":\"\",\"smart\":true,\"regex\":false,\"caseInsensitive\":true}},{\"visible\":false,\"search\":{\"search\":\"\",\"smart\":true,\"regex\":false,\"caseInsensitive\":true}},{\"visible\":false,\"search\":{\"search\":\"\",\"smart\":true,\"regex\":false,\"caseInsensitive\":true}},{\"visible\":true,\"search\":{\"search\":\"\",\"smart\":true,\"regex\":false,\"caseInsensitive\":true}},{\"visible\":false,\"search\":{\"search\":\"\",\"smart\":true,\"regex\":false,\"caseInsensitive\":true}},{\"visible\":false,\"search\":{\"search\":\"\",\"smart\":true,\"regex\":false,\"caseInsensitive\":true}},{\"visible\":false,\"search\":{\"search\":\"\",\"smart\":true,\"regex\":false,\"caseInsensitive\":true}},{\"visible\":false,\"search\":{\"search\":\"\",\"smart\":true,\"regex\":false,\"caseInsensitive\":true}},{\"visible\":false,\"search\":{\"search\":\"\",\"smart\":true,\"regex\":false,\"caseInsensitive\":true}},{\"visible\":true,\"search\":{\"search\":\"\",\"smart\":true,\"regex\":false,\"caseInsensitive\":true}}]}'),(1,'libraryGrid','{\"time\":1622714959008,\"start\":0,\"length\":10,\"order\":[[1,\"asc\"]],\"search\":{\"search\":\"\",\"smart\":true,\"regex\":false,\"caseInsensitive\":true},\"columns\":[{\"visible\":true,\"search\":{\"search\":\"\",\"smart\":true,\"regex\":false,\"caseInsensitive\":true}},{\"visible\":true,\"search\":{\"search\":\"\",\"smart\":true,\"regex\":false,\"caseInsensitive\":true}},{\"visible\":true,\"search\":{\"search\":\"\",\"smart\":true,\"regex\":false,\"caseInsensitive\":true}},{\"visible\":true,\"search\":{\"search\":\"\",\"smart\":true,\"regex\":false,\"caseInsensitive\":true}},{\"visible\":true,\"search\":{\"search\":\"\",\"smart\":true,\"regex\":false,\"caseInsensitive\":true}},{\"visible\":true,\"search\":{\"search\":\"\",\"smart\":true,\"regex\":false,\"caseInsensitive\":true}},{\"visible\":false,\"search\":{\"search\":\"\",\"smart\":true,\"regex\":false,\"caseInsensitive\":true}},{\"visible\":true,\"search\":{\"search\":\"\",\"smart\":true,\"regex\":false,\"caseInsensitive\":true}},{\"visible\":false,\"search\":{\"search\":\"\",\"smart\":true,\"regex\":false,\"caseInsensitive\":true}},{\"visible\":true,\"search\":{\"search\":\"\",\"smart\":true,\"regex\":false,\"caseInsensitive\":true}},{\"visible\":true,\"search\":{\"search\":\"\",\"smart\":true,\"regex\":false,\"caseInsensitive\":true}},{\"visible\":false,\"search\":{\"search\":\"\",\"smart\":true,\"regex\":false,\"caseInsensitive\":true}},{\"visible\":false,\"search\":{\"search\":\"\",\"smart\":true,\"regex\":false,\"caseInsensitive\":true}},{\"visible\":true,\"search\":{\"search\":\"\",\"smart\":true,\"regex\":false,\"caseInsensitive\":true}},{\"visible\":true,\"search\":{\"search\":\"\",\"smart\":true,\"regex\":false,\"caseInsensitive\":true}},{\"visible\":false,\"search\":{\"search\":\"\",\"smart\":true,\"regex\":false,\"caseInsensitive\":true}},{\"visible\":false,\"search\":{\"search\":\"\",\"smart\":true,\"regex\":false,\"caseInsensitive\":true}},{\"visible\":true,\"search\":{\"search\":\"\",\"smart\":true,\"regex\":false,\"caseInsensitive\":true}},{\"visible\":true,\"search\":{\"search\":\"\",\"smart\":true,\"regex\":false,\"caseInsensitive\":true}}]}'),(1,'statusDashboardDisplays','{\"time\":1622714975066,\"start\":0,\"length\":10,\"order\":[[0,\"asc\"]],\"search\":{\"search\":\"\",\"smart\":true,\"regex\":false,\"caseInsensitive\":true},\"columns\":[{\"visible\":true,\"search\":{\"search\":\"\",\"smart\":true,\"regex\":false,\"caseInsensitive\":true}},{\"visible\":true,\"search\":{\"search\":\"\",\"smart\":true,\"regex\":false,\"caseInsensitive\":true}},{\"visible\":true,\"search\":{\"search\":\"\",\"smart\":true,\"regex\":false,\"caseInsensitive\":true}}]}');
/*!40000 ALTER TABLE `useroption` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usertype`
--

DROP TABLE IF EXISTS `usertype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usertype` (
  `userTypeId` int(11) NOT NULL AUTO_INCREMENT,
  `userType` varchar(16) NOT NULL,
  PRIMARY KEY (`userTypeId`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usertype`
--

LOCK TABLES `usertype` WRITE;
/*!40000 ALTER TABLE `usertype` DISABLE KEYS */;
INSERT INTO `usertype` VALUES (1,'Super Admin'),(2,'Group Admin'),(3,'User'),(4,'DOOH');
/*!40000 ALTER TABLE `usertype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `widget`
--

DROP TABLE IF EXISTS `widget`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `widget` (
  `widgetId` int(11) NOT NULL AUTO_INCREMENT,
  `playlistId` int(11) NOT NULL,
  `ownerId` int(11) NOT NULL,
  `type` varchar(50) NOT NULL,
  `duration` int(11) NOT NULL,
  `displayOrder` int(11) NOT NULL,
  `calculatedDuration` int(11) NOT NULL,
  `useDuration` tinyint(4) NOT NULL DEFAULT '1',
  `fromDt` int(11) NOT NULL,
  `toDt` int(11) NOT NULL,
  `createdDt` int(11) NOT NULL DEFAULT '0',
  `modifiedDt` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`widgetId`),
  KEY `playlistId` (`playlistId`),
  KEY `ownerId` (`ownerId`),
  CONSTRAINT `widget_ibfk_1` FOREIGN KEY (`playlistId`) REFERENCES `playlist` (`playlistId`),
  CONSTRAINT `widget_ibfk_2` FOREIGN KEY (`ownerId`) REFERENCES `user` (`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `widget`
--

LOCK TABLES `widget` WRITE;
/*!40000 ALTER TABLE `widget` DISABLE KEYS */;
INSERT INTO `widget` VALUES (1,1,1,'image',60,1,60,1,0,2147483647,1622625342,1622625342),(2,2,1,'text',10,1,10,1,0,2147483647,1622625342,1622625342),(3,3,1,'spacer',5,1,5,1,0,2147483647,1622625343,1622625343),(4,3,1,'text',20,2,20,1,0,2147483647,1622625343,1622625343),(5,4,1,'clock',1,1,5,0,0,2147483647,1622625343,1622625343);
/*!40000 ALTER TABLE `widget` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `widgethistory`
--

DROP TABLE IF EXISTS `widgethistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `widgethistory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `layoutHistoryId` int(11) NOT NULL,
  `widgetId` int(11) NOT NULL,
  `mediaId` int(11) DEFAULT NULL,
  `type` varchar(50) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `layoutHistoryId` (`layoutHistoryId`),
  CONSTRAINT `widgethistory_ibfk_1` FOREIGN KEY (`layoutHistoryId`) REFERENCES `layouthistory` (`layoutHistoryId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `widgethistory`
--

LOCK TABLES `widgethistory` WRITE;
/*!40000 ALTER TABLE `widgethistory` DISABLE KEYS */;
/*!40000 ALTER TABLE `widgethistory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `widgetoption`
--

DROP TABLE IF EXISTS `widgetoption`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `widgetoption` (
  `widgetId` int(11) NOT NULL,
  `type` varchar(50) NOT NULL,
  `option` varchar(254) NOT NULL,
  `value` text,
  PRIMARY KEY (`widgetId`,`type`,`option`),
  CONSTRAINT `widgetoption_ibfk_1` FOREIGN KEY (`widgetId`) REFERENCES `widget` (`widgetId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `widgetoption`
--

LOCK TABLES `widgetoption` WRITE;
/*!40000 ALTER TABLE `widgetoption` DISABLE KEYS */;
INSERT INTO `widgetoption` VALUES (1,'attrib','align','center'),(1,'attrib','enableStat','Inherit'),(1,'attrib','name','Company Logo'),(1,'attrib','scaleType','center'),(1,'attrib','uri','1.png'),(1,'attrib','valign','middle'),(2,'attrib','effect','none'),(2,'attrib','enableStat','Inherit'),(2,'attrib','lowerLimit','0'),(2,'attrib','name','Header Text'),(2,'attrib','ta_text_advanced','0'),(2,'attrib','upperLimit','0'),(2,'attrib','xmds','1'),(2,'cdata','text','<p style=\"text-align: center;\"><span style=\"color:#FFFFFF;\"><span style=\"font-size: 48px;\">powered by...</span></span></p>\n\n<p style=\"text-align: center;\"><strong><span style=\"font-size:96px;\"><span style=\"color:#FFFFFF;\">Xibo Digital Signage</span></span></strong></p>\n'),(3,'attrib','enableStat','Inherit'),(3,'attrib','lowerLimit','0'),(3,'attrib','upperLimit','0'),(4,'attrib','effect','fade'),(4,'attrib','enableStat','Inherit'),(4,'attrib','lowerLimit','0'),(4,'attrib','name','Explainer Text'),(4,'attrib','speed','6000'),(4,'attrib','ta_text_advanced','0'),(4,'attrib','upperLimit','0'),(4,'attrib','xmds','1'),(4,'cdata','text','<p style=\"text-align: center;\"><span style=\"color:#FFFFFF;\"><span style=\"font-size: 48px;\">This is the Default Layout to assign to displays</span></span></p>\n\n<p style=\"text-align: center;\"><span style=\"color:#FFFFFF;\"><span style=\"font-size: 48px;\">It will be shown when nothing else is scheduled</span></span></p>\n\n<p style=\"text-align: center;\"><span style=\"font-size: 48px;\"><span style=\"color:#FFFFFF;\">Edit this Default Layout to personalise or create your own to assign to </span><span style=\"color: #fcfce5;\">your displays!</span></span></p>\n\n<p>&nbsp;</p>\n'),(5,'attrib','clockFace','TwentyFourHourClock'),(5,'attrib','clockTypeId','2'),(5,'attrib','enableStat','Inherit'),(5,'attrib','lowerLimit','0'),(5,'attrib','offset','0'),(5,'attrib','showSeconds','1'),(5,'attrib','ta_text_advanced','0'),(5,'attrib','theme','1'),(5,'attrib','upperLimit','0'),(5,'cdata','format','<p style=\"text-align: justify;\"><span style=\"color:#FFFFFF;\"><span style=\"font-size: 48px;\">[HH:mm]</span></span></p>\n');
/*!40000 ALTER TABLE `widgetoption` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-06-03 10:11:10
