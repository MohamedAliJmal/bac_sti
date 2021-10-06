-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 06, 2021 at 10:27 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `clinique`
--

-- --------------------------------------------------------

--
-- Table structure for table `medecin`
--

CREATE TABLE `medecin` (
  `codemedecin` varchar(10) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `spécialité` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `medecin`
--

INSERT INTO `medecin` (`codemedecin`, `nom`, `spécialité`) VALUES
('CA692', 'Habib Daoud', 'Cardiologue'),
('DE387', 'samira ABBES', 'Dermatologue'),
('GEO23', 'ADEL AKROUT', 'Généraliste'),
('PE911', 'hatem Ben Amar', 'pédiatre');

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `Ncin` varchar(8) NOT NULL,
  `nom` varchar(20) NOT NULL,
  `prenom` varchar(20) NOT NULL,
  `EtatCivil` char(1) NOT NULL,
  `NbrEnfant` int(11) NOT NULL,
  `Type` varchar(30) NOT NULL,
  `nbretotalsoin` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `visite`
--

CREATE TABLE `visite` (
  `Ncin` varchar(8) NOT NULL,
  `codemedecin` varchar(5) NOT NULL,
  `datevisite` date NOT NULL,
  `RDV` int(11) NOT NULL,
  `montantsoin` decimal(10,3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `medecin`
--
ALTER TABLE `medecin`
  ADD PRIMARY KEY (`codemedecin`);

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`Ncin`);

--
-- Indexes for table `visite`
--
ALTER TABLE `visite`
  ADD KEY `Ncin` (`Ncin`),
  ADD KEY `codemedecin` (`codemedecin`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `visite`
--
ALTER TABLE `visite`
  ADD CONSTRAINT `Ncin` FOREIGN KEY (`Ncin`) REFERENCES `patient` (`Ncin`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `codemedecin` FOREIGN KEY (`codemedecin`) REFERENCES `medecin` (`codemedecin`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
