-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 26, 2025 at 02:45 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hospital`
--

-- --------------------------------------------------------

--
-- Table structure for table `addnewmedicine`
--

CREATE TABLE `addnewmedicine` (
  `medicinenm` varchar(70) NOT NULL,
  `medicinetyp` varchar(50) NOT NULL,
  `mgofmedicn` varchar(50) NOT NULL,
  `physicnnm` varchar(50) NOT NULL,
  `manfdate` varchar(50) NOT NULL,
  `expdate` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `addnewmedicine`
--

INSERT INTO `addnewmedicine` (`medicinenm`, `medicinetyp`, `mgofmedicn`, `physicnnm`, `manfdate`, `expdate`) VALUES
('decold total', 'tablets', '50', 'bs negi', '10/2/2025', '25/05/2026');

-- --------------------------------------------------------

--
-- Table structure for table `addnewroom`
--

CREATE TABLE `addnewroom` (
  `roomtyp` varchar(80) NOT NULL,
  `florarea` varchar(99) NOT NULL,
  `roomnm` varchar(99) NOT NULL,
  `sttus` varchar(50) NOT NULL,
  `floornumbr` varchar(99) NOT NULL,
  `florname` varchar(99) NOT NULL,
  `perdaychregs` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `addnewroom`
--

INSERT INTO `addnewroom` (`roomtyp`, `florarea`, `roomnm`, `sttus`, `floornumbr`, `florname`, `perdaychregs`) VALUES
('Standard Room', '1000sq feet', '10', 'ongoing', '2', 'radiology', '5000');

-- --------------------------------------------------------

--
-- Table structure for table `bedreg`
--

CREATE TABLE `bedreg` (
  `patientnm` varchar(50) NOT NULL,
  `lastnm` varchar(50) NOT NULL,
  `gnder` varchar(50) NOT NULL,
  `phonenm` varchar(50) NOT NULL,
  `dte` varchar(50) NOT NULL,
  `patientadd` varchar(50) NOT NULL,
  `cty` varchar(50) NOT NULL,
  `bednm` varchar(99) NOT NULL,
  `roomnm` varchar(99) NOT NULL,
  `departmentnm` varchar(50) NOT NULL,
  `strengthofbd` varchar(50) NOT NULL,
  `patntid` varchar(50) NOT NULL,
  `contry` varchar(50) NOT NULL,
  `stte` varchar(50) NOT NULL,
  `dob` varchar(50) NOT NULL,
  `maritialstts` varchar(50) NOT NULL,
  `faclities` varchar(50) NOT NULL,
  `typsofbed` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `bedreg`
--

INSERT INTO `bedreg` (`patientnm`, `lastnm`, `gnder`, `phonenm`, `dte`, `patientadd`, `cty`, `bednm`, `roomnm`, `departmentnm`, `strengthofbd`, `patntid`, `contry`, `stte`, `dob`, `maritialstts`, `faclities`, `typsofbed`) VALUES
('shyam', 'rana', 'Male', '07248548689', '', 'selaqui', 'Dehradun', '50', '78', 'neurology', '10x10', 'shyam123', 'India', 'Uttrakhand', 'Date', 'Single', 'Advance', 'Electric Bed');

-- --------------------------------------------------------

--
-- Table structure for table `bloodreports`
--

CREATE TABLE `bloodreports` (
  `patientid` varchar(50) NOT NULL,
  `patientnm` varchar(50) NOT NULL,
  `ages` varchar(50) NOT NULL,
  `gendr` varchar(50) NOT NULL,
  `phonenm` varchar(50) NOT NULL,
  `dob` varchar(50) NOT NULL,
  `maritialstts` varchar(50) NOT NULL,
  `patientadd` varchar(50) NOT NULL,
  `cty` varchar(50) NOT NULL,
  `cuntry` varchar(50) NOT NULL,
  `stte` varchar(50) NOT NULL,
  `pragnancystts` varchar(50) NOT NULL,
  `priorty` varchar(50) NOT NULL,
  `phsycnid` varchar(50) NOT NULL,
  `feechrgs` varchar(50) NOT NULL,
  `healthcrd` varchar(50) NOT NULL,
  `dte` varchar(50) NOT NULL,
  `symptm` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `bloodreports`
--

INSERT INTO `bloodreports` (`patientid`, `patientnm`, `ages`, `gendr`, `phonenm`, `dob`, `maritialstts`, `patientadd`, `cty`, `cuntry`, `stte`, `pragnancystts`, `priorty`, `phsycnid`, `feechrgs`, `healthcrd`, `dte`, `symptm`) VALUES
('hari123', 'Rawat', '50', 'Male', '09877665443', 'Date', 'Single', 'premnagar', 'Dehradun', 'India', 'Uttrakhand', 'Not Pregnant', 'Routine', 'dr ns bisht', '2000', 'Yes', '12/05/2025', 'Fatigue');

-- --------------------------------------------------------

--
-- Table structure for table `doctorduty`
--

CREATE TABLE `doctorduty` (
  `docid` varchar(50) NOT NULL,
  `joiningtim` varchar(50) NOT NULL,
  `leavingtim` varchar(50) NOT NULL,
  `dte` varchar(50) NOT NULL,
  `tim` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `doctorduty`
--

INSERT INTO `doctorduty` (`docid`, `joiningtim`, `leavingtim`, `dte`, `tim`) VALUES
('shyam', '10am', '11pm', '10/05/2025', '10/am');

-- --------------------------------------------------------

--
-- Table structure for table `doctorreg`
--

CREATE TABLE `doctorreg` (
  `firstnm` varchar(50) NOT NULL,
  `lastnm` varchar(50) NOT NULL,
  `emailadd` varchar(60) NOT NULL,
  `psswrd` varchar(60) NOT NULL,
  `verifypsswrd` varchar(60) NOT NULL,
  `dte` varchar(90) NOT NULL,
  `mnth` varchar(40) NOT NULL,
  `yer` varchar(99) NOT NULL,
  `cty` varchar(70) NOT NULL,
  `contry` varchar(50) NOT NULL,
  `specialty` varchar(70) NOT NULL,
  `languge` varchar(50) NOT NULL,
  `medicalschl` varchar(60) NOT NULL,
  `medcalid` varchar(50) NOT NULL,
  `paypalusernm` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `doctorreg`
--

INSERT INTO `doctorreg` (`firstnm`, `lastnm`, `emailadd`, `psswrd`, `verifypsswrd`, `dte`, `mnth`, `yer`, `cty`, `contry`, `specialty`, `languge`, `medicalschl`, `medcalid`, `paypalusernm`) VALUES
('ram', 'singh', 'ram@gmail.com', '1234598763', '1234598763', '10/03/2026', '05', '2', 'Dehradun', 'India', 'dentist', 'hindi', 'himalyan', '8899112233', '1122334455');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `mail` varchar(50) NOT NULL,
  `psswrd` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`mail`, `psswrd`) VALUES
('ram@123', 'abc'),
('ram@123', 'abc'),
('ram@123', 'abc'),
('ram@123', 'abc'),
('ram@123', 'abc');

-- --------------------------------------------------------

--
-- Table structure for table `patientmedicinedetail`
--

CREATE TABLE `patientmedicinedetail` (
  `patentid` varchar(50) NOT NULL,
  `doctrid` varchar(50) NOT NULL,
  `dte` varchar(50) NOT NULL,
  `medicinetim` varchar(50) NOT NULL,
  `medicinenm` varchar(50) NOT NULL,
  `quanty` varchar(50) NOT NULL,
  `unt` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `patientmedicinedetail`
--

INSERT INTO `patientmedicinedetail` (`patentid`, `doctrid`, `dte`, `medicinetim`, `medicinenm`, `quanty`, `unt`) VALUES
('shyam', 'Rawat', '10/2/2025', 'Before breakfast', 'Paracetamol', '1', '1 Spoon'),
('', '', '', 'Before breakfast', 'Paracetamol', '1', '1 Spoon'),
('', '', '', 'Before breakfast', 'Paracetamol', '1', '1 Spoon'),
('', '', '', 'Before breakfast', 'Paracetamol', '1', '1 Spoon'),
('', '', '', 'Before breakfast', 'Paracetamol', '1', '1 Spoon'),
('', '', '', 'Before breakfast', 'Paracetamol', '1', '1 Spoon');

-- --------------------------------------------------------

--
-- Table structure for table `patientreg`
--

CREATE TABLE `patientreg` (
  `patientnm` varchar(50) NOT NULL,
  `patientlstnm` varchar(50) NOT NULL,
  `patentid` varchar(50) NOT NULL,
  `gnder` varchar(50) NOT NULL,
  `phnnmbr` varchar(50) NOT NULL,
  `dob` varchar(50) NOT NULL,
  `martialsttus` varchar(50) NOT NULL,
  `patientadd` varchar(50) NOT NULL,
  `cty` varchar(50) NOT NULL,
  `cuntry` varchar(50) NOT NULL,
  `stte` varchar(50) NOT NULL,
  `insurncename` varchar(50) NOT NULL,
  `insurnceid` varchar(50) NOT NULL,
  `adhaarnmbr` varchar(50) NOT NULL,
  `patienthlthcard` varchar(50) NOT NULL,
  `pstmedicalhistry` varchar(50) NOT NULL,
  `roomtyp` varchar(50) NOT NULL,
  `roomnmwardnm` varchar(50) NOT NULL,
  `bednm` varchar(50) NOT NULL,
  `selectdoc` varchar(50) NOT NULL,
  `dte` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `patientreg`
--

INSERT INTO `patientreg` (`patientnm`, `patientlstnm`, `patentid`, `gnder`, `phnnmbr`, `dob`, `martialsttus`, `patientadd`, `cty`, `cuntry`, `stte`, `insurncename`, `insurnceid`, `adhaarnmbr`, `patienthlthcard`, `pstmedicalhistry`, `roomtyp`, `roomnmwardnm`, `bednm`, `selectdoc`, `dte`) VALUES
('pankaj', 'rawat', 'panku@123', 'Male', '7248548689', 'Date', 'Single', 'selaqui', 'Dehradun', 'India', 'Uttrakhand', 'panku', 'panku@123', '0011223344', 'yes', '1. Anemia', 'standard', '20', '30', 'Dr NS', '04/06/2025'),
('pankaj', 'rawat', 'panku@123', 'Male', '7248548689', 'Date', 'Single', 'selaqui', 'Dehradun', 'India', 'Uttrakhand', 'panku', 'panku@123', '0011223344', 'yes', '1. Anemia', 'standard', '20', '30', 'Dr NS', '04/06/2025'),
('pankaj', 'rawat', 'panku@123', 'Male', '7248548689', 'Date', 'Single', 'selaqui', 'Dehradun', 'India', 'Uttrakhand', 'panku', 'panku@123', '0011223344', 'yes', '1. Anemia', 'standard', '20', '30', 'Dr NS', '04/06/2025'),
('', '', '', 'Male', '', 'Date', 'Single', '', '', 'India', 'Uttrakhand', '', '', '', '', '1. Anemia', 'Standard Room', '', '', 'null', '');

-- --------------------------------------------------------

--
-- Table structure for table `reports`
--

CREATE TABLE `reports` (
  `patentid` varchar(50) NOT NULL,
  `patientnm` varchar(50) NOT NULL,
  `lastnm` varchar(50) NOT NULL,
  `gendr` varchar(50) NOT NULL,
  `phonenm` varchar(30) NOT NULL,
  `dob` varchar(30) NOT NULL,
  `maritialstts` varchar(30) NOT NULL,
  `patientadd` varchar(50) NOT NULL,
  `cty` varchar(50) NOT NULL,
  `cuntry` varchar(50) NOT NULL,
  `stte` varchar(50) NOT NULL,
  `pragnancystts` varchar(50) NOT NULL,
  `priorty` varchar(50) NOT NULL,
  `reporttst` varchar(50) NOT NULL,
  `feechrge` varchar(50) NOT NULL,
  `healthcrd` varchar(50) NOT NULL,
  `dte` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `reports`
--

INSERT INTO `reports` (`patentid`, `patientnm`, `lastnm`, `gendr`, `phonenm`, `dob`, `maritialstts`, `patientadd`, `cty`, `cuntry`, `stte`, `pragnancystts`, `priorty`, `reporttst`, `feechrge`, `healthcrd`, `dte`) VALUES
('shyam123', 'shyam', 'rana', 'Male', '7248548689', '2', 'Single', 'selaqui', 'Dehradun', 'India', 'Uttrakhand', 'Not Pregnant', 'Routine', 'X-Ray', '1200', 'Yes', '2/01/2025'),
('shyam123', 'shyam', 'kumar', 'Male', '07248548689', 'Date', 'Single', 'selaqui', 'Dehradun', 'India', 'Rajasthan', 'Not Pregnant', 'Routine', 'MRI', '2000', 'Yes', '05/04/2025');

-- --------------------------------------------------------

--
-- Table structure for table `transportation`
--

CREATE TABLE `transportation` (
  `transportid` varchar(50) NOT NULL,
  `nam` varchar(50) NOT NULL,
  `phonenm` varchar(50) NOT NULL,
  `deprtmnt` varchar(50) NOT NULL,
  `mail` varchar(50) NOT NULL,
  `dteoftrip` varchar(50) NOT NULL,
  `tripdestintion` varchar(50) NOT NULL,
  `vehcle` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `transportation`
--

INSERT INTO `transportation` (`transportid`, `nam`, `phonenm`, `deprtmnt`, `mail`, `dteoftrip`, `tripdestintion`, `vehcle`) VALUES
('7248', 'shyam', '09877665443', 'Nursing', 'shyam@123', '23/05/2025', 'indresh hospital', 'Surface Ambulance');

-- --------------------------------------------------------

--
-- Table structure for table `treatmentreg`
--

CREATE TABLE `treatmentreg` (
  `patientnm` varchar(50) NOT NULL,
  `lastnm` varchar(50) NOT NULL,
  `gendr` varchar(50) NOT NULL,
  `phonenumbr` varchar(50) NOT NULL,
  `dob` varchar(50) NOT NULL,
  `maritialsttus` varchar(50) NOT NULL,
  `patientadd` varchar(50) NOT NULL,
  `cty` varchar(50) NOT NULL,
  `cuntry` varchar(50) NOT NULL,
  `stte` varchar(50) NOT NULL,
  `bednumbr` varchar(50) NOT NULL,
  `roomnumbr` varchar(50) NOT NULL,
  `departmentnm` varchar(50) NOT NULL,
  `faclties` varchar(50) NOT NULL,
  `strnthofbed` varchar(50) NOT NULL,
  `typsofbed` varchar(50) NOT NULL,
  `dte` varchar(50) NOT NULL,
  `patentid` varchar(50) NOT NULL,
  `doctrid` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `treatmentreg`
--

INSERT INTO `treatmentreg` (`patientnm`, `lastnm`, `gendr`, `phonenumbr`, `dob`, `maritialsttus`, `patientadd`, `cty`, `cuntry`, `stte`, `bednumbr`, `roomnumbr`, `departmentnm`, `faclties`, `strnthofbed`, `typsofbed`, `dte`, `patentid`, `doctrid`) VALUES
('abhi', 'singh', 'Male', '12345987', '2002', 'married', 'rajpur', 'Dehradun', 'India', 'Uttrakhand', '42', '224', 'dental', 'Advance', '1122334455', 'Electric Bed', '22.04.2024', '123', '321'),
('abhi', 'singh', 'Male', '12345987', '2002', 'married', 'rajpur', 'Dehradun', 'India', 'Uttrakhand', '42', '224', 'dental', 'Advance', '1122334455', 'Electric Bed', '22.04.2024', '123', '321'),
('abhi', 'singh', 'Male', '12345987', '2002', 'married', 'rajpur', 'Dehradun', 'India', 'Uttrakhand', '42', '224', 'dental', 'Advance', '1122334455', 'Electric Bed', '22.04.2024', '123', '321'),
('abhi', 'singh', 'Male', '12345987', '2002', 'married', 'rajpur', 'Dehradun', 'India', 'Uttrakhand', '42', '224', 'dental', 'Advance', '1122334455', 'Electric Bed', '22.04.2024', '123', '321'),
('abhi', 'singh', 'Male', '12345987', '2002', 'married', 'rajpur', 'Dehradun', 'India', 'Uttrakhand', '42', '224', 'dental', 'Advance', '1122334455', 'Electric Bed', '22.04.2024', '123', '321');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
