-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Sep 14, 2022 at 04:51 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `msms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `adm_id` int(11) NOT NULL,
  `adm_name` varchar(50) DEFAULT NULL,
  `adm_addr` varchar(100) DEFAULT NULL,
  `adm_contact` bigint(20) DEFAULT NULL,
  `adm_email` varchar(30) DEFAULT NULL,
  `adm_username` varchar(20) DEFAULT NULL,
  `adm_password` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`adm_id`, `adm_name`, `adm_addr`, `adm_contact`, `adm_email`, `adm_username`, `adm_password`) VALUES
(8210, 'Prasad Belote', 'Chembur', 9594651978, 'prasadbelote16@gmail.com', 'PrasadBelote16', 'Prasad@123');

-- --------------------------------------------------------

--
-- Table structure for table `appointement`
--

CREATE TABLE `appointement` (
  `a_id` int(11) NOT NULL,
  `a_date` varchar(50) DEFAULT NULL,
  `a_time` varchar(50) DEFAULT NULL,
  `a_location` varchar(50) DEFAULT NULL,
  `a_address` varchar(50) DEFAULT NULL,
  `c_id` int(11) DEFAULT NULL,
  `e_id` int(11) DEFAULT NULL,
  `s_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `cust_id` int(11) NOT NULL,
  `cust_name` varchar(50) NOT NULL,
  `cust_addr` varchar(50) NOT NULL,
  `cust_contact` bigint(20) NOT NULL,
  `cust_email` varchar(50) NOT NULL,
  `cust_password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`cust_id`, `cust_name`, `cust_addr`, `cust_contact`, `cust_email`, `cust_password`) VALUES
(103, 'Dikshant', 'awda', 2323, 'dik', 'pass');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `emp_id` int(11) NOT NULL,
  `emp_name` varchar(50) NOT NULL,
  `emp_addr` varchar(50) NOT NULL,
  `emp_contact` bigint(50) NOT NULL,
  `emp_email` varchar(50) NOT NULL,
  `emp_password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`emp_id`, `emp_name`, `emp_addr`, `emp_contact`, `emp_email`, `emp_password`) VALUES
(604, 'dawddw', 'awdad', 232, 'wadaw@awd', 'wadadawdw');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `pay_id` int(11) NOT NULL,
  `upi_id` varchar(50) NOT NULL,
  `pay_amt` varchar(50) NOT NULL,
  `pay_date` date NOT NULL,
  `service_id` int(11) NOT NULL,
  `cust_id` int(11) NOT NULL,
  `emp_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `service`
--

CREATE TABLE `service` (
  `service_id` int(11) NOT NULL,
  `service_name` varchar(50) NOT NULL,
  `service_charges` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `service`
--

INSERT INTO `service` (`service_id`, `service_name`, `service_charges`) VALUES
(501, 'Hair Cut', '150'),
(701, 'Hair cutting', '150'),
(702, 'Facial', '250'),
(703, 'Femgold Cleanup', '720'),
(704, 'Body massage', '1220'),
(705, 'Hair Color', '500'),
(706, 'Oil Massage', '1200'),
(707, 'Madicure', '650'),
(708, 'Hair Straightening ', '1500'),
(709, 'Hair Rebonding', '4500'),
(710, 'Pedicure', '600');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`adm_id`);

--
-- Indexes for table `appointement`
--
ALTER TABLE `appointement`
  ADD PRIMARY KEY (`a_id`),
  ADD KEY `FK_cid` (`c_id`),
  ADD KEY `FK_eid` (`e_id`),
  ADD KEY `FK_sid` (`s_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`cust_id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`emp_id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`pay_id`),
  ADD KEY `cust_id` (`cust_id`),
  ADD KEY `service_id` (`service_id`),
  ADD KEY `emp_id` (`emp_id`);

--
-- Indexes for table `service`
--
ALTER TABLE `service`
  ADD PRIMARY KEY (`service_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appointement`
--
ALTER TABLE `appointement`
  MODIFY `a_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `cust_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `emp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=605;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `pay_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=317;

--
-- AUTO_INCREMENT for table `service`
--
ALTER TABLE `service`
  MODIFY `service_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=711;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `appointement`
--
ALTER TABLE `appointement`
  ADD CONSTRAINT `FK_cid` FOREIGN KEY (`c_id`) REFERENCES `customer` (`cust_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_eid` FOREIGN KEY (`e_id`) REFERENCES `employee` (`emp_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_sid` FOREIGN KEY (`s_id`) REFERENCES `service` (`service_id`) ON DELETE CASCADE;

--
-- Constraints for table `payment`
--
ALTER TABLE `payment`
  ADD CONSTRAINT `cust_id` FOREIGN KEY (`cust_id`) REFERENCES `customer` (`cust_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `emp_id` FOREIGN KEY (`emp_id`) REFERENCES `employee` (`emp_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `service_id` FOREIGN KEY (`service_id`) REFERENCES `service` (`service_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
