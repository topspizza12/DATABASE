-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Aug 16, 2018 at 09:10 AM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pizzadb`
--

-- --------------------------------------------------------

--
-- Table structure for table `tblcat`
--

CREATE TABLE `tblcat` (
  `cat_id` int(11) NOT NULL,
  `cat_name` varchar(100) NOT NULL,
  `cat_img` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcat`
--

INSERT INTO `tblcat` (`cat_id`, `cat_name`, `cat_img`) VALUES
(1, 'Veg Pizza', 'http://localhost/topspizza/pizza/Veg/Mexican/Veg_Extravaganz.jpg'),
(2, 'Pizza Mania', 'http://localhost/topspizza/pizza/Pizza_Mania/onion_veg.jpg'),
(3, 'Sides Beverage', 'http://localhost/topspizza/pizza/Sides_Beverages/Veg/garlic_bread.jpg'),
(4, 'Non-Veg Pizza', 'http://localhost/topspizza/pizza/Non-Veg/Chicken%20/Pepper_Barbeque.jpg'),
(5, 'Burger Pizza', 'http://localhost/topspizza/pizza/Burger_Pizza/Veg/Burger_Piza_Classic_Veg.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbloffer`
--

CREATE TABLE `tbloffer` (
  `offer_id` int(11) NOT NULL,
  `offer_name` varchar(100) NOT NULL,
  `offer_img` varchar(200) NOT NULL,
  `offer_desc` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbloffer`
--

INSERT INTO `tbloffer` (`offer_id`, `offer_name`, `offer_img`, `offer_desc`) VALUES
(1, 'Buy 1 get 1 free', 'http://localhost/topspizza/Offer/offer_1.jpeg', 'Pizza Hut Wednesday Offer , 30 rupees cash back'),
(2, '50% Off', 'http://localhost/topspizza/Offer/offer_2.jpg', 'Pizza hut,Don\'t Cook Wednesday'),
(3, 'Get Any 2 Medium Pizza', 'http://localhost/topspizza/Offer/offer_3.jpeg', 'Everyday Value Offer just in 249 in each'),
(4, '100 Rupees Cashback', 'http://localhost/topspizza/Offer/offer_3.jpeg', '100 Rupees Cashback in Paytm Wallet by Dominos');

-- --------------------------------------------------------

--
-- Table structure for table `tblorder`
--

CREATE TABLE `tblorder` (
  `O_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `p_id` int(11) NOT NULL,
  `qty` int(12) NOT NULL,
  `totalamt` decimal(10,0) NOT NULL,
  `O_date` date NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblproduct`
--

CREATE TABLE `tblproduct` (
  `p_id` int(11) NOT NULL,
  `p_name` varchar(200) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `subcat_id` int(11) NOT NULL,
  `p_img` varchar(200) NOT NULL,
  `p_price` decimal(11,0) NOT NULL,
  `p_desc` varchar(200) NOT NULL,
  `p_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblproduct`
--

INSERT INTO `tblproduct` (`p_id`, `p_name`, `cat_id`, `subcat_id`, `p_img`, `p_price`, `p_desc`, `p_status`) VALUES
(1, 'Corn & Cheese', 1, 1, 'http://localhost/topspizza/pizza/Veg/Cheese/Corn_&_Cheese.jpg', '150', 'Cheese I Golden Corn', 1),
(2, 'Fresh Veggie', 1, 1, 'http://localhost/topspizza/pizza/Veg/Cheese/Fresh_Veggie.jpg', '465', 'Onion I Capsicum', 1),
(3, 'Margherita', 1, 2, 'http://localhost/topspizza/pizza/Veg/Margherita/Margherit.jpg', '152', 'A hugely popular margherita, with a deliciously tangy single cheese topping', 1),
(4, 'Double Cheese Margherita', 1, 2, 'http://localhost/topspizza/pizza/Veg/Margherita/Double_Cheese_Margherita.jpg', '256', 'The ever-popular Margherita - loaded with extra cheese... oodies of it!', 1),
(5, 'Deluxe Veggie', 1, 3, 'http://localhost/topspizza/pizza/Veg/Mexican/Deluxe_Veggie.jpg', '452', 'For a vegetarian looking for a BIG treat that goes easy on the spices, this one\'s got it all.. The onions, the capsicum, those delectable mushrooms - with paneer and golden corn to top it all.', 1),
(6, 'Veggie Paradis', 1, 3, 'http://localhost/topspizza/pizza/Veg/Mexican/Digital_Veggie_Paradis.jpg', '325', 'Goldern Corn, Black Olives, Capsicum & Red Paprika', 1),
(7, 'Maxican Green Wave', 1, 3, 'http://localhost/topspizza/pizza/Veg/Mexican/Mexican_Green_Wave.jpg', '412', 'A pizza loaded with crunchy onions, crisp capsicum, juicy tomatoes and jalapeno with a liberal sprinkling of exotic Mexican herbs.', 1),
(8, 'Veg ExtraVaganz', 1, 3, 'http://localhost/topspizza/pizza/Veg/Mexican/Veg_Extravaganz.jpg', '155', 'A pizza that decidedly staggers under an overload of golden corn, exotic black olives, crunchy onions, crisp capsicum, succulent mushrooms, juicyfresh tomatoes and jalapeno - with extra cheese to go a', 1),
(9, '5 Pepper', 1, 4, 'http://localhost/topspizza/pizza/Veg/Paneer/5_Pepper.jpg', '566', 'We introduces \"5 Peppers\" an exotic new Pizza. Topped wih red bell pepper, yellow bell pepper, capsicum, red paprika, jalapeno & sprinked with exotic herb', 1),
(10, 'Farm House', 1, 4, 'http://localhost/topspizza/pizza/Veg/Paneer/Farmhouse.jpg', '200', 'A pizza that goes ballistic on veggies! Check out this mouth watering overload of crunchy, crisp capsicum, succulent mushrooms and fresh tomatoes', 1),
(11, 'Panner Makhni', 1, 4, 'http://localhost/topspizza/pizza/Veg/Paneer/Paneer_Makhni.jpg', '260', 'Paneer and Capsicum on Makhani Sauce', 1),
(12, 'Peppy Paneer', 1, 4, 'http://localhost/topspizza/pizza/Veg/Paneer/Peppy_Paneer.jpg', '253', 'Chunky paneer with crisp capsicum and spicy red pepper - quite a mouthful!', 1),
(13, 'Capsicum Veg', 2, 5, 'http://localhost/topspizza/pizza/Pizza_Mania/CapsicumVeg.jpg', '145', 'Capsicum', 1),
(14, 'Golden Corn', 2, 5, 'http://localhost/topspizza/pizza/Pizza_Mania/golden_corn_veg.jpg', '356', 'Golden Corn', 1),
(15, 'Onion Veg', 2, 5, 'http://localhost/topspizza/pizza/Pizza_Mania/onion_veg.jpg', '423', 'Onion', 1),
(16, 'Paneer & Onion', 2, 5, 'http://localhost/topspizza/pizza/Pizza_Mania/Paneer_Special.jpg', '451', 'Creamy Paneer I Onion', 1),
(17, 'Prime Cheesy', 2, 5, 'http://localhost/topspizza/pizza/Pizza_Mania/PrimeCheesyL.jpg', '250', 'Orange Cheddar Cheese I Mozzarella', 1),
(18, 'Veg Loaded', 2, 5, 'http://localhost/topspizza/pizza/Pizza_Mania/PrimeLoadedL.jpg', '205', 'Tomato | Grilled Mushroom |Jalapeno |Golden Corn | Beans in a fresh pan crust', 1),
(19, 'Boneless Chicken Wings', 3, 6, 'http://localhost/topspizza/pizza/Sides_Beverages/Non_Veg/Boneless_Chicken_Wings.png', '360', 'BONELESS CHICKEN WINGS - LEMON PEPPER', 1),
(20, 'Chicken Meat Balls', 3, 6, 'http://localhost/topspizza/pizza/Sides_Beverages/Non_Veg/Chicken_Meat_balls.png', '356', 'CHICKEN MEATBALLS - SRIRACHA', 1),
(21, 'Roasted Chicken Hot', 3, 6, 'http://localhost/topspizza/pizza/Sides_Beverages/Non_Veg/Roasted_Chicken_Hot.png', '152', 'ROASTED CHICKEN WINGS CLASSIC HOT SAUCE', 1),
(22, 'Roasted Chicken Peri Peri', 3, 6, 'http://localhost/topspizza/pizza/Sides_Beverages/Non_Veg/Roasted_chicken_Peri_Peri.png', '580', 'ROASTED CHICKEN WINGS PERI-PERI', 1),
(23, 'Garlic Breadsticks', 3, 7, 'http://localhost/topspizza/pizza/Sides_Beverages/Veg/garlic_bread.jpg', '240', 'The endearing tang of garlic in breadstics baked to perfection.', 1),
(24, 'Stuffed Garlic Bread', 3, 7, 'http://localhost/topspizza/pizza/Sides_Beverages/Veg/garlic_breadstick.jpg', '210', 'Freshly Baked Garlic Bread stuffed with mozzarella cheese, sweet corns & tangy and spicy jalapeños', 1),
(25, 'Chicken Golden Delight', 4, 8, 'http://localhost/topspizza/pizza/Non-Veg/Chicken%20/Chicken_Golden_Delight.jpg', '150', 'Mmm! Barbeque chicken with a topping of golden corn loaded with extra cheese. Worth its weight in gold!', 1),
(26, 'Chicken Sausage', 4, 8, 'http://localhost/topspizza/pizza/Non-Veg/Chicken%20/Chicken_Sausage.jpg', '266', 'Chicken Sausage I Cheese', 1),
(27, 'Chicken Tikka', 4, 8, 'http://localhost/topspizza/pizza/Non-Veg/Chicken%20/Chicken_Tikka.jpg', '1515', 'Chicken Tikka I Onion on Makhani Sauce', 1),
(28, 'Chicken Fiesta', 4, 8, 'http://localhost/topspizza/pizza/Non-Veg/Chicken%20/chunky-chicken.png', '565', 'Grilled Chicken Rashers I Peri-Peri Chicken I Onion I Capsicum', 1),
(29, 'Non-Veg Supreme', 4, 8, 'http://localhost/topspizza/pizza/Non-Veg/Chicken%20/Non-Veg_Supreme.jpg', '265', 'Bite into supreme delight of Black Olives, Onions, Grilled Mushrooms, Pepper BBQ Chicken, Peri-Peri Chicken, Grilled Chicken Rashers', 1),
(30, 'Pepper Barbecue Chicken', 4, 8, 'http://localhost/topspizza/pizza/Non-Veg/Chicken%20/Pepper_Barbeque.jpg', '564', 'Pepper Barbecue Chicken I Cheese', 1),
(31, 'Burger Pizza Classic  Veg', 5, 9, 'http://localhost/topspizza/pizza/Burger_Pizza/Veg/Burger_Piza_Classic_Veg.jpg', '985', 'Bite into delight! Witness the epic combination of pizza and burger with our classic Burger Pizza, that looks good and tastes great!', 1),
(32, 'Burger Pizza Premium Veg', 5, 9, 'http://localhost/topspizza/pizza/Burger_Pizza/Veg/Burger_Pizza_Premium_Veg.jpg', '125', 'The good just got better! Treat yourself to the premium taste of the Burger Pizza, that looks good and tastes great with paneer and red paprika.', 1),
(33, 'Burger Pizza Non Veg', 5, 10, 'http://localhost/topspizza/pizza/Burger_Pizza/Non_Veg/Burger_Pizza_Non.jpg', '600', 'For all the meat cravers, try the classic non-veg Burger Pizza loaded with the goodness of burger and the greatness of pizza.', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblshipadd`
--

CREATE TABLE `tblshipadd` (
  `ship_id` int(11) NOT NULL,
  `ship_add` varchar(2000) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblsubcat`
--

CREATE TABLE `tblsubcat` (
  `subcat_id` int(11) NOT NULL,
  `subcat_name` varchar(100) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `subcat_img` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblsubcat`
--

INSERT INTO `tblsubcat` (`subcat_id`, `subcat_name`, `cat_id`, `subcat_img`) VALUES
(1, 'Cheese', 1, 'http://localhost/topspizza/pizza/Veg/Cheese/Corn_&_Cheese.jpg'),
(2, 'Margherita', 1, 'http://localhost/topspizza/pizza/Veg/Margherita/Double_Cheese_Margherita.jpg'),
(3, 'Mexican', 1, 'http://localhost/topspizza/pizza/Veg/Mexican/Deluxe_Veggie.jpg'),
(4, 'Paneer', 1, 'http://localhost/topspizza/pizza/Veg/Paneer/Peppy_Paneer.jpg'),
(5, 'Veg Pizza Mania', 2, 'http://localhost/topspizza/pizza/Pizza_Mania/Paneer_Special.jpg'),
(6, 'Non-Veg Sides Beverage', 3, 'http://localhost/topspizza/pizza/Sides_Beverages/Non_Veg/Roasted_Chicken_Hot.png'),
(7, 'Veg Sides Beverage', 3, 'http://localhost/topspizza/pizza/Sides_Beverages/Veg/garlic_breadstick.jpg'),
(8, 'Chicken', 4, 'http://localhost/topspizza/pizza/Non-Veg/Chicken%20/Chicken_Golden_Delight.jpg'),
(9, 'Veg Burger Pizza', 5, 'http://localhost/topspizza/pizza/Burger_Pizza/Veg/Burger_Pizza_Premium_Veg.jpg'),
(10, 'Non-Veg Burger Pizza', 5, 'http://localhost/topspizza/pizza/Burger_Pizza/Non_Veg/Burger_Pizza_Non.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbluser`
--

CREATE TABLE `tbluser` (
  `u_id` int(11) NOT NULL,
  `u_name` varchar(100) NOT NULL,
  `u_mob` varchar(200) NOT NULL,
  `u_img` varchar(200) NOT NULL,
  `u_pass` varchar(200) NOT NULL,
  `u_emailid` varchar(100) NOT NULL,
  `u_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tblcat`
--
ALTER TABLE `tblcat`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `tbloffer`
--
ALTER TABLE `tbloffer`
  ADD PRIMARY KEY (`offer_id`);

--
-- Indexes for table `tblorder`
--
ALTER TABLE `tblorder`
  ADD PRIMARY KEY (`O_id`);

--
-- Indexes for table `tblproduct`
--
ALTER TABLE `tblproduct`
  ADD PRIMARY KEY (`p_id`);

--
-- Indexes for table `tblshipadd`
--
ALTER TABLE `tblshipadd`
  ADD PRIMARY KEY (`ship_id`);

--
-- Indexes for table `tblsubcat`
--
ALTER TABLE `tblsubcat`
  ADD PRIMARY KEY (`subcat_id`);

--
-- Indexes for table `tbluser`
--
ALTER TABLE `tbluser`
  ADD PRIMARY KEY (`u_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tblcat`
--
ALTER TABLE `tblcat`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `tbloffer`
--
ALTER TABLE `tbloffer`
  MODIFY `offer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tblorder`
--
ALTER TABLE `tblorder`
  MODIFY `O_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tblproduct`
--
ALTER TABLE `tblproduct`
  MODIFY `p_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
--
-- AUTO_INCREMENT for table `tblshipadd`
--
ALTER TABLE `tblshipadd`
  MODIFY `ship_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tblsubcat`
--
ALTER TABLE `tblsubcat`
  MODIFY `subcat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `tbluser`
--
ALTER TABLE `tbluser`
  MODIFY `u_id` int(11) NOT NULL AUTO_INCREMENT;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
