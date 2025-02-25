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
  `porte` enum('Pequeno','M√©dio','Grande') DEFAULT NULL,
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
INSERT INTO `caes` VALUES (1,'jiofhsiubfiu s','Pequeno',' f vdfgfcd','gdfhybfdgdf','Macho',3,'443',' sdvsdfcsffs','2025-02-14',_binary 'ˇ\ÿˇ\‡\0JFIF\0,,\0\0ˇ\€\0C\0		\n\r\Z\Z $.\' \",#(7),01444\'9=82<.342ˇ\€\0C			\r\r2!!22222222222222222222222222222222222222222222222222ˇ¿\0\0\»d\"\0ˇ\ƒ\0\Z\0\0\0\0\0\0\0\0\0\0\0\0\0ˇ\ƒ\08\0\0\0\0\0\0!1AQa\"2qÅ°±#3R¡4brë\—$BCSÇˇ\ƒ\0\0\0\0\0\0\0\0\0\0\0\0ˇ\ƒ\0\0\0\0\0\0\0\0\0\0\01!AQˇ\⁄\0\0\0?\0˘»ëÚÄï∏\ŸG©˜x¡$2Qâl|ü\œ\Ê{ ´tGSóæª\'\Èó˛\Ï»ê\"w2b$ÿ¶t+\ÿƒÜJ5mK\….|\ﬂˆG\—\Â˙Ö\‘\Êˇ\0⁄è˛\œ˚	â\ÿ&\›¯ŸÅ“éô\–4∏\nìNRêí	-¿ƒÇKm|ì$\‚_6\Ô\¬\\í^\\ôπ\⁄}f\‘_S¥¸\ÔÙYr\‰Z:\—zIä4†\Z%G∞k´\–wg∞JCtJÉ{6§\ﬁ\ﬂ\0#≥\ÿ\Ôá\ÏQ\⁄g`¸?cr=œ±é@ô∆úF\\{?ôz>FTÄ\‡3G\∆ly6_-z0\‹\È±\r@\Ã}E\„\⁄˛i˝P8£@\Z\Zú\‹\ÎTA•5»∫ùá4[-AF\›\ﬂ√∑Ûx~†‘â•¶\Ë&\Õ-h\nGa\ÀÒcGßz\Á\‹&Çà•∞õùäijÖZ\‹2Õè¶\À‹ær∏˜CZ\"\ﬁ)T\Ï\—t\“\…\n\Á\»f7\·mk∞´C\Èh)3ù\Œ\÷¸°\¬(C\ÿ,i‰øãï◊Ö≤)\Ío≥j{\÷ƒ∞∂	\À\ﬂ= %\rî+É≥d¯8ˆ˙ü≠≠π!ªyr∫|x˚[Òë;\Í:dëÚÅ#í\‡4åHd\»kRü:\≈Ú\Œ˜˚ü7\¬]≥ß{˝	e:\ﬂœ∏eÆ\—\’kOV¸åò\ndjî&ÄßaäCR¿-ìT{ò~Ü]\‚\≈ı\⁄O\”\»F¬±õ\Ÿ˜]v)$\’~Ä?\ƒ+\∆)¸\ÿ7Tvnwa/˝~Mó®KÒØÕÖ~Lß∏\Œ¸=n\Z⁄ïC˜ZéûÃãXπ•\Ï¡¥\Ó}ÄrT\„MÖ\‘i\‡+ÙößQu–¶§\nê\‘\”UäªßÛ^•òÚNU™Z?+–ûßñ/|v™^ç\ÎK\Z\‹Ç«ëeùV\Õrékp©J•∞öíÜÖ\“\–	\”x\ÌTÚãfï¬π\·í‹õ\”\‰\Ïæ\∆˛Vˇ\0ŸÑ\œ)\Ì§9≠¥ö\÷¡Ùπ;m\„|>>\Ê\“[=W+t|ª^÷¢\ÈäY1ÕØ(\nk\‹\‡ü\'≤∂(…∑_W¢N¢˚ÛΩ7S≤6P∏C\·nb!ì\‡dÉ(b”ü’ë\’dÌïçs[ø∞ò\\UÒ2U˙Òˆ&{G(jPƒÇöë\Ÿr¨1Ø4ˆH%≤’Ωñ\‰Y-\Â\…\›\„\¬µãZmΩ\€›éô$|\»kfF\Ã\Íd≠\«\ƒZ…É2\Ê\«”Øô\Î_“π\‘uã±ãzÛ^Ñ;\’6ﬁ≠Ú\ÿON\À\÷eÀ≤}ì\È?Ú\'¥%!%∞VÅ\€\‡\›\–\›t_i›∫H\Ì\0Wiâ9i\Ài˙°∫\‰3F\‚\ÎÆô~u\Î\‰∂*3GtV®Úö:.±_tVå&«•Q\Ë*§f¶zÖ£\⁄\◊+˛πÚ*VÖTîT\Ì\Ï.ß\»Rx∫\≈jó\ÊΩKSW*ì\’>	.y7ß\…\Ÿ}è\ÈØ\‹3ä\Z\”Qm§-≠CI§&‰¶ó\"mUo\‚\‚T\ﬁ\Îg˜:ë7M]ôª_V\÷\‡ópãMâµ©M-\“\ÿ]-\Ë\Í?4=¢)ßè,ﬂ£.`∆îˆg\Z\÷¸#ÉDêÆ≠\Èég\’\Î˛√ë\'S]\›Fû%hê!nQ•Ö∞!à¢ªp4π≠êƒ∏%\Í\Îª2ï\¬_®2\‡1°∂\ÿ|É$†g¿\≈¿i=U\È+\Z{æ~\¬\"L™¯ôj˝^\ﬂa∞É \ÊFÃÉ+Q\”!£âı\÷u=ö\‚\∆˛gı?OaπÛ|:Ø≠\Ì\'òñØWªa≠î\ZG$AmGhná∆ù\…\⁄n°\⁄ns5ú\0¥ëå∆ÄNÒIŒ©Æ\Z=.ü:\Í1ÔµÆW˜ £\"\ÎEs\ ˝B+—©H°T\ÂƒÆxhM†®û–ã[ïPä^CjúY>.$¸≠ô’±?M}π{_˚î\–d•1vá5∞∫[•ΩV\Îî_-^5K\ ‘é\–Óöµ\∆\Á^LÚôBi•»öAI\Ì{aÆ\Ï¸•£%¥7§≠Æ=7ù9úi¡mì\œoª-W´e\Ìˆ\√~àÛÒ˚òúèÑ:@\Ë5PràjªÛ\’z≤\Ê˚q\’z&\» \'#£Å“Ö@\È˝†ßì3\◊f\n\—ÛÚ†ßë=]o˜l2ìçÑ*É\Â\√a\«\"†.¢˛MTπkE˘Ñ\ÂPu9~6v\◊“∂êe(bA≤5b[\ZÉZiÜÅ\…\Zb\‰\–8\Êq¿aÜò\Õ|\00)\r|aïOAó∂\Î‚∑üπNEπ\Â*x\ÌZ\Ê^ßØZ\\´\\=\¬gSZH}yH-5|¥ö\Â=Kµ\ÓïK\ ‘é\—GNı¿ó£\–&tL]!å]HﬁôµõO\ÍF\“∑4?Fz∂ÖP\Í\Ÿ	§MrwNÙ\Í4ıF\–˚s\√˜ΩZq\⁄ïˇ\0Ù˛í8+\Í˝Ω˚\…$ã”ß¿\È\‡T°”±™fwßMbH*\Ív\Èˇ\04M&Ù\È5p*GO®rI\‘=zó\Ïí+í,è^£\'\‹2ô•lÑ¿¯\r:Pè\ƒ+EéΩc#ÎûΩJ^íÇr\"FØ\‰`lìåFÚ\Z\”L\\õ©úô†c\‰\„Ä\„;\¬üp¿Æ|É@*èK§Æ˛íuÒ™<\Í-¸=ˇ\0*Ù§ˇ\0@ã\—\“Kbã\ÿEpΩ\È\◊?òoK¸\Í_\Â˛·ó™(]°t\ZUæJ+Ç|üK	\…\Ë7∞∫\roé_™_∞∫\n*Ñ\÷\’>\Ãsê\'\'§\Œ1æ>\«\‘ˇ\0ÜØ\À˜%Çæ£~öˇ\0\"H	ΩQ#dL¯<™˛G\Êâ„Çû©k”øfâ°\ÏztçëR6x2H≠ˇ\0\Zˇ\0\‘\Àdã/¯ã˚ÜS!èéI\‰|¯\–5N>|uø\‚\Î\Ïøb\ÏlãØ_˜)˙\ Ω*F!R0.\ﬁ7ê53AFÅß©⁄Å∫úv®\Õ@\”l\‡3ì[\–\Ìt3ê0\«¡¨\0Q_\·\‹e¸â+\Ëò≤W≠$z}˘\'≠ı{Ø!põ7¶˛{ˇ\0IîoJøãO¸°ó™h]L\ZU\‰\ŸY>Nr]? èÙ†h%¥O\ŸAE\—=è°ì\—_J˚vá¢Ú≠pZˇ\0)2Êª•ØT\» \'.®ó≤\"dtÚj£≥\Ô\”_ÿí8-k∫*}Qx	ΩSgÅ0\∆\»QíK‘≠:á\Óì)ë=Z\ﬁ/Ú\»1\‡tΩ8\'Ü>Cbâb?ç±\ﬂ\›\règáó¶¥π[Ø\»\'\'ù!°2∆¶-MFk©¨)©\Óqá\0G©†i\∆6v†j3S588\ŒNÅl îˆ=ñ{:9ıØôûróí\Ê4Ù=jJeJ\·-\'K∂\"ò\€biáHUΩ\∆tãko\Ÿ	∂Q”Æ\‹	˘m∞ü£Æ@≠Ç|ÅAE\€k]á[ª4/púñ◊ßÅoëî.Çä°-kI{ç∞1Æ\Ï–Ω\¬r\\˘8\«\…¡NûH\Z\Ï\ÀS\Ë\ŸtI\’NùFæ\Z\‘\ƒ\‰\Ÿ;ì\«§\÷√óÇ\Z]ôÆ}j‰õ™ù2™ÒKıNÜ92y\‡|∞Cô\Áªh∑[£W\Ëbe\…\Ó~W>˚\rÜK(\∆\…fáEn\ná©\≈zÜí˘kt≥\—\Í1\‘a\—}kygñõOG„êâNL\–	0\Èqá∫úa¿i⁄ù±⁄Å⁄úqÄq\«j{ÅÕÅL\÷ˆ2\"≤\‰Qø\–\"\’==j≥>\'e˜*∫\‹\‰ß5éxKAt\√qÅß®öa\”mÖ[Ω/b˝;eJ¥%\È\„ø/wâ˝\ [ü–±t\√oaT\√K∂oNµ\Ãﬂ¢\ÿ\Óöt\∆\Î˙òOi¨]0\€\‰]0¢´ì∫e›ü_D¡ø#zI˘nΩ^Å?T3å|ú\ƒ+´ùq\Õ/F2Y∑?O™\ÿ2Ò=á\À&ñ>f\'\»=D˜\‡o\Ã\Ót±ã~x\næ°á¿\ÈS≤Tzp2N6ûòiäó∞i\Î∏P:®Óïës<˝ÑEjZ∑Z>Hx≤v¯˝Çoá\À/Bx°\“÷ÅJ&\ƒu}?~πqØõˇ\0%\ÍΩ\∆≈Ñ\ÿÚ¶ÉL´®\ÈMrbZWôı\"\’\Ài≠\–f\Õ\‘\›E™\‘-Cv=NTvª\‡u;∏\r;Pu1∞Õã]Ä¶c£¢o-©Ö´	µõ\’)î\€|$z]>\”\„z\ËÓæß˝é¡\”\œO:ÛoöÙ˚U∏$eP¶¸õB\ÍÇ\ŸLEΩ¬∫7ß\«Ò/Ω˝3˚Ü_\‚åQÒ$\÷\Ôvs\nò∂¸≤æ\‚\È\Ë14¡K∂\€Ir\\ß≤&|$K\”\œ~^\Ì6ü‹©Ñ\‚\Zb≠\ÍΩ√ß»™aES\‰≥v`ï\Â≠I¸L≥>Ør\Á\»L\Ë_\'\ﬁ\ÁX\ƒ)0\”\\ÒŸù˙V\Ë\ÿc˙à\Ô√™˙ßrX≠Ç9T\»\Ÿb%çó˛¡eıQ\›+\"[\Œ\œ\Ï&b\›4˜Lä•\‚\»\Á\«)˚õ=\ŸÚ√ö\–D\–\‘ˆ5G&f\\4Ú∏~Äß\Í\Z~Af–¶\”i≠\Z\Âöü\ƒ˘\Á\Î_©,÷úÑÒ\\∞\”\'ö®)L◊πôp\„\ÍÃ¥Øπ¨b†\À\‰\ËÚ\„\’\œ\œ>≥ˇ\0;ô\Î+2\„_Æ%ø_!?óô\‹wqmt8ûÛw>‹ãá\”\„,\È\ÓÉ˜\›\ÓQˇ\0ß\‰ˇ\0\‰è\‘%¯ıe_îÅ#£µt“î\€ÙEÛ\—aü©\’˝ﬁàtˆcZD©˚.Ç\Î\Ê\ ˚ßí…ò\√=∞¥F:◊∏T≈µZ˝Äl\∆≈∂⁄≠ÖUT/\Ê\…jej\ÿe≠ô¨∑\€?õÙ-ID)KDÅ\«hπ|øSù=A#ù\0\ŸÕÇ\ÿhjÑ]l≥zx¯ó\ﬁ˛ô®NWj1c¯xî\È•=\ﬂ\‹\Ê\¬l\naP\≈S\‘:°5´z-\ÿNT˛ñ5\Ó\»˛\»{˚ô±\„S\È…î\√gp:ú\Z	cdû(r`Ü\À\"\À+ü¸^\Î\ÏXû®¯˛&=æ©\›Xûht≤hØq\“¡ç==ÅÕè\‚\∆\ﬂTra\À\r≥hb¥ŸéñoSã_\‚\¬ˇ\0R˛\‚fÇ%\’Rû°\'\‰L÷£502\‡Y~i\—_\Óra™õC´ö—≠\Z2h¶Ò\∆U•-ÜIì\‚\ÁyıA>√ï®ô_∏\≈aª?∏%[àTj†\”˚Ùºü∏\ﬁ\‡\ﬁgxû\Ôsª¥Ú\r\Z\Ôc;˝\≈w\‹›∏π\–\Î\‹]X\–xU\Ë\ÔYü’Ñ\Ï37ñ¥ü\Õ˙\„â\≈:-\€\Â˙öî\„û\ŸZ#\rì\Îõ\‘\Œl\√Xﬁõã™:®UVØDnúïdµ+vÀ¶g)\\ 0\‚¯S´˙\ﬂ>¡>=¡å˙\∆ˆL&ÙT\Z\naÙ\—\›O#\‚x˚äﬁ©LÚ\Ÿt åj\"{\\ÿ∫{ÿ∫a\–-§p\r\Ô\…¡;±\“\Œ8\'Süì®\«\Ÿ]Ú¥ö\ÁŸÉ4q¡\ t∞\”8\‡≥ô¸?û>ü>\«ó46h\„É1¶kÆÅ\'π\«	3Uxg≤t\—OY˘_\Ë\"±dÖº\ÍΩV\Á`Uá\ﬁq¡;j≥{\Œ87n\Ó9\Ÿ\«≥Ω\Ô\‹\„É6{\Ï2pdΩ\ﬂ Ω\Œ82{Oå1è©˙∞\›ptÅoc8\‡¿∑†∫£é5E0ˆ¸˜ıx^á=ß6∫˝é8:lMQ\«;Tt\ÿÙüâ\\\◊a≠úpT\·mãß±\«\“]=N8\‡\Êˇ\Ÿ'),(2,'jiofhsiubfiu s','Pequeno',' f vdfgfcd','gdfhybfdgdf','Macho',3,'443',' sdvsdfcsffs','2025-02-14',NULL),(3,'jiofhsiubfiu s','Pequeno',' f vdfgfcd','gdfhybfdgdf','Macho',3,'443',' sdvsdfcsffs','2025-02-14',NULL),(4,'jiofhsiubfiu s','Pequeno',' f vdfgfcd','gdfhybfdgdf','Macho',3,'443',' sdvsdfcsffs','2025-02-27',NULL),(5,'jiofhsiubfiu s','Pequeno',' f vdfgfcd','gdfhybfdgdf','Macho',3,'443',' sdvsdfcsffs','2025-02-25',NULL);
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
