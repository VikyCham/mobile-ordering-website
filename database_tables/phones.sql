-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 07, 2020 at 09:15 AM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `phones`
--

CREATE TABLE `phones` (
  `P_ID` int(10) NOT NULL,
  `P_Image` varchar(200) NOT NULL,
  `P_Name` varchar(200) NOT NULL,
  `P_Memory` varchar(100) NOT NULL,
  `P_Display` varchar(100) NOT NULL,
  `P_Camera` varchar(100) NOT NULL,
  `P_Battery` varchar(100) NOT NULL,
  `P_Processor` varchar(100) NOT NULL,
  `P_Price` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `phones`
--

INSERT INTO `phones` (`P_ID`, `P_Image`, `P_Name`, `P_Memory`, `P_Display`, `P_Camera`, `P_Battery`, `P_Processor`, `P_Price`) VALUES
(1, 'images/Phones/MI/RedmiNote6Pro.jpg', 'Redmi Note 6 Pro', '4 GB RAM | 64 GB ROM | Expandable Upto 256 GB', '15.9 cm (6.26 inch) FHD + Display', '12MP + 5MP | 20MP + 2MP Dual Front Camera', '4000 mAh ', 'Qualcomm Snapdragon 636 Processor', '11,999'),
(2, 'images/Phones/MI/Redmi6.jpg', 'Redmi 6', '3 GB RAM | 32 GB ROM | Expandable Upto 256 GB', '13.84 cm (5.45 inch) HD + Display', '12MP + 5MP | 5MP Front Camera', '3000 mAh Lithium-polymer Battery', '2.0 GHz Mediatek P22 Octacore Processor', '7,999'),
(3, 'images/Phones/MI/RedmiNote7.jpg', 'Redmi Note 7', '4 GB RAM | 64 GB ROM | Expandable Upto 256 GB', '16.0 cm (6.3 inch) FHD + Display', '12MP + 2MP | 13MP Front Camera', '4000 mAh Li-polymer Battery', 'Qualcomm Snapdragon 660 AIE Processor', '11,999'),
(4, 'images/Phones/MI/RedmiNote7Pro.jpg', 'Redmi Note 7 Pro', '6 GB RAM | 128 GB ROM | Expandable Upto 256 GB', '16.0 cm (6.3 inch) FHD + Display', '48MP + 5MP | 13MP Front Camera', '4000 mAh Li-polymer Battery', 'Qualcomm Snapdragon 675 Processor', '16,999'),
(5, 'images/Phones/MI/RedmiY2.jpg', 'Redmi Y2', '3 GB RAM | 32 GB ROM | Expandable Upto 256 GB', '15.21 cm (5.99 inch) HD + Display', '12MP + 5MP | 16MP Front Camera', '3080 mAh Li Polymer Battery', 'Qualcomm Snapdragon 625 Processor', '8,999'),
(6, 'images/Phones/MI/RedmiGo.jpg', 'Redmi Go', '1 GB RAM | 8 GB ROM | Expandable Upto 128 GB', '12.7 cm (5.0 inch) HD Display', '8MP Rear Camera | 5MP Front Camera', '3000 mAh Li Polymer Battery', 'Qualcomm Snapdragon 425 Processor', '4,499'),
(7, 'images/Phones/Samsung/SamsungGalaxyA50.jpg', 'Samsung Galaxy A50', '4 GB RAM | 64 GB ROM | Expandable Upto 512 GB', '16.26 cm (6.4 inch) FHD+ Display', '25MP + 5MP + 8MP | 25MP Front Camera', '4000 mAh Lithium-ion Battery', 'Exynos 9610 Processor', '19,990'),
(8, 'images/Phones/Samsung/SamsungGalaxyOnNxt.jpg', 'Samsung Galaxy On Nxt', '3 GB RAM | 64 GB ROM | Expandable Upto 256 GB', '13.97 cm (5.5 inch) Full HD Display', '13MP Rear Camera | 8MP Front Camera', '3300 mAh Li-ion Battery', 'Exynos 7870 Octa Core 1.6 GHz Processor', '10,990'),
(9, 'images/Phones/Samsung/SamsungGalaxyA70.jpg', 'Samsung Galaxy A70', '6 GB RAM | 128 GB ROM | Expandable Upto 512 GB', '17.02 cm (6.7 inch) FHD+ Display', '32MP + 5MP + 8MP | 32MP Front Camera', '4500 mAh Lithium-ion Battery', 'Qualcomm Snapdragon SM6150 Processor', '28,990'),
(10, 'images/Phones/Apple/AppleiPhone6S.jpg', 'Apple iPhone 6s', '32 GB ROM', '11.94 cm (4.7 inch) Retina HD Display', '12MP Rear Camera | 5MP Front Camera', '1715 mAh', 'Apple A9 64-bit processor and Embedded M9 Motion Co-processor', '29,799'),
(12, 'images/Phones/Apple/AppleiPhone7.jpg', 'Apple iPhone 7', '2 GB RAM|128 GB ROM', '11.94 cm (4.7 inch) Retina HD Display', '12MP Rear Camera | 7MP Front Camera', '\r\nNon-removable Li-Ion 1960 mAh battery', 'A10 Fusion Chip with 64-bit Architecture,<br>Embedded M10 Motion Co-processor', '48,999'),
(13, 'images/Phones/Apple/AppleiPhoneX.jpg', 'Apple iPhone X', ' 3 GB RAM|64 GB ROM', '14.73 cm (5.8 inch) Super Retina HD Display', '12MP + 12MP | 7MP Front Camera', 'Non-removable Li-Ion 2716 mAh battery', 'A11 Bionic Chip with 64-bit Architecture, Neural Engine,<br>Embedded M11 Motion Cop', '66,499'),
(14, 'images/Phones/Apple/AppleiPhoneXR.jpg', 'Apple iPhone XR', '3GB RAM|128 GB ROM', '15.49 cm (6.1 inch) Display', '12MP Rear Camera | 7MP Front Camera', '2,942 mAh', 'A12 Bionic Chip', '64,900'),
(15, 'images/Phones/Asus/AsusZenfoneLiteL1.jpg', 'Asus ZenFone Lite L1', '2 GB RAM | 16 GB ROM | Expandable Upto 256 GB', '13.84 cm (5.45 inch) HD+ Display', '13MP Rear Camera | 5MP Front Camera', '3000 mAh Battery', 'Qualcomm Snapdragon 430 Processor', '4,999'),
(16, 'images/Phones/Asus/AsusZenfoneMaxProM1.jpg', 'Asus Zenfone Max Pro M1', '3 GB RAM | 32 GB ROM | Expandable Upto 2 TB', '15.21 cm (5.99 inch) Full HD+ Display', '13MP + 5MP | 8MP Front Camera', '5000 mAh Battery', 'Qualcomm Snapdragon 636 Octa Core Processor', '7,999'),
(17, 'images/Phones/GooglePixel/GooglePixel.jpg', 'Google Pixel', '4 GB RAM | 32 GB ROM', '12.7 cm (5 inch) Full HD Display', '12.3MP Rear Camera | 8MP Front Camera', '2770 mAh Battery', 'Qualcomm Snapdragon 821 64-bit Quad Core 2.15GHz Processor', '57,000'),
(18, 'images/Phones/GooglePixel/GooglePixel3.jpg', 'Google Pixel 3', '4 GB RAM | 128 GB ROM', '13.97 cm (5.5 inch) FHD+ Display', '12.2MP Rear Camera | 8MP + 8MP Dual Front Camera', '2915 mAh Battery', 'Qualcomm Snapdragon 845 64-bit Processor', '65,999'),
(19, 'images/Phones/Asus/AsusZenfone4.jpg', 'Asus Zenfone 4 ', '1 GB RAM | 8 GB ROM | Expandable Upto 64 GB', '11.43 cm (4.5 inch) FWVGA Display', '8MP Rear Camera | 0.3MP Front Camera', '1750 mAh Lithium Battery', 'Intel Atom Z2520 Processor with<br>Intel Hyper Threading Technology Processor', '7,499'),
(20, 'images/Phones/Asus/AsusZenfone5z.jpg', 'Asus ZenFone 5Z', '8 GB RAM | 256 GB ROM | Expandable Upto 2 TB', '15.75 cm (6.2 inch) Full HD+ Display', '12MP + 8MP | 8MP Front Camera', '3300 mAh Battery', 'Qualcomm Snapdragon 845 Octa Core Processor', '31,999'),
(21, 'images/Phones/Asus/AsusZenfoneMaxProM2.jpg', 'Asus ZenFone Max Pro M2', '6 GB RAM | 64 GB ROM | Expandable Upto 2 TB', '15.9 cm (6.26 inch) FHD+ Display', '12MP + 5MP | 13MP Front Camera', '5000 mAh Battery', 'Qualcomm Snapdragon 660 Octa Core Processor', '13,999'),
(22, 'images/Phones/Honor/Honor7A.jpg', 'Honor 7A', '3 GB RAM | 32 GB ROM | Expandable Upto 256 GB', '14.48 cm (5.7 inch) HD+ Display', '13MP + 2MP | 8.0MP Front Camera', '3000 mAh Battery', 'Qualcomm Snapdragon Octa Core Processor', '7,499'),
(23, 'images/Phones/Honor/Honor8C.jpg', 'Honor 8C', '4 GB RAM | 64 GB ROM | Expandable Upto 256 GB', '15.9 cm (6.26 inch) HD+ Display', '13MP + 2MP | 8MP Front Camera', '4000 mAh Battery', 'Qualcomm Snapdragon 632 Processor', '13,890'),
(24, 'images/Phones/Nokia/Nokia5.1Plus.jpg', 'Nokia 5.1 Plus', '4 GB RAM | 64 GB ROM', '14.73 cm (5.8 inch) HD+ Display', '13MP + 5MP | 8MP Front Camera', '3060 mAh Battery', 'Octa Core 1.8 GHz', '14,499'),
(25, 'images/Phones/Nokia/Nokia6.1Plus.jpg', 'Nokia 6.1 Plus', '6 GB RAM | 64 GB ROM | Expandable Upto 400 GB', '14.73 cm (5.8 inch) FHD+ Display', '16MP + 5MP | 16MP Front Camera', '3060 mAh Battery', 'Qualcomm Snapdragon 636 Octacore Processor', '17,427'),
(26, 'images/Phones/Oppo/OppoA3s.jpg', 'OPPO A3s', '4 GB RAM | 64 GB ROM | Expandable Upto 256 GB', '15.75 cm (6.2 inch) HD+ Display', '13MP + 2MP | 8MP Front Camera', '4230 mAh Battery', 'Qualcomm Snapdragon 450 Processor', '9,990'),
(27, 'images/Phones/Oppo/OppoA5.jpg', 'OPPO A5', '4 GB RAM | 64 GB ROM | Expandable Upto 256 GB', '15.75 cm (6.2 inch) HD+ Display', '13MP + 2MP | 8MP Front Camera', '4230 mAh Li-ion Battery', 'Qualcomm Snapdragon 450 Processor', '12,990'),
(28, 'images/Phones/Realme/Realme2.jpg', 'Realme 2', '3 GB RAM | 32 GB ROM | Expandable Upto 256 GB', '15.75 cm (6.2 inch) HD+ Display', '13MP + 2MP | 8MP Front Camera', '4230 mAh Li-ion Battery', 'Qualcomm Snapdragon 450 Octa Core 1.8 GHz Processor', '9,499'),
(29, 'images/Phones/Realme/Realme3.jpg', 'Realme 3', '3 GB RAM | 64 GB ROM | Expandable Upto 256 GB', '15.8 cm (6.22 inch) HD+ Display', '13MP + 2MP | 13MP Front Camera', '4230 mAh Battery', 'MediaTek Helio P70 Octa Core 2.1 GHz AI Processor', '9,999'),
(30, 'images/Phones/Vivo/VivoV9Youth.jpg', 'Vivo V9 Youth', '4 GB RAM | 32 GB ROM | Expandable Upto 256 GB', '16.0 cm (6.3 inch) FHD+ Display', '16MP + 2MP | 16MP Front Camera', '3260 mAh Li-ion Battery', 'Qualcomm Snapdragon 450 Processor', '12,990'),
(31, 'images/Phones/Vivo/VivoV15.jpg', 'Vivo V15', '6 GB RAM | 64 GB ROM | Expandable Upto 256 GB', '16.59 cm (6.53 inch) FHD+ Display', '12MP (24 Million Photosensitive Units) + 8MP + 5MP', '4000 mAh Li-ion Battery', 'MTK Helio P70 Processor', '21,990'),
(32, 'images/Phones/GooglePixel/GooglePixel3a.jpg', 'Google Pixel 3a', '4 GB RAM | 64 GB ROM', '14.22 cm (5.6 inch) FHD+ Display', '12.2MP Rear Camera | 8MP Front Camera', '3000 mAh Battery', 'Qualcomm Snapdragon 670 Processor', '39,999'),
(33, 'images/Phones/GooglePixel/GooglePixel3AXL.jpg', 'Google Pixel 3a XL', '4 GB RAM | 64 GB ROM', '15.24 cm (6.0 inch) FHD+ Display', '12.2MP Rear Camera | 8MP Front Camera', '3700 mAh Battery', 'Qualcomm Snapdragon 670 Processor', '44,999'),
(34, 'images/Phones/Honor/Honor8X.jpg', 'Honor 8X', '6 GB RAM | 64 GB ROM | Expandable Upto 512 GB', '16.51 cm (6.5 inch) FHD+ Display', '20MP + 2MP | 16MP Front Camera', '3750 mAh Battery', '2.2 GHz Kirin 710 Octa Core Processor', '14,999'),
(35, 'images/Phones/Honor/Honor9Lite.jpg', 'Honor 9 Lite', '3 GB RAM | 32 GB ROM | Expandable Upto 256 GB', '14.35 cm (5.65 inch) FHD+ Display', '13MP + 2MP | 13MP + 2MP Dual Front Camera', '3000 mAh Battery', 'Kirin 659 Processor', '8,999'),
(36, 'images/Phones/Nokia/Nokia7.1.jpg', 'Nokia 7.1', '4 GB RAM | 64 GB ROM', '14.83 cm (5.84 inch) Full HD+ Display', '12MP + 5MP | 8MP Front Camera', '3060 mAh Battery', 'Qualcomm Snapdragon 636 Processor', '16,990'),
(37, 'images/Phones/Nokia/Nokia8.1.jpg', 'Nokia 8.1', '6 GB RAM | 128 GB ROM', '15.7 cm (6.18 inch) Full HD+ Display', '12MP + 13MP | 20MP Front Camera', '3500 mAh Battery', 'Qualcomm Snapdragon 710 Processor', '26,990'),
(38, 'images/Phones/Oppo/OppoA7.jpg', 'OPPO A7', '4 GB RAM | 64 GB ROM | Expandable Upto 256 GB', '15.75 cm (6.2 inch) HD+ Display', '13MP + 2MP | 16MP Front Camera', '4230 mAh Battery', 'Qualcomm Snapdragon 450 Processor', '14,990'),
(39, 'images/Phones/Oppo/OppoF5.jpg', 'OPPO F5', '6 GB RAM | 64 GB ROM | Expandable Upto 256 GB', '15.24 cm (6 inch) Full HD+ Display', '16MP Rear Camera | 20MP Front Camera', '3200 mAh Battery', 'Mediatek MT6763T Octa Core 2.5 GHz Processor', '24,990'),
(40, 'images/Phones/Realme/Realme3Pro.jpg', 'Realme 3 Pro', '4 GB RAM | 64 GB ROM | Expandable Upto 256 GB', '16.0 cm (6.3 inch) FHD+ Display', '16MP + 5MP | 25MP Front Camera', '4045 mAh Battery', 'Qualcomm Snapdragon 710 Octa Core 2.2 GHz AIE Processor', '13,999'),
(41, 'images/Phones/Realme/RealmeC1.jpg', 'Realme C1', '2 GB RAM | 32 GB ROM | Expandable Upto 256 GB', '15.75 cm (6.2 inch) HD+ Display', '13MP + 2MP | 5MP Front Camera', '4230 mAh Li-ion Battery', 'Qualcomm Snapdragon 450 Octa Core 1.8 GHz Processor', '6,999'),
(42, 'images/Phones/Vivo/VivoV15Pro.jpg', 'Vivo V15 Pro', '8 GB RAM | 128 GB ROM | Expandable Upto 256 GB', '16.23 cm (6.39 inch) FHD+ Display', '48 Million Quad Pixel Sensor (12 Million Effective Pixel)|8MP + 5MP<br>AI Triple Rear Camera 8MP + 5', '3700 mAh Li-ion Battery', 'Qualcomm Snapdragon 675AIE Octa Core 2.0GHz Processor', '29,990'),
(43, 'images/Phones/Vivo/VivoV9Pro.jpg', 'Vivo V9Pro', '4 GB RAM | 64 GB ROM | Expandable Upto 256 GB', '16.0 cm (6.3 inch) FHD+ Display', '13MP + 2MP | 16MP Front Camera', '3260 mAh Battery', 'Qualcomm Snapdragon 660AIE 1.95 GHz Octa-core Processor', '13,990'),
(44, 'images/Phones/Honor/Honor9N.jpg', 'Honor 9N', '3 GB RAM | 32 GB ROM | Expandable Upto 256 GB', '14.83 cm (5.84 inches) Display', '13MP + 2MP | 16MP Front Camera', '3000 mAh Battery', 'Kirin 659 Octa Core Processor', '8,499'),
(45, 'images/Phones/Honor/Honor10.jpg', 'Honor 10', '6 GB RAM | 128 GB ROM', '14.83 cm (5.84 inch) Full HD+ Display', '24MP + 16MP | 24MP Front Camera', '3400 mAh Lithium Polymer Battery', 'Huawei Kirin 970 Processor', '24,999'),
(46, 'images/Phones/Honor/Honor10Lite.jpg', 'Honor 10 Lite', '4 GB RAM | 64 GB ROM | Expandable Upto 512 GB', '15.77 cm (6.21 inch) FHD+ Display', '13MP + 2MP | 24MP Front Camera', '3400 mAh Lithium Polymer Battery', 'Kirin 710 2.2GHz Octa Core Processor', '12,999'),
(47, 'images/Phones/Nokia/Nokia3310DS.jpg', 'Nokia 3310 DS ', '16 MB ROM | Expandable Upto 32 GB', '6.1 cm (2.4 inch) QVGA Display', '2MP Rear Camera', '1200 mAh Battery', 'NA', '3,310'),
(48, 'images/Phones/Nokia/Nokia8100.jpg', 'Nokia 8110', '512 MB RAM | 4 GB ROM', '6.1 cm (2.4 inch) Display', '2MP Rear Camera', '1500 mAh Battery', '6 Month Warranty', '6,098'),
(49, 'images/Phones/Oppo/OppoF9Pro.jpg', 'OPPO F9 Pro', '6 GB RAM | 64 GB ROM | Expandable Upto 256 GB', '16.0 cm (6.3 inch) Full HD Display', '16MP + 2MP | 25MP Front Camera', '3500 mAh Li-polymer Battery', 'Mediatek Helio P60 Octacore 2.0 GHz Processor', '17,990'),
(50, 'images/Phones/Oppo/OppoF11Pro.jpg', 'OPPO F11 Pro', '6 GB RAM | 64 GB ROM | Expandable Upto 256 GB', '16.51 cm (6.5 inch) FHD+ Display', '48MP + 5MP | 16MP Front Camera', '4000 mAh Li-polymer Battery', 'MediaTek Helio P70 Octa Core 2.1 GHz Processor', '22,990'),
(51, 'images/Phones/Oppo/OppoK1.jpg', 'OPPO K1', '4 GB RAM | 64 GB ROM | Expandable Upto 256 GB', '16.28 cm (6.41 inch) Display', '16MP + 2MP | 25MP Front Camera', '3600 mAh Battery', 'Qualcomm Snapdragon 660 Octa Core 1.95 GHz Processor', '14,490'),
(52, 'images/Phones/Realme/RealmeU1.jpg', 'Realme U1', '3 GB RAM | 32 GB ROM', '16.0 cm (6.3 inch) Display', '13MP Rear Camera', '3500 mAh Battery', 'Octa Core 2.1 GHz', '10,345'),
(53, 'images/Phones/Realme/RealmeC2.jpg', 'Realme C2', '2 GB RAM | 16 GB ROM | Expandable Upto 256 GB', '15.49 cm (6.1 inch) HD+ Display', '13MP + 2MP | 5MP Front Camera', '4000 mAh Battery', 'MediaTek P22 Octa Core 2.0 GHz Processor', '5,999'),
(54, 'images/Phones/Vivo/VivoY17.jpg', 'Vivo Y17', '4 GB RAM | 128 GB ROM | Expandable Upto 256 GB', '16.13 cm (6.35 inch) HD+ Display', '13MP + 8MP + 2MP | 20MP Front Camera', '5000 mAh Lithium-ion Battery', 'MTK Helio P35 (MT6765) Processor', '17,990'),
(55, 'images/Phones/Vivo/VivoY93.jpg', 'Vivo Y93', '3 GB RAM | 64 GB ROM | Expandable Upto 256 GB', '15.8 cm (6.22 inch) HD+ Display', '13MP + 2MP | 8MP Front Camera', '4030 mAh Li-ion Battery', 'MediaTek Helio P22 Processor', '11,990'),
(56, 'images/Phones/Vivo/VivoY95.jpg', 'Vivo Y95', '4 GB RAM | 64 GB ROM | Expandable Upto 256 GB', '15.8 cm (6.22 inch) HD+ Display', '13MP + 2MP | 20MP Front Camera', '4030 mAh Battery', 'Qualcomm Snapdragon 439 Processor', '13,990');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `phones`
--
ALTER TABLE `phones`
  ADD PRIMARY KEY (`P_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `phones`
--
ALTER TABLE `phones`
  MODIFY `P_ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
