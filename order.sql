-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 14, 2021 at 05:10 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `order`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(20) NOT NULL,
  `email` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `email`) VALUES
(1, 'sakina', 'sakina123', 'sakina@gmail.com'),
(2, 'admin', 'admin123', 'admin@gmail.com'),
(3, 'inayah', 'inayah123', 'inayah@gmail.com'),
(4, 'norhayati', 'yati123', 'yati@gmail.com'),
(5, 'afiqah', 'fiqah123', 'afiqah@gmail.com'),
(6, 'raja hakim', 'raja123', 'rajalukmanulhakim@gmail.c'),
(7, 'lenna', 'lenna123', 'lenna@gmail.com'),
(8, 'nurul ', 'nurul123', 'nurulsakinasawal@gmail.co');

-- --------------------------------------------------------

--
-- Table structure for table `beverages`
--

CREATE TABLE `beverages` (
  `bevID` int(11) NOT NULL,
  `bevName` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `beverages`
--

INSERT INTO `beverages` (`bevID`, `bevName`, `description`, `price`) VALUES
(1, 'Teh Tarik ', 'Teh tarik (literally \"pulled tea\") is a popular hot milk tea beverage most commonly found in restaurants, outdoor stalls and kopitiams within the Southeast Asian countries of Malaysia, Indonesia and Singapore. Its name is derived from the pouring process ', 1.9),
(2, 'Teh O', 'Teh-o or teh kosong is tea served without milk or sugar, while teh-si has evaporated milk and sugar added instead of condensed milk', 1.2),
(3, 'Kopi ', 'Coffee aroma descriptors include Flowery, nutty, smoky, herby, while taste descriptors include acidity, bitterness, sweetness, saltiness and sourness (see Coffee Flavour Wheel).', 1.5),
(4, 'Teh Tawar', 'Ichitan Teh Tawar, the first sugar-free ready-to-drink (RTD) tea in Indonesia, has been launched by PT Ichitan Indonesia, the local unit of Thailand-based RTD tea giant Ichitan. Teh Tawar is translated into English as plain tea.', 2),
(5, 'Teh Manis', 'Teh manis (sweet tea) is a common household drink served hot. Popular variations include Jasmine tea and green tea (made from camellia sinensis). While usually prepared hot, an ice-cold variation is also popular', 2.5),
(6, 'Milo ais', 'Milo Dinosaur is simply a cold Milo drink with water (or milk), ice cubes and sweetener, topped with more Milo powder', 2.2),
(7, 'Horlicks Ais', 'air panas + susu pekat ', 2.2),
(9, 'Teh O Ais Limau', 'teh panas + limau + gula + ais', 2.5),
(10, 'Nescafe Caramel Latte', 'air panas + nescafe 3 in 1 ', 2.5);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `cust_ID` int(11) NOT NULL,
  `custName` varchar(25) NOT NULL,
  `date` date NOT NULL,
  `custEmail` varchar(255) NOT NULL,
  `custAddress` varchar(255) NOT NULL,
  `custOrder` varchar(255) NOT NULL,
  `quantity` int(25) NOT NULL,
  `price` float NOT NULL,
  `status` varchar(35) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`cust_ID`, `custName`, `date`, `custEmail`, `custAddress`, `custOrder`, `quantity`, `price`, `status`) VALUES
(1001, 'Orked', '2021-05-01', 'orked@gmail.com', 'No bilik 3, Kolej Tun Gemala, UiTM Jasin', 'Nasi Lemak Ayam', 2, 6, 'successfully delivered'),
(1002, 'Dahlia ', '2021-02-02', 'dahlia@gmail.com', 'No Bilik 13, Kolej Tun Gemala II, UiTM Jasin', 'Nasi Uduk', 3, 4, 'successfully delivered'),
(1003, 'Azwina Aisyah', '2021-02-02', 'azwina@gmail.com', 'No Bilik 5, Kolej Gelama I, UiTM Jasin', 'Teh Tarik', 3, 4.5, 'successfully delivered'),
(1004, 'Ahmad Ali', '2021-05-04', 'ali@gmail.com', 'No 4, Kolej Tun Sri Lanang, UiTM Jasin', 'Roti Canai', 3, 15, 'in process'),
(1005, 'Hakimi Raykal', '2021-05-04', 'kimiRay@gmail.com', 'No Bilik 18, Kolej Sri Gelama, UiTM Jasin', 'Mee Goreng', 2, 8, 'in process'),
(1006, 'Hang Jebat', '2021-05-04', 'jebat@gmail.com', 'No bilik 20, Kolej Sri Lanang, UNES', 'Nasi Uduk', 3, 15, 'in process');

-- --------------------------------------------------------

--
-- Table structure for table `food`
--

CREATE TABLE `food` (
  `foodID` int(11) NOT NULL,
  `foodName` varchar(25) NOT NULL,
  `description` varchar(255) NOT NULL,
  `price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `food`
--

INSERT INTO `food` (`foodID`, `foodName`, `description`, `price`) VALUES
(1, 'Nasi Lemak Ayam', 'Nasi lemak is a dish originating in Malay cuisine that consists of fragrant rice cooked in coconut milk and pandan leaf. It is commonly found in Malaysia, where it is considered the national dish.', 5),
(2, 'Mee Goreng Mamak', 'Mee goreng mamak is a versatile stir-fry noodle dish from the Maritime Southeast Asia region, initially introduced by the Indian-Muslim community. It is a spicy-savory course that pairs the noodles with a combination of fish cakes, chicken, prawns, garlic', 4),
(3, 'Roti Canai Telur', ' It is usually served with dal or other types of curry, but can also be cooked in a range of sweet or savoury variations made with a variety of ingredients such as meat, egg, or cheese.', 2.4),
(5, 'Bubur Ayam', 'Bubur ayam (Indonesian for \"chicken congee\") is a Chinese Indonesian chicken congee.', 3),
(7, 'Nasi Uduk', 'Uduk (Javanese: segá uduk; Indonesian: \"nasi uduk\") is an Indonesian style steamed rice cooked in coconut milk dish, which originated from Java. It was the brainchild of Sultan Agung of Mataram (Javanese ruler), inspired by his experience eating kebuli ri', 5.5),
(8, 'Nasi Campur', 'refers to an Indonesian dish of a scoop of nasi putih (white rice) accompanied by small portions of a number of other dishes, which includes meats, vegetables, peanuts, eggs, and fried-shrimp krupuk.', 5.7),
(9, 'Nasi Kuning', 'Nasi kuning (Indonesian for: \"yellow rice\"), or sometimes called nasi kunyit (Indonesian for: \"turmeric rice\"), is an Indonesian fragrant rice dish cooked with coconut milk and turmeric, hence the name nasi kuning (yellow rice)', 6.5),
(10, 'Roti Jala', ' popular Malay and Minangkabau tea time snack served with curry dishes which can be found in Indonesia, Malaysia and Singapore.', 1.8);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `beverages`
--
ALTER TABLE `beverages`
  ADD PRIMARY KEY (`bevID`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`cust_ID`);

--
-- Indexes for table `food`
--
ALTER TABLE `food`
  ADD PRIMARY KEY (`foodID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `beverages`
--
ALTER TABLE `beverages`
  MODIFY `bevID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `cust_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1008;

--
-- AUTO_INCREMENT for table `food`
--
ALTER TABLE `food`
  MODIFY `foodID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
