-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Client :  127.0.0.1
-- Généré le :  Mar 13 Novembre 2018 à 05:38
-- Version du serveur :  10.1.30-MariaDB
-- Version de PHP :  5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `studentrecsys`
--

-- --------------------------------------------------------

--
-- Structure de la table `admin`
--

CREATE TABLE `admin` (
  `dbAdminSerialNo` int(11) NOT NULL,
  `dbAdminFname` varchar(64) DEFAULT NULL,
  `dbAdminLname` varchar(64) DEFAULT NULL,
  `dbAdminEmail` varchar(64) DEFAULT NULL,
  `dbAdminPassword` varchar(64) DEFAULT 'password'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `admin`
--

INSERT INTO `admin` (`dbAdminSerialNo`, `dbAdminFname`, `dbAdminLname`, `dbAdminEmail`, `dbAdminPassword`) VALUES
(1, 'Hmida', 'Rojbani', 'admin', '1234'),
(2, 'root', 'root', 'r', '1234');

-- --------------------------------------------------------

--
-- Structure de la table `course`
--

CREATE TABLE `course` (
  `dbCourseSerial` int(11) NOT NULL,
  `dbCourseSec` varchar(64) DEFAULT NULL,
  `dbCourseCredit` int(11) DEFAULT NULL,
  `dbCourseCode` varchar(64) DEFAULT NULL,
  `dbCourseTitle` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `course`
--

INSERT INTO `course` (`dbCourseSerial`, `dbCourseSec`, `dbCourseCredit`, `dbCourseCode`, `dbCourseTitle`) VALUES
(1, 'SB,A,B', 1, 'CSE211', 'OOP LAB'),
(2, 'SC,D,E', 3, 'CSE212', 'OOP'),
(4, 'C,D,E', 1, 'CSE111', 'SPL LAB'),
(5, 'A,B,C,D', 3, 'CSE112', 'SPL'),
(6, 'A,B,C,SD', 3, 'CSE123', 'Electronics'),
(7, 'A,B,C,D', 1, 'CSE124', 'Electronics Laboratory'),
(8, 'A,B,SC', 3, 'ACT111', 'Financial and Managerial Accounting'),
(9, 'NA,NB,NC,ND', 3, 'MATH187', 'Fourier & Laplace Transformations & Complex Variable'),
(10, 'A,SB,C', 3, 'CSI233', 'Theory of Computing');

-- --------------------------------------------------------

--
-- Structure de la table `student`
--

CREATE TABLE `student` (
  `dbStudentSerialNo` int(11) NOT NULL,
  `dbStudentFname` varchar(64) DEFAULT NULL,
  `dbStudentLname` varchar(64) DEFAULT NULL,
  `dbStudentID` varchar(64) DEFAULT NULL,
  `dbStudentPassword` varchar(64) DEFAULT 'password',
  `dbStudentDepartment` varchar(64) DEFAULT NULL,
  `dbStudentEmail` varchar(64) DEFAULT NULL,
  `dbStudentPhone` varchar(64) DEFAULT NULL,
  `dbStudentAddress` varchar(64) DEFAULT NULL,
  `dbStudentDOB` varchar(64) DEFAULT NULL,
  `dbGuardianFname` varchar(64) DEFAULT NULL,
  `dbGuardianLname` varchar(64) DEFAULT NULL,
  `dbGuardianEmail` varchar(64) DEFAULT NULL,
  `dbGuardianPhone` varchar(64) DEFAULT NULL,
  `dbGuardianPassword` varchar(64) DEFAULT 'password',
  `dbStudent1thSemGpa` decimal(10,0) NOT NULL DEFAULT '0',
  `dbStudent2thSemGpa` decimal(10,0) NOT NULL DEFAULT '0',
  `dbStudent3thSemGpa` decimal(10,0) NOT NULL DEFAULT '0',
  `dbStudent4thSemGpa` decimal(10,2) NOT NULL DEFAULT '0.00',
  `dbStudent5thSemGpa` decimal(10,2) NOT NULL DEFAULT '0.00',
  `dbStudent6thSemGpa` decimal(10,2) NOT NULL DEFAULT '0.00',
  `dbStudent7thSemGpa` decimal(10,2) NOT NULL DEFAULT '0.00',
  `dbStudent8thSemGpa` decimal(10,2) NOT NULL DEFAULT '0.00',
  `dbStudent9thSemGpa` decimal(10,2) NOT NULL DEFAULT '0.00',
  `dbStudent10thSemGpa` decimal(10,2) NOT NULL DEFAULT '0.00',
  `dbStudent11thSemGpa` decimal(10,2) NOT NULL DEFAULT '0.00',
  `dbStudent12thSemGpa` decimal(10,2) NOT NULL DEFAULT '0.00',
  `dbStudentCgpa` decimal(10,2) NOT NULL DEFAULT '0.00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `student`
--

INSERT INTO `student` (`dbStudentSerialNo`, `dbStudentFname`, `dbStudentLname`, `dbStudentID`, `dbStudentPassword`, `dbStudentDepartment`, `dbStudentEmail`, `dbStudentPhone`, `dbStudentAddress`, `dbStudentDOB`, `dbGuardianFname`, `dbGuardianLname`, `dbGuardianEmail`, `dbGuardianPhone`, `dbGuardianPassword`, `dbStudent1thSemGpa`, `dbStudent2thSemGpa`, `dbStudent3thSemGpa`, `dbStudent4thSemGpa`, `dbStudent5thSemGpa`, `dbStudent6thSemGpa`, `dbStudent7thSemGpa`, `dbStudent8thSemGpa`, `dbStudent9thSemGpa`, `dbStudent10thSemGpa`, `dbStudent11thSemGpa`, `dbStudent12thSemGpa`, `dbStudentCgpa`) VALUES
(1, 'Tanvir', 'Rahman', '011142053', '1234', 'CSE', 'tanvir3080@gmail.com', '01750 943080', 'House no 307, Dhanmondi 15', '1995-02-05', 'Mokaddesh', 'Hossain', 'Mokaddesh.hossain@gmail.com', '01748 737217', 'password', '4', '2', '3', '3.67', '4.00', '3.33', '2.33', '0.00', '0.00', '0.00', '0.00', '0.00', '3.33'),
(2, 'Mustafizur', 'Rahman', '011142047', '1234', 'CSE', 'mustafizur.rahman@gmail.com', '01676 338612', 'House no.71, Zigatola, Dhaka', '1995-06-15', 'Name', 'JaniNa', 'sofisF@gmail.com', '01799 556644', 'password', '2', '4', '4', '4.00', '3.67', '2.33', '3.67', '0.00', '0.00', '0.00', '0.00', '0.00', '3.67'),
(3, 'Saimoon', 'Imran', '011142153', '1234', 'CSE', 'saimoon.imran@gmail.com', '01818 556699', 'House no.336, Dhanmondi 15, Dhaka', '2010-07-14', 'Saimoons', 'Father', 'his.father@gmail.com', '01775 442255', 'password', '3', '4', '2', '4.00', '3.67', '2.33', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '3.33'),
(4, 'Jubair', 'Joy', '114142010', '1234', 'BBA', 'J.joy@gmail.com', '01687 176783', 'House no.30, Dhanmondi 15, Dhaka', '2007-07-26', 'His', 'Father', 'janina@gmail.com', '01745 556689', 'password', '4', '2', '4', '1.33', '2.33', '4.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '3.00'),
(5, 'Chowdhury ', 'Sohag ', '011142080', '1234', 'EEE', 'c.shoag@gmail.com', '01748 454525', 'House no.12, Dhanmondi 15, Dhaka', '2016-07-06', 'Father', 'Name', 'sjdfsd@gmail.com', '01855 223355', 'password', '3', '1', '4', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '2.67'),
(6, 'Wakib ', 'Avro', '011142032', '1234', 'CSE', 'wakib.avro@gmail.com', '01799 666331', 'House no.111, Dhanmondi 15, Dhaka', '2016-07-06', 'Father', 'Name', 'uyygbgc@gmail.com', '01698 556611', 'password', '3', '4', '1', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '3.00'),
(7, 'Faarid ', 'Alin', '011143087', '1234', 'CSE', 'asdsad@asdfsaf.com', '01897 523656', 'House no.87, Zigatola, Dhaka', '2016-07-07', 'Sdssd', 'Asdsa', 'asdsad@asdfsaf.com', '01742 258899', 'password', '4', '1', '3', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '3.33'),
(8, 'Shaikh ', 'Maruf ', '011142052', '1234', 'CSE', 'adsas@gjsal.com', '01744 526655', 'House no.94, Zigatola, Dhaka', '2016-07-21', 'Aasds', 'Fsdssd', 'adsas@gjsal.com', '01425 522236', 'password', '1', '3', '2', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '3.67'),
(9, 'Tarek ', 'Mahmud', '011142501', '1234', 'CSE', 'tmahmud@gmail.com', '01552 558877', 'House no.65, Farmghate, Dhaka', '2018-07-18', 'Bdfgf', 'Ddfgdf', 'wefsfvfx@gmail.com', '01866 222354', 'password', '2', '4', '4', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '2.67'),
(10, 'Wahid ', 'Raj', '011152064', '1234', 'CSE', 'wahidraj@gmail.com', '01557 881122', 'House no.7/A, Farmghate, Dhaka', '2016-06-29', 'Edfgf', 'Tdfgdg', 'sfdsdg@gmail.com', '01924 223344', 'password', '3', '4', '3', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '2.33'),
(11, 'Mohammad ', 'Osman', '011153033', '1234', 'EEE', 'm.osman@gmail.com', '01745 256353', 'House no.87, Motijheel, Dhaka', '2016-07-09', 'Janina', 'Ami', 'rsdtrgf@gmail.com', '01748 557788', 'password', '2', '4', '1', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '3.00');

-- --------------------------------------------------------

--
-- Structure de la table `studentgpa`
--

CREATE TABLE `studentgpa` (
  `dbstudentgpaSerial` int(11) NOT NULL,
  `dbstudentgpaID` varchar(64) DEFAULT NULL,
  `dbstudentgpaCurrentCourse` varchar(64) DEFAULT NULL,
  `dbstudentgpaCurrentCourseGPA` varchar(64) DEFAULT NULL,
  `dbstudentgpa1thSem` varchar(64) DEFAULT NULL,
  `dbstudentgpa2thSem` varchar(64) DEFAULT NULL,
  `dbstudentgpa3thSem` varchar(64) DEFAULT NULL,
  `dbstudentgpa4thSem` varchar(64) DEFAULT NULL,
  `dbstudentgpa5thSem` varchar(64) DEFAULT NULL,
  `dbstudentgpa6thSem` varchar(64) DEFAULT NULL,
  `dbstudentgpa7thSem` varchar(64) DEFAULT NULL,
  `dbstudentgpa8thSem` varchar(64) DEFAULT NULL,
  `dbstudentgpa9thSem` varchar(64) DEFAULT NULL,
  `dbstudentgpa10thSem` varchar(64) DEFAULT NULL,
  `dbstudentgpa11thSem` varchar(64) DEFAULT NULL,
  `dbstudentgpa12thSem` varchar(64) DEFAULT NULL,
  `dbstudentgpa13thSem` varchar(64) DEFAULT NULL,
  `dbstudentgpa14thSem` varchar(64) DEFAULT NULL,
  `dbstudentgpa15thSem` varchar(64) DEFAULT NULL,
  `dbstudentgpa16thSem` varchar(64) DEFAULT NULL,
  `dbstudentCGPA` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `studentgpa`
--

INSERT INTO `studentgpa` (`dbstudentgpaSerial`, `dbstudentgpaID`, `dbstudentgpaCurrentCourse`, `dbstudentgpaCurrentCourseGPA`, `dbstudentgpa1thSem`, `dbstudentgpa2thSem`, `dbstudentgpa3thSem`, `dbstudentgpa4thSem`, `dbstudentgpa5thSem`, `dbstudentgpa6thSem`, `dbstudentgpa7thSem`, `dbstudentgpa8thSem`, `dbstudentgpa9thSem`, `dbstudentgpa10thSem`, `dbstudentgpa11thSem`, `dbstudentgpa12thSem`, `dbstudentgpa13thSem`, `dbstudentgpa14thSem`, `dbstudentgpa15thSem`, `dbstudentgpa16thSem`, `dbstudentCGPA`) VALUES
(1, '011142053', 'CSE111:C,CSE211:A', 'CSE211:A:3.40,CSE111:C:2.40', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, '011142047', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, '011142153', 'CSE111:C', 'CSE111:C:4.0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, '114142010', 'CSE111:C', 'CSE111:C:3.33', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, '011142080', 'CSE111:C', 'CSE111:C:3.67', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, '011142032', 'CSE111:C,MATH187:NB,CSE124:B', 'MATH187:NB:2.67,CSE124:B:3.00,CSE111:C:4.0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, '011143087', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, '011142052', 'CSE212:D,MATH187:NB,CSE124:B', 'CSE211:A:2.66', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, '011142501', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, '011152064', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, '011153033', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `teacher`
--

CREATE TABLE `teacher` (
  `dbTeacherSerialNo` int(11) NOT NULL,
  `dbTeacherFname` varchar(64) DEFAULT NULL,
  `dbTeacherLname` varchar(64) DEFAULT NULL,
  `dbTeacherEmail` varchar(64) DEFAULT NULL,
  `dbTeacherPassword` varchar(64) DEFAULT 'password',
  `dbTeacherDepartment` varchar(64) DEFAULT NULL,
  `dbTeacherID` varchar(64) DEFAULT NULL,
  `dbTeacherCourse` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `teacher`
--

INSERT INTO `teacher` (`dbTeacherSerialNo`, `dbTeacherFname`, `dbTeacherLname`, `dbTeacherEmail`, `dbTeacherPassword`, `dbTeacherDepartment`, `dbTeacherID`, `dbTeacherCourse`) VALUES
(1, 'Hmida', 'Rojbani', 'hmida', '1234', 'CSE', '111023', 'CSE211:A,CSE111:C'),
(2, 'Amine', 'Bsrour', 'amine', '1234', 'CSE', '111089', 'CSE112:C'),
(3, 'Sawssen', 'Jalel', 'sawssen', '1234', 'EEE', '111055', 'CSE111:D,CSE111:C');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`dbAdminSerialNo`);

--
-- Index pour la table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`dbCourseSerial`);

--
-- Index pour la table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`dbStudentSerialNo`);

--
-- Index pour la table `studentgpa`
--
ALTER TABLE `studentgpa`
  ADD PRIMARY KEY (`dbstudentgpaSerial`);

--
-- Index pour la table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`dbTeacherSerialNo`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `admin`
--
ALTER TABLE `admin`
  MODIFY `dbAdminSerialNo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `course`
--
ALTER TABLE `course`
  MODIFY `dbCourseSerial` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT pour la table `student`
--
ALTER TABLE `student`
  MODIFY `dbStudentSerialNo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT pour la table `studentgpa`
--
ALTER TABLE `studentgpa`
  MODIFY `dbstudentgpaSerial` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT pour la table `teacher`
--
ALTER TABLE `teacher`
  MODIFY `dbTeacherSerialNo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
