-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 20, 2022 at 12:22 PM
-- Server version: 5.7.38
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `digitald_uprank`
--

-- --------------------------------------------------------

--
-- Table structure for table `admission`
--

CREATE TABLE `admission` (
  `id` int(11) NOT NULL,
  `institute_id` int(11) NOT NULL,
  `fname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dob` date NOT NULL,
  `age` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `gender` enum('male','female') COLLATE utf8_unicode_ci NOT NULL,
  `mobile` varchar(14) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `guardian_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `guardian_mobile` varchar(14) COLLATE utf8_unicode_ci NOT NULL,
  `guardian_email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `current_address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `permanent_address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `highest_education` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `university` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `result` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `percentage` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `year` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `course` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `admission_date` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `total_fees` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `profile_pic` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `admission`
--

INSERT INTO `admission` (`id`, `institute_id`, `fname`, `mname`, `lname`, `dob`, `age`, `gender`, `mobile`, `email`, `guardian_name`, `guardian_mobile`, `guardian_email`, `current_address`, `permanent_address`, `highest_education`, `university`, `result`, `percentage`, `year`, `course`, `batch`, `start_date`, `end_date`, `admission_date`, `total_fees`, `password`, `profile_pic`) VALUES
(1, 1, 'Ganesh', '', 'Pawar', '2003-08-01', '17', 'male', '1234567890', 'g@gmail.com', 'Ramesh Pawar', '5678544467', 'ramesh@gmail.com', 'Washim', 'Washim', '10th', '', '', '', '', '1', '1', '2019-10-01', '2020-10-01', '', '', 'MTIzNDU=', '1598679956806.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `admission_batch`
--

CREATE TABLE `admission_batch` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `std` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `division` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `subject` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `timing` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `admission_education`
--

CREATE TABLE `admission_education` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `degree` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `admission_fees`
--

CREATE TABLE `admission_fees` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `total_fees` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `concession` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `milestone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `payment_mode` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `all_cities`
--

CREATE TABLE `all_cities` (
  `city_name` text COLLATE utf8_unicode_ci,
  `city_code` text COLLATE utf8_unicode_ci,
  `state_code` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `all_cities`
--

INSERT INTO `all_cities` (`city_name`, `city_code`, `state_code`) VALUES
('Agartala', '3201', '32'),
('Ambasa', '3202', '32'),
('Bampurbari', '3203', '32'),
('Belonia', '3204', '32'),
('Dhalai', '3205', '32'),
('Dharam Nagar', '3206', '32'),
('Kailashahar', '3207', '32'),
('Kamal Krishnabari', '3208', '32'),
('Khopaiyapara', '3209', '32'),
('Khowai', '3210', '32'),
('Phuldungsei', '3211', '32'),
('Radha Kishore Pur', '3212', '32'),
('Tripura', '3213', '32'),
('Chennai', '3101', '31'),
('Chidambaram', '3102', '31'),
('Chingleput', '3103', '31'),
('Coimbatore', '3104', '31'),
('Courtallam', '3105', '31'),
('Cuddalore', '3106', '31'),
('Dharmapuri', '3107', '31'),
('Dindigul', '3108', '31'),
('Erode', '3109', '31'),
('Hosur', '3110', '31'),
('Kanchipuram', '3111', '31'),
('Kanyakumari', '3112', '31'),
('Karaikudi', '3113', '31'),
('Karur', '3114', '31'),
('Kodaikanal', '3115', '31'),
('Kovilpatti', '3116', '31'),
('Krishnagiri', '3117', '31'),
('Kumbakonam', '3118', '31'),
('Madurai', '3119', '31'),
('Mayiladuthurai', '3120', '31'),
('Nagapattinam', '3121', '31'),
('Nagarcoil', '3122', '31'),
('Namakkal', '3123', '31'),
('Neyveli', '3124', '31'),
('Nilgiris', '3125', '31'),
('Ooty', '3126', '31'),
('Palani', '3127', '31'),
('Perambalur', '3128', '31'),
('Pollachi', '3129', '31'),
('Pudukkottai', '3130', '31'),
('Rajapalayam', '3131', '31'),
('Ramanathapuram', '3132', '31'),
('Salem', '3133', '31'),
('Sivaganga', '3134', '31'),
('Sivakasi', '3135', '31'),
('Thanjavur', '3136', '31'),
('Theni', '3137', '31'),
('Thoothukudi', '3138', '31'),
('Tiruchirappalli', '3139', '31'),
('Tirunelveli', '3140', '31'),
('Tirupur', '3141', '31'),
('Tiruvallur', '3142', '31'),
('Tiruvannamalai', '3143', '31'),
('Tiruvarur', '3144', '31'),
('Trichy', '3145', '31'),
('Tuticorin', '3146', '31'),
('Vellore', '3147', '31'),
('Villupuram', '3148', '31'),
('Virudhunagar', '3149', '31'),
('Yercaud', '3150', '31'),
('Barmiak', '3001', '30'),
('Be', '3002', '30'),
('Bhurtuk', '3003', '30'),
('Chhubakha', '3004', '30'),
('Chidam', '3005', '30'),
('Chubha', '3006', '30'),
('Chumikteng', '3007', '30'),
('Dentam', '3008', '30'),
('Dikchu', '3009', '30'),
('Dzongri', '3010', '30'),
('Gangtok', '3011', '30'),
('Gauzing', '3012', '30'),
('Gyalshing', '3013', '30'),
('Hema', '3014', '30'),
('Kerung', '3015', '30'),
('Lachen', '3016', '30'),
('Lachung', '3017', '30'),
('Lema', '3018', '30'),
('Lingtam', '3019', '30'),
('Lungthu', '3020', '30'),
('Mangan', '3021', '30'),
('Namchi', '3022', '30'),
('Namthang', '3023', '30'),
('Nanga', '3024', '30'),
('Nantang', '3025', '30'),
('Naya Bazar', '3026', '30'),
('Padamachen', '3027', '30'),
('Pakhyong', '3028', '30'),
('Pemayangtse', '3029', '30'),
('Phensang', '3030', '30'),
('Rangli', '3031', '30'),
('Rinchingpong', '3032', '30'),
('Sakyong', '3033', '30'),
('Samdong', '3034', '30'),
('Singtam', '3035', '30'),
('Siniolchu', '3035', '30'),
('Sombari', '3036', '30'),
('Soreng', '3037', '30'),
('Sosing', '3038', '30'),
('Tekhug', '3039', '30'),
('Temi', '3040', '30'),
('Tsetang', '3041', '30'),
('Tsomgo', '3042', '30'),
('Tumlong', '3043', '30'),
('Yangang', '3044', '30'),
('Yumtang', '3045', '30'),
('Ajmer', '2901', '29'),
('Alwar', '2902', '29'),
('Banswara', '2903', '29'),
('Baran', '2904', '29'),
('Barmer', '2905', '29'),
('Bharatpur', '2906', '29'),
('Bhilwara', '2907', '29'),
('Bikaner', '2908', '29'),
('Bundi', '2909', '29'),
('Chittorgarh', '2910', '29'),
('Churu', '2911', '29'),
('Dausa', '2912', '29'),
('Dholpur', '2913', '29'),
('Dungarpur', '2914', '29'),
('Hanumangarh', '2915', '29'),
('Jaipur', '2916', '29'),
('Jaisalmer', '2917', '29'),
('Jalore', '2918', '29'),
('Jhalawar', '2919', '29'),
('Jhunjhunu', '2920', '29'),
('Jodhpur', '2921', '29'),
('Karauli', '2922', '29'),
('Kota', '2923', '29'),
('Nagaur', '2924', '29'),
('Pali', '2925', '29'),
('Pilani', '2926', '29'),
('Rajsamand', '2927', '29'),
('Sawai Madhopur', '2928', '29'),
('Sikar', '2929', '29'),
('Sirohi', '2930', '29'),
('Sri Ganganagar', '2931', '29'),
('Tonk', '2932', '29'),
('Udaipur', '2933', '29'),
('Amritsar', '2801', '28'),
('Barnala', '2801', '28'),
('Bathinda', '2801', '28'),
('Faridkot', '2801', '28'),
('Fatehgarh Sahib', '2801', '28'),
('Ferozepur', '2801', '28'),
('Gurdaspur', '2801', '28'),
('Hoshiarpur', '2801', '28'),
('Jalandhar', '2801', '28'),
('Kapurthala', '2801', '28'),
('Ludhiana', '2801', '28'),
('Mansa', '2801', '28'),
('Moga', '2801', '28'),
('Muktsar', '2801', '28'),
('Nawanshahr', '2801', '28'),
('Pathankot', '2801', '28'),
('Patiala', '2801', '28'),
('Rupnagar', '2801', '28'),
('Sangrur', '2801', '28'),
('SAS Nagar', '2801', '28'),
('Tarn Taran', '2801', '28'),
('Bahur', '2701', '27'),
('Karaikal', '2701', '27'),
('Mahe', '2701', '27'),
('Pondicherry', '2701', '27'),
('Purnankuppam', '2701', '27'),
('Valudavur', '2701', '27'),
('Villianur', '2701', '27'),
('Yanam', '2701', '27'),
('Angul', '2601', '26'),
('Balangir', '2602', '26'),
('Balasore', '2603', '26'),
('Baleswar', '2604', '26'),
('Bargarh', '2605', '26'),
('Berhampur', '2606', '26'),
('Bhadrak', '2607', '26'),
('Bhubaneswar', '2608', '26'),
('Boudh', '2609', '26'),
('Cuttack', '2610', '26'),
('Deogarh', '2611', '26'),
('Dhenkanal', '2612', '26'),
('Gajapati', '2613', '26'),
('Ganjam', '2614', '26'),
('Jagatsinghapur', '2615', '26'),
('Jajpur', '2616', '26'),
('Jharsuguda', '2617', '26'),
('Kalahandi', '2618', '26'),
('Kandhamal', '2619', '26'),
('Kendrapara', '2620', '26'),
('Kendujhar', '2621', '26'),
('Khordha', '2622', '26'),
('Koraput', '2623', '26'),
('Malkangiri', '2624', '26'),
('Mayurbhanj', '2625', '26'),
('Nabarangapur', '2626', '26'),
('Nayagarh', '2627', '26'),
('Nuapada', '2628', '26'),
('Puri', '2629', '26'),
('Rayagada', '2630', '26'),
('Rourkela', '2631', '26'),
('Sambalpur', '2632', '26'),
('Subarnapur', '2633', '26'),
('Sundergarh', '2634', '26'),
('Dimapur', '2501', '25'),
('Kohima', '2502', '25'),
('Mokokchung', '2503', '25'),
('Mon', '2504', '25'),
('Phek', '2505', '25'),
('Tuensang', '2506', '25'),
('Wokha', '2507', '25'),
('Zunheboto', '2508', '25'),
('Aizawl', '2401', '24'),
('Champhai', '2402', '24'),
('Kolasib', '2403', '24'),
('Lawngtlai', '2404', '24'),
('Lunglei', '2405', '24'),
('Mamit', '2406', '24'),
('Saiha', '2407', '24'),
('Serchhip', '2408', '24'),
('East Garo Hills', '2301', '23'),
('East Khasi Hills', '2302', '23'),
('Jaintia Hills', '2303', '23'),
('Ri Bhoi', '2304', '23'),
('Shillong', '2305', '23'),
('South Garo Hills', '2306', '23'),
('West Garo Hills', '2307', '23'),
('West Khasi Hills', '2308', '23'),
('Bishnupur', '2201', '22'),
('Chandel', '2202', '22'),
('Churachandpur', '2203', '22'),
('Imphal East', '2204', '22'),
('Imphal West', '2205', '22'),
('Senapati', '2206', '22'),
('Tamenglong', '2207', '22'),
('Thoubal', '2208', '22'),
('Ukhrul', '2209', '22'),
('Ahmednagar', '2101', '21'),
('Akola', '2102', '21'),
('Amravati', '2103', '21'),
('Aurangabad', '2104', '21'),
('Beed', '2105', '21'),
('Bhandara', '2106', '21'),
('Buldhana', '2107', '21'),
('Chandrapur', '2108', '21'),
('Dhule', '2109', '21'),
('Gadchiroli', '2110', '21'),
('Gondia', '2111', '21'),
('Hingoli', '2112', '21'),
('Jalgaon', '2113', '21'),
('Jalna', '2114', '21'),
('Kolhapur', '2115', '21'),
('Latur', '2116', '21'),
('Mahabaleshwar', '2117', '21'),
('Mumbai', '2118', '21'),
('Mumbai City', '2119', '21'),
('Mumbai Suburban', '2120', '21'),
('Nagpur', '2121', '21'),
('Nanded', '2122', '21'),
('Nandurbar', '2123', '21'),
('Nashik', '2124', '21'),
('Osmanabad', '2125', '21'),
('Parbhani', '2126', '21'),
('Pune', '2127', '21'),
('Raigad', '2128', '21'),
('Ratnagiri', '2129', '21'),
('Sangli', '2130', '21'),
('Satara', '2131', '21'),
('Sholapur', '2132', '21'),
('Sindhudurg', '2133', '21'),
('Thane', '2134', '21'),
('Wardha', '2135', '21'),
('Washim', '2136', '21'),
('Yavatmal', '2137', '21'),
('Anuppur', '2001', '20'),
('Ashoknagar', '2002', '20'),
('Balaghat', '2003', '20'),
('Barwani', '2004', '20'),
('Betul', '2005', '20'),
('Bhind', '2006', '20'),
('Bhopal', '2007', '20'),
('Burhanpur', '2008', '20'),
('Chhatarpur', '2009', '20'),
('Chhindwara', '2010', '20'),
('Damoh', '2011', '20'),
('Datia', '2012', '20'),
('Dewas', '2013', '20'),
('Dhar', '2014', '20'),
('Dindori', '2015', '20'),
('Guna', '2016', '20'),
('Gwalior', '2017', '20'),
('Harda', '2018', '20'),
('Hoshangabad', '2019', '20'),
('Indore', '2020', '20'),
('Jabalpur', '2021', '20'),
('Jagdalpur', '2022', '20'),
('Jhabua', '2023', '20'),
('Katni', '2024', '20'),
('Khandwa', '2025', '20'),
('Khargone', '2026', '20'),
('Mandla', '2027', '20'),
('Mandsaur', '2028', '20'),
('Morena', '2029', '20'),
('Narsinghpur', '2030', '20'),
('Neemuch', '2031', '20'),
('Panna', '2032', '20'),
('Raisen', '2033', '20'),
('Rajgarh', '2034', '20'),
('Ratlam', '2035', '20'),
('Rewa', '2036', '20'),
('Sagar', '2037', '20'),
('Satna', '2038', '20'),
('Sehore', '2039', '20'),
('Seoni', '2040', '20'),
('Shahdol', '2041', '20'),
('Shajapur', '2042', '20'),
('Sheopur', '2043', '20'),
('Shivpuri', '2044', '20'),
('Sidhi', '2045', '20'),
('Tikamgarh', '2046', '20'),
('Ujjain', '2047', '20'),
('Umaria', '2048', '20'),
('Vidisha', '2049', '20'),
('Agatti Island', '1901', '19'),
('Bingaram Island', '1902', '19'),
('Bitra Island', '1903', '19'),
('Chetlat Island', '1904', '19'),
('Kadmat Island', '1905', '19'),
('Kalpeni Island', '1906', '19'),
('Kavaratti Island', '1907', '19'),
('Kiltan Island', '1908', '19'),
('Lakshadweep Sea', '1909', '19'),
('Minicoy Island', '1910', '19'),
('North Island', '1911', '19'),
('South Island', '1912', '19'),
('Alappuzha', '1801', '18'),
('Alleppey', '1802', '18'),
('Alwaye', '1803', '18'),
('Ernakulam', '1804', '18'),
('Idukki', '1805', '18'),
('Kannur', '1806', '18'),
('Kasargod', '1807', '18'),
('Kochi', '1808', '18'),
('Kollam', '1809', '18'),
('Kottayam', '1810', '18'),
('Kovalam', '1811', '18'),
('Kozhikode', '1812', '18'),
('Malappuram', '1813', '18'),
('Palakkad', '1814', '18'),
('Pathanamthitta', '1815', '18'),
('Perumbavoor', '1816', '18'),
('Thiruvananthapuram', '1817', '18'),
('Thrissur', '1818', '18'),
('Trichur', '1819', '18'),
('Trivandrum', '1820', '18'),
('Wayanad', '1821', '18'),
('Bagalkot', '1701', '17'),
('Bangalore', '1702', '17'),
('Bangalore Rural', '1703', '17'),
('Belgaum', '1704', '17'),
('Bellary', '1705', '17'),
('Bhatkal', '1706', '17'),
('Bidar', '1707', '17'),
('Bijapur', '1708', '17'),
('Chamrajnagar', '1709', '17'),
('Chickmagalur', '1710', '17'),
('Chikballapur', '1711', '17'),
('Chitradurga', '1712', '17'),
('Dakshina Kannada', '1713', '17'),
('Davanagere', '1714', '17'),
('Dharwad', '1715', '17'),
('Gadag', '1716', '17'),
('Gulbarga', '1717', '17'),
('Hampi', '1718', '17'),
('Hassan', '1719', '17'),
('Haveri', '1720', '17'),
('Hospet', '1721', '17'),
('Karwar', '1722', '17'),
('Kodagu', '1723', '17'),
('Kolar', '1724', '17'),
('Koppal', '1725', '17'),
('Madikeri', '1726', '17'),
('Mandya', '1727', '17'),
('Mangalore', '1728', '17'),
('Manipal', '1729', '17'),
('Mysore', '1730', '17'),
('Raichur', '1731', '17'),
('Shimoga', '1732', '17'),
('Sirsi', '1733', '17'),
('Sringeri', '1734', '17'),
('Srirangapatna', '1735', '17'),
('Tumkur', '1736', '17'),
('Udupi', '1737', '17'),
('Uttara Kannada', '1738', '17'),
('Bokaro', '1601', '16'),
('Chatra', '1602', '16'),
('Deoghar', '1603', '16'),
('Dhanbad', '1604', '16'),
('Dumka', '1605', '16'),
('East Singhbhum', '1606', '16'),
('Garhwa', '1607', '16'),
('Giridih', '1608', '16'),
('Godda', '1609', '16'),
('Gumla', '1610', '16'),
('Hazaribag', '1611', '16'),
('Jamtara', '1612', '16'),
('Koderma', '1613', '16'),
('Latehar', '1614', '16'),
('Lohardaga', '1615', '16'),
('Pakur', '1616', '16'),
('Palamu', '1617', '16'),
('Ranchi', '1618', '16'),
('Sahibganj', '1619', '16'),
('Seraikela', '1620', '16'),
('Simdega', '1621', '16'),
('West Singhbhum', '1622', '16'),
('Anantnag', '1501', '15'),
('Baramulla', '1502', '15'),
('Budgam', '1503', '15'),
('Doda', '1504', '15'),
('Jammu', '1505', '15'),
('Kargil', '1506', '15'),
('Kathua', '1507', '15'),
('Kupwara', '1508', '15'),
('Leh', '1509', '15'),
('Poonch', '1510', '15'),
('Pulwama', '1511', '15'),
('Rajauri', '1512', '15'),
('Srinagar', '1513', '15'),
('Udhampur', '1514', '15'),
('Bilaspur', '1401', '14'),
('Chamba', '1402', '14'),
('Dalhousie', '1403', '14'),
('Hamirpur', '1404', '14'),
('Kangra', '1405', '14'),
('Kinnaur', '1406', '14'),
('Kullu', '1407', '14'),
('Lahaul &amp; Spiti', '1408', '14'),
('Mandi', '1409', '14'),
('Shimla', '1410', '14'),
('Sirmaur', '1411', '14'),
('Solan', '1412', '14'),
('Una', '1413', '14'),
('Ambala', '1301', '13'),
('Bhiwani', '1302', '13'),
('Faridabad', '1303', '13'),
('Fatehabad', '1304', '13'),
('Gurgaon', '1305', '13'),
('Hisar', '1306', '13'),
('Jhajjar', '1307', '13'),
('Jind', '1308', '13'),
('Kaithal', '1309', '13'),
('Karnal', '1310', '13'),
('Kurukshetra', '1311', '13'),
('Mahendragarh', '1312', '13'),
('Mewat', '1313', '13'),
('Panchkula', '1314', '13'),
('Panipat', '1315', '13'),
('Rewari', '1316', '13'),
('Rohtak', '1317', '13'),
('Sirsa', '1318', '13'),
('Sonipat', '1319', '13'),
('Yamunanagar', '1320', '13'),
('Ahmedabad', '1201', '12'),
('Amreli', '1202', '12'),
('Anand', '1203', '12'),
('Banaskantha', '1204', '12'),
('Baroda', '1205', '12'),
('Bharuch', '1206', '12'),
('Bhavnagar', '1207', '12'),
('Dahod', '1208', '12'),
('Dang', '1209', '12'),
('Dwarka', '1210', '12'),
('Gandhinagar', '1211', '12'),
('Jamnagar', '1212', '12'),
('Junagadh', '1213', '12'),
('Kheda', '1214', '12'),
('Kutch', '1215', '12'),
('Mehsana', '1216', '12'),
('Nadiad', '1217', '12'),
('Narmada', '1218', '12'),
('Navsari', '1219', '12'),
('Panchmahals', '1220', '12'),
('Patan', '1221', '12'),
('Porbandar', '1222', '12'),
('Rajkot', '1223', '12'),
('Sabarkantha', '1224', '12'),
('Surat', '1225', '12'),
('Surendranagar', '1226', '12'),
('Vadodara', '1227', '12'),
('Valsad', '1228', '12'),
('Vapi', '1229', '12'),
('Canacona', '1101', '11'),
('Candolim', '1102', '11'),
('Chinchinim', '1103', '11'),
('Cortalim', '1104', '11'),
('Goa', '1105', '11'),
('Jua', '1106', '11'),
('Madgaon', '1107', '11'),
('Mahem', '1108', '11'),
('Mapuca', '1109', '11'),
('Marmagao', '1110', '11'),
('Panji', '1111', '11'),
('Ponda', '1112', '11'),
('Sanvordem', '1113', '11'),
('Terekhol', '1114', '11'),
('Central Delhi', '1001', '10'),
('East Delhi', '1002', '10'),
('New Delhi', '1003', '10'),
('North Delhi', '1004', '10'),
('North East Delhi', '1005', '10'),
('North West Delhi', '1006', '10'),
('Old Delhi', '1007', '10'),
('South Delhi', '1008', '10'),
('South West Delhi', '1009', '10'),
('West Delhi', '1010', '10'),
('Brancavare', '901', '9'),
('Dagasi', '902', '9'),
('Daman', '903', '9'),
('Diu', '904', '9'),
('Magarvara', '905', '9'),
('Nagwa', '906', '9'),
('Pariali', '907', '9'),
('Passo Covo', '908', '9'),
('Amal', '801', '8'),
('Amli', '802', '8'),
('Bedpa', '803', '8'),
('Chikhli', '804', '8'),
('Dadra &amp; Nagar Haveli', '805', '8'),
('Dahikhed', '806', '8'),
('Dolara', '807', '8'),
('Galonda', '808', '8'),
('Kanadi', '809', '8'),
('Karchond', '810', '8'),
('Khadoli', '811', '8'),
('Kharadpada', '812', '8'),
('Kherabari', '813', '8'),
('Kherdi', '814', '8'),
('Kothar', '815', '8'),
('Luari', '816', '8'),
('Mashat', '817', '8'),
('Rakholi', '818', '8'),
('Rudana', '819', '8'),
('Saili', '820', '8'),
('Sili', '821', '8'),
('Silvassa', '822', '8'),
('Sindavni', '823', '8'),
('Udva', '824', '8'),
('Umbarkoi', '825', '8'),
('Vansda', '826', '8'),
('Vasona', '827', '8'),
('Velugam', '828', '8'),
('Bastar', '701', '7'),
('Bhilai', '702', '7'),
('Bijapur', '703', '7'),
('Bilaspur', '704', '7'),
('Dhamtari', '705', '7'),
('Durg', '706', '7'),
('Janjgir-Champa', '707', '7'),
('Jashpur', '708', '7'),
('Kabirdham-Kawardha', '709', '7'),
('Korba', '710', '7'),
('Korea', '711', '7'),
('Mahasamund', '712', '7'),
('Narayanpur', '713', '7'),
('Norh Bastar-Kanker', '714', '7'),
('Raigarh', '715', '7'),
('Raipur', '716', '7'),
('Rajnandgaon', '717', '7'),
('South Bastar-Dantewada', '718', '7'),
('Surguja', '719', '7'),
('Chandigarh', '601', '6'),
('Mani Marja', '602', '6'),
('Araria', '501', '5'),
('Aurangabad', '502', '5'),
('Banka', '503', '5'),
('Begusarai', '504', '5'),
('Bhagalpur', '505', '5'),
('Bhojpur', '506', '5'),
('Buxar', '507', '5'),
('Darbhanga', '508', '5'),
('East Champaran', '509', '5'),
('Gaya', '510', '5'),
('Gopalganj', '511', '5'),
('Jamshedpur', '512', '5'),
('Jamui', '513', '5'),
('Jehanabad', '514', '5'),
('Kaimur (Bhabua)', '515', '5'),
('Katihar', '516', '5'),
('Khagaria', '517', '5'),
('Kishanganj', '518', '5'),
('Lakhisarai', '519', '5'),
('Madhepura', '520', '5'),
('Madhubani', '521', '5'),
('Munger', '522', '5'),
('Muzaffarpur', '523', '5'),
('Nalanda', '524', '5'),
('Nawada', '525', '5'),
('Patna', '526', '5'),
('Purnia', '527', '5'),
('Rohtas', '528', '5'),
('Saharsa', '529', '5'),
('Samastipur', '530', '5'),
('Saran', '531', '5'),
('Sheikhpura', '532', '5'),
('Sheohar', '533', '5'),
('Sitamarhi', '534', '5'),
('Siwan', '535', '5'),
('Supaul', '536', '5'),
('Vaishali', '537', '5'),
('West Champaran', '538', '5'),
('Barpeta', '401', '4'),
('Bongaigaon', '402', '4'),
('Cachar', '403', '4'),
('Darrang', '404', '4'),
('Dhemaji', '405', '4'),
('Dhubri', '406', '4'),
('Dibrugarh', '407', '4'),
('Goalpara', '408', '4'),
('Golaghat', '409', '4'),
('Guwahati', '410', '4'),
('Hailakandi', '411', '4'),
('Jorhat', '412', '4'),
('Kamrup', '413', '4'),
('Karbi Anglong', '414', '4'),
('Karimganj', '415', '4'),
('Kokrajhar', '416', '4'),
('Lakhimpur', '417', '4'),
('Marigaon', '418', '4'),
('Nagaon', '419', '4'),
('Nalbari', '420', '4'),
('North Cachar Hills', '421', '4'),
('Silchar', '422', '4'),
('Sivasagar', '423', '4'),
('Sonitpur', '424', '4'),
('Tinsukia', '425', '4'),
('Udalguri', '426', '4'),
('Anjaw', '301', '3'),
('Changlang', '302', '3'),
('Dibang Valley', '303', '3'),
('East Kameng', '304', '3'),
('East Siang', '305', '3'),
('Itanagar', '306', '3'),
('Kurung Kumey', '307', '3'),
('Lohit', '308', '3'),
('Lower Dibang Valley', '309', '3'),
('Lower Subansiri', '310', '3'),
('Papum Pare', '311', '3'),
('Tawang', '312', '3'),
('Tirap', '313', '3'),
('Upper Siang', '314', '3'),
('Upper Subansiri', '315', '3'),
('West Kameng', '316', '3'),
('West Siang', '317', '3'),
('Adilabad', '201', '2'),
('Anantapur', '201', '2'),
('Chittoor', '203', '2'),
('Cuddapah', '204', '2'),
('East Godavari', '205', '2'),
('Guntur', '206', '2'),
('Hyderabad', '207', '2'),
('Karimnagar', '208', '2'),
('Khammam', '209', '2'),
('Krishna', '210', '2'),
('Kurnool', '211', '2'),
('Mahabubnagar', '212', '2'),
('Medak', '213', '2'),
('Nalgonda', '214', '2'),
('Nellore', '215', '2'),
('Nizamabad', '216', '2'),
('Prakasam', '217', '2'),
('Rangareddy', '218', '2'),
('Srikakulam', '219', '2'),
('Visakhapatnam', '220', '2'),
('Vizianagaram', '221', '2'),
('Warangal', '222', '2'),
('West Godavari', '223', '2'),
('Alipur', '101', '1'),
('Andaman Island', '102', '1'),
('Anderson Island', '103', '1'),
('Arainj-Laka-Punga', '104', '1'),
('Austinabad', '105', '1'),
('Bamboo Flat', '106', '1'),
('Barren Island', '107', '1'),
('Beadonabad', '108', '1'),
('Betapur', '109', '1'),
('Bindraban', '110', '1'),
('Bonington', '111', '1'),
('Brookesabad', '112', '1'),
('Cadell Point', '113', '1'),
('Calicut', '114', '1'),
('Chetamale', '115', '1'),
('Cinque Islands', '116', '1'),
('Defence Island', '117', '1'),
('Digilpur', '118', '1'),
('Dolyganj', '119', '1'),
('Flat Island', '120', '1'),
('Geinyale', '121', '1'),
('Great Coco Island', '122', '1'),
('Haddo', '123', '1'),
('Havelock Island', '124', '1'),
('Henry Lawrence Island', '125', '1'),
('Herbertabad', '126', '1'),
('Hobdaypur', '127', '1'),
('Ilichar', '128', '1'),
('Ingoie', '128', '1'),
('Inteview Island', '130', '1'),
('Jangli Ghat', '131', '1'),
('Jhon Lawrence Island', '132', '1'),
('Karen', '133', '1'),
('Kartara', '134', '1'),
('KYD Islannd', '135', '1'),
('Landfall Island', '136', '1'),
('Little Andmand', '137', '1'),
('Little Coco Island', '138', '1'),
('Long Island', '138', '1'),
('Maimyo', '140', '1'),
('Malappuram', '141', '1'),
('Manglutan', '142', '1'),
('Manpur', '143', '1'),
('Mitha Khari', '144', '1'),
('Neill Island', '145', '1'),
('Nicobar Island', '146', '1'),
('North Brother Island', '147', '1'),
('North Passage Island', '148', '1'),
('North Sentinel Island', '149', '1'),
('Nothen Reef Island', '150', '1'),
('Outram Island', '151', '1'),
('Pahlagaon', '152', '1'),
('Palalankwe', '153', '1'),
('Passage Island', '154', '1'),
('Phaiapong', '155', '1'),
('Phoenix Island', '156', '1'),
('Port Blair', '157', '1'),
('Preparis Island', '158', '1'),
('Protheroepur', '159', '1'),
('Rangachang', '160', '1'),
('Rongat', '161', '1'),
('Rutland Island', '162', '1'),
('Sabari', '163', '1'),
('Saddle Peak', '164', '1'),
('Shadipur', '165', '1'),
('Smith Island', '166', '1'),
('Sound Island', '167', '1'),
('South Sentinel Island', '168', '1'),
('Spike Island', '169', '1'),
('Tarmugli Island', '170', '1'),
('Taylerabad', '171', '1'),
('Titaije', '172', '1'),
('Toibalawe', '173', '1'),
('Tusonabad', '174', '1'),
('West Island', '175', '1'),
('Wimberleyganj', '176', '1'),
('Yadita', '177', '1');

-- --------------------------------------------------------

--
-- Table structure for table `all_states`
--

CREATE TABLE `all_states` (
  `state_code` text COLLATE utf8_unicode_ci,
  `state_name` text COLLATE utf8_unicode_ci,
  `country_code` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `all_states`
--

INSERT INTO `all_states` (`state_code`, `state_name`, `country_code`) VALUES
('1', 'Andaman &amp; Nicobar [AN]', '+91'),
('2', 'Andhra Pradesh [AP]', '+91'),
('3', 'Arunachal Pradesh [AR]', '+91'),
('4', 'Assam [AS]', '+91'),
('5', 'Bihar [BH]', '+91'),
('6', 'Chandigarh [CH]', '+91'),
('7', 'Chhattisgarh [CG]', '+91'),
('8', 'Dadra &amp; Nagar Haveli [DN]', '+91'),
('9', 'Daman &amp; Diu [DD]', '+91'),
('10', 'Delhi [DL]', '+91'),
('11', 'Goa [GO]', '+91'),
('12', 'Gujarat [GU]', '+91'),
('13', 'Haryana [HR]', '+91'),
('14', 'Himachal Pradesh [HP]', '+91'),
('15', 'Jammu &amp; Kashmir [JK]', '+91'),
('16', 'Jharkhand [JH]', '+91'),
('17', 'Karnataka [KR]', '+91'),
('18', 'Kerala [KL]', '+91'),
('19', 'Lakshadweep [LD]', '+91'),
('20', 'Madhya Pradesh [MP]', '+91'),
('21', 'Maharashtra [MH]', '+91'),
('22', 'Manipur [MN]', '+91'),
('23', 'Meghalaya [ML]', '+91'),
('24', 'Mizoram [MM]', '+91'),
('25', 'Nagaland [NL]', '+91'),
('26', 'Orissa [OR]', '+91'),
('27', 'Pondicherry [PC]', '+91'),
('28', 'Punjab [PJ]', '+91'),
('29', 'Rajasthan [RJ]', '+91'),
('30', 'Sikkim [SK]', '+91'),
('31', 'Tamil Nadu [TN]', '+91'),
('32', 'Tripura [TR]', '+91'),
('33', 'Uttar Pradesh [UP]', '+91'),
('34', 'Uttaranchal [UT]', '+91'),
('35', 'West Bengal [WB]', '+91');

-- --------------------------------------------------------

--
-- Table structure for table `batch`
--

CREATE TABLE `batch` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `timing` time NOT NULL,
  `hall` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `institute_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `batch`
--

INSERT INTO `batch` (`id`, `name`, `timing`, `hall`, `start_date`, `end_date`, `institute_id`) VALUES
(1, 'Basic Crash Course 1st', '12:00:00', '', '2020-06-16', '2020-06-16', '1'),
(2, 'upsc crash course', '10:00:00', '', '2020-07-26', '2020-07-26', '1'),
(3, 'Morning', '10:00:00', '2', '2020-08-24', '2020-08-24', '0');

-- --------------------------------------------------------

--
-- Table structure for table `branch`
--

CREATE TABLE `branch` (
  `id` int(11) NOT NULL,
  `institute_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `branch_transfer`
--

CREATE TABLE `branch_transfer` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `move_qty` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `institute_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `institute_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`id`, `name`, `description`, `institute_id`) VALUES
(0, 'Course', 'AAAAAAAAAAAAAA', '0'),
(1, '12th Crash Course', '<p>Learn basics before actual 12th classes starts</p>', '1'),
(2, 'crash course', '<p>UPSC crash course</p>', '1');

-- --------------------------------------------------------

--
-- Table structure for table `division`
--

CREATE TABLE `division` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `institute_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `division`
--

INSERT INTO `division` (`id`, `name`, `institute_id`) VALUES
(1, 'A', 0),
(2, 'C', 0),
(3, 'B', 0),
(4, 'D', 0),
(5, 'E', 0),
(7, 'F', 0);

-- --------------------------------------------------------

--
-- Table structure for table `email`
--

CREATE TABLE `email` (
  `id` int(11) NOT NULL,
  `institute_id` int(11) NOT NULL,
  `host` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `port` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `email`
--

INSERT INTO `email` (`id`, `institute_id`, `host`, `username`, `password`, `port`, `status`) VALUES
(1, 1, 'Gmail', 'dipkulkarni75@gmail.com', '9970470160', '25', 'Activate');

-- --------------------------------------------------------

--
-- Table structure for table `enquiry`
--

CREATE TABLE `enquiry` (
  `id` int(11) NOT NULL,
  `full_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `contact` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `course` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `source` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pincode` varchar(6) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `not_interested` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `follow_up` date NOT NULL,
  `institute_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `enquiry`
--

INSERT INTO `enquiry` (`id`, `full_name`, `contact`, `email`, `course`, `batch`, `source`, `city`, `pincode`, `address`, `status`, `not_interested`, `follow_up`, `institute_id`, `date`) VALUES
(0, 'Priyanka Badgujar', '8412026146', 'badgujarpriyanka9@gmail.com', '0', '3', '', '', '', '', 'Initial', '', '0000-00-00', '0', '2021-11-18'),
(1, 'Asha Subhash Kulkarni', '9893543212', 'asha@gmail.com', '1', '1', 'Facebook', 'Pune', '654422', 'Street no.9', 'Deal Close', '', '0000-00-00', '1', '2020-07-24'),
(2, 'Rudra Kolle', '9890654149', 'rudrakolle@gmail.com', '1', '1', 'Friend', 'pune', '411035', 'pune', 'Initial', '', '0000-00-00', '1', '2020-07-24'),
(3, 'Maharudra Kolle', '9890654149', 'rudrakolle@gmail.com', '', '', 'Friend', 'Pune', '411052', 'Pune', 'Initial', '', '0000-00-00', '0', '2020-09-04');

-- --------------------------------------------------------

--
-- Table structure for table `exam_schedule`
--

CREATE TABLE `exam_schedule` (
  `id` int(11) NOT NULL,
  `exam_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `course` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `subject` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `capter` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `quation_paper` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `institute_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `staff_id` int(11) NOT NULL,
  `file_tag` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `exam_date` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `del_flag` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `exam_schedule`
--

INSERT INTO `exam_schedule` (`id`, `exam_title`, `course`, `batch`, `subject`, `capter`, `quation_paper`, `institute_id`, `staff_id`, `file_tag`, `created_at`, `exam_date`, `del_flag`) VALUES
(1, 'chb', '1', '1', ' cv', 'cgh', 'TitleTueJun30165428GMT05302020jpg.jpg', '1', 3, '.jpg', '2020-06-30 11:31:38', '2020-07-01', 'N');

-- --------------------------------------------------------

--
-- Table structure for table `field`
--

CREATE TABLE `field` (
  `id` int(11) NOT NULL,
  `field_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `field`
--

INSERT INTO `field` (`id`, `field_name`) VALUES
(1, 'textarea'),
(2, 'text'),
(3, 'file');

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `institute_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `gallery_category`
--

CREATE TABLE `gallery_category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `institute_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gallery_category`
--

INSERT INTO `gallery_category` (`id`, `name`, `institute_id`) VALUES
(1, 'Annual Function', 1),
(2, 'Parents Meeting', 1),
(3, 'Science Day', 1);

-- --------------------------------------------------------

--
-- Table structure for table `getcoursefees`
--

CREATE TABLE `getcoursefees` (
  `id` int(11) NOT NULL,
  `course` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `total_fees` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `amount` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `due_date` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `institute_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `getcoursefees`
--

INSERT INTO `getcoursefees` (`id`, `course`, `batch`, `total_fees`, `amount`, `due_date`, `institute_id`) VALUES
(0, '0', '3', '1000', '1,2', '2021-11-19,2021-11-30', '4'),
(2, '1', '1', '10000', '5000,5000', '2020-07-01,2020-10-01', '1'),
(3, '3', '3', '100000', '25000,50000,25000', '2020-08-17,2020-08-31,2020-09-15', '2');

-- --------------------------------------------------------

--
-- Table structure for table `hall`
--

CREATE TABLE `hall` (
  `id` int(11) NOT NULL,
  `hall_no` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `hall_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `institute_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `hall`
--

INSERT INTO `hall` (`id`, `hall_no`, `hall_name`, `institute_id`) VALUES
(0, '2', 'ABC', '0'),
(1, '1', 'Main Hall', '1'),
(2, '1', 'Main Hall', '0');

-- --------------------------------------------------------

--
-- Table structure for table `homework`
--

CREATE TABLE `homework` (
  `id` int(11) NOT NULL,
  `institute_id` int(11) NOT NULL,
  `staff_id` int(11) NOT NULL,
  `batch` int(11) NOT NULL,
  `course` int(11) NOT NULL,
  `homework_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `submission_date` varchar(255) NOT NULL,
  `evaluation_date` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `action` varchar(255) DEFAULT NULL,
  `file` varchar(255) NOT NULL,
  `file_tag` varchar(255) NOT NULL,
  `del_flag` varchar(100) NOT NULL DEFAULT 'N'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `homework`
--

INSERT INTO `homework` (`id`, `institute_id`, `staff_id`, `batch`, `course`, `homework_date`, `submission_date`, `evaluation_date`, `status`, `action`, `file`, `file_tag`, `del_flag`) VALUES
(1, 1, 3, 1, 1, '2020-06-21 07:38:38', '2020-06-26', NULL, NULL, NULL, 'Title25jpg.png', 'img', 'N');

-- --------------------------------------------------------

--
-- Table structure for table `idcard`
--

CREATE TABLE `idcard` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `idcard` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `installments`
--

CREATE TABLE `installments` (
  `id` int(11) NOT NULL,
  `admission_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `installments` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `payment_mode` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cheque_no` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cheque_date` date NOT NULL,
  `mode` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `transaction_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_date` date NOT NULL,
  `bank_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `installments`
--

INSERT INTO `installments` (`id`, `admission_id`, `installments`, `payment_mode`, `cheque_no`, `cheque_date`, `mode`, `transaction_id`, `created_date`, `bank_name`) VALUES
(0, '', '1', 'Cash', '', '0000-00-00', '', '', '2021-11-18', ''),
(1, '1', '5000', '', '', '2020-06-25', '', '', '2020-06-23', '');

-- --------------------------------------------------------

--
-- Table structure for table `institute`
--

CREATE TABLE `institute` (
  `id` int(11) NOT NULL,
  `institute_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `state` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `district` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pincode` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `institute`
--

INSERT INTO `institute` (`id`, `institute_name`, `fname`, `lname`, `email`, `mobile`, `state`, `district`, `city`, `pincode`, `address`, `date`) VALUES
(0, 'SS', '', '', '', '', '', '', '', '', '', '2021-11-17'),
(1, 'Continued Learnin', 'Chetan ', 'Kelkar', 'chetan@chetankelkar.com', '7868765466', '21', '2127', 'Bhosari', '987976', 'plot no. 01, Sidhhivnayak nagar, Bhosari, Pune', '2020-06-10');

-- --------------------------------------------------------

--
-- Table structure for table `letterhead`
--

CREATE TABLE `letterhead` (
  `id` int(11) NOT NULL,
  `course` int(11) NOT NULL,
  `batch` int(11) NOT NULL,
  `content` int(11) NOT NULL,
  `institute_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dropdown` int(11) NOT NULL,
  `link` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `order` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id`, `icon`, `name`, `dropdown`, `link`, `order`) VALUES
('menu-1', 'fa fa-user', 'Enquiry Management', 0, 'Enquiry', 2),
('menu-10', 'fa fa-users', 'User Management  ', 1, '#', 3),
('menu-11', 'fa fa-houzz', 'Inventory Management', 1, '#', 15),
('menu-12', 'fa fa-hand-o-left', 'Leave Management', 1, '#', 8),
('menu-13', 'fa fa-newspaper-o', 'Marketing And Promotions Management ', 1, '#', 14),
('menu-14', 'fa fa-list', 'Performance Management', 1, '#', 13),
('menu-15', 'fa fa-clipboard', 'Notice Board ', 1, '#', 9),
('menu-16', 'fa fa-cogs', 'Setting', 1, '#', 11),
('menu-17', 'fa fa-users', 'Feedback Management', 0, 'Feedback', 12),
('menu-2', 'fa fa-file', 'Master Management', 1, '#', 1),
('menu-4', 'fa fa-graduation-cap', 'Admission Management', 0, 'Admission', 4),
('menu-5', 'fa fa-money', 'Finance Management', 1, '#', 5),
('menu-6', 'fa fa-clock-o', 'Attendance Management', 1, '#', 6),
('menu-7', 'fa fa-table', 'Time Table Management ', 1, '#', 7),
('menu-8', 'fa fa-sticky-note-o', 'Notes Management', 0, 'Notes', 10),
('menu-9', 'fa fa-code-fork', 'Branch Management ', 1, '#', 16);

-- --------------------------------------------------------

--
-- Table structure for table `notes`
--

CREATE TABLE `notes` (
  `id` int(11) NOT NULL,
  `staff_id` int(11) NOT NULL,
  `batch` int(11) NOT NULL,
  `course` int(11) NOT NULL,
  `chapter` varchar(255) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `file_tag` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `institute_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notes`
--

INSERT INTO `notes` (`id`, `staff_id`, `batch`, `course`, `chapter`, `file_name`, `file_tag`, `created_at`, `institute_id`) VALUES
(1, 3, 1, 1, 'xzvx', 'vzzv', 'zxv', '2020-06-29 03:54:05', 1),
(2, 3, 1, 1, 'xyz', 'Title32jpg.jpg', '.jpg', '2020-06-29 06:25:52', 1),
(3, 3, 1, 1, 'abc', 'image:119153jpg', 'jpg', '2020-06-29 06:34:24', 1),
(4, 3, 1, 1, 'Lecture 1', 'image:119143.jpg', 'jpg', '2020-06-29 06:36:59', 1),
(5, 3, 1, 1, 'pdf', '9601.pdf', 'pdf', '2020-06-29 06:39:32', 1),
(6, 3, 1, 1, 'video', 'video:118583.mp4', 'mp4', '2020-06-29 06:41:10', 1),
(7, 3, 1, 1, 'test', 'crashlog3txt.txt', 'txt', '2020-06-29 23:59:54', 1),
(8, 3, 0, 0, '', '3391.docx', 'docx', '2020-06-30 00:00:37', 1),
(9, 3, 1, 1, 'aaa', '3391.docx', 'docx', '2020-06-30 00:01:08', 1);

-- --------------------------------------------------------

--
-- Table structure for table `notice`
--

CREATE TABLE `notice` (
  `id` int(11) NOT NULL,
  `institute_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `notice` text COLLATE utf8_unicode_ci NOT NULL,
  `del_flag` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `notice`
--

INSERT INTO `notice` (`id`, `institute_id`, `type`, `notice`, `del_flag`) VALUES
(1, '1', 'student', 'Hello there...', 'N'),
(2, '1', 'student', 'Be there at 3:00 PM ', 'N'),
(3, '1', 'student', 'Prayer will be at 5:15 PM at Kusum Sabhagraha', 'N'),
(5, '1', 'teacher', 'Demo lecture for Spoken English', 'N'),
(6, '1', 'teacher', 'Internship for teachers on monday - Friday at 09:00 AM to 05:00 PM', 'N'),
(8, '1', 'teacher', '<p>Revised Postponement of <strong>Exams </strong>for all Under-Graduate and <strong><span style=\"color: #ba372a;\">Post-Graduate</span></strong> Programmes Semesters II, IV and VI</p>', 'N'),
(9, '1', 'teacher', '<p><span style=\"color: #222222; font-family: Consolas, Lucida Console, Courier New, monospace;\"><span style=\"font-size: 12px; white-space: pre-wrap;\">Revision in Timings of <strong>Regular Examination</strong>, March, <strong>2020</strong> for <strong>S.Y.</strong> - </span></span></p>\r\n<p><span style=\"color: #222222; font-family: Consolas, Lucida Console, Courier New, monospace;\"><span style=\"font-size: 12px; white-space: pre-wrap;\"><span style=\"color: #236fa1;\">B.A.</span></span></span></p>\r\n<p><span style=\"color: #222222; font-family: Consolas, Lucida Console, Courier New, monospace;\"><span style=\"font-size: 12px; white-space: pre-wrap;\"><span style=\"color: #236fa1;\">B.Com. </span></span></span></p>\r\n<p><span style=\"color: #222222; font-family: Consolas, Lucida Console, Courier New, monospace;\"><span style=\"font-size: 12px; white-space: pre-wrap;\"><span style=\"color: #236fa1;\">B.Sc. </span></span></span></p>\r\n<p><span style=\"color: #222222; font-family: Consolas, Lucida Console, Courier New, monospace;\"><span style=\"font-size: 12px; white-space: pre-wrap;\"><span style=\"color: #236fa1;\">B.Sc. (Biochem. / Biotech. / Computer Science) </span></span></span></p>\r\n<p><span style=\"color: #222222; font-family: Consolas, Lucida Console, Courier New, monospace;\"><span style=\"font-size: 12px; white-space: pre-wrap;\"><span style=\"color: #236fa1;\">B.A.F. </span></span></span></p>\r\n<p><span style=\"color: #222222; font-family: Consolas, Lucida Console, Courier New, monospace;\"><span style=\"font-size: 12px; white-space: pre-wrap;\"><span style=\"color: #236fa1;\">B.F.M. </span></span></span></p>\r\n<p><span style=\"color: #222222; font-family: Consolas, Lucida Console, Courier New, monospace;\"><span style=\"font-size: 12px; white-space: pre-wrap;\"><span style=\"color: #236fa1;\">B.B.I. </span></span></span></p>\r\n<p><span style=\"color: #222222; font-family: Consolas, Lucida Console, Courier New, monospace;\"><span style=\"font-size: 12px; white-space: pre-wrap;\"><span style=\"color: #236fa1;\">B.M.M. </span></span></span></p>\r\n<p><span style=\"color: #222222; font-family: Consolas, Lucida Console, Courier New, monospace;\"><span style=\"font-size: 12px; white-space: pre-wrap;\"><span style=\"color: #236fa1;\">B.M.S. </span> </span></span></p>\r\n<p><span style=\"color: #222222; font-family: Consolas, Lucida Console, Courier New, monospace;\"><span style=\"font-size: 12px; white-space: pre-wrap;\">Semester IV (2019-20 Batch). </span></span></p>\r\n<p><span style=\"color: #222222; font-family: Consolas, Lucida Console, Courier New, monospace;\"><span style=\"font-size: 12px; white-space: pre-wrap;\">Be carefull while reading notice &amp; be there at 09:00 AM.</span></span></p>', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `parent_meeting`
--

CREATE TABLE `parent_meeting` (
  `id` int(11) NOT NULL,
  `venue` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `time` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `message` text COLLATE utf8_unicode_ci NOT NULL,
  `institute_id` int(11) NOT NULL,
  `course` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `parent_meeting`
--

INSERT INTO `parent_meeting` (`id`, `venue`, `time`, `date`, `message`, `institute_id`, `course`, `batch`) VALUES
(13, 'rtgergdfgf', '04:04 AM', '2020-06-16', 'fdgdfgdfg', 1, '1', '1'),
(14, 'gfdgfdgfdg', '19:16', '2020-06-10', 'vfdgd', 1, '1', '1'),
(15, 'dsfdsfsd', '03:35', '2020-06-17', 'dsfdsfsdf', 0, '2', '3'),
(16, 'fgdgdfg', '04:56', '2020-06-17', 'fdgfd', 0, '2', '3'),
(17, 'fgdgdfg', '04:56', '2020-06-17', 'fdgfd', 0, '2', '3'),
(18, 'fgdgdfg', '04:56', '2020-06-17', 'fdgfd', 0, '2', '3'),
(20, 'fgdgdfg', '04:56 AM', '2020-06-17', 'Change', 0, '2', '3');

-- --------------------------------------------------------

--
-- Table structure for table `plan`
--

CREATE TABLE `plan` (
  `id` int(11) NOT NULL,
  `institute_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `validity` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `purchase_date` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `expiry_date` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `plan`
--

INSERT INTO `plan` (`id`, `institute_id`, `validity`, `purchase_date`, `expiry_date`) VALUES
(0, '0', '', '2021-11-17', '2021-11-17'),
(1, '1', '100', '2020-06-10', '2020-07-10');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `qty` int(11) NOT NULL,
  `institute_id` int(11) NOT NULL,
  `product_info` text COLLATE utf8_unicode_ci NOT NULL,
  `shortage` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` int(11) NOT NULL,
  `institute_id` int(11) NOT NULL,
  `course` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `serise_id` int(11) NOT NULL,
  `question` text COLLATE utf8_unicode_ci NOT NULL,
  `ans1` text COLLATE utf8_unicode_ci NOT NULL,
  `ans2` text COLLATE utf8_unicode_ci NOT NULL,
  `ans3` text COLLATE utf8_unicode_ci NOT NULL,
  `ans4` text COLLATE utf8_unicode_ci NOT NULL,
  `result` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `publish` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `institute_id`, `course`, `batch`, `serise_id`, `question`, `ans1`, `ans2`, `ans3`, `ans4`, `result`, `publish`) VALUES
(2, 0, '', '', 1, 'While delivering lecture if there is come disturbance in the class, a teacher Should', 'Keep Quiet for a while and then continue', 'Punish those causing disturbance.', 'motivate to teach those causing disturbance', 'not bother of what is happening in the class.', '3', ''),
(3, 0, '', '', 1, 'Effective teaching is a function of', 'Teacher\'s satisfaction ', 'Teacher\'s honesty and commitment ', 'Teacher\'s making students and understand', 'Teacher\'s liking for professional excellence', '3', ''),
(4, 0, '', '', 1, 'The Most appropriate meaning of learning is ', 'Acquisition of Skills', 'Modification of behavior', 'Personal adjustment ', 'Inculcation of knowledge', '2', ''),
(5, 0, '', '', 1, 'CIET stands for', 'Center for Integrated Education and Technology', 'Central Institute for Engineering and Technology', 'Central Institute for Education Technology', 'Center for Integrated Evaluation Techniques', '3', ''),
(6, 0, '', '', 1, 'Teacher\'s role at higher education level is to ', 'provide information to students ', 'promote self learning in students ', 'encourage healthy competition among students ', 'help students to solve their problems', '2', ''),
(7, 0, '', '', 1, 'Which one of the following is the best method of teaching ', 'Lecture', 'Discussion', 'Demonstration', 'Narration', '3', ''),
(8, 0, '', '', 1, 'Dyslexia is associated with', 'mental disorder', 'behavioral disorder', 'reading disorder ', 'writing disorder ', '3', ''),
(9, 0, '', '', 1, 'The e-content generation for under- graduate courses has been assigned by the Ministry of Human Resource Development to ', 'INFLIBNET', 'Consortium for Educational Communication', 'National Knowledge Commission', 'Indira Gandhi National Open University', '2', ''),
(10, 0, '', '', 1, 'Classroom communication is normally considered as', 'effective ', 'cognitive', 'affective ', 'selective', '2', ''),
(11, 0, '', '', 1, 'Identify the Category of evaluation that assess the learning progress to provide continuous feedback to the students during instruction', 'Placement', 'Diagnostic', 'Formative', 'Summative', '3', ''),
(22, 0, '', '', 2, 'The Research that aims at immediate application is ', 'Action Research', 'Empirical Research', 'Conceptual Research', 'Fundamental Research', '1', ''),
(23, 0, '', '', 2, 'Nine Year olds are  taller than seven year olds. This is an example of a reference drawn from', 'Vertical Study', 'Cross-sectional study', 'Time series study', 'Experimental study', '2', ''),
(24, 0, '', '', 2, 'When two or more successive footnotes refer to the same work which one of the following expressions is used ', 'ibid', 'et.al', 'op.cit', 'loc.cit', '1', ''),
(25, 0, '', '', 2, 'conferences are meant for', 'Multiple target groups', 'Group discussions', 'Show-casing new Research', 'All the above ', '4', ''),
(26, 0, '', '', 2, 'Ex post Facto research means ', 'The Research is carried out after the incident ', 'The Research is carried out prior to the incident ', 'The Research is carried out along with the happening of an incident.', 'The Research is carried out keeping in mind the possibilities of an incident.', '1', ''),
(27, 0, '', '', 2, 'Research ethics do not include ', 'Honesty', 'Subjectivity', 'Integrity', 'Objectivity', '2', ''),
(28, 0, '', '', 2, 'Which one of the following is an indication of quality of a research journal ', 'Impact factor', 'h-index', 'g-index', 'i 10-index', '1', ''),
(29, 0, '', '', 2, 'Good research ethics means ', 'Not disclosing the holdings of shares/ stocks in a company that sponsors your research.', 'Assigning a particular research problem to one Ph.D / Research student only.', 'Dicussing with your colleagues confrontational data from a research paper that you are reviewing for an academic journal.', 'Submitting the same research manuscript for publishing in more than one journal.', '2', ''),
(30, 0, '', '', 2, 'Which of the following sampling methods is based on probability?', 'Convenience sampling ', 'Quota Sampling ', 'Judgement Sampling', 'Stratified Sampling', '4', ''),
(31, 0, '', '', 2, 'Which one of the following is not a type of experimental method?', 'Single group expriment', 'Residual group experiment', 'Parallel group Experiment', 'Rational group experiment ', '2', ''),
(152, 0, '', '', 3, 'In a classroom probability of message reception can be enhanced by', 'Exposing the ignorance of students  ', 'Increasing the information load  ', 'Using high decibel audio tools', 'Establishing a viewpoint', '4', ''),
(153, 0, '', '', 3, 'It is Truism to say that no one was there when life first appeared on earth  Any assertion about lifes origin thus should be treated as a theory.  The above two statements constitute', 'A narrative', 'An argument  ', ' A conjecture  ', 'A historical explanation', '2', ''),
(154, 0, '', '', 3, 'The spatial audio reproduction in a classroom can reduce the students', 'Respect for the teacher  ', ' Motivation for excellence  ', ' Interest in technology  orientation  ', 'Cognitive load in understanding', '4', ''),
(155, 0, '', '', 3, 'A deductive argument is invalid if', 'Its premises and conclusion are all false  ', ' Its premises are all false but its conclusion is true.  ', ' Its premises are all true but its conclusion is false  ', 'Its premises and conclusion are all true', '3', ''),
(156, 0, '', '', 3, ' Its premises are all true but its conclusion is false  ', 'Non-sequitur  ', ' Repetitive phrase   ', 'Ice-breaker  ', ' Complex question', '3', ''),
(157, 0, '', '', 3, 'Which of the following is a key behavior in effective teaching', ' Structuring  ', ' Instructional variety  ', ' Questioning  ', ' Using student ideas and contribution', '2', ''),
(158, 0, '', '', 3, 'In finalizing a thesis writing format which of the following would form part of supplementary pages', ' Table of contents  ', ' Conclusions of the study ', '  Bibliography and Appendices  ', ' List of tables and figures', '3', ''),
(159, 0, '', '', 3, 'The classroom communication should essentially be', 'Empathetic  ', ' Abstract  ', 'Non-descriptive  ', ' Contrived', '1', ''),
(160, 0, '', '', 3, 'The interaction between a teacher and students creates a zone of proximal', ' Confusion  ', 'Development ', ' Distortion ', ' Difference', '2', ''),
(161, 0, '', '', 3, 'In certain code COVALENT  is code as BWPDUOFM  The code of ELEPHANT  will be', ' QMUBIADH  ', ' QFMFUOBI  ', ' EPHNTEAS ', ' MFUIQRTW', '2', ''),
(162, 0, '', '', 4, 'Classical conditioning technique used to eliminate phobias is used in', 'Generalization  ', ' Operant conditioning ', ' Spontaneous recovery  ', ' Systematic desensitization', '4', ''),
(163, 0, '', '', 4, 'One of the following sections of IPC deals with cruelty', ' Section 354  ', 'Section 376 ', ' Section 498 A  ', 'Section 508', '3', ''),
(164, 0, '', '', 4, 'Which article of the Indian Constitution provides maternity leave for women', 'Article 40  ', ' Article 41  ', ' Article 42  ', ' Article 44', '3', ''),
(165, 0, '', '', 4, 'Catharsis means', ' Ventilation  ', ' Psycho analysis  ', ' Behavioural modification  ', ' Problem solving', '1', ''),
(166, 0, '', '', 4, 'Which of the following is not a mechanism for settlement of Industrial Disputes in India', ' Labour Court  ', ' Tribunal  ', ' National Tribunal  ', ' Standing Labour Committee', '4', ''),
(167, 0, '', '', 4, 'Deterioration of mental functions caused by the loss of nerve cells in brain is called', 'Mental retardation  ', 'Delirium  ', 'Dementia  ', ' Depressive neurosis', '3', ''),
(168, 0, '', '', 4, 'The Token economy is a procedure in which', ' the patients are helped to understand their home economics', ' the patients are given understanding of economic gains', 'the patients are given generalized conditioned reinforce in exchange for performing certain target behavior', 'the patients are helped to come out of the loss they suffered due to economic crisis.', '3', ''),
(169, 0, '', '', 4, ' Cost-benefit analysis relates to', 'Analysis of profit and loss ', 'Program returns ', 'Analysis of income and expenditure  ', 'Comparison between program costs with program effects', '4', ''),
(170, 0, '', '', 4, 'Human Poverty Index is developed by', 'World Bank  ', ' WHO  ', 'UNDP ', ' UNICEF', '3', ''),
(171, 0, '', '', 4, 'The first social work text that used the word supervision is', 'The New Practice of Supervision and Staff Development by Abels Paul A  ', ' Group Methods in Supervision and Staff Development  by Abrahamson Arthur  C', ' Supervision and Education in Charity by Jeffrey R  Brackett  ', ' The MSW Supervisor  Problems of Role Transition  by Abramczyk  Lois W', '3', ''),
(172, 0, '', '', 5, 'Which of the following is not a principle of Group Work', ' Appropriate modification of the group process.  ', 'Indifferent attitude towards members', 'Enabling group members to involve themselves in the process of problem solving', 'Recognition of unique differences of each individual', '2', ''),
(173, 0, '', '', 5, 'National Institute for the Visually Handicapped NIVH is based in', 'Hyderabad  ', 'Mumbai', 'Kolkata', 'Dehradun', '4', ''),
(174, 0, '', '', 5, 'Each for all and all for each  is a slogan associated with', ' Panchayati Raj  ', 'Co-operation ', 'Democratic Sprit ', 'NGOs', '2', ''),
(175, 0, '', '', 5, 'Gandhiji s Concept of Trusteeship is based on', 'The property should be privately owned', 'The faith that human beings are not selfish', 'The faith that human nature is very selfish', ' The use of wealth should be through legislative regulation', '2', ''),
(176, 0, '', '', 5, 'Which one of the following is not an indicator of social development of a country', ' Infant mortality rate  ', 'Average life span ', 'Incidence of litigation in the courts', 'Literacy rate', '3', ''),
(177, 0, '', '', 5, 'The Child Marriage Restrain Act was enacted in the year', '1929  ', ' 1930  ', '1931  ', '1932', '1', ''),
(178, 0, '', '', 5, 'The best example of verbal communication skill is', 'Good vocabulary  ', 'Competence in oral presentations  ', ' Fluent speech ', 'Participate in training and research', '2', ''),
(179, 0, '', '', 5, 'Acceptance is a principle of social work which implies', ' Accepting client in his/her appearance', 'Extending warm welcome to the client', 'Accepting the client as he she is', 'Accepting the client s version as it is', '3', ''),
(180, 0, '', '', 5, 'Mongolism  is the type of', ' Geographical division of land  ', 'Topographical structure', 'Mental retardation  ', ' A religious sect', '3', ''),
(181, 0, '', '', 5, 'What is Anuloma marriage', 'Higher caste man marrying lower caste woman  ', 'Higher caste woman marrying lower caste man', 'Lower caste man marrying higher caste woman ', 'Lower caste woman marrying higher caste man', '1', ''),
(182, 0, '', '', 6, 'Identity VS role confusion is the task of', ' Adulthoodwww netugc com ', 'Oral stage  ', ' Old age  ', 'Adolescence', '4', ''),
(183, 0, '', '', 6, 'The Rio Earth Summit of 1992 dealt with the theme', 'Sustainable development ', 'Climate change', ' Poverty reduction ', 'Agricultural development', '1', ''),
(184, 0, '', '', 6, 'Which of the following does not threaten internal validity', ' Maturation of passage of time  ', 'History', 'Instrumentation ', 'Randomization', '4', ''),
(185, 0, '', '', 6, 'The hypothesis by which the researcher not only asserts that the variables will be found to be related but also predicts the direction of their relationship is called', 'one tailed  ', ' two tailed ', 'null hypothesis  ', 'none of the above', '1', ''),
(186, 0, '', '', 6, 'The National Commission for Women was established in the year', '1957', '1986 ', ' 2001  ', ' 1992', '4', ''),
(187, 0, '', '', 6, 'Kaka Kalelkar was associated with www netugc com', 'Scheduled Caste Commission ', 'Scheduled Tribe Commission', 'Backward Classes Commission', 'Minorities Commission', '3', ''),
(188, 0, '', '', 6, 'The method by which the relative worth of Jobs in an organisation is determined is called as', 'Job Description  ', ' Job Evaluation ', 'Job Specification', 'Job Analysis', '4', ''),
(189, 0, '', '', 6, 'Cognitive needs  of human beings are the needs', ' to develop abilities  ', 'for symmetry  order and beauty ', 'for security and freedom from attack', 'to know  to understand and to explore', '4', ''),
(190, 0, '', '', 6, 'Learned helplessness is a concept based on', 'Unconditional positive learning ', 'Social learning theory ', 'Hypothetical constructs', 'Psychoanalytic approach', '2', ''),
(191, 0, '', '', 6, 'Which one of the following is not necessary for project formulation?', 'Setting objectives and targets  ', 'Design of strategies ', 'Identification of potential obstacles', 'Documentation', '4', ''),
(192, 0, '', '', 6, 'FCRA stands for', 'Foreign Contribution Rules Act  ', 'Foreign Contribution Regulation Act ', 'Federal Contribution Regulation Act', 'None of the above', '2', ''),
(203, 0, '', '', 7, 'Which one of the following is not a treatment group?', 'Growth group  ', 'Socialisation group ', 'Educational group', 'Study team', '4', ''),
(204, 0, '', '', 7, 'Indecent Representation of Women Prohibition Act was enacted in year', '1976  ', '1986 ', '1996 ', '2006', '2', ''),
(205, 0, '', '', 7, 'Which of the following governance mechanism is the highest body for policy formulation in NGOs', ' General body  ', 'Managing Committee', 'Sub Committee', ' Chairperson', '1', ''),
(206, 0, '', '', 7, 'Objectively in research means the willingness and ability to examine evidence dispassionately is called', 'espirit de corps of the scientific method ', 'cours de philosophic of the scientific method', 'la carriere of the scientific method', 'sine qua non of the scientific method', '4', ''),
(207, 0, '', '', 7, 'If the client persists in verbal attacks, the technique used is', 'Confrontation  ', 'Scanning ', 'Fogging', 'Explaining', '3', ''),
(208, 0, '', '', 7, 'The point where two axes intersect is known as', ' X axis ', 'Y axis', 'Origin', 'Table', '3', ''),
(209, 0, '', '', 7, 'The value that is repeated most often in data set is known as', ' Median  ', 'Mode', 'Frequency', ' Variance', '2', ''),
(210, 0, '', '', 7, 'Who among the following said that justice is crucial to understand human rights?', ' Peterson  ', 'John Rawl  ', 'Smith  ', 'Stephenson', '2', ''),
(211, 0, '', '', 7, 'The Universal Declaration of Human Rights was adopted in', '1944  ', '1945', '1947 ', '1948', '4', ''),
(212, 0, '', '', 7, 'A set of guidelines that give direction to action by an organization or government is called', ' Social policy  ', 'Social planning', 'Social principles ', 'Strategic planning', '1', '');

-- --------------------------------------------------------

--
-- Table structure for table `reminder`
--

CREATE TABLE `reminder` (
  `id` int(11) NOT NULL,
  `course` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `msg_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `institute_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `reminder`
--

INSERT INTO `reminder` (`id`, `course`, `batch`, `type`, `msg_type`, `institute_id`) VALUES
(0, '', '', 'welcome', 'autopost', '4');

-- --------------------------------------------------------

--
-- Table structure for table `reminder_status`
--

CREATE TABLE `reminder_status` (
  `id` int(11) NOT NULL,
  `student_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `course` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `message_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email_status` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `institute_id` int(11) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `id` int(11) NOT NULL,
  `role` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `desc` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `institute_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`id`, `role`, `desc`, `institute_id`) VALUES
(0, 'Teacher', '', 2),
(1, 'Admin', '<p>As per permissions given to the admin</p>', 0);

-- --------------------------------------------------------

--
-- Table structure for table `sankalan`
--

CREATE TABLE `sankalan` (
  `id` int(11) NOT NULL,
  `date` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `milk_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `shift` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `liter` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fat` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `snf` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `rate` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `amount` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `updated_date` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dairy_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `scheduled_demo`
--

CREATE TABLE `scheduled_demo` (
  `id` int(11) NOT NULL,
  `institute_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `contact` varchar(14) COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `msg` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `scheduled_demo`
--

INSERT INTO `scheduled_demo` (`id`, `institute_name`, `email`, `contact`, `city`, `timestamp`, `msg`) VALUES
(1, 'abc', 'abc@gmail.com', '5675676575', 'pune', '0000-00-00 00:00:00', 'Hii there'),
(2, 'Continued Learning, Alka Takies, Pune', 'continued-learning@gmail.com', '8758346098', 'Pune', '0000-00-00 00:00:00', 'Hii there, I want to learn javascript, jquery and its frameworks'),
(3, 'ytut', 'tytty', '678686', '876868', '2020-04-23 00:06:24', '76786'),
(4, 'Shamali Restarant', 'shamali2345@gmail.com', '3345566677', 'Aurangabad', '2020-04-29 20:47:08', 'Hii there, I want to learn javascript, jquery and its frameworks'),
(5, 'Continued Learning', 'continued-learning@gmail.com', '9890669682', 'Nanded', '2020-04-10 18:06:44', 'Hello, ');

-- --------------------------------------------------------

--
-- Table structure for table `sms`
--

CREATE TABLE `sms` (
  `id` int(11) NOT NULL,
  `institute_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sms_qty` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `rate` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `total` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sender_id` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sms`
--

INSERT INTO `sms` (`id`, `institute_id`, `sms_qty`, `rate`, `total`, `sender_id`, `username`, `password`, `status`) VALUES
(0, '0', '', '', '', '', '0', '62993', 'pending'),
(1, '1', '1000', '15', '150', 'CONTIN', 'Continued1', '14257', 'Activate');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `id` int(11) NOT NULL,
  `institute_id` int(11) NOT NULL,
  `fname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dob` date NOT NULL,
  `age` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `gender` enum('male','female') COLLATE utf8_unicode_ci NOT NULL,
  `mobile` varchar(14) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `current_address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `permanent_address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `highest_education` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `university` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `percentage` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `specialization` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `year` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `firebase_token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `staff_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`id`, `institute_id`, `fname`, `mname`, `lname`, `dob`, `age`, `gender`, `mobile`, `email`, `current_address`, `permanent_address`, `highest_education`, `university`, `percentage`, `specialization`, `year`, `date`, `password`, `firebase_token`, `staff_type`) VALUES
(0, 0, '', '', '', '2020-09-04', '', 'male', '', '', '', '', '', '', '', '', '', '2020-09-04', '', '', ''),
(3, 1, 'Anand', 'S', 'Verma', '2020-06-27', '25', 'male', '1234567890', 'dipkulkarni75@gmail.com', 'Jangali Maharaj Road, Shivaji Nagar, Pune', 'Pune', 'BE Computer', 'Pune University', '', 'Computer Science', '2015', '2020-06-11', 'MTIzNA==', 'ePA0Q6cFS3u2Zmd2m5KN_8:APA91bFKl8qxGBe6R_5f4TdqlyI3k9S-PQMxJd8pjtSYStTsCffWC6wfjYHVsjuWcmkwer57OKi-49PV-mki_LpD6D3QCBIabFAHyWtHzRfsmA8ANV7kzn7f2V0tYw2ZLaGJ2Yq3gGcK', ''),
(5, 1, 'Minali', 'Sandesh', 'Mishra', '2020-06-20', '25', 'female', '6545643565', 'dipkulkarni75@gmail.com', 'Amarawati', 'Amarawati', 'BE', 'SRTMUN', '', 'E&Tc', '2015', '2020-06-16', 'MTIzNDU=', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `staff_attendance`
--

CREATE TABLE `staff_attendance` (
  `id` int(11) NOT NULL,
  `staff_id` int(11) NOT NULL,
  `institute_id` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `clock_in` varchar(255) NOT NULL,
  `clock_out` varchar(255) DEFAULT NULL,
  `mark` varchar(255) DEFAULT NULL,
  `working_hours` varchar(255) DEFAULT NULL,
  `clockin_lat` varchar(255) DEFAULT NULL,
  `clockin_long` varchar(255) DEFAULT NULL,
  `clockout_lat` varchar(255) DEFAULT NULL,
  `clockout_long` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staff_attendance`
--

INSERT INTO `staff_attendance` (`id`, `staff_id`, `institute_id`, `date`, `clock_in`, `clock_out`, `mark`, `working_hours`, `clockin_lat`, `clockin_long`, `clockout_lat`, `clockout_long`) VALUES
(7, 3, 1, '2020-06-18 00:00:00', '06:06 PM', '06:58 PM', 'Present', '0:52', '18.6475557', '73.7622214', '18.6475557', '73.7622214');

-- --------------------------------------------------------

--
-- Table structure for table `staff_leave`
--

CREATE TABLE `staff_leave` (
  `id` int(11) NOT NULL,
  `staff_id` int(11) NOT NULL,
  `institute_id` int(11) NOT NULL,
  `leave_type` varchar(255) DEFAULT NULL,
  `from_date` varchar(255) NOT NULL,
  `to_date` varchar(255) NOT NULL,
  `leave_day_count` int(11) NOT NULL,
  `leave_reason` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `approved_status` varchar(255) NOT NULL DEFAULT 'Not Approved'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staff_leave`
--

INSERT INTO `staff_leave` (`id`, `staff_id`, `institute_id`, `leave_type`, `from_date`, `to_date`, `leave_day_count`, `leave_reason`, `created_at`, `approved_status`) VALUES
(1, 1, 1, 'Casual', '2020-06-16', '2020-06-18', 3, 'Personal Reason', '2020-06-16 12:33:30', 'Not Approved'),
(2, 3, 1, NULL, '2020-06-16', '2020-06-22', 6, 'medical Emergency', '2020-06-20 11:39:19', 'Not Approved'),
(0, 0, 2, '', '', '', 0, '', '2021-11-17 18:30:00', 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `standard`
--

CREATE TABLE `standard` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `institute_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `standard`
--

INSERT INTO `standard` (`id`, `name`, `institute_id`) VALUES
(1, '4th', 0),
(2, '3rd', 0),
(3, '5th', 0),
(4, '6th', 0),
(5, '5th', 0),
(6, '8th', 0),
(7, '6th', 0),
(8, '1st', 0),
(9, '2nd', 0),
(10, '12th', 0),
(11, '11th', 0);

-- --------------------------------------------------------

--
-- Table structure for table `student_attendance`
--

CREATE TABLE `student_attendance` (
  `id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `institute_id` int(11) NOT NULL,
  `date` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `institute_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`id`, `name`, `institute_id`) VALUES
(1, 'Marathi', 0),
(2, 'English', 0),
(3, 'Hindi', 0),
(4, 'Geography', 0),
(6, 'Mathematics', 0);

-- --------------------------------------------------------

--
-- Table structure for table `submenu`
--

CREATE TABLE `submenu` (
  `id` int(11) NOT NULL,
  `menu_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `submenu_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `submenu`
--

INSERT INTO `submenu` (`id`, `menu_id`, `icon`, `submenu_name`, `link`) VALUES
(1, 'menu-2', '', 'Add/Edit/Delete Course', 'Course'),
(2, 'menu-2', '', 'Add/Edit/Delete Batch', 'Batch'),
(3, 'menu-2', '', 'Add/Edit Delete Hall', 'Hall'),
(4, 'menu-2', '', 'Welcome Kit', 'Welcome'),
(5, 'menu-2', '', 'Add/Edit/Delete Staff', 'Staff'),
(6, 'menu-5', '', 'Fees Collection Record', 'Finance/feescollection'),
(7, 'menu-6', '', 'Faculty attendance', 'User/attendance'),
(8, 'menu-6', '', 'Student Attendance', 'Attendance/student'),
(9, 'menu-6', '', 'Attendance Report', 'Attendance/report'),
(10, 'menu-7', '', 'Assign Lectures to faculty ', 'Timetable/assign'),
(11, 'menu-9', '', 'Add / Edit/ Delete Branch', 'Branch/view'),
(12, 'menu-9', '', 'Manage separate Branch Record', 'Branch/record'),
(13, 'menu-9', '', 'All features of main branch', 'Branch/mainbranch'),
(14, 'menu-10', '', 'Add/Edit/ Delete User', 'User'),
(16, 'menu-10', '', 'User Access Setting', 'User/accesssetting'),
(17, 'menu-10', '', 'Add/ Edit/ Delete Role', 'User/role'),
(18, 'menu-11', '', 'Add/Edit/Delete Product ', 'Inventory'),
(19, 'menu-11', '', 'Inventory Transfer To Branch', 'Inventory/branch'),
(20, 'menu-11', '', 'Delivery Of Product', 'Inventory/delivery'),
(21, 'menu-11', '', 'View Shortage & Order List', 'Inventory/shortage'),
(22, 'menu-11', '', 'View /Update Stock', 'Inventory/stock'),
(23, 'menu-12', '', 'View Leave list', 'Leave'),
(24, 'menu-12', '', 'Accept/ Discard leave ', 'Leave/accept'),
(25, 'menu-13', '', 'SMS/Email/Whatsapp', 'Marketing'),
(26, 'menu-13', '', 'Upload Excel ', 'Marketing/excel'),
(27, 'menu-14', '', 'Student Performance', 'Performance/student'),
(28, 'menu-14', '', 'Branch Performance', 'Performance/branch'),
(29, 'menu-15', '', 'Notice for student', 'Notice/student'),
(30, 'menu-15', '', 'Notice for Teacher', 'Notice/teacher'),
(31, 'menu-16', '', 'Email Setting', 'Setting/email'),
(32, 'menu-16', '', 'SMS Setting', 'Setting/sms'),
(33, 'menu-16', '', 'MIS Reporting', 'Setting/mis'),
(34, 'menu-16', '', 'View / Download All reports', 'Setting/reports'),
(36, 'menu-16', '', 'Fees report', 'Setting/fees'),
(37, 'menu-5', '', 'Reminder setting', 'Finance/reminder'),
(39, 'menu-7', '', 'View Timetable', 'Timetable'),
(60, 'menu-16', '', 'Dynamic Form', 'Setting/get'),
(96, 'menu-5', '', 'Set course Fees', 'Finance/coursefees'),
(97, 'menu-5', '', 'View & accept Fees Record', 'Finance/feesRecord');

-- --------------------------------------------------------

--
-- Table structure for table `tab`
--

CREATE TABLE `tab` (
  `id` int(11) NOT NULL,
  `tab_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `field_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `code` text COLLATE utf8_unicode_ci NOT NULL,
  `tab_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `test`
--

CREATE TABLE `test` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `subject` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` enum('draft','published') COLLATE utf8_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `institute_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `course` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `test`
--

INSERT INTO `test` (`id`, `name`, `subject`, `status`, `date`, `institute_id`, `course`, `batch`) VALUES
(1, 'NET & SET exam Previous question paper Series', 'Teaching Aptitude Paper-1', 'published', '2020-05-22', '1', '1', '1'),
(2, 'NET & SET exam Previous question paper Series', 'Research Aptitude Paper I', 'published', '2020-05-24', '1', '1', '1'),
(3, 'NET & SET exam Previous question paper Series', 'Teaching Aptitude Paper-1', 'published', '2020-06-11', '1', '1', '1'),
(4, 'NET SET Exam ', 'Social Work', 'published', '2020-06-11', '', '', ''),
(5, 'NET & SET exam Previous question paper Series', 'Social Work ', 'published', '2020-06-11', '', '', ''),
(6, 'NET & SET exam Previous question paper Series', 'Social Work ', 'published', '2020-06-11', '', '', ''),
(7, 'NET & SET exam Previous question paper Series', 'Social Work ', 'published', '2020-06-12', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `test_result`
--

CREATE TABLE `test_result` (
  `id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `test_id` int(11) NOT NULL,
  `result` varchar(255) NOT NULL,
  `created_on` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `institute_id` int(11) NOT NULL,
  `remark` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `test_result`
--

INSERT INTO `test_result` (`id`, `student_id`, `test_id`, `result`, `created_on`, `institute_id`, `remark`) VALUES
(1, 1, 2, '1/10', '2020-06-29 00:51:10', 1, 'Fail'),
(2, 1, 3, '2/10', '2020-07-01 09:18:05', 1, 'Fail');

-- --------------------------------------------------------

--
-- Table structure for table `timetable`
--

CREATE TABLE `timetable` (
  `id` int(11) NOT NULL,
  `institute_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `course` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `staff_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `start_time` time NOT NULL,
  `end_time` time NOT NULL,
  `day` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `timetable`
--

INSERT INTO `timetable` (`id`, `institute_id`, `course`, `batch`, `staff_id`, `start_time`, `end_time`, `day`) VALUES
(0, '0', '', '', '', '00:00:00', '00:00:00', ''),
(1, '1', '1', '1', '3', '00:20:20', '00:20:20', 'Monday'),
(2, '1', '1', '1', '3', '16:36:00', '20:40:00', 'Tuesday');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `fname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mobile` varchar(14) COLLATE utf8_unicode_ci NOT NULL,
  `role` enum('admin','superadmin','user') COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `del_flag` int(11) NOT NULL,
  `institute_id` int(11) NOT NULL,
  `reset` text COLLATE utf8_unicode_ci NOT NULL,
  `reset_date` date NOT NULL,
  `current_addr` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `permanent_addr` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `highest_edu` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `year` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `university` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `speciality` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `fname`, `lname`, `email`, `mobile`, `role`, `password`, `del_flag`, `institute_id`, `reset`, `reset_date`, `current_addr`, `permanent_addr`, `highest_edu`, `year`, `university`, `speciality`) VALUES
(2, 'Admin', 'Admin', 'admin@gmail.com', '7972156584', 'superadmin', 'MTIzNDU=', 0, 0, '', '0000-00-00', 'Street no.9', 'Nanded', 'BE CSE', '2015', 'SRTMUN', 'Computer Science'),
(3, 'Amar', 'Kendre', 'amarkendre@gmail.com', '8806068666', 'admin', 'YW1hcg==', 0, 0, '', '0000-00-00', 'Ahamadnagar', 'Latur', 'LLB', '2015', 'SRTMUN', 'Crime'),
(4, 'Maharudra', 'Kolle', 'rudrakolle@gmail.com', '989065149', 'admin', 'MTIzNDU=', 0, 0, '', '0000-00-00', 'pune', 'pune', 'degree', '2014', 'BVDU pune', 'IT'),
(5, 'maharudra', 'kolle', 'rudrakolle@gmail.com', '9890654149', 'admin', 'MTIzNDU=', 0, 0, '', '0000-00-00', 'pune', 'pune', 'degree', '2014', 'BV', 'IT'),
(6, 'rudra', 'kolle', 'rudrakolle010@gmail.com', '9890654149', 'admin', 'MTIzNDU=', 0, 0, '', '0000-00-00', 'pune', 'pune', 'b.tech', '2014', 'bv', 'it');

-- --------------------------------------------------------

--
-- Table structure for table `user_access_setting`
--

CREATE TABLE `user_access_setting` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `access` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user_access_setting`
--

INSERT INTO `user_access_setting` (`id`, `uid`, `access`) VALUES
(1, 1, '4,5,6,37,1,2,3,38,31,32,33,34,35,36,29,30,14,16,17,11,12,13,10,7,8,9,27,28,25,26,23,24,18,19,20,21,22,menu-8,menu-4,menu-3,menu-17,menu-1'),
(3, 2, '31,32,33,34,35,36,29,30,27,28,25,26,23,24,18,19,20,21,22,14,16,17,11,12,13,10,7,8,9,4,5,6,1,2,3,17,8,4,3');

-- --------------------------------------------------------

--
-- Table structure for table `validity`
--

CREATE TABLE `validity` (
  `id` int(11) NOT NULL,
  `month` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `days` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `validity`
--

INSERT INTO `validity` (`id`, `month`, `value`, `days`) VALUES
(1, '1 Month', '100', '30'),
(2, '2 Months', '200', '60');

-- --------------------------------------------------------

--
-- Table structure for table `welcome`
--

CREATE TABLE `welcome` (
  `id` int(11) NOT NULL,
  `course` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `kit` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `institute_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `welcome`
--

INSERT INTO `welcome` (`id`, `course`, `batch`, `kit`, `institute_id`) VALUES
(0, '0', '3', '', '4'),
(1, '2', '2', '4,3,0,', '1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admission`
--
ALTER TABLE `admission`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admission_batch`
--
ALTER TABLE `admission_batch`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admission_fees`
--
ALTER TABLE `admission_fees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `batch`
--
ALTER TABLE `batch`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `branch`
--
ALTER TABLE `branch`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `branch_transfer`
--
ALTER TABLE `branch_transfer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `division`
--
ALTER TABLE `division`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email`
--
ALTER TABLE `email`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `enquiry`
--
ALTER TABLE `enquiry`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exam_schedule`
--
ALTER TABLE `exam_schedule`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `field`
--
ALTER TABLE `field`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gallery_category`
--
ALTER TABLE `gallery_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `getcoursefees`
--
ALTER TABLE `getcoursefees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hall`
--
ALTER TABLE `hall`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `homework`
--
ALTER TABLE `homework`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `idcard`
--
ALTER TABLE `idcard`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `installments`
--
ALTER TABLE `installments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `institute`
--
ALTER TABLE `institute`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `letterhead`
--
ALTER TABLE `letterhead`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notes`
--
ALTER TABLE `notes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notice`
--
ALTER TABLE `notice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `parent_meeting`
--
ALTER TABLE `parent_meeting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `plan`
--
ALTER TABLE `plan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reminder`
--
ALTER TABLE `reminder`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reminder_status`
--
ALTER TABLE `reminder_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sankalan`
--
ALTER TABLE `sankalan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `scheduled_demo`
--
ALTER TABLE `scheduled_demo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sms`
--
ALTER TABLE `sms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staff_attendance`
--
ALTER TABLE `staff_attendance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staff_leave`
--
ALTER TABLE `staff_leave`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `standard`
--
ALTER TABLE `standard`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_attendance`
--
ALTER TABLE `student_attendance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `submenu`
--
ALTER TABLE `submenu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tab`
--
ALTER TABLE `tab`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `test`
--
ALTER TABLE `test`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `test_result`
--
ALTER TABLE `test_result`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `timetable`
--
ALTER TABLE `timetable`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_access_setting`
--
ALTER TABLE `user_access_setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `validity`
--
ALTER TABLE `validity`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `welcome`
--
ALTER TABLE `welcome`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admission`
--
ALTER TABLE `admission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `branch`
--
ALTER TABLE `branch`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `branch_transfer`
--
ALTER TABLE `branch_transfer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `field`
--
ALTER TABLE `field`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `letterhead`
--
ALTER TABLE `letterhead`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sankalan`
--
ALTER TABLE `sankalan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tab`
--
ALTER TABLE `tab`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
