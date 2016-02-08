-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 08, 2016 at 07:54 AM
-- Server version: 5.5.47-0ubuntu0.14.04.1
-- PHP Version: 5.5.9-1ubuntu4.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `phd`
--

-- --------------------------------------------------------

--
-- User: `phd` 
--

GRANT USAGE ON *.* TO 'phd'@'localhost' IDENTIFIED BY PASSWORD '*998714BEC745D554733AE2A867F481314DB86EA2';

GRANT ALL PRIVILEGES ON `phd`.* TO 'phd'@'localhost';

-- --------------------------------------------------------

--
-- Table structure for table `UStudAll`
--

CREATE TABLE IF NOT EXISTS `UStudAll` (
  `PersonalNumber` bigint(20) unsigned NOT NULL DEFAULT '1111111110' COMMENT 'PIN number of the student',
  `PINType_ID` tinyint(1) unsigned DEFAULT '0' COMMENT 'Student PIN Number type ID value',
  `FirstName` varchar(50) NOT NULL DEFAULT '' COMMENT 'Student first name',
  `SecondName` varchar(50) NOT NULL COMMENT 'Student Second name',
  `FamilyName` varchar(100) NOT NULL COMMENT 'Student Third name',
  `Gender_ID` tinyint(1) unsigned DEFAULT '0' COMMENT 'Student gender ID: 0 - male, 1 - female',
  `BPlaceEKATTE` int(6) DEFAULT '0' COMMENT 'Birth Place Country/City EKATTE Code',
  `Nationality_ID` int(3) unsigned DEFAULT '34' COMMENT 'Student nationality ID value',
  `CitizenCountry_ID` int(3) unsigned DEFAULT '34' COMMENT 'PK: Unique citizenship country ID',
  `ResidentTownEKATTE` int(6) DEFAULT '0' COMMENT 'resident Place City EKATTE Code',
  `BirthDate` varchar(10) NOT NULL COMMENT 'Birth Date',
  `PE_Type` tinyint(3) unsigned NOT NULL COMMENT 'FK: SE_Type ID from table Code SE_Type',
  `PE_Year` int(4) unsigned DEFAULT '0' COMMENT 'Year of finished previous education',
  `PE_SchoolFrom_Name` varchar(255) NOT NULL COMMENT 'Previous Education School name',
  `PE_SchoolFromCity` int(6) DEFAULT '0',
  `PE_ProfessionName` varchar(255) NOT NULL COMMENT 'Previous education profession name',
  `PE_SchoolCountry_ID` int(3) DEFAULT '34',
  `PINumberText` varchar(100) NOT NULL COMMENT 'Foreigner PIN if is available',
  `SpecNumber` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT 'Student PIN Number type ID value',
  `Filial_ID` tinyint(2) unsigned NOT NULL DEFAULT '0' COMMENT 'FK: Filial ID; Always 0',
  `Department_ID` tinyint(2) unsigned NOT NULL DEFAULT '0' COMMENT 'FK: Department code/order',
  `Speciality` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT 'Speciality code of the student',
  `CourseClass_ID` tinyint(2) unsigned NOT NULL DEFAULT '0' COMMENT 'FK: Mon basic class code ID',
  `FacNumber` varchar(20) NOT NULL COMMENT 'Student faculty number',
  `EduForm` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `EduDuration` varchar(3) NOT NULL DEFAULT '0' COMMENT 'FK: Mon basic class code ID',
  `StudyType` int(11) DEFAULT '0',
  `MasterType` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT 'Master type flag',
  `IncomingYear` int(4) unsigned NOT NULL DEFAULT '0' COMMENT 'Year of addmision',
  `ReasonForAcc` int(3) DEFAULT '0',
  `isGetGrant` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT 'Is student getting grants',
  `ActionDate` varchar(10) NOT NULL,
  `Action_ID` tinyint(3) unsigned DEFAULT '20',
  `GoneWhere` int(11) DEFAULT '0',
  `DocumentDetails` varchar(100) NOT NULL COMMENT 'Notes about student status',
  `isInHostel` tinyint(1) NOT NULL,
  `useCanteen` tinyint(1) NOT NULL,
  `useCamps` tinyint(1) NOT NULL,
  `StartDate` varchar(10) NOT NULL,
  `EndDate` varchar(10) NOT NULL,
  `ProgrammeNotes` varchar(200) NOT NULL COMMENT 'Notes about period of education',
  `OKS` int(2) DEFAULT '0',
  `PE_Year2` int(4) unsigned DEFAULT '0' COMMENT 'Year of finished previous education',
  `PE_SchoolFrom_ID` int(11) unsigned NOT NULL DEFAULT '0' COMMENT 'School code : previous education degree',
  `PE_SchoolFrom_Name2` varchar(255) NOT NULL COMMENT 'Previous Education School name',
  `PE_SchoolFrom_Town` int(11) unsigned NOT NULL COMMENT 'City EKKATE : previous education degree',
  `PE_ProfGroup` int(4) DEFAULT '0',
  `PE_DiplomaNum` varchar(30) NOT NULL COMMENT 'Diploma number : previous education degree',
  `PE_DiplomaDate` varchar(10) NOT NULL,
  `isNewSpeciality` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT 'Is student getting grants'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
