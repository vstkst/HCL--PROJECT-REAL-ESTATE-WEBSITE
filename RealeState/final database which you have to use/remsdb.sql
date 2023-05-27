-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 29, 2020 at 02:07 PM
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
(1, 'Admin', 'karthik', 9845146313, 'karthik@gmail.com', '10bc229281c382d44789aeac9bfd7bea', '2020-01-16 07:15:32');

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
(1, 1, 2, 'Aligarh', '2020-06-07 07:19:38'),
(2, 1, 2, 'Varanasi', '2020-06-07 07:19:38'),
(3, 1, 2, 'Allahabad', '2020-06-07 07:19:38'),
(4, 1, 2, 'Ghaziabad', '2020-06-07 07:19:38'),
(5, 2, 2, 'New Castle', '2020-06-07 07:19:38'),
(6, 1, 2, 'Varanasi', '2020-06-07 07:19:38'),
(7, 2, 2, 'Mount Gambier', '2020-06-07 07:19:38'),
(8, 2, 2, 'Whyalla', '2020-06-07 07:19:38'),
(9, 2, 2, 'Brisbane', '2020-06-07 07:19:38'),
(10, 16, 16, 'Los Angeles', '2020-06-07 07:19:38'),
(11, 16, 16, 'San Francisco', '2020-06-07 07:19:38'),
(12, 16, 16, 'Miami', '2020-06-07 07:19:38'),
(13, 16, 16, 'Orlando', '2020-06-07 07:19:38'),
(14, 16, 16, 'queens', '2020-06-07 07:19:38'),
(15, 7, 18, 'ABC', '2020-06-07 07:19:38'),
(16, 1, 1, 'Patna', '2020-06-07 07:19:38'),
(18, 1, 4, 'New Delhi', '2020-06-07 07:19:38'),
(19, 1, 19, 'Udupi', '2020-07-26 06:53:55'),
(20, 1, 19, 'Bangalore', '2020-07-26 06:54:18'),
(21, 1, 19, 'Mysore', '2020-07-26 06:54:54'),
(22, 1, 19, 'Belagavi', '2020-07-26 06:55:14'),
(23, 1, 19, 'Uttara Kannada', '2020-07-26 06:55:41'),
(24, 1, 19, 'Chikkamangalore', '2020-07-26 06:57:58'),
(25, 1, 1, 'Kasargod', '2020-07-26 06:58:23'),
(26, 1, 19, 'Mangalore', '2020-07-26 10:34:16'),
(27, 1, 19, 'mangalore', '2020-08-02 09:21:35'),
(28, 1, 20, 'mangalore', '2020-08-02 09:26:39');

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
(1, 'India', '2020-06-07 07:19:38'),
(2, 'Australia', '2020-06-07 07:19:38'),
(3, 'Brazil', '2019-08-06 07:21:20'),
(4, 'China', '2020-06-07 07:19:38'),
(5, 'Germany', '2020-06-07 07:19:38'),
(6, 'Ireland', '2020-06-07 07:19:38'),
(7, 'Japan', '2020-06-07 07:19:38'),
(8, 'Kenya', '2020-06-07 07:19:38'),
(9, 'Malaysia', '2020-06-07 07:19:38'),
(10, 'Russia', '2020-06-07 07:19:38'),
(11, 'Singapore', '2020-06-07 07:19:38'),
(12, 'South Africa', '2020-06-07 07:19:38'),
(13, 'Thailand', '2020-06-07 07:19:38'),
(14, 'Turkey', '2020-06-07 07:19:38'),
(15, 'UK', '2020-06-07 07:19:38'),
(16, 'USA', '2020-06-07 07:19:38'),
(17, 'Zimbabwe', '2020-06-07 07:19:38'),
(18, 'Vietnam', '2020-06-07 07:19:38');

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
(1, 1, 'Akash Chandra', 'ac@gmail.com', 7894561239, 'Hi I want to buy this property', '283495176', '2020-07-30 05:36:13', 'Answer', 'Fine You will come tomorrow morning i.e 17 march', '2020-07-30 05:39:43'),
(2, 2, 'Ramesh Kumar', 'ramesh@gmail.com', 8989889898, 'Give me best prices of this property', '295692123', '2020-05-06 11:58:27', NULL, NULL, '2020-07-26 04:23:46'),
(3, 2, 'Akash', 'akash@gmail.com', 5656565656, 'hgfhf gy f ', '611895685', '2020-06-11 16:02:03', NULL, NULL, '2020-07-26 04:24:09'),
(4, 4, 'Simple user', 'testuser2@gmail.com', 1231231231, 'Test Enquiry', '558385754', '2020-06-09 19:00:26', 'Answer', 'This is for testing', '2020-06-11 19:28:09'),
(5, 2, 'Simple user', 'testuser2@gmail.com', 1231231231, 'I want some discount on this property.', '203492977', '2020-04-01 19:33:22', NULL, NULL, '2020-07-26 04:24:40'),
(6, 2, 'mm', 'kk@gmsil.com', 987988, 'k', '523199594', '2020-05-07 07:00:45', NULL, NULL, NULL),
(7, 5, 'bbbbbb', 'bvn@gmail.com', 7667767682, 'bbbbb', '523235616', '2020-05-16 06:21:39', NULL, NULL, NULL),
(8, 2, 'karthik', 'treebirdindia@gmail.com', 9009088098, 'hjvhjvv', '213721481', '2020-06-20 09:41:36', NULL, NULL, NULL),
(9, 13, 'ramesh kumar', 'ramesh1@gmail.com', 998976002, 'm', '274309379', '2020-07-26 10:22:04', NULL, NULL, NULL),
(10, 12, 'jitesh', 'jitesh@gmail.com', 9029029030, 'hi', '261162350', '2020-07-27 08:51:59', 'Answer', 'amswer', '2020-07-27 09:39:20'),
(11, 14, 'jitesh', 'jitesh@gmail.com', 9029029030, 'hi', '416188169', '2020-07-27 08:53:05', NULL, NULL, NULL),
(12, 19, 'sham', 'sham@gmail.com', 8978211119, 'Hi i want to buy this property.', '620625903', '2020-07-30 05:01:45', NULL, NULL, NULL),
(13, 1, 'Test', 'test@gmail.com', 8596234569, 'hi please i ned this property', '227094779', '2020-07-30 06:18:57', NULL, NULL, NULL),
(14, 1, 'ramesh kumar', 'ramesh1@gmail.com', 998976002, 'hi', '629998412', '2020-07-30 06:25:02', NULL, NULL, NULL),
(15, 20, 'sri', 'sri@gmail.com', 4444444444, 'call me', '463415575', '2020-08-02 08:45:25', NULL, NULL, NULL),
(16, 3, 'ram', 'ram@gmail.com', 9898989898, 'hi i want to buy', '497135658', '2020-09-20 07:47:47', NULL, NULL, NULL);

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
(2, 8, 6, 'nice', '2020-04-01 04:41:10', 1),
(3, 25, 15, 'Nice House ', '2020-07-27 08:43:24', 1),
(4, 25, 15, 'nice house', '2020-07-27 08:44:04', 1),
(5, 25, 13, 'Super i love this house', '2020-07-27 08:47:40', 0),
(6, 25, 7, 'cool', '2020-07-27 08:48:15', 1),
(7, 25, 3, 'Location is good', '2020-07-27 08:49:05', 1),
(8, 25, 14, 'Price is very high', '2020-07-27 08:49:45', 1),
(9, 26, 13, 'Nice Location and very good features.', '2020-07-29 10:29:07', 1),
(10, 26, 18, 'Good Looking area', '2020-07-29 10:46:06', 1);

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
(1, '1', '2 BHK Builder Floor', 'There two bed room with wide balcony.\r\n2. Drawing room with fall ceiling & Texture Paint\r\n3. Modern and modular kitchen with chimney and other\r\nattachments.\r\n4. two bath room with tile work upto roof height and branded\r\nfittings.\r\n5. Car parking and lift available.\r\n6. Wall to wall pop , texture paint & tiles work on front elevation.\r\n7. Vitrified tiles flooring, Kalinga wire, Branded\r\nelectrical fittings.\r\n8. Separate electric and water connections with appropriate\r\nsupply.\r\n9. Building structure according to height with branded fittings\r\nand a', 'Apartments', 'Sale', 'Uttam Nagar East', '2', '2', '1 (Out of 4 Floors)', '1 Covered', '520 sq ft', '500 sq ft', '24.1 Lac', '23 lac', 'https://goo.gl/maps/Sv2RyeE41fvaVuoo8', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d15558.902096690414!2d74.82670730663082!3d12.860996404854404!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3ba35bac4fa10269%3A0x35dddc4f1cfd1259!2sBunder%2C%20Mangalore%2C%20Karnataka!5e0!3m2!1sen!2sin!4v1589621109116!5m2!1sen!2sin', '629126491', 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 1, 0, 1, 0, 1, 1, '94d39c9ea3bacd079a48607a45d06e6d1565936640.jpg', 'bb2e708549fa0abc3608aeb12243a5471565937233.jpg', 'c65756e6c9ec41e207d132375b324c441565937949.jpg', '42be96d2f93056d5a5b106a9abed40051565937999.jpg', '338c3a6332a0200a77b7bfe0e9ea54721565938082.jpg', 'af63798a7deebebd06af935925cba9fb1565938126jpeg', 'Uttam Nagar ', '1', 'Patna', '5', '110096', 'uttam nagar east metro station', '2020-08-14 05:40:47'),
(2, '2', '3 BHK 800 Sq-ft Flat', 'This project looks stunning and it is developed with the attention to all the small details. You will always receive compliments for the embedded classy effect crafted in Rahil Homes. Rahil Homes is one of the popular residential projects that are located in Sector 24, Rohini, New Delhi. This project offers 1, 2, 3 & 4 BHK Builder Floor Flats with basic amenities for the comfort of residents. It is close to market and many educational institutions.', 'Apartments', 'Sale', 'Pune', '3', '2', '1 (Out of 4 Floors)', 'Yes', '800 sqft', '796 sqft', '68 lack', '65 lac', 'https://goo.gl/maps/ubrGSS3nRiYeaoQM8', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2876.869735278376!2d74.83896088261393!3d12.85283173081372!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3ba350a13025ca43%3A0xff493840cb0e889b!2sSrinivas%20Pre-University%20College%20Pandeshwar!5e1!3m2!1sen!2sin!4v1585917464299!5m2!1sen!2sin', '850464384', 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 'image5.jpg', 'cff8ad28cf40ebf4fbdd383fe546098d1565329707.jpg', '7fdc1a630c238af0815181f9faa190f51565329707.jpg', '5fb637257132ad8e014dff431326a5ac1565329707.jpg', 'b37cef0d9aff875f77888c297150b1421565329707.jpg', 'cff8ad28cf40ebf4fbdd383fe546098d1565329707.jpg', 'Sector 24 ', '1', 'Delhi', '4', '110096', 'sector 24 metro', '2020-05-02 05:48:27'),
(3, '1', '1Bedroom 1Bath', 'Very Nice House Park Facing Xu 1 New House All Facility Are Available Fully Green Area Very Close To Pari Chaowk Near Metro Additional Details : Having A Provision To Park 1 Cars. You Can Easily Park Your Car Inside The Compound There Is Also A Separate Washroom For Domestic Help. The House Has Boring Supply. The Kitchen Has Been Built With Modular Fittings.', 'Houses', 'Sale', 'Greater Noida', '1', '1', '1', '1 Covered, 1 Open', '67 Sq. Meter', '60 Sq. Meter  ', '43 Lac', '42 lac', 'https://goo.gl/maps/PKerSWrH75HyYTJ77', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d356830.9611747889!2d73.24367676653094!3d19.13653896291977!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3be7c6306644edc1%3A0x5da4ed8f8d648c69!2sMumbai%2C%20Maharashtra!5e1!3m2!1sen!2sin!4v1585916844603!5m2!1sen!2sin', '118245832', 0, 0, 1, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, '386bb628f5a3da130210ee422d57422e1565679999jpeg', 'f1d9313ad97dcfd6e2b37dbf805a5b4f1565679999jpeg', 'd4e6271f4e62bb1f7cf10004553f3efe1565679999.jpg', '1e6ae4ada992769567b71815f124fac51565679999.jpg', 'efc1a80c391be252d7d777a437f868701565679999.jpg', '588b11ad7a92d13777fe0be3adf633bf1565679999.jpg', 'Sector Xu-I Gr Noida, , Aligarh, U P', '1', 'Mangalore', '2', '4464644', 'Near Crossing Republic School', '2020-05-01 07:06:39'),
(4, '4', '5Bedrooms 7Baths', 'Prime location\r\nWalking distance from galleria market & iffco metro station\r\nElite designer villa\r\n5bhk\r\nWest facing\r\nHuge drawing and dinning\r\nGym area\r\nVrv system\r\nItalian marble in drawing room, rooms and bathroom\r\nModular kitchen & wardrobes with german fittings\r\nBathroom fittings of queo & kohler\r\nTerrace garden with bar and service counter and gazebo\r\nFront two side lawn with landscaping and gazebo\r\nWater body and fountain in the backyard\r\nServant room\r\n4 reserved car parking\r\nReady to move in for more details call us...', 'Villas', 'Sale', 'Sushant Lok Phase - 1', '5', '7', '3 floors', '2 Covered, 2 Open', '250.84 sq mtr', '245.76 sq mtr', '5.99 cr', '4.99 cr', 'https://goo.gl/maps/Sv2RyeE41fvaVuoo8', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3620578.209169955!2d76.92255495869746!3d27.602181091530163!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x390cc058324e6edb%3A0x96ce3b1cc2749c66!2sGBU%20Indoor%20Stadium!5e0!3m2!1skn!2sin!4v1595941718276!5m2!1skn!2sin', '869693774', 1, 1, 1, 0, 1, 1, 1, 0, 1, 1, 0, 0, 1, 1, 1, 1, 'af63798a7deebebd06af935925cba9fb1565680584jpeg', '31d460256ad31331e4d59d1377b2556b1565680584jpeg', 'd3a2a650c3ca6d9a7886a9e403bca6901565680584jpeg', 'd3812a144fafaa264821a7b1154ae44c1565680584jpeg', '0ac462ac57b106b3c62e8a310c2afe931565680584jpeg', 'c584f57049e5155743d83a21a0971b741565680584jpeg', 'A Block, Sushant Lok Phase - 1', '1', 'Varanasi', '2', '221001', 'Near Kendriya Vidalya', '2019-08-13 07:16:24'),
(5, '2', '5 BHK Residential House 4830 sqft', 'Non-Vegetarians, Without Company Lease, Pets allowed', 'Houses', 'Rent', 'Indoor', '5', '6', 'Ground (Out of 1 Floors)', '2 Covered, 2 Open', '4830 sq ft', '4200 sq ft', '45000', '43000', 'https://goo.gl/maps/Lg7iq7fPWGCKjkTG6', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d356830.9611747889!2d73.24367676653094!3d19.13653896291977!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3be7c6306644edc1%3A0x5da4ed8f8d648c69!2sMumbai%2C%20Maharashtra!5e1!3m2!1sen!2sin!4v1585916844603!5m2!1sen!2sin', '131599041', 1, 1, 0, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 1, 0, 1, 'b8a1a89aa25d962639c36371b8728c571565681197.jpg', 'af63798a7deebebd06af935925cba9fb1565681197jpeg', '31d460256ad31331e4d59d1377b2556b1565681197jpeg', 'b3dc4d2ca49fca95b80b4a2c66c833b81565681197.jpg', 'd4e6271f4e62bb1f7cf10004553f3efe1565681197.jpg', '0ac462ac57b106b3c62e8a310c2afe931565681197jpeg', 'D-510,', '7', 'queens', '18', '4654646', 'XYZ', '2020-04-08 07:26:37'),
(7, '9', 'Well designed high class pre decorated hose for sale', 'suprb house for sale ', 'Houses', 'Sale', 'mangalore', '2', '2', '1', 'no', '1200', '1200', '1000000', '434434', 'https://goo.gl/maps/49rC3PRzicFqvd967', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d356830.9611747889!2d73.24367676653094!3d19.13653896291977!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3be7c6306644edc1%3A0x5da4ed8f8d648c69!2sMumbai%2C%20Maharashtra!5e1!3m2!1sen!2sin!4v1585916844603!5m2!1sen!2sin', '453029723', 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '83abc196b0b9285110fb8ba52471f6951589613661.jpg', 'a7cd8d31a581e16846441d55c1cd2dfd1589613661.jpg', '629679d6a94fe849c75d530dacb7854b1589613661.jpg', '59145eacc8b789fb3f7abc2e84ce6cf71589613661.jpg', '59145eacc8b789fb3f7abc2e84ce6cf71589613661.jpg', '9788b25475f44dbd6686d0c3547a5d2b1589613661.jpg', 'kodialbail,mangalore dakshina kannada ', '1', 'Mangalore', '4', '43543532', 'vijaya bank', '2020-05-16 07:21:01'),
(8, '10', 'nice house for rent', 'hello contact me 8897392793', 'Villas', 'Sale', 'jnjnjn', '2', '2', 'Tailes', '0', '1020', '1500', '370000', '40000', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d15558.902096690414!2d74.82670730663088!3d12.860996404854404!2m3!1f', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3620578.209169955!2d76.92255495869746!3d27.602181091530163!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x390cc058324e6edb%3A0x96ce3b1cc2749c66!2sGBU%20Indoor%20Stadium!5e0!3m2!1skn!2sin!4v1595941718276!5m2!1skn!2sin', '526263689', 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '1be12dddcb339bd64b23f846f4e6d9711589619633.jpg', '83abc196b0b9285110fb8ba52471f6951589619633.jpg', 'a7cd8d31a581e16846441d55c1cd2dfd1589619633.jpg', '9788b25475f44dbd6686d0c3547a5d2b1589619633.jpg', '629679d6a94fe849c75d530dacb7854b1589619633.jpg', '9788b25475f44dbd6686d0c3547a5d2b1589619633.jpg', 'erewrwrmmmmmmmm', '1', 'Patna', '', '454565', 'mmmmmmmmmmmmm', '2020-05-16 09:00:33'),
(9, '10', 'Property For Sale well maintained and nice location', 'There two bed room with wide balcony.\r\n2. Drawing room with fall ceiling & Texture Paint\r\n3. Modern and modular kitchen with chimney and other\r\nattachments.\r\n4. two bath room with tile work upto roof height and branded\r\nfittings.\r\n5. Car parking and lift available.\r\n6. Wall to wall pop , texture paint & tiles work on front elevation.\r\n7. Vitrified tiles flooring, Kalinga wire, Branded\r\nelectrical fittings.\r\n8. Separate electric and water connections with appropriate\r\nsupply.\r\n9. Building structure according to height with branded fittings\r\nand a', 'Houses', 'Sale', 'Mangalore', '2', '2', 'Tailes', 'no', '1020', '1500', '370000', '320000', 'https://goo.gl/maps/87a3vrjBTLz6gfwz9', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d115132.8610723513!2d85.07300191831742!3d25.608175570492524!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x39f29937c52d4f05%3A0x831a0e05f607b270!2z4LKq4LKf4LON4LKo4LK-LCDgsqzgsr_gsrngsr7gsrDgs40!5e0!3m2!1skn!2sin!4v1595941863066!5m2!1skn!2sin', '339155392', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '1be12dddcb339bd64b23f846f4e6d9711589620688.jpg', '83abc196b0b9285110fb8ba52471f6951589620688.jpg', 'a7cd8d31a581e16846441d55c1cd2dfd1589620688.jpg', '629679d6a94fe849c75d530dacb7854b1589620688.jpg', '59145eacc8b789fb3f7abc2e84ce6cf71589620688.jpg', '9788b25475f44dbd6686d0c3547a5d2b1589620688.jpg', 'erewrwrmmmmmmmm', '1', 'Patna', '1', '454565', 'mmmmmmmmmmmmm', '2020-05-16 09:18:09'),
(10, '9', 'House is sale for Very Low Price in Kodialbail city', 'mmmmmmm', 'Houses', 'Sale', 'mangalore', '76', '65', 'b', 'o\no', '765675', '999', '678686', '675755', 'https://goo.gl/maps/omV9cfGVRGnUttPq8', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d15558.902096690414!2d74.82670730663082!3d12.860996404854404!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3ba35bac4fa10269%3A0x35dddc4f1cfd1259!2sBunder%2C%20Mangalore%2C%20Karnataka!5e0!3m2!1sen!2sin!4v1589621109116!5m2!1sen!2sin', '846309344', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, '1be12dddcb339bd64b23f846f4e6d9711589621250.jpg', '83abc196b0b9285110fb8ba52471f6951589621250.jpg', '0980599f2af4948144fd77df8387424d1589621250.jpg', '629679d6a94fe849c75d530dacb7854b1589621250.jpg', '9788b25475f44dbd6686d0c3547a5d2b1589621250.jpg', '629679d6a94fe849c75d530dacb7854b1589621250.jpg', 'kodialbail,mangalore dakshina kannada', '1', 'Mangalore', '2', '43543532', 'wwwwwwwww', '2020-05-16 09:27:30'),
(11, '10', 'magical house for rent  free', 'There three bed room with large balcony.\r\n2. Drawing room with fall ceiling & Texture Paint\r\n3. Modern and modular kitchen with chimney and other\r\nattachments.\r\n4. two bath room with tile work upto roof height and branded\r\nfittings.\r\n5. Car parking and lift available.\r\n6. Wall to wall pop , texture paint & tiles work on front elevation.\r\n7. Vitrified tiles flooring, Kalinga wire, Branded\r\nelectrical fittings.\r\n8. Separate electric and water connections with appropriate\r\nsupply.\r\n9. Building structure according to height with branded fittings\r\nand a', 'Houses', 'Sale', 'Mangalore', '2', '2', 'Tailes', 'no', '1020', '1500', '340000', '320000', 'https://goo.gl/maps/87a3vrjBTLz6gfwz9', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d15558.902096690414!2d74.82670730663082!3d12.860996404854404!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3ba35bac4fa10269%3A0x35dddc4f1cfd1259!2sBunder%2C%20Mangalore%2C%20Karnataka!5e0!3m2!1sen!2sin!4v1589621109116!5m2!1sen!2sin', '755796529', 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, '1be12dddcb339bd64b23f846f4e6d9711589621534.jpg', '83abc196b0b9285110fb8ba52471f6951589621534.jpg', 'a7cd8d31a581e16846441d55c1cd2dfd1589621534.jpg', '629679d6a94fe849c75d530dacb7854b1589621534.jpg', '629679d6a94fe849c75d530dacb7854b1589621534.jpg', '9788b25475f44dbd6686d0c3547a5d2b1589621534.jpg', 'erewrwrmmmmmmmm', '1', 'Varanasi', '2', '78876', 'mmmmmmmmmmmmm', '2020-05-16 09:32:14'),
(12, '19', '2 Bed room villa sale in suratkal', 'semi furnished villa at suratkal is avilable at just 30 lakhs contct me for more details.\r\n939939948', 'Villas', 'Sale', 'Suratkal', '2', '2', '1', 'no', '1920', '980', '350000', '320000', 'https://goo.gl/maps/XEzwUaBNWH4SCwzX6', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d62200.59247171921!2d74.77442740623118!3d13.001436654009439!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3ba35227302d022f%3A0xebf516c5ef8bee27!2z4LK44LOB4LKw4LKk4LON4LKV4LKy4LONLCDgsq7gsoLgspfgsrPgs4LgsrDgs4EsIOCyleCysOCzjeCyqOCyvuCyn-CylQ!5e0!3m2!1skn!2sin!4v1595740745235!5m2!1skn!2sin', '937988422', 0, 1, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '7fdc1a630c238af0815181f9faa190f51595741331.jpg', 'b34be672a23099531a5b144c964949d91595741331.jpg', '7fdc1a630c238af0815181f9faa190f51595741331.jpg', '30aa2ab869b68a3555a64c392e17c9181595741331.jpg', '658d7f6677c96a5935b2a8834d8c3ce21595741331.jpg', 'd0096ec6c83575373e3a21d129ff8fef1595741331.jpg', 'Suratkal ,Mangalore Dakshinakannada 570003', '1', 'Patna', '1', '454565', 'mmmmmmmmmmmmm', '2020-07-26 05:28:51'),
(13, '19', 'Semi-furnished house at Udupi 700 Sqr-feet', 'Udupi house ,neral to temple mosque and charch,and schools.hospital', 'Houses', 'Rent', 'udupi malpe', '1', '1', '1', 'no', '700', '', '9000', '8900', 'https://goo.gl/maps/PzXi7RwJMWpBS18T9', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d31056.081673576253!2d74.6874616718083!3d13.349640948943637!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3bbcbbf62d61c2ef%3A0xcaa27277c0bd7a16!2z4LKu4LKy4LON4LKq4LOGLCDgspXgsrDgs43gsqjgsr7gsp_gspU!5e0!3m2!1skn!2sin!4v1595758228150!5m2!1skn!2sin', '733469344', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '2269c13c308004375eff16cf2662cf071595758781.jpg', '7912ec97eb8d0f0ddb129dbfdd3b26741595758781jpeg', '7fdc1a630c238af0815181f9faa190f51595758781.jpg', '39c32ba2539c77693c131480068984541595758781.jpg', '68e3d0edab06e135f122b17f2711d5fd1595758781.jpg', 'fd91079a2a5169b8ef672d856a3083a31595758781.jpg', 'malpe udupi', '1', 'Udupi', '19', '788768', '', '2020-07-26 10:19:41'),
(14, '19', 'House for rent in Pandeswhwar', '2 bedroom house is available for rent in mangalore city pandeshwhwar junction', 'Houses', 'Rent', 'Pandeshwar mangalore', '2', '1', '1', 'no', '1020', '', '16000', 'starts from 15000', 'https://goo.gl/maps/WPKzgZwbrH32kthK7', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3889.7813350382107!2d74.83810724985553!3d12.857395188407402!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3ba35bb02947e2a1%3A0xb942d202113d02b8!2z4LKu4LKC4LKX4LKz4LOC4LKw4LOBIOCypuCyleCzjeCyt-Cyv-CyoyDgsqrgs4bgs4LgsrLgsr_gs5Xgsrjgs40g4LKg4LK-4LKj4LOG!5e0!3m2!1skn!2sin!4v1595760055787!5m2!1skn!2sin', '944892712', 0, 1, 0, 0, 0, 0, 1, 1, 0, 1, 0, 0, 0, 0, 1, 0, '55ccf27d26d7b23839986b6ae2e447ab1595760850.jpg', '5c642ec854a6a92a56d7ebf0b9648eea1595760850.jpg', '597b8463a2e41fb3166ac9b7f71ea1f51595760850.jpg', '9bf1ce1992803bd7bbcff3673e1e7f171595760850.jpg', '8a0700b9e67f78f8332f94bd8499d6f01595760850.jpg', '2269c13c308004375eff16cf2662cf071595760850.jpg', 'Pandeswara', '1', 'Mangalore', '19', '575001', '', '2020-07-26 10:54:10'),
(15, '20', 'House For sale in Marnamikatta ,Mangalore Dakshina kannada', 'house is available for sale at just 35 Lakhs', 'Houses', 'Sale', 'Mangalore marnamikatta', '2', '2', '1', 'no', '840', '', '35000 Lakhs only', 'starts from 35000', 'https://goo.gl/maps/PQztLDZuk7XjmbkHA', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d7779.845237680748!2d74.8511160743932!3d12.84827436374744!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3ba35bc145e7163d%3A0x51727288b7503d60!2z4LKu4LK-4LKw4LON4LKo4LKu4LK_4LKV4LKf4LON4LKf4LOGLCDgspzgs4bgsqrgs43gsqrgsr_gsqjgsq7gs4rgspfgsrDgs4Eg4LK14LK_4LKy4LOH4LKc4LONLCDgsq7gsoLgspfgsrPgs4LgsrDgs4EsIOCyleCysOCzjeCyqOCyvuCyn-CylSA1NzUwMDI!5e0!3m2!1skn!2sin!4v1595761684630!5m2!1skn!2sin', '650104846', 1, 0, 0, 1, 0, 1, 0, 1, 1, 0, 1, 1, 0, 0, 1, 0, '4edb7172bc504cbdd6340ed037e8ae631595762790jpeg', 'dc46de843f4c65830dc8523cd2454bb31595762790.jpg', '488a4f6641ca6369ee43cc19a40b70fb1595762790.jpg', 'b65c180e044e41676e20a7c3772df6b21595762790.jpg', '79bf94b033c6de3a8f7c6c6d4d5d55311595762790jpeg', '7fdc1a630c238af0815181f9faa190f51595762790.jpg', 'marnamikatta', '1', 'Mangalore', '19', '575002', 'Opposite railway track', '2020-07-26 11:26:30'),
(16, '20', '3BHK house for sale in marnamikatta', 'house is available for sale in marnamikatta contact me for more info', 'Houses', 'Sale', 'Mangalore marnamikatta', '3', '2', '1', 'no', '1240', '', '50 Laks', '5000000', 'https://goo.gl/maps/PQztLDZuk7XjmbkHA', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d7779.845237680748!2d74.8511160743932!3d12.84827436374744!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3ba35bc145e7163d%3A0x51727288b7503d60!2z4LKu4LK-4LKw4LON4LKo4LKu4LK_4LKV4LKf4LON4LKf4LOGLCDgspzgs4bgsqrgs43gsqrgsr_gsqjgsq7gs4rgspfgsrDgs4Eg4LK14LK_4LKy4LOH4LKc4LONLCDgsq7gsoLgspfgsrPgs4LgsrDgs4EsIOCyleCysOCzjeCyqOCyvuCyn-CylSA1NzUwMDI!5e0!3m2!1skn!2sin!4v1595761684630!5m2!1skn!2sin', '529827669', 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 1, 0, 1, 0, 1, 0, '488a4f6641ca6369ee43cc19a40b70fb1595768067.jpg', '4edb7172bc504cbdd6340ed037e8ae631595768067jpeg', 'dc46de843f4c65830dc8523cd2454bb31595768067.jpg', 'b65c180e044e41676e20a7c3772df6b21595768067.jpg', '7fdc1a630c238af0815181f9faa190f51595768067.jpg', '79bf94b033c6de3a8f7c6c6d4d5d55311595768067jpeg', 'marnamikatta', '1', 'Mangalore', '19', '575003', 'Opposite railway track', '2020-07-26 12:54:27'),
(17, '25', 'Luxury Apartment in Mangalore West Tokkottu is available for Sale', 'Luxury Apartment in Mangalore West Tokkottu is available for Sale near to hospitals,schools and colleges, shops malls,market and temple,church.', 'Houses', 'Sale', 'Tokkotu mangalore west', '3', '2', '1', 'no', '1020', '4.2 Cents', '3200000', 'starts from 3100000', 'https://goo.gl/maps/Wwvx3rBEu1nmoHkQ9', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d31123.171550783878!2d74.84210607144303!3d12.817639171239504!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3ba35c096952e5a9%3A0x6b49b89c076c30da!2z4LKk4LOK4LKV4LON4LKV4LOL4LKf4LON4LKf4LOBLCDgspXgsrDgs43gsqjgsr7gsp_gspUgNTc1MDIw!5e0!3m2!1skn!2sin!4v1595836558242!5m2!1skn!2sin', '502591069', 0, 1, 0, 0, 1, 0, 1, 1, 1, 0, 1, 0, 0, 1, 1, 0, '5a4b2dfc4eefaccbb3939633629af41b1595837023.jpg', 'e8ff29c07e8cb5e16fd33e0c253b4d901595837023.jpg', '630fe5ae7007cefab8778372de859c6b1595837023.jpg', '84b137ec1909c32612e9e4314acfded01595837023.jpg', '3fb2db6cccf4a23383383394b28b2b311595837023.jpg', '74dcb0d0ed68ceabb2b13c834b95e0fa1595837023.jpg', 'Mangalore West Thokkottu near thokkottu main bus-stand ', '1', 'Mangalore', '19', '575011', 'Near Tokkottu main private bus-stand', '2020-07-27 08:03:43'),
(18, '26', 'Mangalore Semi-furnished apartement Near mangalore city Near state-bank with good fecilities.', 'this flat is near to statbank bus stand and located at state bank city. call me for more information +91 82983892', 'Apartments', 'Sale', 'Statebank, Mangalore', '2', '2', '6th Floor', 'car park is available', '1020', '', '4700000', '4500000', 'https://goo.gl/maps/Y5y3DsnQrj7UVSVi9', 'https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d3889.695988558933!2d74.8346902!3d12.8629018!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3ba35bad11554c29%3A0xe495f45e288bb547!2z4LK44LON4LKf4LOG4LOV4LKf4LONIOCyrOCzjeCyr-CyvuCyguCyleCzjSDgsqzgsrjgs40g4LKo4LK_4LKy4LON4LKm4LK-4LKj!5e0!3m2!1skn!2sin!4v1596019866226!5m2!1skn!2sin', '136067514', 0, 1, 0, 0, 0, 1, 1, 0, 0, 1, 0, 0, 0, 1, 1, 1, '993a22a3eabf3975802539cd27f316a41596019477.jpg', 'e4ca6d4ba9db430e12635be4a332e75a1596019477.jpg', '8c060e5a9598f55e0c7996d41f01ea261596019477.jpg', 'e7f88858955e735855606d9282ec68411596019477.jpg', 'f87e1423ee15985ad9745c375bd133b21596019477.jpg', '495b288807e1b7083476e9e2402cdc4d1596019477.jpg', 'Statebabk, Mangalore west,near statebank-bustand', '1', 'Mangalore', '19', '575003', 'State bank Bus-stand', '2020-07-29 10:44:37'),
(19, '26', 'Appartment In Mangalore,Bondel For Just 34 Lakhs, Good Area,Good Facilities etc', 'Contact me for more informarion about this property.', 'Apartments', 'Sale', 'Bondel', '2', '1', '4th Floor', 'car parking is available', '1020', '', '3400000', '320000', 'https://goo.gl/maps/vW46tHhFfGEdjxnq8', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3888.8903096223644!2d74.86681631482145!3d12.91477099089313!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3ba350abcfd9387f%3A0x84f360b2338d0dc7!2sSwami%20Koragajja%20Seva%20Samithi!5e0!3m2!1skn!2sin!4v1596021130578!5m2!1skn!2sin', '428988758', 0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 1, 1, 1, '8c060e5a9598f55e0c7996d41f01ea261596021157.jpg', '495b288807e1b7083476e9e2402cdc4d1596021157.jpg', 'e7f88858955e735855606d9282ec68411596021157.jpg', '993a22a3eabf3975802539cd27f316a41596021157.jpg', 'e4ca6d4ba9db430e12635be4a332e75a1596021157.jpg', 'f87e1423ee15985ad9745c375bd133b21596021157.jpg', 'Bondel', '1', 'Mangalore', '19', '575007', 'koragajja temple', '2020-07-29 11:12:37'),
(20, '28', 'Testing property', 'ddddddddddddddddddddddddddd', 'Apartments', 'Sale', 'Mangalore', '2', '2', 'Tailes', 'no', '1920', '1500', '340000', '320000', 'https://goo.gl/maps/5Kct6ZqtCnyBQ6bM9', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d31123.236433332233!2d74.9037673714427!3d12.81711417126161!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3ba35ed83da2dc7b%3A0x2f9adec44efd878a!2z4LKV4LOK4LKo4LKc4LOGIOCyquCzjeCysOCyvuCyquCysOCzjSwg4LKV4LKw4LON4LKo4LK-4LKf4LKVIDU3NDE5OQ!5e0!3m2!1skn!2sin!4v1596357549515!5m2!1skn!2sin', '264626741', 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '993a22a3eabf3975802539cd27f316a41596357692.jpg', 'e4ca6d4ba9db430e12635be4a332e75a1596357692.jpg', 'f87e1423ee15985ad9745c375bd133b21596357692.jpg', 'e7f88858955e735855606d9282ec68411596357692.jpg', '8c060e5a9598f55e0c7996d41f01ea261596357692.jpg', 'e4ca6d4ba9db430e12635be4a332e75a1596357692.jpg', 'konaje', '1', 'Mangalore', '19', '78876', '', '2020-08-02 08:41:32');

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
(5, 'Lands', '2019-08-06 06:32:57');

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
(1, 1, 'Madhya Pradesh', '2020-06-07 07:19:38'),
(2, 1, 'karnataka', '2020-06-07 07:19:38'),
(3, 1, 'Tamilnadu', '2020-06-07 07:19:38'),
(4, 1, 'Delhi/NCR', '2020-06-07 07:19:38'),
(5, 1, 'Bihar', '2020-06-07 07:19:38'),
(6, 1, 'Uttrakhand', '2020-06-07 07:19:38'),
(7, 2, 'New South Wales', '2020-06-07 07:19:38'),
(8, 2, 'Queensland', '2020-06-07 07:19:38'),
(9, 2, 'South Australia', '2020-06-07 07:19:38'),
(10, 2, 'Victoria', '2020-06-07 07:19:38'),
(11, 2, 'Tasmania', '2020-06-07 07:19:38'),
(12, 16, 'California', '2020-06-07 07:19:38'),
(13, 16, 'Florida', '2020-06-07 07:19:38'),
(14, 16, 'New York', '2020-06-07 07:19:38'),
(15, 16, 'New Mexico', '2020-06-07 07:19:38'),
(16, 16, 'New Jersey.', '2020-06-07 07:19:38'),
(17, 16, 'Virginia', '2020-06-07 07:19:38'),
(18, 7, 'Tokyo', '2020-06-07 07:19:38'),
(19, 1, 'Karnataka', '2020-07-26 06:32:20'),
(20, 1, 'karnataka', '2020-08-02 09:26:19');

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
(15, 'arun', 'arun@gmail.com', 8989798797, '202cb962ac59075b964b07152d234b70', 1, '2020-06-02 06:39:07', '', '0000-00-00 00:00:00'),
(16, 'karthik', 'treebirdindia@gmail.com', 9845146313, '821f3157e1a3456bfe1a000a1adf0862', 1, '2020-07-04 11:32:43', '', '0000-00-00 00:00:00'),
(17, 'karthik', 'treebirdindia1@gmail.com', 9845, '4297f44b13955235245b2497399d7a93', 2, '2020-07-04 11:34:25', '', '0000-00-00 00:00:00'),
(18, 'ramesh', 'ramesh@gmail.com', 998839299, '4297f44b13955235245b2497399d7a93', 2, '2020-07-26 05:11:42', '', '0000-00-00 00:00:00'),
(19, 'ramesh kumar', 'ramesh1@gmail.com', 998976002, '4297f44b13955235245b2497399d7a93', 2, '2020-07-26 05:12:29', '', '0000-00-00 00:00:00'),
(20, 'suresh', 'suresh@gmail.com', 998976009, '827ccb0eea8a706c4c34a16891f84e7b', 1, '2020-07-26 11:02:39', '', '0000-00-00 00:00:00'),
(21, 'mahesh1', 'mahesh@gmail.com', 9989760056, '8b353d5cc07e13577608711f4602fcb7', 2, '2020-07-27 06:35:27', '', '0000-00-00 00:00:00'),
(22, 'Dinesh H', 'dinesh123@gmail.com', 90959004, '4297f44b13955235245b2497399d7a93', 2, '2020-07-27 06:36:55', '', '0000-00-00 00:00:00'),
(23, 'arfan', 'arfan89@gmail.com', 9890889850, '49bd83a14c803aa92874669a6094ab2b', 1, '2020-07-27 07:48:53', '', '0000-00-00 00:00:00'),
(24, 'kumar', 'kumar@gmail.com', 8999999999, '35fa0fe085f231a4e2bdbfbb610d8621', 1, '2020-07-27 07:50:06', '', '0000-00-00 00:00:00'),
(25, 'jitesh', 'jitesh@gmail.com', 9029029030, 'c9097214fa6e2d5935b19ad1e99f3464', 1, '2020-07-27 07:51:39', '', '0000-00-00 00:00:00'),
(26, 'sham', 'sham@gmail.com', 8978211119, '96e79218965eb72c92a549dd5a330112', 2, '2020-07-29 10:27:45', '', '0000-00-00 00:00:00'),
(27, 'sri', 'sri@gmail.com', 4444444444, '4297f44b13955235245b2497399d7a93', 1, '2020-07-30 10:51:13', '', '0000-00-00 00:00:00'),
(28, 'ownerthree', 'owner3@gmail.com', 8888888888, 'e10adc3949ba59abbe56e057f20f883e', 1, '2020-08-02 08:24:01', '', '0000-00-00 00:00:00'),
(29, 'ram', 'ram@gmail.com', 9898989898, '4297f44b13955235245b2497399d7a93', 1, '2020-09-20 07:43:48', '', '0000-00-00 00:00:00');

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
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `tblcountry`
--
ALTER TABLE `tblcountry`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tblenquiry`
--
ALTER TABLE `tblenquiry`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tblfeedback`
--
ALTER TABLE `tblfeedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tblpage`
--
ALTER TABLE `tblpage`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblproperty`
--
ALTER TABLE `tblproperty`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tblpropertytype`
--
ALTER TABLE `tblpropertytype`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tblstate`
--
ALTER TABLE `tblstate`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tbluser`
--
ALTER TABLE `tbluser`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
