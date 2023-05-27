-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 02, 2020 at 08:46 AM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `remsdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `ID` int(10) NOT NULL,
  `AdminName` varchar(120) DEFAULT NULL,
  `UserName` varchar(120) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `AdminRegdate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`ID`, `AdminName`, `UserName`, `MobileNumber`, `Email`, `Password`, `AdminRegdate`) VALUES
(1, 'Admin', 'admin', 8989898980, 'admin@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2019-08-05 07:15:32');

-- --------------------------------------------------------

--
-- Table structure for table `tblcity`
--

CREATE TABLE `tblcity` (
  `ID` int(10) NOT NULL,
  `CountryID` int(5) DEFAULT NULL,
  `StateID` int(5) NOT NULL,
  `CityName` varchar(120) DEFAULT NULL,
  `EnterDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcity`
--

INSERT INTO `tblcity` (`ID`, `CountryID`, `StateID`, `CityName`, `EnterDate`) VALUES
(1, 1, 2, 'Aligarh', '2019-09-15 11:29:25'),
(2, 1, 2, 'Varanasi', '2019-09-15 11:29:28'),
(3, 1, 2, 'Allahabad', '2019-09-15 11:29:32'),
(4, 1, 2, 'Ghaziabad', '2019-09-26 17:32:40'),
(5, 2, 2, 'New Castle', '2019-08-06 11:41:20'),
(6, 1, 2, 'Varanasi', '2019-09-26 17:34:29'),
(7, 2, 2, 'Mount Gambier', '2019-08-06 11:43:20'),
(8, 2, 2, 'Whyalla', '2019-08-06 11:43:43'),
(9, 2, 2, 'Brisbane', '2019-08-06 11:44:32'),
(10, 16, 16, 'Los Angeles', '2019-08-06 11:45:07'),
(11, 16, 16, 'San Francisco', '2019-08-06 11:45:49'),
(12, 16, 16, 'Miami', '2019-08-06 11:46:30'),
(13, 16, 16, 'Orlando', '2019-08-06 11:46:51'),
(14, 16, 16, 'queens', '2019-08-06 11:47:59'),
(15, 7, 18, 'ABC', '2019-09-20 05:33:17'),
(16, 1, 1, 'Patna', '2019-08-07 06:29:29'),
(18, 1, 4, 'New Delhi', '2019-09-30 19:02:33');

-- --------------------------------------------------------

--
-- Table structure for table `tblcountry`
--

CREATE TABLE `tblcountry` (
  `ID` int(10) NOT NULL,
  `CountryName` varchar(120) DEFAULT NULL,
  `EnterDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcountry`
--

INSERT INTO `tblcountry` (`ID`, `CountryName`, `EnterDate`) VALUES
(1, 'India', '2019-08-06 07:19:38'),
(2, 'Australia', '2019-08-06 07:21:04'),
(3, 'Brazil', '2019-08-06 07:21:20'),
(4, 'China', '2019-08-06 07:21:34'),
(5, 'Germany', '2019-08-06 07:21:52'),
(6, 'Ireland', '2019-08-06 07:22:16'),
(7, 'Japan', '2019-08-06 07:22:27'),
(8, 'Kenya', '2019-08-06 07:22:38'),
(9, 'Malaysia', '2019-08-06 07:22:57'),
(10, 'Russia', '2019-08-06 07:23:19'),
(11, 'Singapore', '2019-08-06 07:23:35'),
(12, 'South Africa', '2019-08-06 07:23:48'),
(13, 'Thailand', '2019-08-06 07:24:04'),
(14, 'Turkey', '2019-08-06 07:24:18'),
(15, 'UK', '2019-08-06 07:24:28'),
(16, 'USA', '2019-08-06 07:24:37'),
(17, 'Zimbabwe', '2019-08-06 07:24:52'),
(18, 'Vietnam', '2019-08-06 10:17:40');

-- --------------------------------------------------------

--
-- Table structure for table `tblenquiry`
--

CREATE TABLE `tblenquiry` (
  `ID` int(11) NOT NULL,
  `PropertyID` int(10) NOT NULL,
  `FullName` varchar(200) NOT NULL,
  `Email` varchar(200) NOT NULL,
  `MobileNumber` bigint(10) NOT NULL,
  `Message` mediumtext NOT NULL,
  `EnquiryNumber` varchar(200) NOT NULL,
  `EnquiryDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `Status` varchar(10) DEFAULT NULL,
  `Remark` varchar(200) DEFAULT NULL,
  `RemarkDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblenquiry`
--

INSERT INTO `tblenquiry` (`ID`, `PropertyID`, `FullName`, `Email`, `MobileNumber`, `Message`, `EnquiryNumber`, `EnquiryDate`, `Status`, `Remark`, `RemarkDate`) VALUES
(1, 1, 'Akash Chandra', 'ac@gmail.com', 7894561239, 'When I will come to you to see the property', '283495176', '2019-08-13 05:36:13', 'Answer', 'Fine You will come tomorrow morning i.e 17 aug', '2019-08-16 11:17:25'),
(2, 2, 'Ramesh Kumar', 'ramesh@gmail.com', 8989889898, 'Give me best prices of this property', '295692123', '2019-08-16 11:58:27', NULL, NULL, NULL),
(3, 2, 'Akash', 'akash@gmail.com', 5656565656, 'hgfhf gy f ', '611895685', '2019-08-18 16:02:03', NULL, NULL, NULL),
(4, 4, 'Simple user', 'testuser2@gmail.com', 1231231231, 'Test Enquiry', '558385754', '2019-09-30 19:00:26', 'Answer', 'This is for testing', '2019-09-30 19:28:09'),
(5, 2, 'Simple user', 'testuser2@gmail.com', 1231231231, 'I want some discount on this property.', '203492977', '2019-09-30 19:33:22', NULL, NULL, NULL),
(6, 2, 'mm', 'kk@gmsil.com', 987988, 'k', '523199594', '2020-05-07 07:00:45', NULL, NULL, NULL),
(7, 5, 'bbbbbb', 'bvn@gmail.com', 7667767682, 'bbbbb', '523235616', '2020-05-16 06:21:39', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblfeedback`
--

CREATE TABLE `tblfeedback` (
  `id` int(11) NOT NULL,
  `UserId` int(11) NOT NULL,
  `PropertyId` int(11) NOT NULL,
  `UserRemark` mediumtext NOT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `Is_Publish` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblfeedback`
--

INSERT INTO `tblfeedback` (`id`, `UserId`, `PropertyId`, `UserRemark`, `PostingDate`, `Is_Publish`) VALUES
(1, 3, 1, 'This review is for testing.', '2019-09-20 19:15:03', 1),
(2, 8, 6, 'nice', '2020-04-01 04:41:10', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblpage`
--

CREATE TABLE `tblpage` (
  `ID` int(10) NOT NULL,
  `PageType` varchar(120) DEFAULT NULL,
  `PageTitle` mediumtext DEFAULT NULL,
  `PageDescription` mediumtext DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpage`
--

INSERT INTO `tblpage` (`ID`, `PageType`, `PageTitle`, `PageDescription`, `Email`, `MobileNumber`, `UpdationDate`) VALUES
(1, 'aboutus', 'About Us', 'our main goal is to make real-estate thing more easier and reliable...we are providing   24x7 service to our custemers. jskandn  sadjsn nsjdns njsnds jsd sjdnasd  jsaadnjsad  saajdnasd  sdj  dsjdsds dsd saddsndd djdasd sd sad sdjsdnsd sd d dj djs jds dddjjdjd asjdasdjsdd d  dsadasjd asjd asjd ddjjs as das d dj d d djd jddasjdjjqqejnnnjwaad sad sad sad sdjsadj sajdsdndjijejwejej.', 'treebirdindia@gmail.com', 919845146313, '2020-06-02 06:27:37'),
(2, 'contactus', 'Contact Us', 'Karthik Mangalore ,DK karnataka<div>India - 575001</div>', 'treebirdindia@gmail.com', 919845146313, '2020-06-02 05:23:50');

-- --------------------------------------------------------

--
-- Table structure for table `tblproperty`
--

CREATE TABLE `tblproperty` (
  `ID` int(10) NOT NULL,
  `UserID` char(20) DEFAULT NULL,
  `PropertyTitle` mediumtext DEFAULT NULL,
  `PropertDescription` mediumtext DEFAULT NULL,
  `Type` varchar(50) DEFAULT NULL,
  `Status` varchar(100) DEFAULT NULL,
  `Location` varchar(200) DEFAULT NULL,
  `Bedrooms` varchar(200) DEFAULT NULL,
  `Bathrooms` varchar(200) DEFAULT NULL,
  `Floors` varchar(200) DEFAULT NULL,
  `Garages` varchar(200) DEFAULT NULL,
  `Area` varchar(50) DEFAULT NULL,
  `Size` varchar(50) DEFAULT NULL,
  `RentorsalePrice` varchar(120) DEFAULT NULL,
  `BeforePricelabel` varchar(120) DEFAULT NULL,
  `AfterPricelabel` varchar(120) DEFAULT NULL,
  `propertylink` varchar(500) NOT NULL,
  `PropertyID` varchar(120) DEFAULT NULL,
  `CenterCooling` int(4) DEFAULT NULL,
  `Balcony` int(4) DEFAULT NULL,
  `PetFriendly` int(4) DEFAULT NULL,
  `Barbeque` int(4) DEFAULT NULL,
  `FireAlarm` int(4) DEFAULT NULL,
  `ModernKitchen` int(4) DEFAULT NULL,
  `Storage` int(4) DEFAULT NULL,
  `Dryer` int(4) DEFAULT NULL,
  `Heating` int(4) DEFAULT NULL,
  `Pool` int(4) DEFAULT NULL,
  `Laundry` int(4) DEFAULT NULL,
  `Sauna` int(4) DEFAULT NULL,
  `Gym` int(4) DEFAULT NULL,
  `Elevator` int(4) DEFAULT NULL,
  `DishWasher` int(4) DEFAULT NULL,
  `EmergencyExit` int(4) DEFAULT NULL,
  `FeaturedImage` varchar(200) DEFAULT NULL,
  `GalleryImage1` varchar(200) DEFAULT NULL,
  `GalleryImage2` varchar(200) DEFAULT NULL,
  `GalleryImage3` varchar(200) DEFAULT NULL,
  `GalleryImage4` varchar(200) DEFAULT NULL,
  `GalleryImage5` varchar(200) DEFAULT NULL,
  `Address` varchar(200) DEFAULT NULL,
  `Country` varchar(200) DEFAULT NULL,
  `City` varchar(220) DEFAULT NULL,
  `State` varchar(200) DEFAULT NULL,
  `ZipCode` varchar(200) DEFAULT NULL,
  `Neighborhood` varchar(200) DEFAULT NULL,
  `ListingDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblproperty`
--

INSERT INTO `tblproperty` (`ID`, `UserID`, `PropertyTitle`, `PropertDescription`, `Type`, `Status`, `Location`, `Bedrooms`, `Bathrooms`, `Floors`, `Garages`, `Area`, `Size`, `RentorsalePrice`, `BeforePricelabel`, `AfterPricelabel`, `propertylink`, `PropertyID`, `CenterCooling`, `Balcony`, `PetFriendly`, `Barbeque`, `FireAlarm`, `ModernKitchen`, `Storage`, `Dryer`, `Heating`, `Pool`, `Laundry`, `Sauna`, `Gym`, `Elevator`, `DishWasher`, `EmergencyExit`, `FeaturedImage`, `GalleryImage1`, `GalleryImage2`, `GalleryImage3`, `GalleryImage4`, `GalleryImage5`, `Address`, `Country`, `City`, `State`, `ZipCode`, `Neighborhood`, `ListingDate`) VALUES
(1, '1', '2 BHK Builder Floor', 'There two bed room with wide balcony.\r\n2. Drawing room with fall ceiling & Texture Paint\r\n3. Modern and modular kitchen with chimney and other\r\nattachments.\r\n4. two bath room with tile work upto roof height and branded\r\nfittings.\r\n5. Car parking and lift available.\r\n6. Wall to wall pop , texture paint & tiles work on front elevation.\r\n7. Vitrified tiles flooring, Kalinga wire, Branded\r\nelectrical fittings.\r\n8. Separate electric and water connections with appropriate\r\nsupply.\r\n9. Building structure according to height with branded fittings\r\nand a', 'Apartments', 'Sale', 'Uttam Nagar East', '2', '2', '1 (Out of 4 Floors)', '1 Covered', '520 sq ft', '500 sq ft', '24.1 Lac', '23 lac', '25 lac', 'sxsxsxs', '629126491', 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 1, 0, 1, 0, 1, 1, '94d39c9ea3bacd079a48607a45d06e6d1565936640.jpg', 'bb2e708549fa0abc3608aeb12243a5471565937233.jpg', 'c65756e6c9ec41e207d132375b324c441565937949.jpg', '42be96d2f93056d5a5b106a9abed40051565937999.jpg', '338c3a6332a0200a77b7bfe0e9ea54721565938082.jpg', 'af63798a7deebebd06af935925cba9fb1565938126jpeg', 'Uttam Nagar ', '1', 'Patna', '5', '110096', 'uttam nagar east metro station', '2019-08-09 05:40:47'),
(2, '2', '3 BHK 800 Sq-ft Flat', 'This project looks stunning and it is developed with the attention to all the small details. You will always receive compliments for the embedded classy effect crafted in Rahil Homes. Rahil Homes is one of the popular residential projects that are located in Sector 24, Rohini, New Delhi. This project offers 1, 2, 3 & 4 BHK Builder Floor Flats with basic amenities for the comfort of residents. It is close to market and many educational institutions.', 'Apartments', 'Sale', 'Rohini Sector 24', '3', '2', '1 (Out of 4 Floors)', 'Yes', '800 sqft', '796 sqft', '68 lack', '65 lac', '69 lac', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2876.869735278376!2d74.83896088261393!3d12.85283173081372!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3ba350a13025ca43%3A0xff493840cb0e889b!2sSrinivas%20Pre-University%20College%20Pandeshwar!5e1!3m2!1sen!2sin!4v1585917464299!5m2!1sen!2sin', '850464384', 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 'image5.jpg', 'cff8ad28cf40ebf4fbdd383fe546098d1565329707.jpg', '7fdc1a630c238af0815181f9faa190f51565329707.jpg', '5fb637257132ad8e014dff431326a5ac1565329707.jpg', 'b37cef0d9aff875f77888c297150b1421565329707.jpg', 'cff8ad28cf40ebf4fbdd383fe546098d1565329707.jpg', 'Sector 24 ', '1', 'Delhi', '4', '110096', 'sector 24 metro', '2019-08-09 05:48:27'),
(3, '1', '1Bedroom 1Bath', 'Very Nice House Park Facing Xu 1 New House All Facility Are Available Fully Green Area Very Close To Pari Chaowk Near Metro Additional Details : Having A Provision To Park 1 Cars. You Can Easily Park Your Car Inside The Compound There Is Also A Separate Washroom For Domestic Help. The House Has Boring Supply. The Kitchen Has Been Built With Modular Fittings.', 'Houses', 'Sale', 'Greater Noida', '1', '1', '1', '1 Covered, 1 Open', '67 Sq. Meter', '60 Sq. Meter  ', '43 Lac', '42 lac', '44 lac', 'zm xzmx ZMxmZxmZmxZxzMxnzmxmzxmzn', '118245832', 0, 0, 1, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, '386bb628f5a3da130210ee422d57422e1565679999jpeg', 'f1d9313ad97dcfd6e2b37dbf805a5b4f1565679999jpeg', 'd4e6271f4e62bb1f7cf10004553f3efe1565679999.jpg', '1e6ae4ada992769567b71815f124fac51565679999.jpg', 'efc1a80c391be252d7d777a437f868701565679999.jpg', '588b11ad7a92d13777fe0be3adf633bf1565679999.jpg', 'Sector Xu-I Gr Noida, , Aligarh, U P', '1', 'Aligarh', '2', '4464644', 'Near Crossing Republic School', '2019-08-13 07:06:39'),
(4, '4', '5Bedrooms 7Baths', 'Prime location\r\nWalking distance from galleria market & iffco metro station\r\nElite designer villa\r\n5bhk\r\nWest facing\r\nHuge drawing and dinning\r\nGym area\r\nVrv system\r\nItalian marble in drawing room, rooms and bathroom\r\nModular kitchen & wardrobes with german fittings\r\nBathroom fittings of queo & kohler\r\nTerrace garden with bar and service counter and gazebo\r\nFront two side lawn with landscaping and gazebo\r\nWater body and fountain in the backyard\r\nServant room\r\n4 reserved car parking\r\nReady to move in for more details call us...', 'Villas', 'Sale', 'Sushant Lok Phase - 1', '5', '7', '3 floors', '2 Covered, 2 Open', '250.84 sq mtr', '245.76 sq mtr', '5.99 cr', '4.99 cr', '6.99 cr', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m', '869693774', 1, 1, 1, 0, 1, 1, 1, 0, 1, 1, 0, 0, 1, 1, 1, 1, 'af63798a7deebebd06af935925cba9fb1565680584jpeg', '31d460256ad31331e4d59d1377b2556b1565680584jpeg', 'd3a2a650c3ca6d9a7886a9e403bca6901565680584jpeg', 'd3812a144fafaa264821a7b1154ae44c1565680584jpeg', '0ac462ac57b106b3c62e8a310c2afe931565680584jpeg', 'c584f57049e5155743d83a21a0971b741565680584jpeg', 'A Block, Sushant Lok Phase - 1', '1', 'Varanasi', '2', '221001', 'Near Kendriya Vidalya', '2019-08-13 07:16:24'),
(5, '2', '5 BHK Residential House 4830 sqft', 'Non-Vegetarians, Without Company Lease, Pets allowed', 'Houses', 'Rent', 'Vasant Vihar', '5', '6', 'Ground (Out of 1 Floors)', '2 Covered, 2 Open', '4830 sq ft', '4200 sq ft', '45000', '43000', '48000', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d356830.9611747889!2d73.24367676653094!3d19.13653896291977!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3be7c6306644edc1%3A0x5da4ed8f8d648c69!2sMumbai%2C%20Maharashtra!5e1!3m2!1sen!2sin!4v1585916844603!5m2!1sen!2sin', '131599041', 1, 1, 0, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 1, 0, 1, 'b8a1a89aa25d962639c36371b8728c571565681197.jpg', 'af63798a7deebebd06af935925cba9fb1565681197jpeg', '31d460256ad31331e4d59d1377b2556b1565681197jpeg', 'b3dc4d2ca49fca95b80b4a2c66c833b81565681197.jpg', 'd4e6271f4e62bb1f7cf10004553f3efe1565681197.jpg', '0ac462ac57b106b3c62e8a310c2afe931565681197jpeg', 'D-510,', '7', 'queens', '18', '4654646', 'XYZ', '2019-08-13 07:26:37'),
(6, '8', 'xxxxxxxxxxxxxxxxxxxxx', 'xxxxxxxxxxxxxxxxx', 'Houses', 'Rent', 'xxx', '76', '65', 'b', 'nbv', '765675', '999', '678686', '675755', 'xxxxxxxxxxxxxxxxxxx', 'propertylinksdsd', '200342955', 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '6d1dcfd58f358c2b34043db109aaf6271585224890.png', '6d1dcfd58f358c2b34043db109aaf6271585224890.png', '6d1dcfd58f358c2b34043db109aaf6271585224890.png', '6d1dcfd58f358c2b34043db109aaf6271585224890.png', '6d1dcfd58f358c2b34043db109aaf6271585224890.png', '6d1dcfd58f358c2b34043db109aaf6271585224890.png', 'nnnnnnnnnn', '7', 'ABC', '18', 'nnnnnnnnn', 'wwwwwwwww', '2020-03-26 12:14:50'),
(7, '9', 'Well designed high class pre decorated hose for sale', 'suprb house for sale ', 'Houses', 'Sale', 'mangalore', '2', '2', '1', 'no', '1200', '1200', '1000000', '434434', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3889.8212106746696!2d74.83327861349863!3d12.854821590932524!2m3!1f', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d356830.9611747889!2d73.24367676653094!3d19.13653896291977!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3be7c6306644edc1%3A0x5da4ed8f8d648c69!2sMumbai%2C%20Maharashtra!5e1!3m2!1sen!2sin!4v1585916844603!5m2!1sen!2sin', '453029723', 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '83abc196b0b9285110fb8ba52471f6951589613661.jpg', 'a7cd8d31a581e16846441d55c1cd2dfd1589613661.jpg', '629679d6a94fe849c75d530dacb7854b1589613661.jpg', '59145eacc8b789fb3f7abc2e84ce6cf71589613661.jpg', '59145eacc8b789fb3f7abc2e84ce6cf71589613661.jpg', '9788b25475f44dbd6686d0c3547a5d2b1589613661.jpg', 'kodialbail,mangalore dakshina kannada ', '1', 'New Delhi', '4', '43543532', 'vijaya bank', '2020-05-16 07:21:01'),
(8, '10', 'nice house for rent', 'hello contact me 8897392793', 'Villas', 'Sale', 'jnjnjn', '2', '2', 'Tailes', '0', '1020', '1500', '370000', '40000', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d15558.902096690414!2d74.82670730663088!3d12.860996404854404!2m3!1f', 'propertylink', '526263689', 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '1be12dddcb339bd64b23f846f4e6d9711589619633.jpg', '83abc196b0b9285110fb8ba52471f6951589619633.jpg', 'a7cd8d31a581e16846441d55c1cd2dfd1589619633.jpg', '9788b25475f44dbd6686d0c3547a5d2b1589619633.jpg', '629679d6a94fe849c75d530dacb7854b1589619633.jpg', '9788b25475f44dbd6686d0c3547a5d2b1589619633.jpg', 'erewrwrmmmmmmmm', '1', 'Patna', '', '454565', 'mmmmmmmmmmmmm', '2020-05-16 09:00:33'),
(9, '10', 'vhhhhhhhhhhhhhhhhv', 'jbbbbbbbbbbbbbbbbbbb', 'Houses', 'Sale', 'Mangalore', '2', '2', 'Tailes', 'no', '1020', '1500', '370000', '320000', '10000', 'propertylink', '339155392', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '1be12dddcb339bd64b23f846f4e6d9711589620688.jpg', '83abc196b0b9285110fb8ba52471f6951589620688.jpg', 'a7cd8d31a581e16846441d55c1cd2dfd1589620688.jpg', '629679d6a94fe849c75d530dacb7854b1589620688.jpg', '59145eacc8b789fb3f7abc2e84ce6cf71589620688.jpg', '9788b25475f44dbd6686d0c3547a5d2b1589620688.jpg', 'erewrwrmmmmmmmm', '1', 'Patna', '1', '454565', 'mmmmmmmmmmmmm', '2020-05-16 09:18:09'),
(10, '9', 'vcbvbvcbvcvbvbvc', 'mmmmmmm', 'Houses', 'Sale', 'mangalo', '76', '65', 'b', 'o\no', '765675', '999', '678686', '675755', '786686', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d15558.902096690414!2d74.82670730663082!3d12.860996404854404!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3ba35bac4fa10269%3A0x35dddc4f1cfd1259!2sBunder%2C%20Mangalore%2C%20Karnataka!5e0!3m2!1sen!2sin!4v1589621109116!5m2!1sen!2sin', '846309344', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, '1be12dddcb339bd64b23f846f4e6d9711589621250.jpg', '83abc196b0b9285110fb8ba52471f6951589621250.jpg', '0980599f2af4948144fd77df8387424d1589621250.jpg', '629679d6a94fe849c75d530dacb7854b1589621250.jpg', '9788b25475f44dbd6686d0c3547a5d2b1589621250.jpg', '629679d6a94fe849c75d530dacb7854b1589621250.jpg', 'kodialbail,mangalore dakshina kannada', '1', 'Aligarh', '2', '43543532', 'wwwwwwwww', '2020-05-16 09:27:30'),
(11, '10', 'magical house for rent  free', 'mmmmmmmmmmmmm', 'Houses', 'Sale', 'Mangalore', '2', '2', 'Tailes', 'no', '1020', '1500', '340000', '320000', '10000', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d15558.902096690414!2d74.82670730663082!3d12.860996404854404!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3ba35bac4fa10269%3A0x35dddc4f1cfd1259!2sBunder%2C%20Mangalore%2C%20Karnataka!5e0!3m2!1sen!2sin!4v1589621109116!5m2!1sen!2sin', '755796529', 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, '1be12dddcb339bd64b23f846f4e6d9711589621534.jpg', '83abc196b0b9285110fb8ba52471f6951589621534.jpg', 'a7cd8d31a581e16846441d55c1cd2dfd1589621534.jpg', '629679d6a94fe849c75d530dacb7854b1589621534.jpg', '629679d6a94fe849c75d530dacb7854b1589621534.jpg', '9788b25475f44dbd6686d0c3547a5d2b1589621534.jpg', 'erewrwrmmmmmmmm', '1', 'Varanasi', '2', '78876', 'mmmmmmmmmmmmm', '2020-05-16 09:32:14');

-- --------------------------------------------------------

--
-- Table structure for table `tblpropertytype`
--

CREATE TABLE `tblpropertytype` (
  `ID` int(10) NOT NULL,
  `PropertType` varchar(120) DEFAULT NULL,
  `EnterDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpropertytype`
--

INSERT INTO `tblpropertytype` (`ID`, `PropertType`, `EnterDate`) VALUES
(1, 'Apartments', '2019-08-06 06:31:56'),
(2, 'Houses', '2019-08-06 06:32:20'),
(3, 'Offices', '2019-08-06 06:32:32'),
(4, 'Villas', '2019-08-06 06:32:48'),
(5, 'Lands', '2019-08-06 06:32:57'),
(6, 'Test 1', '2019-09-30 19:01:32');

-- --------------------------------------------------------

--
-- Table structure for table `tblstate`
--

CREATE TABLE `tblstate` (
  `ID` int(10) NOT NULL,
  `CountryID` int(5) DEFAULT NULL,
  `StateName` varchar(120) DEFAULT NULL,
  `EnterDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblstate`
--

INSERT INTO `tblstate` (`ID`, `CountryID`, `StateName`, `EnterDate`) VALUES
(1, 1, 'Madhya Pradesh', '2019-08-06 10:48:36'),
(2, 1, 'Uttar Pradesh', '2019-08-06 10:48:58'),
(3, 1, 'Tamilnadu', '2019-08-06 10:49:07'),
(4, 1, 'Delhi/NCR', '2019-08-06 10:49:29'),
(5, 1, 'Bihar', '2019-08-06 10:49:39'),
(6, 1, 'Uttrakhand', '2019-08-06 10:49:50'),
(7, 2, 'New South Wales', '2019-08-06 10:51:29'),
(8, 2, 'Queensland', '2019-08-06 10:51:49'),
(9, 2, 'South Australia', '2019-08-06 10:52:11'),
(10, 2, 'Victoria', '2019-08-06 10:52:32'),
(11, 2, 'Tasmania', '2019-08-06 10:52:45'),
(12, 16, 'California', '2019-08-06 10:54:21'),
(13, 16, 'Florida', '2019-08-06 10:54:42'),
(14, 16, 'New York', '2019-08-06 10:55:02'),
(15, 16, 'New Mexico', '2019-08-06 10:55:24'),
(16, 16, 'New Jersey.', '2019-08-06 10:55:41'),
(17, 16, 'Virginia', '2019-08-06 10:55:56'),
(18, 7, 'Tokyo', '2019-09-15 10:24:06');

-- --------------------------------------------------------

--
-- Table structure for table `tbluser`
--

CREATE TABLE `tbluser` (
  `ID` int(10) NOT NULL,
  `FullName` varchar(120) DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `UserType` int(5) DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `Aboutme` mediumtext NOT NULL,
  `UpdationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbluser`
--

INSERT INTO `tbluser` (`ID`, `FullName`, `Email`, `MobileNumber`, `Password`, `UserType`, `PostingDate`, `Aboutme`, `UpdationDate`) VALUES
(1, 'Test', 'test@gmail.com', 8596234569, 'f925916e2754e5e03f75dd58a5733251', 1, '2019-08-07 15:50:08', 'I am Mahesh.\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercit.\r\n', '2019-09-30 19:39:53'),
(2, 'Rajesh Singh', 'raj@gmail.com', 4446464646, '202cb962ac59075b964b07152d234b70', 2, '2019-08-07 15:52:34', '', '0000-00-00 00:00:00'),
(3, 'Akash', 'akash@gmail.com', 5656565656, '202cb962ac59075b964b07152d234b70', 3, '2019-08-07 15:53:05', 'NA', '2019-09-20 19:49:21'),
(4, 'Test user', 'testuser@gmail.com', 1234567890, 'f925916e2754e5e03f75dd58a5733251', 1, '2019-09-30 18:57:00', 'Test', '2019-09-30 18:58:10'),
(5, 'Simple user', 'testuser2@gmail.com', 1231231231, '4a7d1ed414474e4033ac29ccb8653d9b', 3, '2019-09-30 18:59:41', '', '2020-03-17 09:22:03'),
(6, 'arfan', 'arfan@gmail.com', 242343243, '4297f44b13955235245b2497399d7a93', 3, '2020-03-26 06:01:07', '', '0000-00-00 00:00:00'),
(7, 'harshith', 'harshith@gmail.com', 345345656, '202cb962ac59075b964b07152d234b70', 3, '2020-03-26 06:02:53', '', '0000-00-00 00:00:00'),
(8, 'avinash', 'avinash@gmail.com', 7657657576, '3fca379b3f0e322b7b7967bfcfb948ad', 2, '2020-03-26 07:06:32', '', '0000-00-00 00:00:00'),
(9, 'arfan', 'arfan78@gmail.com', 2433534647, '23937ab37ecba5fb51b39b0232ef86cd', 2, '2020-05-16 06:29:09', '', '0000-00-00 00:00:00'),
(10, 'arfan', 'diya@gmail.com', 4234233234, 'e1072367c91299aa4a5eb06294b2a668', 2, '2020-05-16 08:44:42', '', '0000-00-00 00:00:00'),
(11, 'aaaaaa', 'aa2@gmail.com', 7984747346, '80c9ef0fb86369cd25f90af27ef53a9e', 2, '2020-05-25 12:16:37', '', '0000-00-00 00:00:00'),
(12, 'nagaraj', 'naga@gmail.com', 938223838, '202cb962ac59075b964b07152d234b70', 2, '2020-05-25 12:18:07', '', '0000-00-00 00:00:00'),
(13, 'xxxxxxx', 'xxxxxxx@gmai.com', 3434324, '2467d3744600858cc9026d5ac6005305', 2, '2020-05-27 11:46:53', '', '0000-00-00 00:00:00'),
(14, 'sunil', 'sunul@gmail.com', 878977798, '48ccc87cd7afb85704a63e8d5953d326', 1, '2020-06-02 06:37:31', '', '0000-00-00 00:00:00'),
(15, 'arun', 'arun@gmail.com', 8989798797, '202cb962ac59075b964b07152d234b70', 1, '2020-06-02 06:39:07', '', '0000-00-00 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblcity`
--
ALTER TABLE `tblcity`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblcountry`
--
ALTER TABLE `tblcountry`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblenquiry`
--
ALTER TABLE `tblenquiry`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblfeedback`
--
ALTER TABLE `tblfeedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpage`
--
ALTER TABLE `tblpage`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblproperty`
--
ALTER TABLE `tblproperty`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblpropertytype`
--
ALTER TABLE `tblpropertytype`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblstate`
--
ALTER TABLE `tblstate`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbluser`
--
ALTER TABLE `tbluser`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblcity`
--
ALTER TABLE `tblcity`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tblcountry`
--
ALTER TABLE `tblcountry`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tblenquiry`
--
ALTER TABLE `tblenquiry`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tblfeedback`
--
ALTER TABLE `tblfeedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblpage`
--
ALTER TABLE `tblpage`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblproperty`
--
ALTER TABLE `tblproperty`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tblpropertytype`
--
ALTER TABLE `tblpropertytype`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tblstate`
--
ALTER TABLE `tblstate`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tbluser`
--
ALTER TABLE `tbluser`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
