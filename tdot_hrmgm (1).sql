-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 15, 2023 at 01:11 PM
-- Server version: 5.7.33-log
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tdot_hrmgm`
--

-- --------------------------------------------------------

--
-- Table structure for table `citymaster`
--

CREATE TABLE `citymaster` (
  `SrNo` int(11) NOT NULL,
  `CityName` varchar(30) NOT NULL,
  `StateName` varchar(30) DEFAULT NULL,
  `Active` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `citymaster`
--

INSERT INTO `citymaster` (`SrNo`, `CityName`, `StateName`, `Active`) VALUES
(1, 'North and Middle Andaman', '32', 1),
(2, 'South Andaman', '32', 1),
(3, 'Nicobar', '32', 1),
(4, 'Adilabad', '1', 1),
(5, 'Anantapur', '1', 1),
(6, 'Chittoor', '1', 1),
(7, 'East Godavari', '1', 1),
(8, 'Guntur', '1', 1),
(9, 'Hyderabad', '1', 1),
(10, 'Kadapa', '1', 1),
(11, 'Karimnagar', '1', 1),
(12, 'Khammam', '1', 1),
(13, 'Krishna', '1', 1),
(14, 'Kurnool', '1', 1),
(15, 'Mahbubnagar', '1', 1),
(16, 'Medak', '1', 1),
(17, 'Nalgonda', '1', 1),
(18, 'Nellore', '1', 1),
(19, 'Nizamabad', '1', 1),
(20, 'Prakasam', '1', 1),
(21, 'Rangareddi', '1', 1),
(22, 'Srikakulam', '1', 1),
(23, 'Vishakhapatnam', '1', 1),
(24, 'Vizianagaram', '1', 1),
(25, 'Warangal', '1', 1),
(26, 'West Godavari', '1', 1),
(27, 'Anjaw', '3', 1),
(28, 'Changlang', '3', 1),
(29, 'East Kameng', '3', 1),
(30, 'Lohit', '3', 1),
(31, 'Lower Subansiri', '3', 1),
(32, 'Papum Pare', '3', 1),
(33, 'Tirap', '3', 1),
(34, 'Dibang Valley', '3', 1),
(35, 'Upper Subansiri', '3', 1),
(36, 'West Kameng', '3', 1),
(37, 'Barpeta', '2', 1),
(38, 'Bongaigaon', '2', 1),
(39, 'Cachar', '2', 1),
(40, 'Darrang', '2', 1),
(41, 'Dhemaji', '2', 1),
(42, 'Dhubri', '2', 1),
(43, 'Dibrugarh', '2', 1),
(44, 'Goalpara', '2', 1),
(45, 'Golaghat', '2', 1),
(46, 'Hailakandi', '2', 1),
(47, 'Jorhat', '2', 1),
(48, 'Karbi Anglong', '2', 1),
(49, 'Karimganj', '2', 1),
(50, 'Kokrajhar', '2', 1),
(51, 'Lakhimpur', '2', 1),
(52, 'Marigaon', '2', 1),
(53, 'Nagaon', '2', 1),
(54, 'Nalbari', '2', 1),
(55, 'North Cachar Hills', '2', 1),
(56, 'Sibsagar', '2', 1),
(57, 'Sonitpur', '2', 1),
(58, 'Tinsukia', '2', 1),
(59, 'Araria', '4', 1),
(60, 'Aurangabad', '4', 1),
(61, 'Banka', '4', 1),
(62, 'Begusarai', '4', 1),
(63, 'Bhagalpur', '4', 1),
(64, 'Bhojpur', '4', 1),
(65, 'Buxar', '4', 1),
(66, 'Darbhanga', '4', 1),
(67, 'Purba Champaran', '4', 1),
(68, 'Gaya', '4', 1),
(69, 'Gopalganj', '4', 1),
(70, 'Jamui', '4', 1),
(71, 'Jehanabad', '4', 1),
(72, 'Khagaria', '4', 1),
(73, 'Kishanganj', '4', 1),
(74, 'Kaimur', '4', 1),
(75, 'Katihar', '4', 1),
(76, 'Lakhisarai', '4', 1),
(77, 'Madhubani', '4', 1),
(78, 'Munger', '4', 1),
(79, 'Madhepura', '4', 1),
(80, 'Muzaffarpur', '4', 1),
(81, 'Nalanda', '4', 1),
(82, 'Nawada', '4', 1),
(83, 'Patna', '4', 1),
(84, 'Purnia', '4', 1),
(85, 'Rohtas', '4', 1),
(86, 'Saharsa', '4', 1),
(87, 'Samastipur', '4', 1),
(88, 'Sheohar', '4', 1),
(89, 'Sheikhpura', '4', 1),
(90, 'Saran', '4', 1),
(91, 'Sitamarhi', '4', 1),
(92, 'Supaul', '4', 1),
(93, 'Siwan', '4', 1),
(94, 'Vaishali', '4', 1),
(95, 'Pashchim Champaran', '4', 1),
(96, 'Bastar', '36', 1),
(97, 'Bilaspur', '36', 1),
(98, 'Dantewada', '36', 1),
(99, 'Dhamtari', '36', 1),
(100, 'Durg', '36', 1),
(101, 'Jashpur', '36', 1),
(102, 'Janjgir-Champa', '36', 1),
(103, 'Korba', '36', 1),
(104, 'Koriya', '36', 1),
(105, 'Kanker', '36', 1),
(106, 'Kawardha', '36', 1),
(107, 'Mahasamund', '36', 1),
(108, 'Raigarh', '36', 1),
(109, 'Rajnandgaon', '36', 1),
(110, 'Raipur', '36', 1),
(111, 'Surguja', '36', 1),
(112, 'Diu', '29', 1),
(113, 'Daman', '29', 1),
(114, 'Central Delhi', '25', 1),
(115, 'East Delhi', '25', 1),
(116, 'New Delhi', '25', 1),
(117, 'North Delhi', '25', 1),
(118, 'North East Delhi', '25', 1),
(119, 'North West Delhi', '25', 1),
(120, 'South Delhi', '25', 1),
(121, 'South West Delhi', '25', 1),
(122, 'West Delhi', '25', 1),
(123, 'North Goa', '26', 1),
(124, 'South Goa', '26', 1),
(125, 'Ahmedabad', '5', 1),
(126, 'Amreli District', '5', 1),
(127, 'Anand', '5', 1),
(128, 'Banaskantha', '5', 1),
(129, 'Bharuch', '5', 1),
(130, 'Bhavnagar', '5', 1),
(131, 'Dahod', '5', 1),
(132, 'The Dangs', '5', 1),
(133, 'Gandhinagar', '5', 1),
(134, 'Jamnagar', '5', 1),
(135, 'Junagadh', '5', 1),
(136, 'Kutch', '5', 1),
(137, 'Kheda', '5', 1),
(138, 'Mehsana', '5', 1),
(139, 'Narmada', '5', 1),
(140, 'Navsari', '5', 1),
(141, 'Patan', '5', 1),
(142, 'Panchmahal', '5', 1),
(143, 'Porbandar', '5', 1),
(144, 'Rajkot', '5', 1),
(145, 'Sabarkantha', '5', 1),
(146, 'Surendranagar', '5', 1),
(147, 'Surat', '5', 1),
(148, 'Vadodara', '5', 1),
(149, 'Valsad', '5', 1),
(150, 'Ambala', '6', 1),
(151, 'Bhiwani', '6', 1),
(152, 'Faridabad', '6', 1),
(153, 'Fatehabad', '6', 1),
(154, 'Gurgaon', '6', 1),
(155, 'Hissar', '6', 1),
(156, 'Jhajjar', '6', 1),
(157, 'Jind', '6', 1),
(158, 'Karnal', '6', 1),
(159, 'Kaithal', '6', 1),
(160, 'Kurukshetra', '6', 1),
(161, 'Mahendragarh', '6', 1),
(162, 'Mewat', '6', 1),
(163, 'Panchkula', '6', 1),
(164, 'Panipat', '6', 1),
(165, 'Rewari', '6', 1),
(166, 'Rohtak', '6', 1),
(167, 'Sirsa', '6', 1),
(168, 'Sonepat', '6', 1),
(169, 'Yamuna Nagar', '6', 1),
(170, 'Palwal', '6', 1),
(171, 'Bilaspur', '7', 1),
(172, 'Chamba', '7', 1),
(173, 'Hamirpur', '7', 1),
(174, 'Kangra', '7', 1),
(175, 'Kinnaur', '7', 1),
(176, 'Kulu', '7', 1),
(177, 'Lahaul and Spiti', '7', 1),
(178, 'Mandi', '7', 1),
(179, 'Shimla', '7', 1),
(180, 'Sirmaur', '7', 1),
(181, 'Solan', '7', 1),
(182, 'Una', '7', 1),
(183, 'Anantnag', '8', 1),
(184, 'Badgam', '8', 1),
(185, 'Bandipore', '8', 1),
(186, 'Baramula', '8', 1),
(187, 'Doda', '8', 1),
(188, 'Jammu', '8', 1),
(189, 'Kargil', '8', 1),
(190, 'Kathua', '8', 1),
(191, 'Kupwara', '8', 1),
(192, 'Leh', '8', 1),
(193, 'Poonch', '8', 1),
(194, 'Pulwama', '8', 1),
(195, 'Rajauri', '8', 1),
(196, 'Srinagar', '8', 1),
(197, 'Samba', '8', 1),
(198, 'Udhampur', '8', 1),
(199, 'Bokaro', '34', 1),
(200, 'Chatra', '34', 1),
(201, 'Deoghar', '34', 1),
(202, 'Dhanbad', '34', 1),
(203, 'Dumka', '34', 1),
(204, 'Purba Singhbhum', '34', 1),
(205, 'Garhwa', '34', 1),
(206, 'Giridih', '34', 1),
(207, 'Godda', '34', 1),
(208, 'Gumla', '34', 1),
(209, 'Hazaribagh', '34', 1),
(210, 'Koderma', '34', 1),
(211, 'Lohardaga', '34', 1),
(212, 'Pakur', '34', 1),
(213, 'Palamu', '34', 1),
(214, 'Ranchi', '34', 1),
(215, 'Sahibganj', '34', 1),
(216, 'Seraikela and Kharsawan', '34', 1),
(217, 'Pashchim Singhbhum', '34', 1),
(218, 'Ramgarh', '34', 1),
(219, 'Bidar', '9', 1),
(220, 'Belgaum', '9', 1),
(221, 'Bijapur', '9', 1),
(222, 'Bagalkot', '9', 1),
(223, 'Bellary', '9', 1),
(224, 'Bangalore Rural District', '9', 1),
(225, 'Bangalore Urban District', '9', 1),
(226, 'Chamarajnagar', '9', 1),
(227, 'Chikmagalur', '9', 1),
(228, 'Chitradurga', '9', 1),
(229, 'Davanagere', '9', 1),
(230, 'Dharwad', '9', 1),
(231, 'Dakshina Kannada', '9', 1),
(232, 'Gadag', '9', 1),
(233, 'Gulbarga', '9', 1),
(234, 'Hassan', '9', 1),
(235, 'Haveri District', '9', 1),
(236, 'Kodagu', '9', 1),
(237, 'Kolar', '9', 1),
(238, 'Koppal', '9', 1),
(239, 'Mandya', '9', 1),
(240, 'Mysore', '9', 1),
(241, 'Raichur', '9', 1),
(242, 'Shimoga', '9', 1),
(243, 'Tumkur', '9', 1),
(244, 'Udupi', '9', 1),
(245, 'Uttara Kannada', '9', 1),
(246, 'Ramanagara', '9', 1),
(247, 'Chikballapur', '9', 1),
(248, 'Yadagiri', '9', 1),
(249, 'Alappuzha', '10', 1),
(250, 'Ernakulam', '10', 1),
(251, 'Idukki', '10', 1),
(252, 'Kollam', '10', 1),
(253, 'Kannur', '10', 1),
(254, 'Kasaragod', '10', 1),
(255, 'Kottayam', '10', 1),
(256, 'Kozhikode', '10', 1),
(257, 'Malappuram', '10', 1),
(258, 'Palakkad', '10', 1),
(259, 'Pathanamthitta', '10', 1),
(260, 'Thrissur', '10', 1),
(261, 'Thiruvananthapuram', '10', 1),
(262, 'Wayanad', '10', 1),
(263, 'Alirajpur', '11', 1),
(264, 'Anuppur', '11', 1),
(265, 'Ashok Nagar', '11', 1),
(266, 'Balaghat', '11', 1),
(267, 'Barwani', '11', 1),
(268, 'Betul', '11', 1),
(269, 'Bhind', '11', 1),
(270, 'Bhopal', '11', 1),
(271, 'Burhanpur', '11', 1),
(272, 'Chhatarpur', '11', 1),
(273, 'Chhindwara', '11', 1),
(274, 'Damoh', '11', 1),
(275, 'Datia', '11', 1),
(276, 'Dewas', '11', 1),
(277, 'Dhar', '11', 1),
(278, 'Dindori', '11', 1),
(279, 'Guna', '11', 1),
(280, 'Gwalior', '11', 1),
(281, 'Harda', '11', 1),
(282, 'Hoshangabad', '11', 1),
(283, 'Indore', '11', 1),
(284, 'Jabalpur', '11', 1),
(285, 'Jhabua', '11', 1),
(286, 'Katni', '11', 1),
(287, 'Khandwa', '11', 1),
(288, 'Khargone', '11', 1),
(289, 'Mandla', '11', 1),
(290, 'Mandsaur', '11', 1),
(291, 'Morena', '11', 1),
(292, 'Narsinghpur', '11', 1),
(293, 'Neemuch', '11', 1),
(294, 'Panna', '11', 1),
(295, 'Rewa', '11', 1),
(296, 'Rajgarh', '11', 1),
(297, 'Ratlam', '11', 1),
(298, 'Raisen', '11', 1),
(299, 'Sagar', '11', 1),
(300, 'Satna', '11', 1),
(301, 'Sehore', '11', 1),
(302, 'Seoni', '11', 1),
(303, 'Shahdol', '11', 1),
(304, 'Shajapur', '11', 1),
(305, 'Sheopur', '11', 1),
(306, 'Shivpuri', '11', 1),
(307, 'Sidhi', '11', 1),
(308, 'Singrauli', '11', 1),
(309, 'Tikamgarh', '11', 1),
(310, 'Ujjain', '11', 1),
(311, 'Umaria', '11', 1),
(312, 'Vidisha', '11', 1),
(313, 'Ahmednagar', '12', 1),
(314, 'Akola', '12', 1),
(315, 'Amrawati', '12', 1),
(316, 'Aurangabad', '12', 1),
(317, 'Bhandara', '12', 1),
(318, 'Beed', '12', 1),
(319, 'Buldhana', '12', 1),
(320, 'Chandrapur', '12', 1),
(321, 'Dhule', '12', 1),
(322, 'Gadchiroli', '12', 1),
(323, 'Gondiya', '12', 1),
(324, 'Hingoli', '12', 1),
(325, 'Jalgaon', '12', 1),
(326, 'Jalna', '12', 1),
(327, 'Kolhapur', '12', 1),
(328, 'Latur', '12', 1),
(329, 'Mumbai City', '12', 1),
(330, 'Mumbai suburban', '12', 1),
(331, 'Nandurbar', '12', 1),
(332, 'Nanded', '12', 1),
(333, 'Nagpur', '12', 1),
(334, 'Nashik', '12', 1),
(335, 'Osmanabad', '12', 1),
(336, 'Parbhani', '12', 1),
(337, 'Pune', '12', 1),
(338, 'Raigad', '12', 1),
(339, 'Ratnagiri', '12', 1),
(340, 'Sindhudurg', '12', 1),
(341, 'Sangli', '12', 1),
(342, 'Solapur', '12', 1),
(343, 'Satara', '12', 1),
(344, 'Thane', '12', 1),
(345, 'Wardha', '12', 1),
(346, 'Washim', '12', 1),
(347, 'Yavatmal', '12', 1),
(348, 'Bishnupur', '13', 1),
(349, 'Churachandpur', '13', 1),
(350, 'Chandel', '13', 1),
(351, 'Imphal East', '13', 1),
(352, 'Senapati', '13', 1),
(353, 'Tamenglong', '13', 1),
(354, 'Thoubal', '13', 1),
(355, 'Ukhrul', '13', 1),
(356, 'Imphal West', '13', 1),
(357, 'East Garo Hills', '14', 1),
(358, 'East Khasi Hills', '14', 1),
(359, 'Jaintia Hills', '14', 1),
(360, 'Ri-Bhoi', '14', 1),
(361, 'South Garo Hills', '14', 1),
(362, 'West Garo Hills', '14', 1),
(363, 'West Khasi Hills', '14', 1),
(364, 'Aizawl', '15', 1),
(365, 'Champhai', '15', 1),
(366, 'Kolasib', '15', 1),
(367, 'Lawngtlai', '15', 1),
(368, 'Lunglei', '15', 1),
(369, 'Mamit', '15', 1),
(370, 'Saiha', '15', 1),
(371, 'Serchhip', '15', 1),
(372, 'Dimapur', '16', 1),
(373, 'Kohima', '16', 1),
(374, 'Mokokchung', '16', 1),
(375, 'Mon', '16', 1),
(376, 'Phek', '16', 1),
(377, 'Tuensang', '16', 1),
(378, 'Wokha', '16', 1),
(379, 'Zunheboto', '16', 1),
(380, 'Angul', '17', 1),
(381, 'Boudh', '17', 1),
(382, 'Bhadrak', '17', 1),
(383, 'Bolangir', '17', 1),
(384, 'Bargarh', '17', 1),
(385, 'Baleswar', '17', 1),
(386, 'Cuttack', '17', 1),
(387, 'Debagarh', '17', 1),
(388, 'Dhenkanal', '17', 1),
(389, 'Ganjam', '17', 1),
(390, 'Gajapati', '17', 1),
(391, 'Jharsuguda', '17', 1),
(392, 'Jajapur', '17', 1),
(393, 'Jagatsinghpur', '17', 1),
(394, 'Khordha', '17', 1),
(395, 'Kendujhar', '17', 1),
(396, 'Kalahandi', '17', 1),
(397, 'Kandhamal', '17', 1),
(398, 'Koraput', '17', 1),
(399, 'Kendrapara', '17', 1),
(400, 'Malkangiri', '17', 1),
(401, 'Mayurbhanj', '17', 1),
(402, 'Nabarangpur', '17', 1),
(403, 'Nuapada', '17', 1),
(404, 'Nayagarh', '17', 1),
(405, 'Puri', '17', 1),
(406, 'Rayagada', '17', 1),
(407, 'Sambalpur', '17', 1),
(408, 'Subarnapur', '17', 1),
(409, 'Sundargarh', '17', 1),
(410, 'Karaikal', '27', 1),
(411, 'Mahe', '27', 1),
(412, 'Puducherry', '27', 1),
(413, 'Yanam', '27', 1),
(414, 'Amritsar', '18', 1),
(415, 'Bathinda', '18', 1),
(416, 'Firozpur', '18', 1),
(417, 'Faridkot', '18', 1),
(418, 'Fatehgarh Sahib', '18', 1),
(419, 'Gurdaspur', '18', 1),
(420, 'Hoshiarpur', '18', 1),
(421, 'Jalandhar', '18', 1),
(422, 'Kapurthala', '18', 1),
(423, 'Ludhiana', '18', 1),
(424, 'Mansa', '18', 1),
(425, 'Moga', '18', 1),
(426, 'Mukatsar', '18', 1),
(427, 'Nawan Shehar', '18', 1),
(428, 'Patiala', '18', 1),
(429, 'Rupnagar', '18', 1),
(430, 'Sangrur', '18', 1),
(431, 'Ajmer', '19', 1),
(432, 'Alwar', '19', 1),
(433, 'Bikaner', '19', 1),
(434, 'Barmer', '19', 1),
(435, 'Banswara', '19', 1),
(436, 'Bharatpur', '19', 1),
(437, 'Baran', '19', 1),
(438, 'Bundi', '19', 1),
(439, 'Bhilwara', '19', 1),
(440, 'Churu', '19', 1),
(441, 'Chittorgarh', '19', 1),
(442, 'Dausa', '19', 1),
(443, 'Dholpur', '19', 1),
(444, 'Dungapur', '19', 1),
(445, 'Ganganagar', '19', 1),
(446, 'Hanumangarh', '19', 1),
(447, 'Juhnjhunun', '19', 1),
(448, 'Jalore', '19', 1),
(449, 'Jodhpur', '19', 1),
(450, 'Jaipur', '19', 1),
(451, 'Jaisalmer', '19', 1),
(452, 'Jhalawar', '19', 1),
(453, 'Karauli', '19', 1),
(454, 'Kota', '19', 1),
(455, 'Nagaur', '19', 1),
(456, 'Pali', '19', 1),
(457, 'Pratapgarh', '19', 1),
(458, 'Rajsamand', '19', 1),
(459, 'Sikar', '19', 1),
(460, 'Sawai Madhopur', '19', 1),
(461, 'Sirohi', '19', 1),
(462, 'Tonk', '19', 1),
(463, 'Udaipur', '19', 1),
(464, 'East Sikkim', '20', 1),
(465, 'North Sikkim', '20', 1),
(466, 'South Sikkim', '20', 1),
(467, 'West Sikkim', '20', 1),
(468, 'Ariyalur', '21', 1),
(469, 'Chennai', '21', 1),
(470, 'Coimbatore', '21', 1),
(471, 'Cuddalore', '21', 1),
(472, 'Dharmapuri', '21', 1),
(473, 'Dindigul', '21', 1),
(474, 'Erode', '21', 1),
(475, 'Kanchipuram', '21', 1),
(476, 'Kanyakumari', '21', 1),
(477, 'Karur', '21', 1),
(478, 'Madurai', '21', 1),
(479, 'Nagapattinam', '21', 1),
(480, 'The Nilgiris', '21', 1),
(481, 'Namakkal', '21', 1),
(482, 'Perambalur', '21', 1),
(483, 'Pudukkottai', '21', 1),
(484, 'Ramanathapuram', '21', 1),
(485, 'Salem', '21', 1),
(486, 'Sivagangai', '21', 1),
(487, 'Tiruppur', '21', 1),
(488, 'Tiruchirappalli', '21', 1),
(489, 'Theni', '21', 1),
(490, 'Tirunelveli', '21', 1),
(491, 'Thanjavur', '21', 1),
(492, 'Thoothukudi', '21', 1),
(493, 'Thiruvallur', '21', 1),
(494, 'Thiruvarur', '21', 1),
(495, 'Tiruvannamalai', '21', 1),
(496, 'Vellore', '21', 1),
(497, 'Villupuram', '21', 1),
(498, 'Dhalai', '22', 1),
(499, 'North Tripura', '22', 1),
(500, 'South Tripura', '22', 1),
(501, 'West Tripura', '22', 1),
(502, 'Almora', '33', 1),
(503, 'Bageshwar', '33', 1),
(504, 'Chamoli', '33', 1),
(505, 'Champawat', '33', 1),
(506, 'Dehradun', '33', 1),
(507, 'Haridwar', '33', 1),
(508, 'Nainital', '33', 1),
(509, 'Pauri Garhwal', '33', 1),
(510, 'Pithoragharh', '33', 1),
(511, 'Rudraprayag', '33', 1),
(512, 'Tehri Garhwal', '33', 1),
(513, 'Udham Singh Nagar', '33', 1),
(514, 'Uttarkashi', '33', 1),
(515, 'Agra', '23', 1),
(516, 'Allahabad', '23', 1),
(517, 'Aligarh', '23', 1),
(518, 'Ambedkar Nagar', '23', 1),
(519, 'Auraiya', '23', 1),
(520, 'Azamgarh', '23', 1),
(521, 'Barabanki', '23', 1),
(522, 'Badaun', '23', 1),
(523, 'Bagpat', '23', 1),
(524, 'Bahraich', '23', 1),
(525, 'Bijnor', '23', 1),
(526, 'Ballia', '23', 1),
(527, 'Banda', '23', 1),
(528, 'Balrampur', '23', 1),
(529, 'Bareilly', '23', 1),
(530, 'Basti', '23', 1),
(531, 'Bulandshahr', '23', 1),
(532, 'Chandauli', '23', 1),
(533, 'Chitrakoot', '23', 1),
(534, 'Deoria', '23', 1),
(535, 'Etah', '23', 1),
(536, 'Kanshiram Nagar', '23', 1),
(537, 'Etawah', '23', 1),
(538, 'Firozabad', '23', 1),
(539, 'Farrukhabad', '23', 1),
(540, 'Fatehpur', '23', 1),
(541, 'Faizabad', '23', 1),
(542, 'Gautam Buddha Nagar', '23', 1),
(543, 'Gonda', '23', 1),
(544, 'Ghazipur', '23', 1),
(545, 'Gorkakhpur', '23', 1),
(546, 'Ghaziabad', '23', 1),
(547, 'Hamirpur', '23', 1),
(548, 'Hardoi', '23', 1),
(549, 'Mahamaya Nagar', '23', 1),
(550, 'Jhansi', '23', 1),
(551, 'Jalaun', '23', 1),
(552, 'Jyotiba Phule Nagar', '23', 1),
(553, 'Jaunpur District', '23', 1),
(554, 'Kanpur Dehat', '23', 1),
(555, 'Kannauj', '23', 1),
(556, 'Kanpur Nagar', '23', 1),
(557, 'Kaushambi', '23', 1),
(558, 'Kushinagar', '23', 1),
(559, 'Lalitpur', '23', 1),
(560, 'Lakhimpur Kheri', '23', 1),
(561, 'Lucknow', '23', 1),
(562, 'Mau', '23', 1),
(563, 'Meerut', '23', 1),
(564, 'Maharajganj', '23', 1),
(565, 'Mahoba', '23', 1),
(566, 'Mirzapur', '23', 1),
(567, 'Moradabad', '23', 1),
(568, 'Mainpuri', '23', 1),
(569, 'Mathura', '23', 1),
(570, 'Muzaffarnagar', '23', 1),
(571, 'Pilibhit', '23', 1),
(572, 'Pratapgarh', '23', 1),
(573, 'Rampur', '23', 1),
(574, 'Rae Bareli', '23', 1),
(575, 'Saharanpur', '23', 1),
(576, 'Sitapur', '23', 1),
(577, 'Shahjahanpur', '23', 1),
(578, 'Sant Kabir Nagar', '23', 1),
(579, 'Siddharthnagar', '23', 1),
(580, 'Sonbhadra', '23', 1),
(581, 'Sant Ravidas Nagar', '23', 1),
(582, 'Sultanpur', '23', 1),
(583, 'Shravasti', '23', 1),
(584, 'Unnao', '23', 1),
(585, 'Varanasi', '23', 1),
(586, 'Birbhum', '24', 1),
(587, 'Bankura', '24', 1),
(588, 'Bardhaman', '24', 1),
(589, 'Darjeeling', '24', 1),
(590, 'Dakshin Dinajpur', '24', 1),
(591, 'Hooghly', '24', 1),
(592, 'Howrah', '24', 1),
(593, 'Jalpaiguri', '24', 1),
(594, 'Cooch Behar', '24', 1),
(595, 'Kolkata', '24', 1),
(596, 'Malda', '24', 1),
(597, 'Midnapore', '24', 1),
(598, 'Murshidabad', '24', 1),
(599, 'Nadia', '24', 1),
(600, 'North 24 Parganas', '24', 1),
(601, 'South 24 Parganas', '24', 1),
(602, 'Purulia', '24', 1),
(603, 'Uttar Dinajpur', '24', 1);

-- --------------------------------------------------------

--
-- Table structure for table `configmaster`
--

CREATE TABLE `configmaster` (
  `SrNo` int(11) NOT NULL,
  `SupportMobile` varchar(50) NOT NULL,
  `SupportEmail` varchar(200) NOT NULL,
  `SupportCCEmail` varchar(100) NOT NULL DEFAULT 'dreamwirelessdeals@gmail.com,ilogix.com@gmail.com',
  `SupportName` varchar(40) NOT NULL,
  `SupportCompany` varchar(40) NOT NULL,
  `SupportWebsite` varchar(40) NOT NULL,
  `EnableAlertSms` tinyint(4) NOT NULL DEFAULT '1',
  `HttpSmsApi` varchar(250) NOT NULL,
  `AlertSmsSender` varchar(15) NOT NULL,
  `AlertTimeSpan` tinyint(4) NOT NULL DEFAULT '5',
  `ZmHost` varchar(50) NOT NULL,
  `AdminEmail` varchar(50) NOT NULL,
  `HostName` varchar(30) NOT NULL,
  `PortName` int(11) NOT NULL,
  `User` varchar(40) NOT NULL,
  `EmailPass` varchar(50) NOT NULL,
  `RefreshPeriod` int(11) NOT NULL,
  `SmsAlertSrNo` int(11) NOT NULL DEFAULT '0',
  `AppAlertSrNo` int(11) NOT NULL DEFAULT '0',
  `iAppAlertSrNo` int(11) NOT NULL DEFAULT '0',
  `EmailAlertSrNo` int(11) NOT NULL DEFAULT '0',
  `EnableAppAlert` tinyint(4) NOT NULL DEFAULT '1',
  `EnableAlertEmail` tinyint(4) NOT NULL DEFAULT '1',
  `EnableiAppAlert` tinyint(4) NOT NULL DEFAULT '1',
  `EnableThumbnail` tinyint(4) NOT NULL DEFAULT '0',
  `RecordingBaseUrl` varchar(200) NOT NULL COMMENT 'absolute dir path where recording is done.',
  `HlsChunkLength` tinyint(4) NOT NULL DEFAULT '1',
  `VideoStartTimeDuration` int(11) NOT NULL DEFAULT '10000',
  `VideoTimeDuration` int(11) NOT NULL DEFAULT '30000',
  `VideoSegmentDuration` int(11) NOT NULL DEFAULT '10',
  `AlxServerIP` varchar(30) NOT NULL DEFAULT '167.114.172.200',
  `AlxServerPort` int(11) NOT NULL DEFAULT '1935',
  `AlxServerUserName` varchar(25) NOT NULL DEFAULT 'eyelogix',
  `AlxServerPassword` varchar(25) NOT NULL DEFAULT 'eyelogix123',
  `RecordedFileRetainCount` tinyint(4) NOT NULL DEFAULT '20',
  `AlarmServerPort` int(11) NOT NULL DEFAULT '4004',
  `DvrUserName` varchar(30) NOT NULL DEFAULT 'ilogix',
  `DvrPassword` varchar(30) NOT NULL DEFAULT 'Admin4231',
  `EventBaseUrl` varchar(200) NOT NULL,
  `FfmpegPath` varchar(100) NOT NULL,
  `PopUpVisibleDuration` int(11) NOT NULL DEFAULT '20000',
  `AppearPopUpFrom` smallint(2) NOT NULL DEFAULT '60',
  `AppearPopUpTo` tinyint(2) NOT NULL DEFAULT '20',
  `NTPServer` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `hr_actionlogmaster`
--

CREATE TABLE `hr_actionlogmaster` (
  `SrNo` bigint(20) NOT NULL,
  `ActionOn` varchar(20) NOT NULL,
  `ActionBy` varchar(20) NOT NULL,
  `Description` varchar(500) NOT NULL,
  `ActionTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `LoginUser` int(11) NOT NULL,
  `loginIp` varchar(50) NOT NULL,
  `ActivityCode` varchar(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hr_actionlogmaster`
--

INSERT INTO `hr_actionlogmaster` (`SrNo`, `ActionOn`, `ActionBy`, `Description`, `ActionTime`, `LoginUser`, `loginIp`, `ActivityCode`) VALUES
(9866, '414153', 'ADMIN', 'asdfg', '2023-09-05 07:49:48', 414153, '10.10.17.10', '1'),
(9865, '414153', 'ADMIN', 'asdfg', '2023-09-05 07:49:25', 414153, '10.10.17.10', '1'),
(9864, '414153', 'ADMIN', 'asdfg', '2023-09-05 07:49:10', 414153, '10.10.17.10', '1'),
(9863, '2003', 'ADMIN', 'Test', '2023-09-05 07:48:35', 414153, '10.10.17.10', '1'),
(9862, '2003', 'ADMIN', 'Test', '2023-09-05 07:48:15', 414153, '10.10.17.10', '1'),
(9867, '2003', 'ADMIN', 'asdfg', '2023-09-05 07:51:05', 414153, '10.10.17.10', '1'),
(9868, '2003', 'ADMIN', 'asdfg', '2023-09-05 07:51:14', 414153, '10.10.17.10', '1'),
(9869, '2003', 'ADMIN', 'leave request from 2023-08-17to2023-08-25has been approved byadminon2023-09-5 16:8:4', '2023-09-05 10:38:04', 414153, '10.10.20.22', '1'),
(9870, '2003', 'ADMIN', 'leave request from 2023-08-17to2023-08-25has been approved byadminon2023-09-5 16:9:44', '2023-09-05 10:39:44', 414153, '10.10.20.22', '1'),
(9871, '2003', 'ADMIN', 'leave request from 2023-08-17to2023-08-26has been approved byadminon2023-09-5 16:11:22', '2023-09-05 10:41:22', 414153, '10.10.20.22', '1'),
(9872, '2003', 'ADMIN', '2023-08-17 to 2023-08-26 is still pending that need to be address', '2023-09-05 10:43:39', 414153, '10.10.20.22', '1'),
(9873, '2003', 'ADMIN', 'leave request from 2023-08-17 to 2023-08-26 has been approved by admin on 2023-09-5 16:13:46', '2023-09-05 10:43:46', 414153, '10.10.20.22', '1'),
(9874, '2003', 'ADMIN', 'leave request from 2023-08-17 to 2023-08-26 has been rejected by admin on 2023-09-5 16:15:1', '2023-09-05 10:45:01', 414153, '10.10.20.22', '1'),
(9875, '414153', 'ADMIN', '2023-08-24 to 2023-08-24 is still pending that need to be address', '2023-09-05 10:51:23', 414153, '10.10.17.10', '1'),
(9876, '414153', 'ADMIN', 'leave request from 2023-08-26 to 2023-08-26 has been approved by admin on 2023-09-5 16:22:13', '2023-09-05 10:52:13', 414153, '10.10.17.10', '1'),
(9877, '414153', 'ADMIN', 'leave request from 2023-08-18 to 2023-08-19 has been approved by admin on 2023-09-5 16:20:17', '2023-09-05 10:50:17', 414153, '10.10.20.22', '1'),
(9878, '414153', 'ADMIN', '2023-08-19 to 2023-08-20 is still pending that need to be address', '2023-09-05 10:50:36', 414153, '10.10.20.22', '1'),
(9879, '414153', 'ADMIN', 'leave request from 2023-08-19 to 2023-08-26 has been approved by admin on 2023-09-5 16:25:18', '2023-09-05 10:55:18', 414153, '10.10.20.22', '1'),
(9880, '414153', 'ADMIN', '2023-08-19 to 2023-08-19 is still pending that need to be address', '2023-09-05 10:56:03', 414153, '10.10.20.22', '1'),
(9881, '2003', 'ADMIN', '2023-08-17 to 2023-08-25 is still pending that need to be address', '2023-09-05 11:49:12', 414153, '10.10.20.22', '1'),
(9882, '414153', 'ADMIN', 'leave request from 2023-08-18 to 2023-08-26 has been approved by admin on 2023-09-11 17:47:36', '2023-09-11 12:17:36', 414153, '10.10.17.10', '1'),
(9883, '414153', 'ADMIN', '2023-08-18 to 2023-08-26 is still pending that need to be address', '2023-09-11 12:17:41', 414153, '10.10.17.10', '1');

-- --------------------------------------------------------

--
-- Table structure for table `hr_attendancedetailsmast`
--

CREATE TABLE `hr_attendancedetailsmast` (
  `SrNo` int(11) NOT NULL,
  `EmployeeId` int(11) NOT NULL,
  `Month` tinyint(4) NOT NULL,
  `Year` smallint(4) NOT NULL,
  `EntryDate` date NOT NULL,
  `EntryTime` time NOT NULL,
  `OutDate` date NOT NULL,
  `OutTime` time NOT NULL,
  `TotalTimeInMinutes` int(10) NOT NULL,
  `DelayedEntry` int(11) NOT NULL DEFAULT '0',
  `DelayedExit` int(11) NOT NULL DEFAULT '0',
  `Status` varchar(10) DEFAULT 'P',
  `Remarks` varchar(200) DEFAULT NULL,
  `StoreTitle` varchar(50) NOT NULL,
  `IsManual` tinyint(4) NOT NULL DEFAULT '0',
  `Active` tinyint(4) NOT NULL DEFAULT '1',
  `InDateTime` datetime DEFAULT NULL,
  `OutDateTime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hr_attendancedetailsmast`
--

INSERT INTO `hr_attendancedetailsmast` (`SrNo`, `EmployeeId`, `Month`, `Year`, `EntryDate`, `EntryTime`, `OutDate`, `OutTime`, `TotalTimeInMinutes`, `DelayedEntry`, `DelayedExit`, `Status`, `Remarks`, `StoreTitle`, `IsManual`, `Active`, `InDateTime`, `OutDateTime`) VALUES
(56754, 2003, 8, 2023, '2023-08-24', '16:24:42', '2023-08-24', '16:29:30', 405, 400, -90, 'P', NULL, '', 0, 1, NULL, NULL),
(56755, 2003, 8, 2023, '2023-08-25', '10:10:53', '2023-08-25', '16:01:02', 376, 26, -119, 'P', NULL, '', 0, 1, NULL, NULL),
(56756, 2003, 8, 2023, '2023-08-28', '11:31:42', '2023-08-28', '11:34:25', 110, 107, -385, 'P', NULL, '', 0, 1, NULL, NULL),
(56757, 414153, 8, 2023, '2023-08-28', '12:23:35', '2023-08-28', '12:23:40', 159, 159, -336, 'P', NULL, '', 0, 1, NULL, NULL),
(56758, 2003, 8, 2023, '2023-08-21', '11:31:42', '2023-08-28', '11:34:25', 110, 107, -385, 'P', NULL, '', 0, 1, NULL, NULL),
(56759, 2003, 8, 2023, '2023-08-29', '10:51:53', '2023-08-29', '17:14:12', 449, 67, -46, 'P', NULL, '', 0, 1, NULL, NULL),
(56760, 2003, 8, 2023, '2023-08-30', '10:17:50', '0000-00-00', '00:00:00', 0, 33, 0, 'P', NULL, '', 0, 1, NULL, NULL),
(56761, 414153, 9, 2023, '2023-09-04', '14:25:50', '0000-00-00', '00:00:00', 0, 281, 0, 'P', NULL, '', 0, 1, NULL, NULL),
(56762, 414141, 9, 2023, '2023-09-06', '11:10:39', '0000-00-00', '00:00:00', 0, 86, 0, 'P', NULL, '', 0, 1, NULL, NULL),
(56763, 414153, 9, 2023, '2023-09-06', '11:11:30', '2023-09-06', '11:11:39', 88, 87, -407, 'P', NULL, '', 0, 1, NULL, NULL),
(56764, 2003, 9, 2023, '2023-09-06', '11:40:38', '0000-00-00', '00:00:00', 0, 116, 0, 'P', NULL, '', 0, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `hr_attendancemast`
--

CREATE TABLE `hr_attendancemast` (
  `SrNo` int(11) NOT NULL,
  `EmployeeId` int(11) NOT NULL,
  `EmployeeUserName` varchar(50) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Month` int(2) NOT NULL,
  `Year` int(4) NOT NULL,
  `EntryDate` date NOT NULL,
  `EntryTime` time NOT NULL,
  `ActionType` varchar(10) NOT NULL,
  `Shift` varchar(25) NOT NULL,
  `Remarks` varchar(200) DEFAULT NULL,
  `StoreTitle` varchar(50) NOT NULL,
  `PresenceTime` int(11) NOT NULL DEFAULT '0' COMMENT 'In Sec'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hr_attendancemast`
--

INSERT INTO `hr_attendancemast` (`SrNo`, `EmployeeId`, `EmployeeUserName`, `Name`, `Month`, `Year`, `EntryDate`, `EntryTime`, `ActionType`, `Shift`, `Remarks`, `StoreTitle`, `PresenceTime`) VALUES
(113230, 2003, 'Sikindra', 'Ram', 8, 2023, '2023-08-24', '16:24:42', 'IN', '9:30 AM. - 6:00 PM.', NULL, '', 0),
(113231, 2003, 'Sikindra', 'Ram', 8, 2023, '2023-08-24', '16:24:44', 'OUT', '9:30 AM. - 6:00 PM.', NULL, '', 0),
(113232, 2003, 'Sikindra', 'Ram', 8, 2023, '2023-08-24', '16:25:44', 'IN', '9:30 AM. - 6:00 PM.', NULL, '', 0),
(113233, 2003, 'Sikindra', 'Ram', 8, 2023, '2023-08-24', '16:25:47', 'OUT', '9:30 AM. - 6:00 PM.', NULL, '', 3),
(113234, 2003, 'Sikindra', 'Ram', 8, 2023, '2023-08-24', '16:25:58', 'IN', '9:30 AM. - 6:00 PM.', NULL, '', 0),
(113235, 2003, 'Sikindra', 'Ram', 8, 2023, '2023-08-24', '16:26:01', 'OUT', '9:30 AM. - 6:00 PM.', NULL, '', 3),
(113236, 2003, 'Sikindra', 'Ram', 8, 2023, '2023-08-24', '16:26:04', 'IN', '9:30 AM. - 6:00 PM.', NULL, '', 0),
(113237, 2003, 'Sikindra', 'Ram', 8, 2023, '2023-08-24', '16:26:06', 'OUT', '9:30 AM. - 6:00 PM.', NULL, '', 2),
(113238, 2003, 'Sikindra', 'Ram', 8, 2023, '2023-08-24', '16:28:52', 'IN', '9:30 AM. - 6:00 PM.', NULL, '', 0),
(113239, 2003, 'Sikindra', 'Ram', 8, 2023, '2023-08-24', '16:28:54', 'OUT', '9:30 AM. - 6:00 PM.', NULL, '', 2),
(113240, 2003, 'Sikindra', 'Ram', 8, 2023, '2023-08-24', '16:28:57', 'IN', '9:30 AM. - 6:00 PM.', NULL, '', 0),
(113241, 2003, 'Sikindra', 'Ram', 8, 2023, '2023-08-24', '16:29:26', 'OUT', '9:30 AM. - 6:00 PM.', NULL, '', 29),
(113242, 2003, 'Sikindra', 'Ram', 8, 2023, '2023-08-24', '16:29:28', 'IN', '9:30 AM. - 6:00 PM.', NULL, '', 0),
(113243, 2003, 'Sikindra', 'Ram', 8, 2023, '2023-08-24', '16:29:30', 'OUT', '9:30 AM. - 6:00 PM.', NULL, '', 2),
(113244, 2003, 'Sikindra', 'Ram', 8, 2023, '2023-08-25', '10:10:53', 'IN', '9:30 AM. - 6:00 PM.', NULL, '', 0),
(113245, 2003, 'Sikindra', 'Ram', 8, 2023, '2023-08-25', '10:10:58', 'OUT', '9:30 AM. - 6:00 PM.', NULL, '', 5),
(113246, 2003, 'Sikindra', 'Ram', 8, 2023, '2023-08-25', '11:01:26', 'IN', '9:30 AM. - 6:00 PM.', NULL, '', 0),
(113247, 2003, 'Sikindra', 'Ram', 8, 2023, '2023-08-25', '11:05:46', 'OUT', '9:30 AM. - 6:00 PM.', NULL, '', 260),
(113248, 2003, 'Sikindra', 'Ram', 8, 2023, '2023-08-25', '11:05:49', 'IN', '9:30 AM. - 6:00 PM.', NULL, '', 0),
(113249, 2003, 'Sikindra', 'Ram', 8, 2023, '2023-08-25', '11:05:51', 'OUT', '9:30 AM. - 6:00 PM.', NULL, '', 2),
(113250, 2003, 'Sikindra', 'Ram', 8, 2023, '2023-08-25', '11:07:16', 'IN', '9:30 AM. - 6:00 PM.', NULL, '', 0),
(113251, 2003, 'Sikindra', 'Ram', 8, 2023, '2023-08-25', '11:20:58', 'OUT', '9:30 AM. - 6:00 PM.', NULL, '', 822),
(113252, 2003, 'Sikindra', 'Ram', 8, 2023, '2023-08-25', '11:25:19', 'IN', '9:30 AM. - 6:00 PM.', NULL, '', 0),
(113253, 2003, 'Sikindra', 'Ram', 8, 2023, '2023-08-25', '11:32:10', 'OUT', '9:30 AM. - 6:00 PM.', NULL, '', 411),
(113254, 2003, 'Sikindra', 'Ram', 8, 2023, '2023-08-25', '12:00:31', 'IN', '9:30 AM. - 6:00 PM.', NULL, '', 0),
(113255, 2003, 'Sikindra', 'Ram', 8, 2023, '2023-08-25', '12:06:31', 'OUT', '9:30 AM. - 6:00 PM.', NULL, '', 360),
(113256, 2003, 'Sikindra', 'Ram', 8, 2023, '2023-08-25', '12:52:27', 'IN', '9:30 AM. - 6:00 PM.', NULL, '', 0),
(113257, 2003, 'Sikindra', 'Ram', 8, 2023, '2023-08-25', '12:52:30', 'OUT', '9:30 AM. - 6:00 PM.', NULL, '', 3),
(113258, 2003, 'Sikindra', 'Ram', 8, 2023, '2023-08-25', '12:53:37', 'IN', '9:30 AM. - 6:00 PM.', NULL, '', 0),
(113259, 2003, 'Sikindra', 'Ram', 8, 2023, '2023-08-25', '12:54:34', 'OUT', '9:30 AM. - 6:00 PM.', NULL, '', 57),
(113260, 2003, 'Sikindra', 'Ram', 8, 2023, '2023-08-25', '15:45:57', 'IN', '9:30 AM. - 6:00 PM.', NULL, '', 0),
(113261, 2003, 'Sikindra', 'Ram', 8, 2023, '2023-08-25', '16:01:02', 'OUT', '9:30 AM. - 6:00 PM.', NULL, '', 905),
(113262, 2003, 'Sikindra', 'Ram', 8, 2023, '2023-08-25', '16:01:09', 'IN', '9:30 AM. - 6:00 PM.', NULL, '', 0),
(113263, 2003, 'Sikindra', 'Ram', 8, 2023, '2023-08-28', '11:31:42', 'IN', '9:30 AM. - 6:00 PM.', NULL, '', 0),
(113264, 2003, 'Sikindra', 'Ram', 8, 2023, '2023-08-28', '11:31:47', 'OUT', '9:30 AM. - 6:00 PM.', NULL, '', 5),
(113265, 2003, 'Sikindra', 'Ram', 8, 2023, '2023-08-28', '11:32:25', 'IN', '9:30 AM. - 6:00 PM.', NULL, '', 0),
(113266, 2003, 'Sikindra', 'Ram', 8, 2023, '2023-08-28', '11:32:37', 'OUT', '9:30 AM. - 6:00 PM.', NULL, '', 12),
(113267, 2003, 'Sikindra', 'Ram', 8, 2023, '2023-08-28', '11:32:40', 'IN', '9:30 AM. - 6:00 PM.', NULL, '', 0),
(113268, 2003, 'Sikindra', 'Ram', 8, 2023, '2023-08-28', '11:33:17', 'OUT', '9:30 AM. - 6:00 PM.', NULL, '', 37),
(113269, 2003, 'Sikindra', 'Ram', 8, 2023, '2023-08-28', '11:34:04', 'IN', '9:30 AM. - 6:00 PM.', NULL, '', 0),
(113270, 2003, 'Sikindra', 'Ram', 8, 2023, '2023-08-28', '11:34:08', 'OUT', '9:30 AM. - 6:00 PM.', NULL, '', 4),
(113271, 2003, 'Sikindra', 'Ram', 8, 2023, '2023-08-28', '11:34:10', 'IN', '9:30 AM. - 6:00 PM.', NULL, '', 0),
(113272, 2003, 'Sikindra', 'Ram', 8, 2023, '2023-08-28', '11:34:25', 'OUT', '9:30 AM. - 6:00 PM.', NULL, '', 15),
(113273, 2003, 'admin', 'Rahul', 8, 2023, '2023-08-21', '12:23:35', 'IN', '9:30 AM. - 6:00 PM.', NULL, '', 0),
(113274, 2003, 'admin', 'Rahul', 8, 2023, '2023-08-21', '12:23:40', 'OUT', '9:30 AM. - 6:00 PM.', NULL, '', 5),
(113275, 2003, 'Sikindra', 'Ram', 8, 2023, '2023-08-29', '10:51:53', 'IN', '9:30 AM. - 6:00 PM.', NULL, '', 0),
(113276, 2003, 'Sikindra', 'Ram', 8, 2023, '2023-08-29', '11:20:32', 'OUT', '9:30 AM. - 6:00 PM.', NULL, '', 1719),
(113277, 2003, 'Sikindra', 'Ram', 8, 2023, '2023-08-29', '11:20:35', 'IN', '9:30 AM. - 6:00 PM.', NULL, '', 0),
(113278, 2003, 'Sikindra', 'Ram', 8, 2023, '2023-08-29', '11:55:05', 'OUT', '9:30 AM. - 6:00 PM.', NULL, '', 2070),
(113279, 2003, 'Sikindra', 'Ram', 8, 2023, '2023-08-29', '11:55:29', 'IN', '9:30 AM. - 6:00 PM.', NULL, '', 0),
(113280, 2003, 'Sikindra', 'Ram', 8, 2023, '2023-08-29', '12:35:24', 'OUT', '9:30 AM. - 6:00 PM.', NULL, '', 2395),
(113281, 2003, 'Sikindra', 'Ram', 8, 2023, '2023-08-29', '12:35:28', 'IN', '9:30 AM. - 6:00 PM.', NULL, '', 0),
(113282, 2003, 'Sikindra', 'Ram', 8, 2023, '2023-08-29', '14:46:09', 'OUT', '9:30 AM. - 6:00 PM.', NULL, '', 7841),
(113283, 2003, 'Sikindra', 'Ram', 8, 2023, '2023-08-29', '14:46:13', 'IN', '9:30 AM. - 6:00 PM.', NULL, '', 0),
(113284, 2003, 'Sikindra', 'Ram', 8, 2023, '2023-08-29', '17:14:12', 'OUT', '9:30 AM. - 6:00 PM.', NULL, '', 8879),
(113285, 2003, 'Sikindra', 'Ram', 8, 2023, '2023-08-30', '10:17:50', 'IN', '9:30 AM. - 6:00 PM.', NULL, '', 0),
(113286, 414153, 'admin', 'Rahul', 9, 2023, '2023-09-04', '14:25:50', 'IN', '9:30 AM. - 6:00 PM.', NULL, '', 0),
(113287, 414141, 'mukesh', 'Mukesh', 9, 2023, '2023-09-06', '11:10:39', 'IN', '9:30 AM. - 6:00 PM.', NULL, '', 0),
(113288, 414153, 'admin', 'Rahul', 9, 2023, '2023-09-06', '11:11:30', 'IN', '9:30 AM. - 6:00 PM.', NULL, '', 0),
(113289, 414153, 'admin', 'Rahul', 9, 2023, '2023-09-06', '11:11:39', 'OUT', '9:30 AM. - 6:00 PM.', NULL, '', 9),
(113290, 2003, 'Sikindra', 'Ram', 9, 2023, '2023-09-06', '11:40:38', 'IN', '9:30 AM. - 6:00 PM.', NULL, '', 0),
(113291, 414153, 'admin', 'Rahul', 9, 2023, '2023-09-06', '11:41:08', 'IN', '9:30 AM. - 6:00 PM.', NULL, '', 0),
(113292, 414153, 'admin', 'Rahul', 9, 2023, '2023-09-06', '11:41:08', 'IN', '9:30 AM. - 6:00 PM.', NULL, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `hr_configmast`
--

CREATE TABLE `hr_configmast` (
  `SrNo` int(11) NOT NULL,
  `GracePeriodCount` int(11) NOT NULL,
  `GracePeriodInterval` int(11) NOT NULL,
  `EnableGracePeriod` tinyint(4) NOT NULL DEFAULT '1',
  `HostName` varchar(50) NOT NULL,
  `PortName` int(10) NOT NULL,
  `User` varchar(40) NOT NULL,
  `EmailPass` varchar(50) NOT NULL,
  `AdminEmail` varchar(50) NOT NULL,
  `HalfDayTimePeriod` int(10) NOT NULL,
  `EnableHostName` tinyint(4) NOT NULL,
  `EnableIPAddress` tinyint(4) NOT NULL,
  `EnableMacAddress` tinyint(4) NOT NULL,
  `LoginDisableMsg` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `hr_configmaster`
--

CREATE TABLE `hr_configmaster` (
  `SrNo` int(11) NOT NULL,
  `GracePeriodCount` int(11) NOT NULL,
  `GracePeriodInterval` int(11) NOT NULL,
  `EnableGracePeriod` tinyint(4) NOT NULL DEFAULT '1',
  `HostName` varchar(50) NOT NULL,
  `PortName` int(10) NOT NULL,
  `User` varchar(40) NOT NULL,
  `EmailPass` varchar(50) NOT NULL,
  `AdminEmail` varchar(50) NOT NULL,
  `HalfDayTimePeriod` int(10) NOT NULL,
  `EnableHostName` tinyint(4) NOT NULL,
  `EnableIPAddress` tinyint(4) NOT NULL,
  `EnableMacAddress` tinyint(4) NOT NULL,
  `LoginDisableMsg` varchar(200) NOT NULL,
  `SupportCCEmail` varchar(100) NOT NULL DEFAULT 'dreamwirelessdeals@gmail.com,ilogix.com@gmail.com'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `hr_designation`
--

CREATE TABLE `hr_designation` (
  `DesignationId` int(11) NOT NULL,
  `DesignationCode` varchar(50) NOT NULL,
  `GracePeriod` smallint(6) NOT NULL,
  `EnableGracePeriod` tinyint(4) NOT NULL,
  `Status` varchar(20) NOT NULL DEFAULT 'ACTIVE'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hr_designation`
--

INSERT INTO `hr_designation` (`DesignationId`, `DesignationCode`, `GracePeriod`, `EnableGracePeriod`, `Status`) VALUES
(43, 'Admin', 15, 1, 'ACTIVE'),
(44, 'Developer', 15, 1, 'ACTIVE'),
(45, 'Manager', 20, 1, 'ACTIVE'),
(46, 'Team Leader', 15, 1, 'ACTIVE'),
(47, 'HR', 10, 1, 'ACTIVE'),
(48, 'Project Director', 10, 1, 'ACTIVE'),
(49, 'Programme Head', 50, 1, 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `hr_empipmaster`
--

CREATE TABLE `hr_empipmaster` (
  `SrNo` int(11) NOT NULL,
  `EmployeeId` int(11) NOT NULL,
  `IPAddress` varchar(30) NOT NULL,
  `EntryDateTime` datetime NOT NULL,
  `Active` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hr_empipmaster`
--

INSERT INTO `hr_empipmaster` (`SrNo`, `EmployeeId`, `IPAddress`, `EntryDateTime`, `Active`) VALUES
(496, 2003, '122.176.42.129', '2023-09-12 10:12:31', 1),
(497, 2004, '1200', '2023-09-12 15:35:24', 1),
(498, 2001, '122.176.42.128', '2023-09-12 16:01:40', 1);

-- --------------------------------------------------------

--
-- Table structure for table `hr_employeeallocationmaster`
--

CREATE TABLE `hr_employeeallocationmaster` (
  `SrNo` int(11) NOT NULL,
  `EmployeeId` int(11) NOT NULL,
  `EmployeeUserName` text NOT NULL,
  `EmployeeName` varchar(70) NOT NULL,
  `AllocatedEmployeeId` int(11) NOT NULL,
  `AllocationDateTime` datetime NOT NULL,
  `AllocatedBy` int(11) NOT NULL,
  `AllocationStatus` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hr_employeeallocationmaster`
--

INSERT INTO `hr_employeeallocationmaster` (`SrNo`, `EmployeeId`, `EmployeeUserName`, `EmployeeName`, `AllocatedEmployeeId`, `AllocationDateTime`, `AllocatedBy`, `AllocationStatus`) VALUES
(75, 2003, 'Sikindra', 'Ram', 414141, '2023-09-12 06:32:02', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `hr_employeemaster`
--

CREATE TABLE `hr_employeemaster` (
  `SrNo` int(11) NOT NULL,
  `EmployeeId` varchar(20) DEFAULT NULL,
  `EmployeeUserName` varchar(20) NOT NULL,
  `EmployeePassword` varchar(50) NOT NULL,
  `UserType` varchar(10) NOT NULL DEFAULT 'EMP',
  `Name` varchar(50) NOT NULL,
  `LastName` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Mobile` varchar(16) NOT NULL,
  `Std` int(11) NOT NULL,
  `OfficeNumber` varchar(20) NOT NULL,
  `DateOfBirth` varchar(20) NOT NULL,
  `Education` varchar(20) NOT NULL,
  `MaritalStatus` varchar(20) NOT NULL,
  `PreviousCompany` varchar(50) NOT NULL,
  `Experience` varchar(10) NOT NULL,
  `Designation` varchar(40) NOT NULL,
  `DateOfJoining` varchar(20) NOT NULL,
  `WorkShift` varchar(25) NOT NULL,
  `BloodGroup` varchar(4) NOT NULL,
  `Status` varchar(10) NOT NULL DEFAULT 'ACTIVE',
  `Grace` int(11) NOT NULL DEFAULT '0',
  `Address` varchar(100) NOT NULL,
  `City` varchar(50) NOT NULL,
  `State` varchar(50) NOT NULL,
  `Country` varchar(20) NOT NULL,
  `Pincode` varchar(10) NOT NULL,
  `Address1` varchar(100) NOT NULL,
  `City1` varchar(50) NOT NULL,
  `State1` varchar(50) NOT NULL,
  `Country1` varchar(20) NOT NULL,
  `Pincode1` varchar(10) NOT NULL,
  `SystemName` varchar(50) NOT NULL,
  `IP` varchar(50) NOT NULL,
  `MacAddress` varchar(50) NOT NULL,
  `DateOfLeave` varchar(40) NOT NULL,
  `AllocatedStoreId` varchar(100) NOT NULL,
  `SocialSecurity` varchar(50) NOT NULL,
  `DrivingLicence` varchar(50) NOT NULL,
  `ParentId` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hr_employeemaster`
--

INSERT INTO `hr_employeemaster` (`SrNo`, `EmployeeId`, `EmployeeUserName`, `EmployeePassword`, `UserType`, `Name`, `LastName`, `Email`, `Mobile`, `Std`, `OfficeNumber`, `DateOfBirth`, `Education`, `MaritalStatus`, `PreviousCompany`, `Experience`, `Designation`, `DateOfJoining`, `WorkShift`, `BloodGroup`, `Status`, `Grace`, `Address`, `City`, `State`, `Country`, `Pincode`, `Address1`, `City1`, `State1`, `Country1`, `Pincode1`, `SystemName`, `IP`, `MacAddress`, `DateOfLeave`, `AllocatedStoreId`, `SocialSecurity`, `DrivingLicence`, `ParentId`) VALUES
(30, '414153', 'admin', 'admin', 'ADMIN', 'Rahul', 'Gupta', 'rahulGupta@gmail.com', '9639639630', 0, '1', '1999-12-14', 'B.E', 'Married', '21344', '10', '45', '01/12/2022', '9:30 AM. - 6:00 PM.', 'B+', 'Active', 1, 'NOIDA ', '38', '2', 'India', '201305', 'NOIDA ', '38', '2', 'India', '201305', 'dev13', '10.10.20.13', '255.255.255.13', '', '', '', '', 0),
(77, '2003', 'Sikindra', 'Sikindra@19', 'EMP', 'Ram', 'Sarsaswat', 'ram@gmail.com', '9654356787', 0, '414', '1999-12-14', 'B.E', 'Married', 'ICFA', '4', 'Software Developer', '01/12/2022', '9:30 AM. - 6:00 PM.', 'A', 'Active', 1, 'Rohini Delhi', '434', '19', 'India', '110085', 'G 51 Vijay Vihar Phase 2, Rohini Sec -4', '62', '4', 'India', '110085', 'dev13', '10.10.20.13', '255.255.255.13', '', '', '', '', 0),
(81, '414141', 'mukesh', '1234', 'MAN', 'Mukesh', 'Gupta', 'mg@gmail.com', '8109895993', 0, '1', '1999-12-14', 'b.e', 'Separated', 'edcs ', '2', 'Developer', '2022-12-12', '9:30 AM. - 6:00 PM.', 'B+', 'Active', 0, 'ythwqwf', '29', '3', 'India', '122001', 'ythytrg', '186', '8', 'India', '122001', '', '', '', '', '', '', '', 0),
(83, '2001', 'T-001', '1000', 'EMP', 'Shayam', 'Sarsaswat', 'shyam@gmail.com', '9654356787', 0, '414', '1999-12-14', 'B.E', 'Married', 'ICFA', '4', 'Software Developer', '01/12/2022', '9:30 AM. - 6:00 PM.', 'A', 'Active', 1, 'Rohini Delhi', '38', '2', 'India', '110085', 'G 51 Vijay Vihar Phase 2, Rohini Sec -4', 'Delhi', 'Delhi', 'India', '110085', 'dev13', '10.10.20.13', '255.255.255.13', '', '', '', '', 0),
(84, '2002', 'hr', '1234', 'HR', 'Devendra', 'Sarsaswat', 'dpksaras1@gmail.com', '9654356787', 0, '2', '1999-12-14', 'B.E', 'Married', 'ICFA', '4', 'Software Developer', '01/12/2022', '9:30 AM. - 6:00 PM.', 'A-', 'Active', 1, 'Rohini Delhi', '38', '2', 'India', '110085', 'G 51 Vijay Vihar Phase 2, Rohini Sec -4', '29', '3', 'India', '110085', 'dev13', '10.10.20.13', '255.255.255.13', '', '', '', 'DL0012454', 0),
(88, '414142', '', 'Test@123', 'MAN', 'PranaB', 'Mukharjee', 'parnavmukharji@gmail.com', '6281722037', 0, '1', '1999-12-14', 'Bachelor in Informat', 'Single', 'Ramlogics Technsoft PVT. LTD.', '10', 'Manager', '2023-07-05T18:30:00.', '6:00 PM. - 2:30 AM.', 'A+', 'ACTIVE', 0, '80 C Mig Flats Madhuban Apratments Sec -82 ', '507', '33', 'India', '201304', '91/43 Patel Marg Mansarover Sec-9 ', '113', '29', 'India', '302020', '', '', '', '', '', '', '', 0),
(89, '2004', 'dscfdv', 'Sikindra@19', 'Executive', 'dsc', 'fdv', 'sk@gmail.com', '8109895993', 0, '1', '1999-12-14', 'b.e', 'Divorced', 'sax', '2', 'Developer', '2023-08-22T07:12:20.', '9:30 AM. - 6:00 PM.', 'AB+', 'ACTIVE', 0, 'yth', '38', '2', 'India', '122001', '', '', '', '', '', '', '', '', '', '', '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `hr_graceentrymast`
--

CREATE TABLE `hr_graceentrymast` (
  `SrNo` int(11) NOT NULL,
  `EmployeeId` int(11) NOT NULL,
  `GraceDate` date NOT NULL,
  `GraceTime` time NOT NULL,
  `Month` int(11) NOT NULL,
  `Year` int(11) NOT NULL,
  `Status` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `hr_halfdayentrymast`
--

CREATE TABLE `hr_halfdayentrymast` (
  `SrNo` int(11) NOT NULL,
  `EmployeeId` int(11) NOT NULL,
  `HalfDay` date NOT NULL,
  `HalfTime` time NOT NULL,
  `Month` int(4) NOT NULL,
  `Year` int(11) NOT NULL,
  `Status` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `hr_holidaymast`
--

CREATE TABLE `hr_holidaymast` (
  `SrNo` int(11) NOT NULL,
  `HolidayDate` date NOT NULL,
  `Description` varchar(50) NOT NULL,
  `OfficeId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hr_holidaymast`
--

INSERT INTO `hr_holidaymast` (`SrNo`, `HolidayDate`, `Description`, `OfficeId`) VALUES
(7, '2023-08-22', 'ghb v', 10),
(8, '2023-09-07', 'Janmashtami', 10);

-- --------------------------------------------------------

--
-- Table structure for table `hr_leavedetailsmast`
--

CREATE TABLE `hr_leavedetailsmast` (
  `SrNo` int(11) NOT NULL,
  `EmployeeId` int(11) NOT NULL,
  `ManagerId` int(10) NOT NULL DEFAULT '0',
  `RequestDateTime` datetime NOT NULL,
  `LeaveStartDate` date NOT NULL,
  `LeaveEndDate` date NOT NULL,
  `ApprovedLeavedStartDate` date NOT NULL,
  `ApproveLeaveEndDate` date NOT NULL,
  `TotalDays` int(6) NOT NULL,
  `ApprovedBy` varchar(50) NOT NULL,
  `RequestStatus` varchar(20) NOT NULL DEFAULT 'PENDING',
  `ReqDescription` varchar(500) NOT NULL,
  `ApprovalRemark` varchar(500) NOT NULL,
  `ApprovalDateTime` datetime NOT NULL,
  `LeaveCategoary` varchar(15) NOT NULL DEFAULT '0',
  `Month` int(11) NOT NULL,
  `Year` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hr_leavedetailsmast`
--

INSERT INTO `hr_leavedetailsmast` (`SrNo`, `EmployeeId`, `ManagerId`, `RequestDateTime`, `LeaveStartDate`, `LeaveEndDate`, `ApprovedLeavedStartDate`, `ApproveLeaveEndDate`, `TotalDays`, `ApprovedBy`, `RequestStatus`, `ReqDescription`, `ApprovalRemark`, `ApprovalDateTime`, `LeaveCategoary`, `Month`, `Year`) VALUES
(12, 2003, 414142, '2023-08-17 16:19:27', '2023-08-17', '2023-08-25', '2023-08-17', '2023-08-25', 9, 'ADMIN', 'REJECTED', 'rfdv', '', '2023-09-05 13:21:05', 'Casual', 8, 2023),
(13, 2003, 414142, '2023-08-17 16:20:24', '2023-08-17', '2023-08-25', '2023-08-17', '2023-08-25', 9, 'ADMIN', 'REJECTED', 'rfdv', '', '2023-09-05 13:21:14', 'Casual', 8, 2023),
(15, 2003, 414142, '2023-08-17 17:36:15', '2023-08-17', '2023-08-26', '2023-08-17', '2023-08-26', 10, 'ADMIN', 'REJECTED', 'efcds ', '', '2023-09-05 16:15:01', 'Sick', 8, 2023),
(16, 2003, 414142, '2023-08-17 17:38:22', '2023-08-17', '2023-08-25', '2023-08-17', '2023-08-25', 9, 'ADMIN', 'PENDING', 'desc', 'rtgfb', '2023-09-05 17:19:12', 'Other', 8, 2023),
(17, 414153, 0, '2023-08-18 10:23:56', '2023-08-18', '2023-08-26', '2023-08-18', '2023-08-26', 9, 'ADMIN', 'PENDING', 'wrf', '', '2023-09-11 17:47:41', 'Sick', 8, 2023),
(18, 2003, 414142, '2023-08-30 11:39:23', '2023-08-30', '2023-08-31', '2023-08-30', '2023-08-31', 2, 'ADMIN', 'REJECTED', 'test leave', '', '2023-09-05 13:18:35', 'Casual', 8, 2023);

-- --------------------------------------------------------

--
-- Table structure for table `hr_leavemaster`
--

CREATE TABLE `hr_leavemaster` (
  `SrNo` int(11) NOT NULL,
  `EmployeeId` int(11) NOT NULL,
  `ApprovedLeaveDate` date NOT NULL,
  `Month` tinyint(4) NOT NULL,
  `Year` int(11) NOT NULL,
  `Status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hr_leavemaster`
--

INSERT INTO `hr_leavemaster` (`SrNo`, `EmployeeId`, `ApprovedLeaveDate`, `Month`, `Year`, `Status`) VALUES
(17, 2003, '2023-08-18', 8, 2023, 1),
(18, 2003, '2023-08-28', 8, 2023, 1),
(19, 2003, '2023-09-01', 3, 2345, 1),
(20, 2003, '2023-09-01', 9, 2348, 1),
(21, 2003, '2023-09-01', 6, 2277, 1),
(22, 2003, '2023-09-04', 4, 2022, 1),
(23, 2003, '2023-09-04', 4, 2022, 1),
(24, 2003, '2023-09-04', 8, 2023, 1),
(25, 2003, '2023-09-05', 8, 2023, 1),
(26, 2003, '2023-09-05', 8, 2023, 1),
(27, 2003, '2023-09-05', 8, 2023, 1),
(28, 2003, '2023-09-05', 8, 2023, 1),
(29, 2003, '2023-09-05', 8, 2023, 1),
(30, 2003, '2023-09-05', 8, 2023, 1),
(31, 2003, '2023-09-05', 8, 2023, 1),
(32, 2003, '2023-09-05', 8, 2023, 1),
(33, 2003, '2023-09-05', 8, 2023, 1),
(34, 2003, '2023-09-05', 8, 2023, 1),
(35, 2003, '2023-09-05', 8, 2023, 1),
(36, 2003, '2023-09-05', 8, 2023, 1),
(37, 414153, '2023-09-05', 8, 2023, 1),
(38, 2003, '2023-09-05', 9, 2348, 1),
(39, 2003, '2023-09-05', 8, 2023, 1),
(40, 414153, '2023-09-05', 8, 2023, 1),
(41, 2003, '2023-09-05', 8, 2023, 1),
(42, 2003, '2023-09-05', 8, 2023, 1),
(43, 2003, '2023-09-05', 8, 2023, 1),
(44, 414153, '2023-09-05', 8, 2023, 1),
(45, 414153, '2023-09-05', 8, 2023, 1),
(46, 414153, '2023-09-05', 8, 2023, 1),
(47, 2003, '2023-09-05', 8, 2023, 1),
(48, 2003, '2023-09-05', 8, 2023, 1),
(49, 2003, '2023-09-05', 8, 2023, 1),
(50, 2003, '2023-09-05', 8, 2023, 1),
(51, 2003, '2023-09-05', 8, 2023, 1),
(52, 2003, '2023-09-05', 8, 2023, 1),
(53, 2003, '2023-09-05', 8, 2023, 1),
(54, 2003, '2023-09-05', 8, 2023, 1),
(55, 414153, '2023-09-05', 8, 2023, 1),
(56, 414153, '2023-09-05', 8, 2023, 1),
(57, 414153, '2023-09-05', 8, 2023, 1),
(58, 414153, '2023-09-05', 8, 2023, 1),
(59, 414153, '2023-09-05', 8, 2023, 1),
(60, 414153, '2023-09-05', 8, 2023, 1),
(61, 2003, '2023-09-05', 8, 2023, 1),
(62, 414153, '2023-09-11', 8, 2023, 1),
(63, 414153, '2023-09-11', 8, 2023, 1);

-- --------------------------------------------------------

--
-- Table structure for table `hr_loginhistorymast`
--

CREATE TABLE `hr_loginhistorymast` (
  `LoginSrNo` bigint(20) NOT NULL,
  `UserName` varchar(50) NOT NULL,
  `UserPassword` varchar(40) NOT NULL,
  `LoginIP` varchar(50) NOT NULL,
  `HostName` varchar(100) NOT NULL,
  `LoginTime` datetime NOT NULL,
  `LoginStatus` varchar(10) NOT NULL,
  `RedirectPage` varchar(50) DEFAULT NULL,
  `LoginBrowser` varchar(50) DEFAULT NULL,
  `LoginOperatingSystem` varchar(50) NOT NULL,
  `LogoutTime` datetime NOT NULL,
  `Identity` varchar(16) NOT NULL,
  `Remark` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hr_loginhistorymast`
--

INSERT INTO `hr_loginhistorymast` (`LoginSrNo`, `UserName`, `UserPassword`, `LoginIP`, `HostName`, `LoginTime`, `LoginStatus`, `RedirectPage`, `LoginBrowser`, `LoginOperatingSystem`, `LogoutTime`, `Identity`, `Remark`) VALUES
(137932, 'sikindra', 'Test1234', '10.10.20.22', '10.10.20.22', '2023-08-03 14:04:18', 'ACTIVE', NULL, NULL, '', '0000-00-00 00:00:00', '', ''),
(137933, 'admin', '******', '10.10.20.22', 'alxuser', '2023-09-11 15:02:28', 'ACTIVE', 'dashboard', 'Chrome 108.0.0', 'Linux 0.0.0', '2023-09-11 15:56:03', '', ''),
(137934, 'admin', '******', '10.10.20.22', 'alxuser', '2023-09-11 15:03:44', 'ACTIVE', 'dashboard', 'Chrome 108.0.0', 'Linux 0.0.0', '2023-09-11 15:56:03', '', ''),
(137935, 'admin', '******', '10.10.20.22', 'localhost', '2023-09-11 15:07:05', 'ACTIVE', 'dashboard', 'Chrome 108.0.0', 'Linux 0.0.0', '2023-09-11 15:56:03', '', ''),
(137936, 'admin', '******', '10.10.20.22', 'localhost', '2023-09-11 15:20:04', 'ACTIVE', 'dashboard', 'Chrome 108.0.0', 'Linux 0.0.0', '2023-09-11 15:56:03', '', ''),
(137937, 'admin', '******', '10.10.20.22', 'localhost', '2023-09-11 15:57:27', 'ACTIVE', 'dashboard', 'Chrome 108.0.0', 'Linux 0.0.0', '2023-09-11 15:57:37', '', ''),
(137938, 'admin', '******', '10.10.20.22', 'localhost', '2023-09-11 15:58:12', 'ACTIVE', 'dashboard', 'Chrome 108.0.0', 'Linux 0.0.0', '0000-00-00 00:00:00', '', ''),
(137939, 'admin', '******', '10.10.17.10', '10.10.20.22', '2023-09-11 17:42:11', 'ACTIVE', 'dashboard', 'Chrome 116.0.0', 'Windows 10.0.0', '0000-00-00 00:00:00', '', ''),
(137940, 'admin', '******', '10.10.20.13', '10.10.20.22', '2023-09-12 11:07:54', 'ACTIVE', 'dashboard', 'Chrome 108.0.0', 'Linux 0.0.0', '0000-00-00 00:00:00', '', ''),
(137941, 'admin', '******', '10.10.20.13', '10.10.20.22', '2023-09-12 12:08:10', 'ACTIVE', 'dashboard', 'Chrome 108.0.0', 'Linux 0.0.0', '0000-00-00 00:00:00', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `hr_notificationmaster`
--

CREATE TABLE `hr_notificationmaster` (
  `NotificationId` int(11) NOT NULL,
  `NotificationTitle` varchar(50) NOT NULL,
  `NotifyBy` varchar(20) NOT NULL,
  `NotifyOn` varchar(20) NOT NULL,
  `NotificationDate` datetime NOT NULL,
  `Description` varchar(100) NOT NULL,
  `Status` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `hr_remainingleavemast`
--

CREATE TABLE `hr_remainingleavemast` (
  `SrNo` int(11) NOT NULL,
  `EmployeeId` int(11) NOT NULL,
  `EmployeeName` varchar(25) NOT NULL,
  `TotalLeave` tinyint(4) NOT NULL,
  `Year` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `hr_remarkmaster`
--

CREATE TABLE `hr_remarkmaster` (
  `SrNo` int(11) NOT NULL,
  `EmployeeId` int(11) NOT NULL,
  `EmployeeUserName` varchar(50) NOT NULL,
  `Remarks` varchar(200) NOT NULL,
  `EntryDate` date NOT NULL,
  `CreationDate` datetime NOT NULL,
  `Active` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `hr_storeallocationmaster`
--

CREATE TABLE `hr_storeallocationmaster` (
  `SrNo` int(11) NOT NULL,
  `EmployeeId` int(11) NOT NULL,
  `StoreId` int(11) NOT NULL,
  `AllocationDateTime` datetime NOT NULL,
  `AllocatedBy` int(11) NOT NULL,
  `ViewStoreFromTime` int(11) NOT NULL DEFAULT '0',
  `ViewStoreToTime` int(11) NOT NULL DEFAULT '24'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Stand-in structure for view `hr_vwattendancedetailswithempmaster`
-- (See below for the actual view)
--
CREATE TABLE `hr_vwattendancedetailswithempmaster` (
`EmployeeId` varchar(20)
,`EmployeeUserName` varchar(20)
,`Password` varchar(50)
,`UserType` varchar(10)
,`Name` varchar(50)
,`LastName` varchar(50)
,`Email` varchar(50)
,`Mobile` varchar(16)
,`Std` int(11)
,`OfficeNumber` varchar(20)
,`Designation` varchar(40)
,`DateOfJoining` varchar(20)
,`WorkShift` varchar(25)
,`Status` varchar(10)
,`AllocatedStoreId` varchar(100)
,`ParentId` int(11)
,`SrNo` int(11)
,`Month` tinyint(4)
,`Year` smallint(4)
,`EntryDate` date
,`EntryTime` time
,`OutDate` date
,`OutTime` time
,`TotalTimeInMinutes` int(10)
,`DelayedEntry` int(11)
,`DelayedExit` int(11)
,`AttendanceStatus` varchar(10)
,`AttendanceRemarks` varchar(200)
,`AttendanceStoreTitle` varchar(50)
,`IsManual` tinyint(4)
,`INDateTime` datetime
,`OutDateTime` datetime
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `hr_vwcustomipmasterwithempmaster`
-- (See below for the actual view)
--
CREATE TABLE `hr_vwcustomipmasterwithempmaster` (
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `hr_vwemployeeallocationwithemployeemaster`
-- (See below for the actual view)
--
CREATE TABLE `hr_vwemployeeallocationwithemployeemaster` (
`EmployeeId` int(11)
,`AllocatedEmployeeUserName` text
,`EmployeeName` varchar(70)
,`AllocatedEmployeeId` int(11)
,`AllocationDateTime` datetime
,`AllocatedBy` int(11)
,`AllocationStatus` tinyint(4)
,`EmployeeUserName` varchar(20)
,`UserType` varchar(10)
,`Name` varchar(50)
,`Mobile` varchar(16)
,`Email` varchar(50)
,`Status` varchar(10)
,`Address` varchar(100)
,`City` varchar(50)
,`State` varchar(50)
,`Country` varchar(20)
,`Pincode` varchar(10)
,`ParentId` int(11)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `hr_vwleavedetailswithempmaster`
-- (See below for the actual view)
--
CREATE TABLE `hr_vwleavedetailswithempmaster` (
`SrNo` int(11)
,`EmployeeId` int(11)
,`ManagerId` int(10)
,`RequestDateTime` datetime
,`LeaveStartDate` date
,`LeaveEndDate` date
,`ApprovedLeavedStartDate` date
,`ApproveLeaveEndDate` date
,`TotalDays` int(6)
,`ApprovedBy` varchar(50)
,`RequestStatus` varchar(20)
,`ReqDescription` varchar(500)
,`ApprovalRemark` varchar(500)
,`ApprovalDateTime` datetime
,`LeaveCategoary` varchar(15)
,`EmployeeUserName` varchar(20)
,`Name` varchar(50)
,`LastName` varchar(50)
,`Email` varchar(50)
,`Mobile` varchar(16)
,`Std` int(11)
,`OfficeNumber` varchar(20)
,`DateOfBirth` varchar(20)
,`Designation` varchar(40)
,`DateOfJoining` varchar(20)
,`WorkShift` varchar(25)
,`Status` varchar(10)
,`SystemName` varchar(50)
,`AllocatedStoreId` varchar(100)
,`ParentId` int(11)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `hr_vwstoreallocationwithemployee`
-- (See below for the actual view)
--
CREATE TABLE `hr_vwstoreallocationwithemployee` (
`EmployeeId` int(11)
,`StoreId` int(11)
,`AllocationDateTime` datetime
,`AllocatedBy` int(11)
,`ViewStoreFromTime` int(11)
,`ViewStoreToTime` int(11)
,`EmployeeUserName` varchar(20)
,`UserType` varchar(10)
,`Name` varchar(50)
,`Mobile` varchar(16)
,`Email` varchar(50)
,`Status` varchar(10)
,`Address` varchar(100)
,`City` varchar(50)
,`State` varchar(50)
,`Country` varchar(20)
,`Pincode` varchar(10)
,`ParentId` int(11)
);

-- --------------------------------------------------------

--
-- Table structure for table `hr_workshiftmaster`
--

CREATE TABLE `hr_workshiftmaster` (
  `SrNo` int(11) NOT NULL,
  `WorkShiftFrom` varchar(30) NOT NULL,
  `WorkShiftTo` varchar(20) NOT NULL,
  `Status` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hr_workshiftmaster`
--

INSERT INTO `hr_workshiftmaster` (`SrNo`, `WorkShiftFrom`, `WorkShiftTo`, `Status`) VALUES
(22, '9:30 AM', '6:00 PM', 1),
(24, '6:00 PM', '2:30 AM', 1);

-- --------------------------------------------------------

--
-- Table structure for table `statemaster`
--

CREATE TABLE `statemaster` (
  `SrNo` int(11) NOT NULL,
  `StateName` varchar(50) NOT NULL,
  `StateCode` varchar(4) NOT NULL,
  `StateAbbr` varchar(4) DEFAULT NULL,
  `CountryId` int(11) DEFAULT NULL,
  `Active` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `statemaster`
--

INSERT INTO `statemaster` (`SrNo`, `StateName`, `StateCode`, `StateAbbr`, `CountryId`, `Active`) VALUES
(1, 'Andaman & Nicobar Islands', '', NULL, 1, 1),
(2, 'Andhra Pradesh', '', NULL, 1, 1),
(3, 'Arunachal Pradesh', '', NULL, 1, 1),
(4, 'Assam', '', NULL, 1, 1),
(5, 'Bihar', '', NULL, 1, 1),
(6, 'Chandigarh', '', NULL, 1, 1),
(7, 'Chhattisgarh', '', NULL, 1, 1),
(8, 'Dadra & Nagar Haveli', '', NULL, 1, 1),
(9, 'Daman & Diu', '', NULL, 1, 1),
(10, 'Delhi', '', NULL, 1, 1),
(11, 'Goa', '', NULL, 1, 1),
(12, 'Gujarat', '', NULL, 1, 1),
(13, 'Haryana', '', NULL, 1, 1),
(14, 'Himachal Pradesh', '', NULL, 1, 1),
(15, 'Jammu & Kashmir', '', NULL, 1, 1),
(16, 'Jharkhand', '', NULL, 1, 1),
(17, 'Karnataka', '', NULL, 1, 1),
(18, 'Kerala', '', NULL, 1, 1),
(19, 'Lakshadweep', '', NULL, 1, 1),
(20, 'Madhya Pradesh', '', NULL, 1, 1),
(21, 'Maharashtra', '', NULL, 1, 1),
(22, 'Manipur', '', NULL, 1, 1),
(23, 'Meghalaya', '', NULL, 1, 1),
(24, 'Mizoram', '', NULL, 1, 1),
(25, 'Nagaland', '', NULL, 1, 1),
(26, 'Odisha', '', NULL, 1, 1),
(27, 'Puducherry', '', NULL, 1, 1),
(28, 'Punjab', '', NULL, 1, 1),
(29, 'Rajasthan', '', NULL, 1, 1),
(30, 'Sikkim', '', NULL, 1, 1),
(31, 'Tamil Nadu', '', NULL, 1, 1),
(32, 'Tripura', '', NULL, 1, 1),
(33, 'Uttar Pradesh', '', NULL, 1, 1),
(34, 'Uttarakhand', '', NULL, 1, 1),
(35, 'West Bengal', '', NULL, 1, 1);

-- --------------------------------------------------------

--
-- Structure for view `hr_vwattendancedetailswithempmaster`
--
DROP TABLE IF EXISTS `hr_vwattendancedetailswithempmaster`;
-- Error reading structure for table tdot_hrmgm.hr_vwattendancedetailswithempmaster: #1142 - SHOW VIEW command denied to user 'dev22'@'127.0.0.1' for table 'hr_vwattendancedetailswithempmaster'

-- --------------------------------------------------------

--
-- Structure for view `hr_vwcustomipmasterwithempmaster`
--
DROP TABLE IF EXISTS `hr_vwcustomipmasterwithempmaster`;
-- Error reading structure for table tdot_hrmgm.hr_vwcustomipmasterwithempmaster: #1142 - SHOW VIEW command denied to user 'dev22'@'127.0.0.1' for table 'hr_vwcustomipmasterwithempmaster'

-- --------------------------------------------------------

--
-- Structure for view `hr_vwemployeeallocationwithemployeemaster`
--
DROP TABLE IF EXISTS `hr_vwemployeeallocationwithemployeemaster`;
-- Error reading structure for table tdot_hrmgm.hr_vwemployeeallocationwithemployeemaster: #1142 - SHOW VIEW command denied to user 'dev22'@'127.0.0.1' for table 'hr_vwemployeeallocationwithemployeemaster'

-- --------------------------------------------------------

--
-- Structure for view `hr_vwleavedetailswithempmaster`
--
DROP TABLE IF EXISTS `hr_vwleavedetailswithempmaster`;
-- Error reading structure for table tdot_hrmgm.hr_vwleavedetailswithempmaster: #1142 - SHOW VIEW command denied to user 'dev22'@'127.0.0.1' for table 'hr_vwleavedetailswithempmaster'

-- --------------------------------------------------------

--
-- Structure for view `hr_vwstoreallocationwithemployee`
--
DROP TABLE IF EXISTS `hr_vwstoreallocationwithemployee`;
-- Error reading structure for table tdot_hrmgm.hr_vwstoreallocationwithemployee: #1142 - SHOW VIEW command denied to user 'dev22'@'127.0.0.1' for table 'hr_vwstoreallocationwithemployee'

--
-- Indexes for dumped tables
--

--
-- Indexes for table `citymaster`
--
ALTER TABLE `citymaster`
  ADD PRIMARY KEY (`SrNo`);

--
-- Indexes for table `configmaster`
--
ALTER TABLE `configmaster`
  ADD PRIMARY KEY (`SrNo`);

--
-- Indexes for table `hr_actionlogmaster`
--
ALTER TABLE `hr_actionlogmaster`
  ADD PRIMARY KEY (`SrNo`);

--
-- Indexes for table `hr_attendancedetailsmast`
--
ALTER TABLE `hr_attendancedetailsmast`
  ADD PRIMARY KEY (`SrNo`);

--
-- Indexes for table `hr_attendancemast`
--
ALTER TABLE `hr_attendancemast`
  ADD PRIMARY KEY (`SrNo`);

--
-- Indexes for table `hr_configmast`
--
ALTER TABLE `hr_configmast`
  ADD PRIMARY KEY (`SrNo`);

--
-- Indexes for table `hr_configmaster`
--
ALTER TABLE `hr_configmaster`
  ADD PRIMARY KEY (`SrNo`);

--
-- Indexes for table `hr_designation`
--
ALTER TABLE `hr_designation`
  ADD PRIMARY KEY (`DesignationId`);

--
-- Indexes for table `hr_empipmaster`
--
ALTER TABLE `hr_empipmaster`
  ADD PRIMARY KEY (`SrNo`);

--
-- Indexes for table `hr_employeeallocationmaster`
--
ALTER TABLE `hr_employeeallocationmaster`
  ADD PRIMARY KEY (`SrNo`);

--
-- Indexes for table `hr_employeemaster`
--
ALTER TABLE `hr_employeemaster`
  ADD PRIMARY KEY (`SrNo`),
  ADD UNIQUE KEY `EmployeeId` (`SrNo`),
  ADD UNIQUE KEY `EmployeeId_2` (`EmployeeId`);

--
-- Indexes for table `hr_graceentrymast`
--
ALTER TABLE `hr_graceentrymast`
  ADD PRIMARY KEY (`SrNo`);

--
-- Indexes for table `hr_halfdayentrymast`
--
ALTER TABLE `hr_halfdayentrymast`
  ADD PRIMARY KEY (`SrNo`);

--
-- Indexes for table `hr_holidaymast`
--
ALTER TABLE `hr_holidaymast`
  ADD PRIMARY KEY (`SrNo`);

--
-- Indexes for table `hr_leavedetailsmast`
--
ALTER TABLE `hr_leavedetailsmast`
  ADD PRIMARY KEY (`SrNo`);

--
-- Indexes for table `hr_leavemaster`
--
ALTER TABLE `hr_leavemaster`
  ADD PRIMARY KEY (`SrNo`);

--
-- Indexes for table `hr_loginhistorymast`
--
ALTER TABLE `hr_loginhistorymast`
  ADD PRIMARY KEY (`LoginSrNo`);

--
-- Indexes for table `hr_notificationmaster`
--
ALTER TABLE `hr_notificationmaster`
  ADD PRIMARY KEY (`NotificationId`);

--
-- Indexes for table `hr_remainingleavemast`
--
ALTER TABLE `hr_remainingleavemast`
  ADD PRIMARY KEY (`SrNo`);

--
-- Indexes for table `hr_remarkmaster`
--
ALTER TABLE `hr_remarkmaster`
  ADD PRIMARY KEY (`SrNo`),
  ADD KEY `EmployeeId` (`EmployeeId`),
  ADD KEY `EntryDate` (`EntryDate`);

--
-- Indexes for table `hr_storeallocationmaster`
--
ALTER TABLE `hr_storeallocationmaster`
  ADD PRIMARY KEY (`SrNo`);

--
-- Indexes for table `hr_workshiftmaster`
--
ALTER TABLE `hr_workshiftmaster`
  ADD PRIMARY KEY (`SrNo`);

--
-- Indexes for table `statemaster`
--
ALTER TABLE `statemaster`
  ADD PRIMARY KEY (`SrNo`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `citymaster`
--
ALTER TABLE `citymaster`
  MODIFY `SrNo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=604;

--
-- AUTO_INCREMENT for table `configmaster`
--
ALTER TABLE `configmaster`
  MODIFY `SrNo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `hr_actionlogmaster`
--
ALTER TABLE `hr_actionlogmaster`
  MODIFY `SrNo` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9884;

--
-- AUTO_INCREMENT for table `hr_attendancedetailsmast`
--
ALTER TABLE `hr_attendancedetailsmast`
  MODIFY `SrNo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56765;

--
-- AUTO_INCREMENT for table `hr_attendancemast`
--
ALTER TABLE `hr_attendancemast`
  MODIFY `SrNo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113293;

--
-- AUTO_INCREMENT for table `hr_configmast`
--
ALTER TABLE `hr_configmast`
  MODIFY `SrNo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `hr_configmaster`
--
ALTER TABLE `hr_configmaster`
  MODIFY `SrNo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `hr_designation`
--
ALTER TABLE `hr_designation`
  MODIFY `DesignationId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `hr_empipmaster`
--
ALTER TABLE `hr_empipmaster`
  MODIFY `SrNo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=499;

--
-- AUTO_INCREMENT for table `hr_employeeallocationmaster`
--
ALTER TABLE `hr_employeeallocationmaster`
  MODIFY `SrNo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `hr_employeemaster`
--
ALTER TABLE `hr_employeemaster`
  MODIFY `SrNo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT for table `hr_graceentrymast`
--
ALTER TABLE `hr_graceentrymast`
  MODIFY `SrNo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `hr_halfdayentrymast`
--
ALTER TABLE `hr_halfdayentrymast`
  MODIFY `SrNo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `hr_holidaymast`
--
ALTER TABLE `hr_holidaymast`
  MODIFY `SrNo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `hr_leavedetailsmast`
--
ALTER TABLE `hr_leavedetailsmast`
  MODIFY `SrNo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `hr_leavemaster`
--
ALTER TABLE `hr_leavemaster`
  MODIFY `SrNo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `hr_loginhistorymast`
--
ALTER TABLE `hr_loginhistorymast`
  MODIFY `LoginSrNo` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=137942;

--
-- AUTO_INCREMENT for table `hr_notificationmaster`
--
ALTER TABLE `hr_notificationmaster`
  MODIFY `NotificationId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `hr_remainingleavemast`
--
ALTER TABLE `hr_remainingleavemast`
  MODIFY `SrNo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hr_remarkmaster`
--
ALTER TABLE `hr_remarkmaster`
  MODIFY `SrNo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=429;

--
-- AUTO_INCREMENT for table `hr_storeallocationmaster`
--
ALTER TABLE `hr_storeallocationmaster`
  MODIFY `SrNo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `hr_workshiftmaster`
--
ALTER TABLE `hr_workshiftmaster`
  MODIFY `SrNo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `statemaster`
--
ALTER TABLE `statemaster`
  MODIFY `SrNo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
