-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 01, 2021 at 02:41 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecomm`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `cat_slug` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `cat_slug`) VALUES
(1, 'Long Sleeve', 'long sleeve'),
(2, 'Casual', 'casual'),
(4, 'Polo', 'polo'),
(5, 'Stripes', 'stripes'),
(6, 'Sportswear', '');

-- --------------------------------------------------------

--
-- Table structure for table `details`
--

CREATE TABLE `details` (
  `id` int(11) NOT NULL,
  `sales_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `details`
--

INSERT INTO `details` (`id`, `sales_id`, `product_id`, `quantity`) VALUES
(14, 9, 11, 2),
(15, 9, 13, 5),
(16, 9, 3, 2),
(17, 9, 1, 3),
(18, 10, 13, 3),
(19, 10, 2, 4),
(20, 10, 19, 5),
(21, 11, 36, 1),
(22, 11, 42, 1),
(23, 11, 39, 1),
(24, 11, 47, 1),
(25, 12, 51, 1),
(26, 12, 52, 2),
(27, 13, 35, 1),
(28, 13, 52, 1),
(29, 13, 34, 1),
(30, 14, 52, 1),
(31, 14, 47, 1),
(32, 14, 44, 1),
(33, 14, 49, 1),
(34, 15, 52, 1),
(35, 15, 40, 1),
(36, 15, 35, 1),
(37, 15, 48, 1),
(38, 16, 52, 1),
(39, 17, 51, 1),
(40, 17, 47, 1),
(41, 17, 45, 1),
(42, 18, 36, 1),
(43, 18, 35, 1),
(44, 18, 52, 1),
(45, 18, 33, 1),
(46, 18, 48, 1),
(47, 19, 32, 1);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `slug` varchar(200) NOT NULL,
  `price` double NOT NULL,
  `photo` varchar(200) NOT NULL,
  `date_view` date NOT NULL,
  `counter` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `name`, `description`, `slug`, `price`, `photo`, `date_view`, `counter`) VALUES
(30, 2, 'Beige', '<p>A piece with a high degree of perfection that looks <strong>simple </strong>and has <strong><em>outstanding design and durability.</em></strong></p>\r\n', 'beige', 40, 'beige.jpg', '2020-12-29', 8),
(31, 2, 'Brown', '<p>A piece with a high degree of perfection that looks&nbsp;<strong>simple&nbsp;</strong>and has&nbsp;<strong><em>outstanding design and durability.</em></strong></p>\r\n', 'brown', 40, 'brown.jpg', '2020-12-29', 1),
(32, 2, 'Navy', '<p>A piece with a high degree of perfection that looks&nbsp;<strong>simple&nbsp;</strong>and has&nbsp;<strong><em>outstanding design and durability.</em></strong></p>\r\n', 'navy', 40, 'navy.jpg', '2021-01-01', 1),
(33, 2, 'Orange', '<p>A piece with a high degree of perfection that looks&nbsp;<strong>simple&nbsp;</strong>and has&nbsp;<strong><em>outstanding design and durability.</em></strong></p>\r\n', 'orange', 0, 'orange.jpg', '2021-01-01', 1),
(34, 2, 'Red', '<p>A piece with a high degree of perfection that looks&nbsp;<strong>simple&nbsp;</strong>and has&nbsp;<strong><em>outstanding design and durability.</em></strong></p>\r\n', 'red', 40, 'red.jpg', '2020-12-30', 1),
(35, 4, 'Aqua Lacoste', '<p>Lacoste polo shirt with short sleeves made of <strong>piqu&eacute; </strong>cotton.</p>\r\n', 'aqua-lacoste', 75, 'aqua-lacoste.jpg', '2021-01-01', 1),
(36, 4, 'Black Lacoste', '<p>Lacoste polo shirt with short sleeves made of <strong>piqu&eacute; </strong>cotton.</p>\r\n', 'black-lacoste', 75, 'black.jpg', '2021-01-01', 1),
(37, 4, 'Blue Lacoste', '<p>Lacoste polo shirt with short sleeves made of <strong>piqu&eacute; </strong>cotton.</p>\r\n', 'blue-lacoste', 75, 'blue-lacoste.jpg', '0000-00-00', 0),
(38, 4, 'Green Lacoste', '<p>Lacoste polo shirt with short sleeves made of <strong>piqu&eacute; </strong>cotton.</p>\r\n', 'green-lacoste', 75, 'green.jpg', '0000-00-00', 0),
(39, 4, 'Grey Lacoste', '<p>Lacoste polo shirt with short sleeves made of <strong>piqu&eacute; </strong>cotton.</p>\r\n', 'grey-lacoste', 75, 'grey-lacoste.jpg', '2020-12-29', 1),
(40, 5, 'Black Stripes', '<p>The original <strong>Burly and Boxy </strong>T-Shirt</p>\r\n\r\n<p>&nbsp;</p>\r\n', 'black-stripes', 50, 'black-stripes.jpg', '2020-12-30', 1),
(41, 5, 'Green Stripes', '<h2>Nobody mashes colors together quite like <em>Missoni</em>.</h2>\r\n', 'green-stripes', 50, 'green-stripes.jpg', '0000-00-00', 0),
(42, 5, 'Olive Stripes', '<p>Clean, laidback, goes-with-everything goodness.&nbsp;</p>\r\n', 'olive-stripes', 50, 'olive-stripes.jpg', '2020-12-29', 1),
(43, 5, 'Orange Stripes', '<p>Red, white, and&nbsp;<em>brown</em>&nbsp;go better together than anybody could&#39;ve guessed.</p>\r\n', 'orange-stripes', 50, 'orange-stripes.jpg', '0000-00-00', 0),
(44, 5, 'White Stripes', '<p>The OG striped tee, direct from the coast of France.</p>\r\n', 'white-stripes', 50, 'white-stripes.jpg', '2020-12-31', 1),
(45, 1, 'BlackOut', '<p>A casual sweatshirt made of a fluffy and soft wool blend, for both comfort and style.</p>\r\n', 'blackout', 99, 'blackout.jpg', '2021-01-01', 2),
(46, 1, 'Brownies', '<p>A casual sweatshirt made of a fluffy and soft wool blend, for both comfort and style.</p>\r\n', 'brownies', 75, 'brownies.jpg', '2020-12-31', 1),
(47, 1, 'OrangeE', '<p>A casual sweatshirt made of a fluffy and soft wool blend, for both comfort and style.</p>\r\n', 'orangee', 75, 'orangee.jpg', '2021-01-01', 1),
(48, 1, 'WhiteE', '<p>A casual sweatshirt made of a fluffy and soft wool blend, for both comfort and style.</p>\r\n', 'whitee', 75, 'whitee.jpg', '2021-01-01', 1),
(49, 6, 'Edo Zebra', '<p>The Nike Sportswear T-Shirt draws inspiration from Edo-period Japanese craft, adding a dose of stripes and texture to let you mix up your style. The slightly longer sleeves and roomy fit create a laid-back look.</p>\r\n', 'edo-zebra', 100, 'edo-zebra.jpg', '2020-12-29', 1),
(50, 6, 'Edo Gold', '<p>The Nike Sportswear T-Shirt draws inspiration from Edo-period Japanese craft, adding a dose of stripes and texture to let you mix up your style. The slightly longer sleeves and roomy fit create a laid-back look.</p>\r\n', 'edo-gold', 99, 'edo-gold.jpg', '0000-00-00', 0),
(51, 6, 'Malaysia 2020 Home', '<p>The Malaysia Stadium Home Shirt shows off your pride for everyone to see. Breathable fabric helps keep you cool and dry on the pitch or in the stands cheering for your team. This product is made from 100%-recycled polyester fabric.</p>\r\n', 'malaysia-2020-home', 99, 'malaysia-2020-home.jpg', '2021-01-01', 1),
(52, 6, 'Malaysia 2020 Away', '<p>The Malaysia Stadium Away Shirt shows off your pride for everyone to see. Breathable fabric helps keep you cool and dry on the pitch or in the stands cheering for your team. This product is made from 100%-recycled polyester fabric.</p>\r\n', 'malaysia-2020-away', 99, 'malaysia-2020-away.jpg', '2021-01-01', 1);

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `pay_id` varchar(50) NOT NULL,
  `sales_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `user_id`, `pay_id`, `sales_date`) VALUES
(11, 9, 'PAYID-L7VR4OY5MR68396Y7093461W', '2020-12-29'),
(12, 9, 'PAYID-L7VY2HA9HU08391UR6169525', '2020-12-29'),
(13, 9, 'PAYID-L7VZPFA46X81489F71263339', '2020-12-29'),
(14, 13, 'PAYID-L7VZQBQ4HN44169YP5598949', '2020-12-29'),
(15, 21, 'PAYID-L7WOEAQ8RR46358FV487882X', '2020-12-30'),
(16, 9, 'PAYID-L7WWYIQ00C77363GD611522C', '2020-12-31'),
(17, 9, 'PAYID-L7XSCDY1N385590RR8506044', '2021-01-01'),
(18, 22, 'PAYID-L7XSD2I1P787959RK264091S', '2021-01-01'),
(19, 22, 'PAYID-L7XSJSQ5DT75456CR018821T', '2021-01-01');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(60) NOT NULL,
  `type` int(1) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `address` text NOT NULL,
  `contact_info` varchar(100) NOT NULL,
  `photo` varchar(200) NOT NULL,
  `status` int(1) NOT NULL,
  `activate_code` varchar(15) NOT NULL,
  `reset_code` varchar(15) NOT NULL,
  `created_on` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `type`, `firstname`, `lastname`, `address`, `contact_info`, `photo`, `status`, `activate_code`, `reset_code`, `created_on`) VALUES
(1, 'admin@admin.com', '$2y$10$0SHFfoWzz8WZpdu9Qw//E.tWamILbiNCX7bqhy3od0gvK5.kSJ8N2', 1, 'GGT-Store', 'Admin', '', '', 'female3.jpg', 1, '', '', '2018-05-01'),
(9, 'harry@den.com', '$2y$10$Oongyx.Rv0Y/vbHGOxywl.qf18bXFiZOcEaI4ZpRRLzFNGKAhObSC', 0, 'Harry', 'Den', 'Silay City, Negros Occidental', '09092735719', 'male2.png', 1, 'k8FBpynQfqsv', 'wzPGkX5IODlTYHg', '2018-05-09'),
(22, 'sllhddnmhdzknddn@gmail.com', '$2y$10$TiwFlYrvgQRvLA/9oC6ek.uYIkarD5yysQIrO3JrhOtJdRe95YpeW', 0, 'Wicked', 'Labu', '', '', '', 1, 'ZDW6mSidCPIA', '', '2021-01-01');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `details`
--
ALTER TABLE `details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `details`
--
ALTER TABLE `details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
