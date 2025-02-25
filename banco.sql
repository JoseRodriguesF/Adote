CREATE DATABASE  IF NOT EXISTS `adote` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `adote`;
-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: localhost    Database: adote
-- ------------------------------------------------------
-- Server version	9.0.0

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
-- Table structure for table `caes`
--

DROP TABLE IF EXISTS `caes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `caes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) DEFAULT NULL,
  `porte` enum('Pequeno','Médio','Grande') DEFAULT NULL,
  `cor` varchar(20) DEFAULT NULL,
  `raca` varchar(100) DEFAULT NULL,
  `genero` enum('Macho','Femea') DEFAULT NULL,
  `idade` int DEFAULT NULL,
  `descricao` varchar(200) DEFAULT NULL,
  `historico_med` varchar(100) DEFAULT NULL,
  `ultima_vacina` date DEFAULT NULL,
  `imagem` longblob,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `caes`
--

LOCK TABLES `caes` WRITE;
/*!40000 ALTER TABLE `caes` DISABLE KEYS */;
INSERT INTO `caes` VALUES (1,'jiofhsiubfiu s','Pequeno',' f vdfgfcd','gdfhybfdgdf','Macho',3,'443',' sdvsdfcsffs','2025-02-14',_binary '�\��\�\0JFIF\0,,\0\0�\�\0C\0		\n\r\Z\Z $.\' \",#(7),01444\'9=82<.342�\�\0C			\r\r2!!22222222222222222222222222222222222222222222222222��\0\0\�d\"\0�\�\0\Z\0\0\0\0\0\0\0\0\0\0\0\0\0�\�\08\0\0\0\0\0\0!1AQa\"2q���#3R�4br�\�$BCS���\�\0\0\0\0\0\0\0\0\0\0\0\0�\�\0\0\0\0\0\0\0\0\0\0\01!AQ�\�\0\0\0?\0�ȑ򀕸\�G��x�$2Q�l|�\�\�{ �tGS���\'\��\�Ȑ\"w2b$ئt+\�ĆJ5mK\�.|\��G\�\���\�\��\0ڏ�\��	�\�&\��فҎ�\�4�\n�NR��	-�ĂKm|�$\�_6\�\�\\�^\\��\�}f\�_S��\��Yr\�Z:\�zI�4�\Z%G�k�\�wg�JCtJ�{6�\�\�\0#�\�\�\�Q\�g`�?cr=ϱ�@�ƜF\\{?�z>FT�\�3G\�ly6_-z0\�\�\r@\�}E\�\��i�P8�@\Z\Z�\�\�TA�5Ⱥ��4[-AF\�\�÷�x~�ԉ��\�&\�-h\nGa\��cG�z\�\�&�������ij�Z\�2͏�\�ܾr��CZ\"\�)T\�\�t\�\�\n\�\�f7\�mk��C\�h)3�\�\���\�(C\�,i俋�ׅ�)\�o�j{\�İ�	\�\�= %\r�+��d�8������!�yr�|x�[�;\�:d��#�\�4�Hd\�kR�:\��\����7\�]��{�	e:\�ϸe�\�\�kOV���\ndj�&��a�CR�-�T{�~�]\�\��\�O\�\�F±�\��]v)$\�~�?\�+\�)�\�7Tvnwa/�~M��K��ͅ~L��\��=n\ZڕC�Z��̋X��\���\�}�rT\�M�\�i\�+���QuЦ�\n�\�\�U����^���NU�Z?+О��/|v�^�\�K\Z\��Ǒe�V\�r�kp�J������\�\�	\�x\�T�f�¹\�ܛ\�\�\�\��V�\0ل\�)\��9���\����;m\�|>>\�\�[=W+t|�^֢\��Y1ͯ(\nk\�\��\'��(ɷ_W�N���7S�6P�C\�nb!�\�d�(bӟՑ\�d핍s[���\\U�2U���&{G(jPĂ��\�r�1�4�H%�ս�\�Y-\�\�\�\�\���Zm�\�ݎ�$|\�kfF\�\�d�\�\�ZɃ2\�\�ӯ�\�_ҹ\�u���z�^�;\�6ޭ�\�ON\�\�e˲}�\�?�\'�%!%�V�\�\�\�\�\�t_iݺH\�\0Wi�9i\�i���\�3F\�\��~u\�\�*3GtV��:.�_tV�&ǥQ\�*�f�z��\�\�+���*V�T�T\�\�.�\�Rx�\�j�\�KSW*�\�>	.y7�\�\�}�\�\�3�\Z\�Qm�-�CI�&䦗\"mUo\�\�T\�\�g�:�7M]��_V\�\��p�M���M-\�\�]-\�\�?4=�)��,ߣ.`Ɣ�g\Z\��#�D���\�g\�\��Ñ\'S]\�F�%h�!nQ���!���p4���ĸ%\�\�2�\�_�2\�1��\�|�$�g�\��i=U\�+\Z{�~\�\"L���j�^\�a�� \�F̃+Q\�!���\�u=�\�\��g�?Oa��|:��\�\'���W�a��\ZG$AmGhn�Ɲ\�\�n�\�ns5�\0���ƀN�IΩ�\Z=.�:\�1ﵮW� �\"\�Es\��B+ѩH�T\�ĮxhM���Ћ[�P�^Cj�Y>.$���ձ?M}�{_��\�d�1v�5��[��V\�_-^5K\�Ԏ\�\�\�^L�Bi�ȚAI\�{a�\����%�7���=7�9�i�m�\�o�-W�e\��\�~��������:@\�5Pr�j��\�z�\��q\�z&\� \'#��҅@\�����3\�f\n\��򠧑=]o�l2���*�\�\�a\�\"�.��MT�kE��\�Pu9~6v\�Ҷ�e(bA�5b[\Z�Zi��\�\Zb\�\�8\�q�a��\�|\00)\r|a�OA��\�⷟�NE�\�*x\�Z\�^��Z\\�\\=\�gSZH}yH-5|��\�=K�\�K\�Ԏ\�GN����\�&tL]!�]Hޙ��O\�F\��4?Fz��P\�\�	�MrwN�\�4�F\��s\���Zq\���\0���8+\����\�$�ӧ�\�\�T�ӱ�fw�MbH*\�v\��\04M&�\��5p*GO�rI\�=z�\�+�,�^�\'\�2��l���\r:P�\�+E��c#랽J^��r\"F�\�`l��F�\Z\�L\\�����c\�\�\�;\��p��|�@*�K����u�<\�-�=�\0*���\0@�\�\�Kb�\�Ep�\�\�?�oK�\�_\��ᗪ(]�t\ZU�J+�|�K	\�\�7��\ro�_�_��\n*�\�\�>\�s�\'\'�\�1�>\�\��\0��\��%���~��\0\"H	�Q#dL�<��G\�ゞ�kӿf��\�zt��R6x2H��\0\Z�\0\�\�d�/����S!��I\�|�\�5N>|u�\�\�\�b\�l��_�)�\��*F!R0.\�7�53AF���ځ��v�\�@\�l\�3�[\�\�t3�0\���\0Q_\�\�e��+\���W�$z}�\'��{�!p�7��{�\0I�oJ��O����h]L\ZU\�\�Y>Nr]?ʏ��h%�O\�AE\�=���\�_J�v���pZ�\0)2滥�T\� \'.���\"dt�j��\�\�_ؒ8-k�*}Qx	�Sg�0\�\�Q�Kԭ:�\�)�=Z\�/�\�1\�t�8\'�>Cb�b?��\�\�\r�g�����[�\�\'\'�!�2Ʀ-MFk��)�\�q�\0G��i\�6v�j3S588\�N�l ��=�{:9����r��\�4�=jJeJ\�-\'K�\"�\�bi�HU�\�t�ko\�	�QӮ\�	�m����@��|�AE\�k]�[�4/p��ק�o��.���-kI{��1�\�н\�r\\�8\�\��N�H\Z\�\�S\�\�t�I\�N�F�\Z\�\�\�\�;�\��\�×�\Z]��}j䛪�2��K�N�92y\�|�C�\�h�[�W\��be\�\�~W>�\r�K(\�\�f�En\n��\��z���kt�\�\�1\�a\�}kyg��OG㐉NL\�	0\�q���a�iڝ�ځڜq�q\�j{�́L\��2\"�\�Q�\�\"\�==j�>\'e�*�\�\�5�xKAt\�q����a\�m�[�/b�;eJ�%\�\�/w��\�[�бt\�oaT\�K�oN�\�ߢ\�\�t\�\���Oi�]0\�\�]0����eݟ_D��#zI�n�^�?T3�|�\�+��q\�/F2Y�?O�\�2�=�\�&�>f\'\�=D�\�o\�\�t��~x\n����\�S�Tzp2N6��i���i\�P:�s<��EjZ�Z>Hx�v����o�\�/Bx�\�ցJ&\�u}?~�q���\0%\��\�ń\��L��\�MrbZW��\"\�\�i�\�f\�\�\�E�\�-Cv=NTv�\�u;�\r;Pu1�͋]��c��o-���	��\�)�\�|$z]>\�\�z\����\�\�O:�o���U�$eP���B\�\�LE�º7�\��/��3��_\�Q��$\�\�vs\n�����\�\�\�14�K�\�Ir\\��&|$K\�\�~^\�6�ܩ�\�\Zb�\�çȪaES\�v`�\�I�L�>�r\�\�L\�_\'\�\�X\�)0\�\\�ٝ�V\�\�c��\�ê��rX��9T\�\�b%����e�Q\�+\"[\�\�\�&b\�4�L��\�\�\�\�)��=\��Ú\�D\�\��5G&f\\4�~��\�\Z~AfЦ\�i�\Z\���\��\�\�_�,֜��\\�\�\'��)L׹�p\�\�̴���b�\�\�\��\�\�\�\�>��\0;�\�+2\�_�%�_!?��\�wqmt8��w>܋�\�\�,\�\��\�\�Q�\0�\��\0\�\�%��e_��#��tҔ\��E�\�a��\��ވt�cZD��.�\�\�\����ɘ\�=��F:׸TŵZ��l\�Ŷڭ�UT/\�\�jej\�e����\�?��-ID)KD�\�h�|�S�=A#�\0\�͂\�hj�]l�zx��\����NWj1c�x�\�=\�\�\�\�l\naP\�S\�:�5�z-\�NT��5\�\��\�{���\�S\�ɔ\�gp:�\Z	cd�(r`�\�\"\�+��^\�\�X����&=��\�X�ht�h�q\���==�͏\�\�\�T�ra\�\r�hb�َ�oS�_\�\��\0R�\�f�%\�R��\'\�L֣502\�Y~i\�_\�ra��C��ѭ\Z�2h��\�U�-�I�\�\�y�A>Õ��_�\�a�?�%[�Tj�\������\�\�\�gx�\�s���\r\Z\�c;�\�w\�ݸ�\�\�\�]X\�x�U\�\�Y�Մ\�37���\��\�\�:-\�\����\�\�Z#\r�\�\�\�l\�Xޛ��:�UV�Dn��d�+v˦g)\\ 0\��S��\�>�>=���\��L&�T\Z\na�\�\�O#\�x��ީL�\�tʌj\"{\\غ{غa\�-�p\r\�\��;�\�\�8\'S���\�\�]�\�ك4q�\�t�\�8\����?�>�>\��46h\�1�k��\'�\�	3Uxg�t\�OY�_\�\"�d��\�V\�`U�\�q�;j�{\�87n\�9\�\���\�\�\�6{\�2pd�\�ʽ\�82{O�1����\�pt�oc8\�������5E0����x^�=�6���8:lMQ\�;Tt\����\\\�a��pT\�m���\�\�]=N8\�\��\�'),(2,'jiofhsiubfiu s','Pequeno',' f vdfgfcd','gdfhybfdgdf','Macho',3,'443',' sdvsdfcsffs','2025-02-14',NULL),(3,'jiofhsiubfiu s','Pequeno',' f vdfgfcd','gdfhybfdgdf','Macho',3,'443',' sdvsdfcsffs','2025-02-14',NULL),(4,'jiofhsiubfiu s','Pequeno',' f vdfgfcd','gdfhybfdgdf','Macho',3,'443',' sdvsdfcsffs','2025-02-27',NULL),(5,'jiofhsiubfiu s','Pequeno',' f vdfgfcd','gdfhybfdgdf','Macho',3,'443',' sdvsdfcsffs','2025-02-25',NULL);
/*!40000 ALTER TABLE `caes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarios` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `senha` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,'jose','220507'),(2,'jose33','jose33');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-02-25 15:04:54
