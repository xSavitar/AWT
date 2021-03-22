-- MySQL dump 10.13  Distrib 8.0.20, for macos10.15 (x86_64)
--
-- Host: localhost    Database: awt
-- ------------------------------------------------------
-- Server version	8.0.19

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
-- Table structure for table `languages_wikis`
--

DROP TABLE IF EXISTS `languages_wikis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `languages_wikis` (
  `language_code` varchar(5) NOT NULL,
  `wiki_name` varchar(50) NOT NULL,
  `wiki_type` enum('wikipedia','wiktionary','wikisource','wikibooks') NOT NULL,
  `wiki_status` enum('Main','Incubator','Missing') NOT NULL,
  `created_at` datetime NOT NULL,
  `localised_name` varchar(45) DEFAULT NULL,
  `wiki_url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`language_code`,`wiki_name`),
  KEY `fk_languages_has_wikis_wikis1_idx` (`wiki_name`),
  KEY `fk_languages_has_wikis_languages1_idx` (`language_code`),
  CONSTRAINT `fk_languages_has_wikis_languages1` FOREIGN KEY (`language_code`) REFERENCES `languages` (`language_code`),
  CONSTRAINT `fk_languages_has_wikis_wikis1` FOREIGN KEY (`wiki_name`) REFERENCES `wikis` (`wiki_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `languages_wikis`
--

LOCK TABLES `languages_wikis` WRITE;
/*!40000 ALTER TABLE `languages_wikis` DISABLE KEYS */;
INSERT INTO `languages_wikis` VALUES ('aa','aa-Wikibooks','wikibooks','Incubator','2003-11-11 00:00:00','Wikibooku','https://incubator.wikimedia.org/wiki/Wb/aa/Main_Page'),('aa','aa-Wikipedia','wikipedia','Incubator','2003-11-11 00:00:00','Wikipédial','https://incubator.wikimedia.org/wiki/Wp/aa/Main_Page'),('aa','aa-Wikitionary','wiktionary','Incubator','2003-11-11 00:00:00','Wiktionaryl','https://incubator.wikimedia.org/wiki/Wt/aa/Main_Page'),('aeb','aeb-Wikipedia','wikipedia','Incubator','2003-11-11 00:00:00','Wikipedya','https://incubator.wikimedia.org/wiki/Wp/aeb/Elp%C3%A0j_Loula'),('aeb','aeb-Wikitionary','wiktionary','Incubator','2003-11-11 00:00:00','ويكيمنجد','https://incubator.wikimedia.org/wiki/Wt/aeb/%D8%A7%D9%84%D9%BE%D8%A7%D8%AC_%D8%A7%D9%84%D8%A3%D9%88%D9%84%D8%A7%D9%86%D9%8A%D9%91%D8%A9'),('af','af-Wikibooks','wikibooks','Main','2003-11-11 00:00:00','','https://af.wikibooks.org'),('af','af-Wikipedia','wikipedia','Main','2003-11-11 00:00:00','','https://af.wikipedia.org'),('af','af-Wikisource','wikisource','Main','2003-11-11 00:00:00','','https://wikisource.org/wiki/Main_Page/Afrikaans'),('af','af-Wikitionary','wiktionary','Main','2003-11-11 00:00:00','Wikiwoordeboek','https://af.wiktionary.org'),('ak','ak-Wikibooks','wikibooks','Incubator','2003-11-11 00:00:00','','https://incubator.wikimedia.org/wiki/Wb/ak/Krataafa_Titiriw'),('ak','ak-Wikipedia','wikipedia','Main','2003-11-11 00:00:00','Wikipidia','https://ak.wikipedia.org'),('am','am-Wikipedia','wikipedia','Main','2003-11-11 00:00:00','ውክፔዲያ','https://am.wikipedia.org'),('am','am-Wikitionary','wiktionary','Main','2003-11-11 00:00:00','ዊኪ-መዝገበ-ቃላት','https://am.wiktionary.org'),('ar','ar-Wikibooks','wikibooks','Main','2003-11-11 00:00:00',' ويكي الكتب','https://ar.wikibooks.org'),('ar','ar-Wikipedia','wikipedia','Main','2003-11-11 00:00:00','ويكيبيديا','https://ar.wikipedia.org'),('ar','ar-Wikitionary','wiktionary','Main','2003-11-11 00:00:00','ويكاموس','https://ar.wiktionary.org'),('arq ','arq-Wikipedia','wikipedia','Incubator','2003-11-11 00:00:00','ويكيبيديا','https://incubator.wikimedia.org/wiki/Wp/arq/%D8%A7%D9%84%D9%BE%D8%A7%D8%AC%D8%A9_%D8%A7%D9%84%D9%84%D9%88%D9%84%D8%A7%D9%86%D9%8A%D9%91%D8%A9'),('arq ','arq-Wikisource','wikisource','Main','2003-11-11 00:00:00','','https://wikisource.org/wiki/Main_Page/Algerian'),('arq ','arq-Wikitionary','wiktionary','Incubator','2003-11-11 00:00:00',' ويكاموس','https://incubator.wikimedia.org/wiki/Wt/arq/%D8%A7%D9%84%D9%BE%D8%A7%D8%AC%D8%A9_%D8%A7%D9%84%D8%A7%D9%88%D9%84%D8%A7%D9%86%D9%8A%D9%91%D8%A9'),('ary','ary-Wikipedia','wikipedia','Main','2003-11-11 00:00:00','ويكيپيديا','https://ary.wikipedia.org'),('ary','ary-Wikitionary','wiktionary','Incubator','2003-11-11 00:00:00','','https://incubator.wikimedia.org/wiki/Wt/ary/%D8%A7%D9%84%D8%B5%D9%81%D8%AD%D8%A9_%D8%A7%D9%84%D9%84%D9%91%D9%88%D9%84%D8%A7'),('arz','arz-Wikibooks','wikibooks','Incubator','2003-11-11 00:00:00','ويكي الكتب','https://incubator.wikimedia.org/wiki/Wb/arz/%D8%A7%D9%84%D8%B5%D9%81%D8%AD%D9%87_%D8%A7%D9%84%D8%B1%D8%A6%D9%8A%D8%B3%D9%8A%D9%87'),('arz','arz-Wikipedia','wikipedia','Main','2003-11-11 00:00:00','ويكيبيديا','https://arz.wikipedia.org'),('arz','arz-Wikitionary','wiktionary','Incubator','2003-11-11 00:00:00','ويكشينارى','https://incubator.wikimedia.org/wiki/Wt/arz/%D8%A7%D9%84%D8%B5%D9%81%D8%AD%D9%87_%D8%A7%D9%84%D8%B1%D8%A6%D9%8A%D8%B3%D9%8A%D9%87'),('ayl','ayl-Wikipedia','wikipedia','Incubator','2003-11-11 00:00:00','ويكيبيديا','https://incubator.wikimedia.org/wiki/Wp/ayl/%D8%A7%D9%84%D8%B5%D9%81%D8%AD%D8%A9_%D8%A7%D9%84%D8%B1%D8%A6%D9%8A%D8%B3%D9%8A%D8%A9'),('bho','bho-Wikibooks','wikibooks','Incubator','2003-11-11 00:00:00','','https://incubator.wikimedia.org/wiki/Wb/bho/%E0%A4%AE%E0%A5%81%E0%A4%96%E0%A5%8D%E0%A4%AF_%E0%A4%AA%E0%A4%A8%E0%A5%8D%E0%A4%A8%E0%A4%BE'),('bho','bho-Wikipedia','wikipedia','Main','2003-11-11 00:00:00','विकिपीडिया','https://bh.wikipedia.org/wiki/%E0%A4%AE%E0%A5%81%E0%A4%96%E0%A5%8D%E0%A4%AF_%E0%A4%AA%E0%A4%A8%E0%A5%8D%E0%A4%A8%E0%A4%BE'),('bho','bho-Wikitionary','wiktionary','Incubator','2003-11-11 00:00:00','विक्शनरी','https://incubator.wikimedia.org/wiki/Wt/bho/%E0%A4%AE%E0%A5%81%E0%A4%96%E0%A5%8D%E0%A4%AF_%E0%A4%AA%E0%A4%A8%E0%A5%8D%E0%A4%A8%E0%A4%BE'),('bm','bm-Wikibooks','wikibooks','Incubator','2003-11-11 00:00:00','','https://incubator.wikimedia.org/wiki/Wb/bm/Ny%C9%9B_f%C9%94l%C9%94'),('bm','bm-Wikipedia','wikipedia','Main','2003-11-11 00:00:00','Wikipedi','https://bm.wikipedia.org'),('bm','bm-Wikisource','wikisource','Main','2003-11-11 00:00:00','','https://wikisource.org/wiki/Main_Page/Bamanankan'),('bm','bm-Wikitionary','wiktionary','Incubator','2003-11-11 00:00:00','Wikiɲɛgafe','https://incubator.wikimedia.org/wiki/Wt/bm/Wiki%C9%B2%C9%9Bgafe:Ny%C9%9B_f%C9%94l%C9%94'),('ee','ee-Wikipedia','wikipedia','Main','2003-11-11 00:00:00','Wikipiɖia','https://ee.wikipedia.org'),('ee','ee-Wikitionary','wiktionary','Incubator','2003-11-11 00:00:00','Wiksinari','https://incubator.wikimedia.org/wiki/Wt/ee/Axa_do_%C5%8Ag%C9%94'),('ff','ff-Wikipedia','wikipedia','Main','2003-11-11 00:00:00','Wikipediya','https://ff.wikipedia.org'),('fon','fon-Wikipedia','wikipedia','Incubator','2003-11-11 00:00:00','Wikipedya','https://incubator.wikimedia.org/wiki/Wp/fon/W%C3%A9m%C3%A1_Nuk%C9%94nt%C9%94n'),('gaa','gaa-Wikipedia','wikipedia','Incubator','2003-11-11 00:00:00','','https://incubator.wikimedia.org/wiki/Wp/gaa/Baafa_oti'),('ha','ha-Wikipedia','wikipedia','Main','2003-11-11 00:00:00','','https://ha.wikipedia.org'),('ha','ha-Wikitionary','wiktionary','Main','2003-11-11 00:00:00','','https://ha.wiktionary.org'),('ig','ig-Wikipedia','wikipedia','Main','2003-11-11 00:00:00','Wikipidia','https://ig.wikipedia.org'),('ig','ig-Wikitionary','wiktionary','Main','2003-11-11 00:00:00','Wikshọnarị ','https://ig.wiktionary.org'),('kab','kab-Wikibooks','wikibooks','Incubator','2003-11-11 00:00:00','','https://incubator.wikimedia.org/wiki/Wb/kab/Asebter_agejdan'),('kab','kab-Wikipedia','wikipedia','Main','2003-11-11 00:00:00','','https://kab.wikipedia.org'),('kab','kab-Wikitionary','wiktionary','Incubator','2003-11-11 00:00:00','Wikamawal','https://incubator.wikimedia.org/wiki/Wt/kab/Asebter_agejdan'),('kea','kea-Wikipedia','wikipedia','Incubator','2003-11-11 00:00:00','','https://incubator.wikimedia.org/wiki/Wp/kea/P%C3%A1jina_prinsipal'),('kea','kea-Wikitionary','wiktionary','Incubator','2003-11-11 00:00:00','Wikcionario','https://incubator.wikimedia.org/wiki/Wt/kea/Pagina_principal'),('kg','kg-Wikipedia','wikipedia','Main','2003-11-11 00:00:00','','https://kg.wikipedia.org'),('ki','ki-Wikipedia','wikipedia','Main','2003-11-11 00:00:00','','https://ki.wikipedia.org'),('ki','ki-Wikitionary','wiktionary','Incubator','2003-11-11 00:00:00','Wikamusi','https://incubator.wikimedia.org/wiki/Wt/ki/Main_Page'),('lg','lg-Wikipedia','wikipedia','Main','2003-11-11 00:00:00','','https://lg.wikipedia.org'),('lg','lg-Wikisource','wikisource','Main','2003-11-11 00:00:00','','https://wikisource.org/wiki/Main_Page/Luganda'),('lg','lg-Wikitionary','wiktionary','Incubator','2003-11-11 00:00:00','','https://incubator.wikimedia.org/wiki/Wt/lg/Olupapula_Olusooka'),('ln','ln-Wikipedia','wikipedia','Main','2003-11-11 00:00:00','','https://ln.wikipedia.org'),('ln','ln-Wikisource','wikisource','Main','2003-11-11 00:00:00','','https://wikisource.org/wiki/Main_Page/Ling%C3%A1la'),('ln','ln-Wikitionary','wiktionary','Main','2003-11-11 00:00:00','','https://ln.wiktionary.org'),('lua','lua-Wikipedia','wikipedia','Incubator','2003-11-11 00:00:00','','https://incubator.wikimedia.org/wiki/Wp/lua/Main_Page'),('luo','luo-Wikipedia','wikipedia','Incubator','2003-11-11 00:00:00','','https://incubator.wikimedia.org/wiki/Wp/luo/Kalatas_mokuongo'),('mfe','mfe-Wikipedia','wikipedia','Incubator','2003-11-11 00:00:00','','https://incubator.wikimedia.org/wiki/Wp/mfe/Main_Page'),('mg','mg-Wikibooks','wikibooks','Main','2003-11-11 00:00:00','','https://mg.wikibooks.org'),('mg','mg-Wikipedia','wikipedia','Main','2003-11-11 00:00:00','','https://mg.wikipedia.org'),('mg','mg-Wikisource','wikisource','Main','2003-11-11 00:00:00','','https://wikisource.org/wiki/Main_Page/Malagasy'),('mg','mg-Wikitionary','wiktionary','Main','2003-11-11 00:00:00','Wikibolana','https://mg.wiktionary.org'),('mkw','mkw-Wikipedia','wikipedia','Incubator','2003-11-11 00:00:00','Wikipédia','https://incubator.wikimedia.org/wiki/Wp/mkw/Main_Page'),('mos','mos-Wikipedia','wikipedia','Incubator','2003-11-11 00:00:00','','https://incubator.wikimedia.org/wiki/Wp/mos/Main_Page'),('nd','nd-Wikipedia','wikipedia','Incubator','2003-11-11 00:00:00','Wikhiphidiya','https://incubator.wikimedia.org/wiki/Wp/nd/Main_Page'),('nr','nr-Wikipedia','wikipedia','Incubator','2003-11-11 00:00:00','Wikiphidiya','https://incubator.wikimedia.org/wiki/Wp/nr/Main_Page'),('nso','nso-Wikipedia','wikipedia','Main','2003-11-11 00:00:00','','https://nso.wikipedia.org'),('nso','nso-Wikitionary','wiktionary','Incubator','2003-11-11 00:00:00','','https://incubator.wikimedia.org/wiki/Wt/nso/Letlakala_la_pele'),('ny','ny-Wikipedia','wikipedia','Main','2003-11-11 00:00:00','','https://ny.wikipedia.org'),('ny','ny-Wikitionary','wiktionary','Incubator','2003-11-11 00:00:00','Wikishonare','https://incubator.wikimedia.org/wiki/Wt/ny/Wiktionary:Main_Page'),('om','om-Wikipedia','wikipedia','Main','2003-11-11 00:00:00','Wikipiidiyaa','https://om.wikipedia.org'),('om','om-Wikitionary','wiktionary','Main','2003-11-11 00:00:00','','https://om.wiktionary.org/wiki/Fuula_Dura'),('rn','rn-Wikipedia','wikipedia','Main','2003-11-11 00:00:00','Wikipediya','https://rn.wikipedia.org'),('rw','rw-Wikipedia','wikipedia','Main','2003-11-11 00:00:00','Wikipediya','https://rw.wikipedia.org'),('rw','rw-Wikitionary','wiktionary','Incubator','2003-11-11 00:00:00','','https://rw.wiktionary.org/wiki/Main_Page'),('sg','sg-Wikipedia','wikipedia','Main','2003-11-11 00:00:00','Wïkïpêdïyäa','https://sg.wikipedia.org'),('sg','sg-Wikitionary','wiktionary','Main','2003-11-11 00:00:00','Wïkïbakarî','https://sg.wiktionary.org'),('sn','sn-Wikipedia','wikipedia','Main','2003-11-11 00:00:00','Wikipedhiya','https://sn.wikipedia.org'),('sn','sn-Wikisource','wikisource','Main','2003-11-11 00:00:00','','https://wikisource.org/wiki/Main_Page/ChiShona'),('sn','sn-Wikitionary','wiktionary','Incubator','2003-11-11 00:00:00','','https://incubator.wikimedia.org/wiki/Wt/sn/Peji_Rekutanga'),('so','so-Wikibooks','wikibooks','Incubator','2003-11-11 00:00:00','','https://incubator.wikimedia.org/w/index.php?title=Wb/so/Bogga_Hore&redirectfrom=infopage'),('so','so-Wikipedia','wikipedia','Main','2003-11-11 00:00:00','','https://so.wikipedia.org'),('so','so-Wikitionary','wiktionary','Main','2003-11-11 00:00:00','WikiQaamuus','https://so.wiktionary.org'),('ss','ss-Wikipedia','wikipedia','Main','2003-11-11 00:00:00','','https://ss.wikipedia.org'),('ss','ss-Wikitionary','wiktionary','Main','2003-11-11 00:00:00','','https://ss.wiktionary.org'),('st','st-Wikipedia','wikipedia','Main','2003-11-11 00:00:00','','https://st.wikipedia.org'),('st','st-Wikitionary','wiktionary','Main','2003-11-11 00:00:00','','https://st.wiktionary.org'),('sw','sw-Wikibooks','wikibooks','Incubator','2003-11-11 00:00:00','','https://incubator.wikimedia.org/wiki/Wb/sw/Mwanzo'),('sw','sw-Wikipedia','wikipedia','Main','2003-11-11 00:00:00','','https://sw.wikipedia.org'),('sw','sw-Wikisource','wikisource','Main','2003-11-11 00:00:00','','https://wikisource.org/wiki/Main_Page/Kiswahili'),('sw','sw-Wikitionary','wiktionary','Main','2003-11-11 00:00:00','Wikamusi','https://sw.wiktionary.org'),('ti','ti-Wikipedia','wikipedia','Main','2003-11-11 00:00:00','ዊኪፐድያ','https://ti.wikipedia.org'),('ti','ti-Wikitionary','wiktionary','Main','2003-11-11 00:00:00','ዊኪ-መዝገበ-ቃላት','https://ti.wiktionary.org'),('tn','tn-Wikipedia','wikipedia','Main','2003-11-11 00:00:00','','https://tn.wikipedia.org'),('tn','tn-Wikitionary','wiktionary','Main','2003-11-11 00:00:00','','https://tn.wiktionary.org'),('ts','ts-Wikipedia','wikipedia','Main','2003-11-11 00:00:00','Wikipediya','https://ts.wikipedia.org'),('ts','ts-Wikitionary','wiktionary','Main','2003-11-11 00:00:00','Wikixinari','https://ts.wiktionary.org'),('tum','tum-Wikipedia','wikipedia','Main','2003-11-11 00:00:00','','https://tum.wikipedia.org'),('tw','tw-Wikipedia','wikipedia','Main','2003-11-11 00:00:00','Wikipidia','https://tw.wikipedia.org'),('tw','tw-Wikitionary','wiktionary','Incubator','2003-11-11 00:00:00','','https://incubator.wikimedia.org/wiki/Wt/tw/Main_Page'),('umb','umb-Wikipedia','wikipedia','Incubator','2003-11-11 00:00:00','','https://incubator.wikimedia.org/wiki/Wp/umb/Main_Page'),('ve','ve-Wikipedia','wikipedia','Main','2003-11-11 00:00:00','','https://ve.wikipedia.org'),('wo','wo-Wikipedia','wikipedia','Main','2003-11-11 00:00:00','','https://wo.wikipedia.org'),('wo','wo-Wikitionary','wiktionary','Main','2003-11-11 00:00:00','Wikbaatukaay','https://wo.wiktionary.org'),('xh','xh-Wikipedia','wikipedia','Main','2003-11-11 00:00:00','','https://xh.wikipedia.org'),('xh','xh-Wikisource','wikisource','Main','2003-11-11 00:00:00','','https://wikisource.org/wiki/Main_Page/IsiXhosa'),('xh','xh-Wikitionary','wiktionary','Incubator','2003-11-11 00:00:00','Wikshinari','https://incubator.wikimedia.org/wiki/Wt/xh/Iphepha_Elingundoqo'),('yo','yo-Wikipedia','wikipedia','Main','2003-11-11 00:00:00','','https://yo.wikipedia.org'),('yo','yo-Wikitionary','wiktionary','Incubator','2003-11-11 00:00:00','','https://incubator.wikimedia.org/wiki/Wt/yo/Oj%C3%BAew%C3%A9_%C3%80k%E1%BB%8D%CC%81k%E1%BB%8D%CC%81'),('zu','zu-Wikibooks','wikibooks','Incubator','2003-11-11 00:00:00','','https://incubator.wikimedia.org/wiki/Wb/zu/Ikhasi_Elikhulu'),('zu','zu-Wikipedia','wikipedia','Main','2003-11-11 00:00:00','','https://zu.wikipedia.org'),('zu','zu-Wikisource','wikisource','Main','2003-11-11 00:00:00','','https://wikisource.org/wiki/Main_Page/IsiZulu'),('zu','zu-Wikitionary','wiktionary','Main','2003-11-11 00:00:00','','https://zu.wiktionary.org');
/*!40000 ALTER TABLE `languages_wikis` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-03-22 15:13:09