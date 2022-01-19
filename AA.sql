-- --------------------------------------------------------
-- 호스트:                          127.0.0.1
-- 서버 버전:                        10.6.3-MariaDB - mariadb.org binary distribution
-- 서버 OS:                        Win64
-- HeidiSQL 버전:                  11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- test 데이터베이스 구조 내보내기
CREATE DATABASE IF NOT EXISTS `test` /*!40100 DEFAULT CHARACTER SET utf8mb3 */;
USE `test`;

-- 테이블 test.bbs 구조 내보내기
CREATE TABLE IF NOT EXISTS `bbs` (
  `CAT` int(2) NOT NULL,
  `SEQ` int(8) NOT NULL,
  `ID` varchar(50) NOT NULL,
  `REF` int(8) NOT NULL DEFAULT 0,
  `STEP` int(8) NOT NULL DEFAULT 0,
  `DEPTH` int(8) NOT NULL DEFAULT 0,
  `TITLE` varchar(200) NOT NULL,
  `CONTENT` varchar(4000) NOT NULL,
  `WDATE` date NOT NULL,
  `DEL` int(1) NOT NULL DEFAULT 0,
  `READCOUNT` int(8) NOT NULL DEFAULT 0,
  `IMG` varchar(50) DEFAULT NULL,
  `LIKE` int(4) NOT NULL DEFAULT 0,
  PRIMARY KEY (`SEQ`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='BBS';

-- 테이블 데이터 test.bbs:~0 rows (대략적) 내보내기
/*!40000 ALTER TABLE `bbs` DISABLE KEYS */;
/*!40000 ALTER TABLE `bbs` ENABLE KEYS */;

-- 테이블 test.chat 구조 내보내기
CREATE TABLE IF NOT EXISTS `chat` (
  `SEQ` int(8) NOT NULL,
  `REF` int(8) NOT NULL DEFAULT 0,
  `AKA` varchar(50) NOT NULL,
  `CHAT` varchar(50) NOT NULL,
  `WDATE` date NOT NULL,
  PRIMARY KEY (`SEQ`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='CHAT';

-- 테이블 데이터 test.chat:~0 rows (대략적) 내보내기
/*!40000 ALTER TABLE `chat` DISABLE KEYS */;
/*!40000 ALTER TABLE `chat` ENABLE KEYS */;

-- 테이블 test.member 구조 내보내기
CREATE TABLE IF NOT EXISTS `member` (
  `ID` varchar(50) NOT NULL,
  `PWD` varchar(50) NOT NULL,
  `NAME` varchar(50) NOT NULL,
  `EMAIL` varchar(50) NOT NULL,
  `AUTH` int(1) DEFAULT 0,
  `AKA` varchar(20) NOT NULL,
  `IMG` varchar(70) DEFAULT NULL,
  `QST` varchar(50) NOT NULL,
  `ASW` varchar(50) NOT NULL,
  `EXP` int(5) NOT NULL DEFAULT 0,
  `LV` int(2) NOT NULL DEFAULT 1,
  PRIMARY KEY (`ID`) USING BTREE,
  UNIQUE KEY `EMAIL` (`EMAIL`),
  UNIQUE KEY `AKA` (`AKA`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='MEMBER';

-- 테이블 데이터 test.member:~0 rows (대략적) 내보내기
/*!40000 ALTER TABLE `member` DISABLE KEYS */;
/*!40000 ALTER TABLE `member` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
test