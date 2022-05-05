-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 25, 2021 at 07:20 PM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `restaurant_ci`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `active` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `active`) VALUES
(2, 'Breakfast', 1),
(3, 'Appetizers', 1),
(4, 'Lunch', 1),
(5, 'Dessert', 1),
(6, 'Drinks', 1),
(7, 'Wraps', 1),
(8, 'Sandwiches', 1),
(9, 'Flatbreads', 1),
(10, 'Combos', 1),
(11, 'Sides', 1),
(12, 'Burgers', 1),
(13, 'Pizza', 1),
(14, 'Pasta', 1),
(15, 'Starters', 1),
(16, 'BBQ Platters', 1),
(17, 'Tacos', 1);

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE `company` (
  `id` int(11) NOT NULL,
  `company_name` varchar(255) NOT NULL,
  `service_charge_value` varchar(255) NOT NULL,
  `vat_charge_value` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `currency` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`id`, `company_name`, `service_charge_value`, `vat_charge_value`, `address`, `phone`, `country`, `message`, `currency`) VALUES
(1, 'Dine Fine', '3', '13', '6996 Blecker Street', '3012458800', 'United States', 'Restaurant Management System in PHP with CodeIgniter Framework.', 'USD');

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `id` int(11) NOT NULL,
  `group_name` varchar(255) NOT NULL,
  `permission` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `group_name`, `permission`) VALUES
(1, 'Super Administrator', 'a:32:{i:0;s:10:\"createUser\";i:1;s:10:\"updateUser\";i:2;s:8:\"viewUser\";i:3;s:10:\"deleteUser\";i:4;s:11:\"createGroup\";i:5;s:11:\"updateGroup\";i:6;s:9:\"viewGroup\";i:7;s:11:\"deleteGroup\";i:8;s:11:\"createStore\";i:9;s:11:\"updateStore\";i:10;s:9:\"viewStore\";i:11;s:11:\"deleteStore\";i:12;s:11:\"createTable\";i:13;s:11:\"updateTable\";i:14;s:9:\"viewTable\";i:15;s:11:\"deleteTable\";i:16;s:14:\"createCategory\";i:17;s:14:\"updateCategory\";i:18;s:12:\"viewCategory\";i:19;s:14:\"deleteCategory\";i:20;s:13:\"createProduct\";i:21;s:13:\"updateProduct\";i:22;s:11:\"viewProduct\";i:23;s:13:\"deleteProduct\";i:24;s:11:\"createOrder\";i:25;s:11:\"updateOrder\";i:26;s:9:\"viewOrder\";i:27;s:11:\"deleteOrder\";i:28;s:10:\"viewReport\";i:29;s:13:\"updateCompany\";i:30;s:11:\"viewProfile\";i:31;s:13:\"updateSetting\";}'),
(4, 'Members', 'a:9:{i:0;s:9:\"viewStore\";i:1;s:11:\"deleteStore\";i:2;s:9:\"viewTable\";i:3;s:11:\"deleteTable\";i:4;s:12:\"viewCategory\";i:5;s:11:\"viewProduct\";i:6;s:11:\"createOrder\";i:7;s:11:\"updateOrder\";i:8;s:9:\"viewOrder\";}'),
(5, 'Staff', 'a:6:{i:0;s:9:\"viewTable\";i:1;s:11:\"viewProduct\";i:2;s:11:\"createOrder\";i:3;s:11:\"updateOrder\";i:4;s:9:\"viewOrder\";i:5;s:11:\"viewProfile\";}'),
(6, 'Manager', 'a:19:{i:0;s:8:\"viewUser\";i:1;s:11:\"createGroup\";i:2;s:11:\"updateGroup\";i:3;s:9:\"viewGroup\";i:4;s:11:\"deleteGroup\";i:5;s:9:\"viewStore\";i:6;s:11:\"createTable\";i:7;s:11:\"updateTable\";i:8;s:9:\"viewTable\";i:9;s:11:\"deleteTable\";i:10;s:14:\"updateCategory\";i:11;s:13:\"createProduct\";i:12;s:13:\"updateProduct\";i:13;s:11:\"viewProduct\";i:14;s:13:\"deleteProduct\";i:15;s:9:\"viewOrder\";i:16;s:11:\"deleteOrder\";i:17;s:10:\"viewReport\";i:18;s:11:\"viewProfile\";}'),
(7, 'Cashier', 'a:8:{i:0;s:8:\"viewUser\";i:1;s:11:\"createOrder\";i:2;s:11:\"updateOrder\";i:3;s:9:\"viewOrder\";i:4;s:11:\"deleteOrder\";i:5;s:10:\"viewReport\";i:6;s:11:\"viewProfile\";i:7;s:13:\"updateSetting\";}');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `bill_no` varchar(255) NOT NULL,
  `date_time` varchar(255) NOT NULL,
  `gross_amount` varchar(255) NOT NULL,
  `service_charge_rate` varchar(255) NOT NULL,
  `service_charge_amount` varchar(255) NOT NULL,
  `vat_charge_rate` varchar(255) NOT NULL,
  `vat_charge_amount` varchar(255) NOT NULL,
  `discount` varchar(255) NOT NULL,
  `net_amount` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `table_id` int(11) NOT NULL,
  `paid_status` int(11) NOT NULL,
  `store_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `bill_no`, `date_time`, `gross_amount`, `service_charge_rate`, `service_charge_amount`, `vat_charge_rate`, `vat_charge_amount`, `discount`, `net_amount`, `user_id`, `table_id`, `paid_status`, `store_id`) VALUES
(1, 'CDSTRO-17AD', '1621937009', '14.00', '', '0', '13', '1.82', '0', '15.82', 1, 3, 1, 0),
(2, 'CDSTRO-E230', '1621941718', '6.00', '', '0', '13', '0.78', '0', '6.78', 1, 6, 1, 0),
(3, 'CDSTRO-32CD', '1621951601', '9.00', '3', '0.27', '13', '1.17', '0', '10.44', 1, 30, 2, 0),
(4, 'CDSTRO-D1E6', '1621954896', '29.79', '3', '0.89', '13', '3.87', '0', '34.55', 1, 23, 2, 0),
(5, 'CDSTRO-8C4D', '1621958450', '36.44', '3', '1.09', '13', '4.74', '1', '41.27', 1, 12, 1, 0),
(6, 'CDSTRO-9507', '1621960539', '18.99', '3', '0.57', '13', '2.47', '0', '22.03', 1, 24, 1, 0),
(7, 'CDSTRO-8B2C', '1621962871', '44.34', '3', '1.33', '13', '5.76', '1', '50.43', 1, 37, 1, 0),
(8, 'CDSTRO-0E73', '1621963107', '9.85', '3', '0.30', '13', '1.28', '0', '11.43', 5, 33, 1, 16);

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `qty` varchar(255) NOT NULL,
  `rate` varchar(255) NOT NULL,
  `amount` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `product_id`, `qty`, `rate`, `amount`) VALUES
(6, 1, 2, '2', '5', '10.00'),
(7, 1, 1, '3', '4', '4.00'),
(8, 2, 3, '2', '3', '6.00'),
(9, 3, 5, '1', '6', '6.00'),
(10, 3, 3, '2', '3', '3.00'),
(11, 4, 19, '2', '7.95', '15.90'),
(12, 4, 16, '2', '1.89', '1.89'),
(13, 4, 9, '1', '12', '12.00'),
(18, 5, 23, '2', '10.30', '20.60'),
(19, 5, 19, '1', '7.95', '7.95'),
(20, 5, 16, '2', '1.89', '1.89'),
(21, 5, 5, '1', '6', '6.00'),
(24, 6, 12, '1', '9', '9.00'),
(25, 6, 15, '1', '9.99', '9.99'),
(33, 7, 24, '2', '9.85', '19.70'),
(34, 7, 25, '1', '5.10', '5.10'),
(35, 7, 18, '1', '8.95', '8.95'),
(36, 7, 16, '3', '1.89', '1.89'),
(37, 7, 8, '2', '1.70', '1.70'),
(38, 7, 2, '1', '5', '5.00'),
(39, 7, 4, '2', '2', '2.00'),
(41, 8, 24, '1', '9.85', '9.85');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category_id` text NOT NULL,
  `store_id` text NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `image` text NOT NULL,
  `active` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `store_id`, `name`, `price`, `description`, `image`, `active`) VALUES
(1, '[\"6\"]', '[\"1\"]', 'Virgin Mojito', '4', '<p>This is a demo test</p>', '<p>The upload path does not appear to be valid.</p>', 1),
(2, '[\"3\"]', '[\"1\"]', 'Carbonara', '5', '<p>\r\n\r\n<b></b>Carbonara&nbsp;<b></b>is an Italian pasta dish from Rome made with egg, hard cheese, cured pork, and black pepper. The cheese is usually Pecorino Romano, Parmigiano-Reggiano, or a combination of the two. Spaghetti is the most common pasta, but fettuccine, rigatoni, linguine, or bucatini are also used.<br></p>', '<p>The upload path does not appear to be valid.</p>', 1),
(3, '[\"8\"]', '[\"1\"]', 'Grilled Cheese Sandwich', '3', '<p>A toasted sandwich, grilled cheese sandwich,&nbsp; or grilled cheese is a hot sandwich made with one or more varieties of cheese (a cheese sandwich) on bread. It is typically prepared by heating one or more slices of cheese between slices of bread, with a cooking fat such as butter, on a frying pan, griddle, or sandwich toaster, until the bread browns and the cheese melts. A grilled cheese may contain separate ingredients, though the main ingredients remain the bread and cheese.<br></p>', '<p>The upload path does not appear to be valid.</p>', 1),
(4, '[\"11\"]', '[\"1\",\"2\"]', 'French Fries', '2', '<p>\r\n\r\nFrench fries are served hot, either soft or crispy, and are generally eaten as part of lunch or dinner or by themselves as a snack\r\n\r\n<br></p>', '<p>The upload path does not appear to be valid.</p>', 1),
(5, '[\"11\"]', '[\"2\"]', 'Chicken Rings', '6', '<p>Chicken <b></b>Rings are&nbsp;basically <b></b>chicken&nbsp;<b></b>nuggets that <b></b>are flattened and shaped into discs for, as the company put it, 360 degrees of yes please! More specifically, they\'re made with white meat <b></b>chicken&nbsp;<b></b>and breaded for a crispy exterior.</p>', '<p>The upload path does not appear to be valid.</p>', 1),
(6, '[\"12\"]', '[\"1\"]', 'Signature BBQ Burger', '5', '<p>\r\n\r\nThe <b></b>BBQ Signature Burger<b></b>&nbsp;- 100% British and Irish beef, a smoky <b></b>BBQ sauce, bacon, coleslaw, cheddar cheese, red onion, lettuce, all in a soft brioche-style bun.</p>', '<p>The upload path does not appear to be valid.</p>', 1),
(7, '[\"12\"]', '[\"1\",\"3\",\"4\",\"5\",\"7\",\"9\",\"11\",\"13\"]', 'Veggie Burger', '3', '<p>\r\n\r\nA veggie burger is a burger patty that does not contain meat. These burgers may be made from ingredients like beans, especially soybeans and tofu, nuts, grains, seeds or fungi such as mushrooms or mycoprotein.\r\n\r\n<br></p>', '<p>The upload path does not appear to be valid.</p>', 1),
(8, '[\"12\"]', '[\"2\",\"4\",\"7\",\"13\"]', 'Bacon Cheese Burger', '1.70', '<p>\r\n\r\nBacon, American, lettuce, tomato, red onion, pickles\r\n\r\n<br></p>', '<p>The upload path does not appear to be valid.</p>', 1),
(9, '[\"13\"]', '[\"2\",\"4\",\"5\",\"8\",\"10\",\"13\"]', 'Pepperoni Pizza', '12', '<p>An American variety of salami, made from cured pork and beef seasoned with paprika or other chili pepper.\r\n\r\n<br></p>', '<p>The upload path does not appear to be valid.</p>', 1),
(10, '[\"13\"]', '[\"2\",\"3\",\"5\",\"12\",\"13\"]', 'Chicken-Bacon Parmesan Pizza', '19', '<p>\r\n\r\nHand-Tossed Pizza, Original Pan Pizza, Thin N Crispy Pizza\r\n\r\n<br></p>', '<p>The upload path does not appear to be valid.</p>', 1),
(11, '[\"13\"]', '[\"4\",\"5\",\"12\",\"13\"]', 'Backyard BBQ Chicken Pizza', '22', '<p>\r\n\r\n<b></b>BBQ&nbsp;<b></b>Chicken is topped with white meat chicken, hardwood smoked bacon, and sweet red onions. All <b></b>pizzas&nbsp;<b></b>are topped with a Honey <b></b>BBQ&nbsp;<b></b>sauce and a hand tossed crust with a toasty cheddar edge.\r\n\r\n<br></p>', '<p>The upload path does not appear to be valid.</p>', 1),
(12, '[\"14\"]', '[\"9\",\"12\"]', 'Tuscani Chicken Alfredo Pasta', '9', '<p>\r\n\r\nCreamy Chicken Alfredo and Meaty Marinara.\r\n\r\n<br></p>', '<p>The upload path does not appear to be valid.</p>', 1),
(13, '[\"6\"]', '[\"1\",\"2\",\"3\",\"5\",\"7\",\"10\",\"13\"]', 'Diet Pepsi', '2', '<p>\r\n\r\nBottle 20 oz\r\n\r\n<br></p>', '<p>The upload path does not appear to be valid.</p>', 1),
(14, '[\"6\"]', '[\"1\",\"2\",\"5\",\"9\",\"10\",\"13\"]', 'Crush Orange', '3.09', '<p>2 Liter</p>', '<p>The upload path does not appear to be valid.</p>', 1),
(15, '[\"10\"]', '[\"2\",\"5\",\"12\",\"13\"]', 'Chicken Sandwich XL Combo', '9.99', '<p>Hand-battered chicken, topped with a signature honey-butter brushed brioche bun with mayo and pickles. Order it Spicy with spicy mayo and a jalapeño on the side for an extra kick. Served with regular side and large drink.\r\n\r\n<br></p>', '<p>The upload path does not appear to be valid.</p>', 1),
(16, '[\"6\"]', '[\"1\",\"2\",\"3\",\"4\",\"5\",\"6\",\"10\",\"13\"]', 'Dr. Pepper', '1.89', '<p>\r\n\r\nCalories: R 280 | L 380\r\n\r\n<br></p>', '<p>The upload path does not appear to be valid.</p>', 1),
(17, '[\"6\"]', '[\"3\",\"7\",\"11\",\"13\"]', 'Organic Lemonade', '2.80', '<p>\r\n\r\n32 Fl Oz\r\n\r\n<br></p>', '<p>The upload path does not appear to be valid.</p>', 1),
(18, '[\"3\"]', '[\"2\",\"6\",\"8\",\"11\"]', 'Nachos Grande', '8.95', '<p>\r\n\r\nLightly spread chips with half of the beans, leaving some uncovered. Sprinkle half of the cheese evenly over all the chips\r\n\r\n<br></p>', '<p>The upload path does not appear to be valid.</p>', 1),
(19, '[\"3\"]', '[\"2\",\"6\",\"10\",\"11\"]', 'Popcorn Chicken', '7.95', '<p>Consisting of small, bite-sized pieces of chicken that have been breaded and fried.\r\n\r\n<br></p>', '<p>The upload path does not appear to be valid.</p>', 1),
(20, '[\"15\"]', '[\"1\",\"8\"]', 'Blackened Alligator Sausage on a Plate', '10.75', '<p>\r\n\r\nBlend of alligator and pork sausage served with BBQ sauce\r\n\r\n<br></p>', '<p>The upload path does not appear to be valid.</p>', 1),
(21, '[\"15\"]', '[\"5\",\"10\",\"12\"]', 'BBQ Shrimp and Hot Beef Sausage', '12.50', '<p>\r\n\r\nServed in house made sweet and spicy BBQ sauce drape the sweet shrimp and savoie\'s sausage with baguette\r\n\r\n<br></p>', '<p>The upload path does not appear to be valid.</p>', 1),
(22, '[\"3\"]', '[\"2\",\"3\",\"9\",\"13\"]', 'Shrimp Scampi', '10.95', '<p>\r\n\r\nShrimp <b></b>scampi is a seafood dish with a <b></b>sauce of garlic, lemon, and butter.</p>', '<p>The upload path does not appear to be valid.</p>', 1),
(23, '[\"7\"]', '[\"4\",\"8\",\"9\",\"11\"]', 'Chicken Caesar Wrap', '10.30', '<p>\r\n\r\nThe new <b></b>wraps&nbsp;<b></b>feature your choice of either crispy or grilled seasoned <b></b>chicken<b></b>, bacon, a blend of Monterey Jack and Mozzarella cheeses, and <b></b>Caesar&nbsp;<b></b>sauce, all wrapped in a soft tortilla and grilled.\r\n\r\n<br></p>', '<p>The upload path does not appear to be valid.</p>', 1),
(24, '[\"16\"]', '[\"5\",\"6\",\"9\",\"14\",\"15\",\"16\"]', 'Sliced Smoked Turkey Breast', '9.85', '<p>Slow smoked, hand sliced turkey breast served with your choice of two sides</p>', '<p>The upload path does not appear to be valid.</p>', 1),
(25, '[\"17\"]', '[\"2\",\"4\",\"5\",\"10\",\"14\",\"15\"]', 'Crispy Chicken Tacos', '5.10', '<p>Three crispy fried chicken in a soft flour tortilla tossed with spicy mayo and served street style with onion, salsa, cilantro and pickled red onions.</p>', '<p>The upload path does not appear to be valid.</p>', 1);

-- --------------------------------------------------------

--
-- Table structure for table `stores`
--

CREATE TABLE `stores` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `active` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `stores`
--

INSERT INTO `stores` (`id`, `name`, `active`) VALUES
(1, 'Cornucopia', 1),
(2, 'Parallax Restaurant', 1),
(3, 'Crafty Plates', 1),
(4, 'Burgrill', 1),
(5, 'The Gourmet Kitchen', 1),
(6, 'Pies n Thighs', 1),
(7, 'Spago Restaurant', 1),
(8, 'Theo\'s Crazy Corner', 1),
(9, 'Manressa', 1),
(10, 'Carthay Circle Restaurant', 1),
(11, 'Fiddler\'s Green', 1),
(12, 'Del Posto', 1),
(13, 'Firefly Restaurant', 1),
(14, 'Zoftig Eatery', 1),
(15, 'Hell\'s Kitchen', 1),
(16, 'Ember Restaurant', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tables`
--

CREATE TABLE `tables` (
  `id` int(11) NOT NULL,
  `table_name` varchar(255) NOT NULL,
  `capacity` varchar(255) NOT NULL,
  `available` int(11) NOT NULL,
  `active` int(11) NOT NULL,
  `store_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tables`
--

INSERT INTO `tables` (`id`, `table_name`, `capacity`, `available`, `active`, `store_id`) VALUES
(1, 'T 10', '4', 1, 1, 1),
(2, 'T 11', '6', 1, 1, 1),
(3, 'T 12', '4', 1, 1, 1),
(4, 'P4', '2', 1, 1, 2),
(5, 'P6', '4', 1, 1, 2),
(6, 'P12', '4', 1, 1, 2),
(7, 'C1', '4', 1, 1, 3),
(8, 'C2', '4', 1, 1, 3),
(9, 'C3', '', 1, 1, 3),
(10, 'BG4', '2', 1, 1, 4),
(11, 'BG5', '4', 1, 1, 4),
(12, 'BG8', '6', 1, 1, 4),
(13, 'TK4', '4', 1, 1, 5),
(14, 'TK46', '4', 1, 1, 5),
(15, 'TK10', '6', 1, 1, 5),
(16, 'PT2', '4', 1, 1, 6),
(17, 'PT4', '4', 1, 1, 6),
(18, 'SR1', '4', 1, 1, 7),
(19, 'SR4', '6', 1, 1, 7),
(20, 'TCC5', '4', 1, 1, 8),
(21, 'TCC9', '', 1, 1, 8),
(22, 'M15', '6', 1, 1, 9),
(23, 'M20', '8', 2, 1, 9),
(24, 'CCR5', '4', 1, 1, 10),
(25, 'CCR6', '8', 1, 1, 10),
(26, 'FG5', '6', 1, 1, 11),
(27, 'FG8', '8', 1, 1, 11),
(28, 'DP2', '4', 1, 1, 12),
(29, 'DP3', '8', 1, 1, 12),
(30, 'FR15', '4', 2, 1, 13),
(31, 'FR19', '8', 1, 1, 13),
(32, 'FR20', '2', 1, 1, 13),
(33, 'ER4', '2', 1, 1, 16),
(34, 'ER6', '4', 1, 1, 16),
(35, 'ER8', '6', 1, 1, 16),
(36, 'HK8', '4', 1, 1, 15),
(37, 'ZE9', '6', 1, 1, 14);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `gender` int(11) NOT NULL,
  `store_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`, `firstname`, `lastname`, `phone`, `gender`, `store_id`) VALUES
(1, 'admin', '$2y$10$7HpMJOYDc7QyaRfJX5exJuQSi2U/fB7qgRLACu.1TMg7snJNf7Mim', 'admin@gmail.com', 'Will', 'Williams', '80789998', 1, 0),
(2, 'kenny', '$2y$10$QQESnj3B3Q3nb9IBuZwZE..rmAJPUzz0DWlNM8zCydju432BlyjuO', 'kennyw@gmail.com', 'Kenny', 'Waldrom', '7545554540', 1, 1),
(3, 'liamoore', '$2y$10$ug9KuKmpgY1ck0tuzjxjU.rROEkaFCloTTZGjMhRzugMZA14bZSdC', 'liam@gmail.com', 'Liam', 'Moore', '7400002140', 1, 1),
(4, 'veronica', '$2y$10$J4/hvDs/.rW8nrd8N9kfuuh0Msh4djj6LyhQvG3l8/9clc7ge7At.', 'veronica@gmail.com', 'Veronica', 'Lyle', '7850002680', 2, 2),
(5, 'donna', '$2y$10$uhWPHza2qiKtFKS3IKbIyeblUBXPoJWbwyWCuju7ukCTAcm2oncZO', 'donna@gmail.com', 'Donna', 'Edwards', '7025556960', 2, 16);

-- --------------------------------------------------------

--
-- Table structure for table `user_group`
--

CREATE TABLE `user_group` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_group`
--

INSERT INTO `user_group` (`id`, `user_id`, `group_id`) VALUES
(1, 1, 1),
(2, 2, 4),
(3, 3, 4),
(4, 4, 6),
(5, 5, 7);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stores`
--
ALTER TABLE `stores`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tables`
--
ALTER TABLE `tables`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_group`
--
ALTER TABLE `user_group`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `company`
--
ALTER TABLE `company`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `stores`
--
ALTER TABLE `stores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `tables`
--
ALTER TABLE `tables`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `user_group`
--
ALTER TABLE `user_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
