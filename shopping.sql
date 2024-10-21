-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 21, 2024 at 06:49 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shopping`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `creationDate`, `updationDate`) VALUES
(1, 'admin', 'f925916e2754e5e03f75dd58a5733251', '2024-04-02 16:21:18', '03-05-2024 08:27:55 PM');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `categoryName` varchar(255) DEFAULT NULL,
  `categoryDescription` longtext DEFAULT NULL,
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `categoryName`, `categoryDescription`, `creationDate`, `updationDate`) VALUES
(8, 'Mobile Phones & Accessories', '', '2024-10-20 18:46:39', NULL),
(9, 'Laptops & Computers', '', '2024-10-20 18:46:50', NULL),
(10, 'Home Appliances', '', '2024-10-20 18:47:55', NULL),
(11, 'Audio & Headphones', '', '2024-10-20 18:48:05', NULL),
(12, 'Gaming & Consoles', '', '2024-10-20 18:48:14', NULL),
(13, 'Cameras & Photography', '', '2024-10-20 18:48:22', NULL),
(14, 'Wearables & Smart Devices', '', '2024-10-20 18:48:33', NULL),
(15, 'abc', 'test', '2024-10-21 04:40:18', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `productId` varchar(255) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `orderDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `paymentMethod` varchar(50) DEFAULT NULL,
  `orderStatus` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `userId`, `productId`, `quantity`, `orderDate`, `paymentMethod`, `orderStatus`) VALUES
(6, 1, '1', 1, '2024-10-20 21:26:55', 'Internet Banking', 'in Process'),
(7, 1, '1', 1, '2024-10-20 21:28:00', 'Debit / Credit card', 'Delivered'),
(8, 1, '12', 1, '2024-10-21 00:03:33', 'Internet Banking', 'in Process'),
(9, 7, '9', 1, '2024-10-21 00:07:31', 'Debit / Credit card', NULL),
(10, 7, '12', 1, '2024-10-21 00:07:31', 'Debit / Credit card', NULL),
(11, 7, '43', 1, '2024-10-21 00:07:31', 'Debit / Credit card', NULL),
(12, 1, '8', 1, '2024-10-21 04:31:52', 'COD', 'in Process'),
(13, 1, '9', 1, '2024-10-21 04:38:09', 'COD', NULL),
(14, 1, '43', 1, '2024-10-21 04:38:09', 'COD', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ordertrackhistory`
--

CREATE TABLE `ordertrackhistory` (
  `id` int(11) NOT NULL,
  `orderId` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `remark` mediumtext DEFAULT NULL,
  `postingDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `ordertrackhistory`
--

INSERT INTO `ordertrackhistory` (`id`, `orderId`, `status`, `remark`, `postingDate`) VALUES
(9, 6, 'in Process', 'we are proessing', '2024-10-20 21:30:33'),
(10, 7, 'Delivered', 'done', '2024-10-20 21:31:17'),
(11, 8, 'in Process', 'we are processing', '2024-10-21 00:08:35'),
(12, 12, 'in Process', 'we are prossesin', '2024-10-21 04:32:36');

-- --------------------------------------------------------

--
-- Table structure for table `productreviews`
--

CREATE TABLE `productreviews` (
  `id` int(11) NOT NULL,
  `productId` int(11) DEFAULT NULL,
  `quality` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `value` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `summary` varchar(255) DEFAULT NULL,
  `review` longtext DEFAULT NULL,
  `reviewDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `productreviews`
--

INSERT INTO `productreviews` (`id`, `productId`, `quality`, `price`, `value`, `name`, `summary`, `review`, `reviewDate`) VALUES
(1, 12, 5, 4, 4, 'SAFNI mj', 'Super', 'exellent service', '2024-10-21 00:03:13'),
(2, 12, 4, 4, 3, 'john', 'good', 'nice', '2024-10-21 04:33:39');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category` int(11) NOT NULL,
  `subCategory` int(11) DEFAULT NULL,
  `productName` varchar(255) DEFAULT NULL,
  `productCompany` varchar(255) DEFAULT NULL,
  `productPrice` int(11) DEFAULT NULL,
  `productPriceBeforeDiscount` int(11) DEFAULT NULL,
  `productDescription` longtext DEFAULT NULL,
  `productImage1` varchar(255) DEFAULT NULL,
  `productImage2` varchar(255) DEFAULT NULL,
  `productImage3` varchar(255) DEFAULT NULL,
  `shippingCharge` int(11) DEFAULT NULL,
  `productAvailability` varchar(255) DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category`, `subCategory`, `productName`, `productCompany`, `productPrice`, `productPriceBeforeDiscount`, `productDescription`, `productImage1`, `productImage2`, `productImage3`, `shippingCharge`, `productAvailability`, `postingDate`, `updationDate`) VALUES
(8, 8, 15, 'iPhone 14 Pro', 'Apple', 329670, 362999, '6.1-inch Super Retina XDR display, A16 Bionic chip, Pro camera system, 5G support, Ceramic Shield, and MagSafe compatibility.<br>', 'iphone-14-pro-deep-purple.png', 'iphone-14-pro-deep-purple-back.png', 'iphone-14-pro-deep-purple-front.png', 150, 'In Stock', '2024-10-20 22:42:06', NULL),
(9, 9, 18, 'MacBook Air M2', 'Apple', 362000, 395999, 'Sleek and lightweight design, 18-hour battery life, M2 chip for enhanced performance and graphics, 13.6-inch Retina display.<br>', 'MacBook-Air-M2-1.jpg', 'MacBook-Air-M2-6.jpg', 'MacBook-Air-M2-Silver.jpg', 999, 'In Stock', '2024-10-20 22:43:34', NULL),
(10, 10, 22, 'Samsung 1.5 Ton Inverter AC', 'Samsung', 214500, 231000, 'Fast cooling technology, energy-saving, powerful dehumidifier, digital display, 5-year warranty on compressor.<br>', '61g8GypPjRL.jpg', '41FZKCQ5XuL_7d2df31c-b1b3-4bcb-b27c-08aa35377f18_1024x1024@2x.jpg', '41CjaAaivZL_1024x1024@2x.jpg', 2500, 'In Stock', '2024-10-20 22:44:48', NULL),
(11, 11, 26, 'Sony WH-1000XM5', 'Sony', 115500, 132000, '&nbsp;Wireless, industry-leading noise cancellation, 30-hour battery life, premium sound quality, touch controls, voice assistant support.<br>', '1652389511_1706293.jpg', '1652389214_IMG_1754421.jpg', '1652389214_IMG_1754415.jpg', 1500, 'In Stock', '2024-10-20 22:45:51', NULL),
(12, 12, 30, 'PlayStation 5', 'Sony', 181500, 198000, 'Lightning-fast SSD, 4K graphics, 3D audio, DualSense controller, ray tracing, backward compatibility with PS4 games.<br>', '61mNVsIk6UL.jpg', 'playstation-5-slim-wishlk-500x500.png', 'download.png', 3500, 'In Stock', '2024-10-20 22:46:59', NULL),
(13, 8, 15, 'Samsung Galaxy S23 Ultra', 'Sumsung', 275600, 290000, 'A flagship smartphone featuring a 6.8-inch Dynamic AMOLED display, 200MP camera, and S Pen.<br>', 'Galaxy-S23-Ultra-Cream-1536x1536.jpg', 'product_color_green.avif', 'product_color_green.avif', 800, 'In Stock', '2024-10-20 23:14:00', NULL),
(14, 8, 15, 'Google Pixel 7', 'Google', 137000, 160000, 'A smart phone with a 6.3-inch display, impressive camera capabilities, and Googleâ€™s Tensor G2 chip.<br>', 'images.jpg', 'NBXTGooglePixel7ProAllColour_1_1.webp', '41Hk5y9bNvL._QL92_SH45_SX240_SY220_CR,0,0,240,220_.jpg', 450, 'In Stock', '2024-10-20 23:14:59', NULL),
(15, 8, 16, 'Silicone Case for iPhone', 'Apple', 2999, 3500, '&nbsp;A slim and lightweight silicone case that offers protection while maintaining style.<br>', 'Silicone-Case-for-iPhone-12-Series-2.png', 'Main-Image.webp', 'Wireless-Sync-Apple-iPhone-11-Pro-Max-6-5-Shockproof-Silicone-Phone-Case-Cover-Mint-Green_a86df91d-ad03-4c9f-ba6e-e1a46674da10.2c3177fe00fae9be6b93c5d462cacf57.webp', 220, 'In Stock', '2024-10-20 23:16:10', NULL),
(16, 8, 16, 'Rugged Armor Case for Samsung', 'Spigen', 3800, 4000, 'A durable case designed to absorb shock and provide maximum protection for your Samsung phone.<br>', 'images (1).jpg', 'images (2).jpg', 'images (3).jpg', 190, 'In Stock', '2024-10-20 23:17:23', NULL),
(17, 8, 17, '20W USB-C Fast Charger', 'Anker', 1990, 2000, 'Fast charging adapter compatible with a wide range of devices.<br>', 'Apple-20W-Original-Adapter-Price-in-Srilanka-1-simplytek-lk.webp', 'e7756f593e250a92c982df794c41472f.jpg_720x720q80.jpg_.webp', '61VR7Zby4tL._AC_UF350,350_QL80_.jpg', 20, 'In Stock', '2024-10-20 23:18:33', NULL),
(18, 8, 17, 'Lightning Cable for iPhone', 'Apple', 1390, 1500, 'A high-quality Lightning cable for fast data transfer and charging.<br>', 'unnamed.jpg', 'Lightning-Cable.jpg', '7bb975f577b2de5cc7612ba053086b45.jpg', 50, 'In Stock', '2024-10-20 23:19:53', NULL),
(19, 9, 18, 'Dell XPS 13', 'Dell', 215900, 220000, 'A high-performance laptop featuring a stunning InfinityEdge display and sleek design.<br>', 'images (4).jpg', 'images (5).jpg', 'a4d37de9-842a-40bf-a07f-42a0b29788cb.3cbce3157689bb28aef088829a3f8852.webp', 4000, 'In Stock', '2024-10-20 23:23:28', NULL),
(20, 9, 18, 'HP Spectre x360', 'HP', 199900, 210000, 'A versatile 2-in-1 laptop with a stunning display and long battery life.<br>', 'images (6).jpg', '61nIxrTDw8S._AC_SL1500_.jpg', 'images (7).jpg', 1500, 'In Stock', '2024-10-20 23:24:37', NULL),
(21, 9, 19, 'iMac 24\"', 'Apple', 290000, 300000, 'All-in-one desktop with a vibrant Retina display and powerful performance.<br>', 'images (8).jpg', 'images (9).jpg', 'images (10).jpg', 7500, 'In Stock', '2024-10-20 23:25:51', NULL),
(22, 9, 19, 'HP Pavilion Desktop', 'HP', 99900, 100000, 'Reliable desktop computer suitable for everyday tasks and multimedia.<br>', 'c06426088.webp', '71OhOgl42QL.jpg', 'c08077398.webp', 4500, 'In Stock', '2024-10-20 23:27:49', NULL),
(23, 9, 20, 'LG 27\" UltraFine 4K', 'LG', 75400, 80000, 'High-resolution monitor perfect for creative professionals and gamers.<br>', 'images (11).jpg', 'images (12).jpg', '51VKb0vkJHL._AC_UF350,350_QL80_.jpg', 3000, 'In Stock', '2024-10-20 23:29:07', NULL),
(24, 9, 20, 'Dell 24\" FHD Monitor', 'Dell', 38900, 40000, 'Full HD monitor with excellent color accuracy and design.<br>', 'DEL_DELL-M-S2421H-01.jpg', 'images (13).jpg', 'images (14).jpg', 4000, 'In Stock', '2024-10-20 23:30:25', NULL),
(25, 9, 21, 'Logitech MX Keys', 'Logitech', 17000, 20000, 'Premium wireless keyboard with a sleek design and backlit keys.<br>', 'img_9661.jpeg', 'mx-keys-s-keyboard-top-view-graphite-tur.png', 'Logitech-MX-Keys-Wireless-Keyboard-for-Mac-6.webp', 1200, 'In Stock', '2024-10-20 23:31:28', NULL),
(26, 9, 21, 'Razer DeathAdder Mouse', 'Razer', 9500, 12000, 'Ergonomic gaming mouse with customizable buttons and RGB lighting.<br>', '3336.jpg', '61ZkbUux3eL._AC_UF350,350_QL80_.jpg', 'images (15).jpg', 600, 'In Stock', '2024-10-20 23:32:34', NULL),
(27, 10, 22, 'LG DualCool AC', 'LG', 138500, 140000, 'Quick cooling and heating air conditioner with dual inverter technology.<br>', 'images (16).jpg', 'download.jpg', 'download (1).png', 5000, 'In Stock', '2024-10-20 23:33:47', NULL),
(28, 10, 23, 'Samsung 500L Double Door Fridge', 'Samsung', 155500, 160000, 'Spacious double door refrigerator with a sleek design and advanced cooling.<br>', 'download (1).jpg', 'download (2).jpg', 'download (3).jpg', 6500, 'In Stock', '2024-10-20 23:35:03', NULL),
(29, 10, 23, 'Whirlpool Single Door Fridge', 'Whirlpool', 69000, 70000, 'Efficient single door refrigerator with adequate storage and cooling features.<br>', 'download (4).jpg', 'download (5).jpg', 'download (6).jpg', 2200, 'In Stock', '2024-10-20 23:36:13', NULL),
(30, 10, 24, 'LG 8kg Front Load Washer', 'LG', 87500, 90000, 'High-efficiency front load washer with multiple wash programs and steam technology.<br>', 'download (7).jpg', 'download (8).jpg', 'download (9).jpg', 5000, 'In Stock', '2024-10-20 23:38:05', NULL),
(31, 10, 24, 'Samsung EcoBubble Washing Machine', 'Samsung', 82000, 85000, 'Eco-friendly washing machine that uses bubbles for deep cleaning.<br>', 'download (10).jpg', 'download (11).jpg', 'download (12).jpg', 4500, 'In Stock', '2024-10-20 23:39:19', NULL),
(32, 11, 26, 'Bose QuietComfort 45', 'Bose', 58500, 60000, 'Premium noise-cancelling headphones with superior sound quality.<br>', 'download (13).jpg', 'download (14).jpg', 'download (15).jpg', 2000, 'In Stock', '2024-10-20 23:40:21', NULL),
(33, 11, 27, 'Apple AirPods Pro', 'Apple', 33500, 35000, 'Wireless earbuds with active noise cancellation and transparency mode.<br>', 'download (16).jpg', 'download (17).jpg', 'download (18).jpg', 500, 'In Stock', '2024-10-20 23:41:29', NULL),
(34, 11, 27, 'Samsung Galaxy Buds2 Pro', 'Samsung', 29500, 30000, 'Comfortable wireless earbuds with impressive sound and ANC features.<br>', 'download (19).jpg', 'download (20).jpg', 'download (21).jpg', 600, 'In Stock', '2024-10-20 23:42:31', NULL),
(35, 11, 28, 'JBL Flip 6', 'JBL', 25000, 25500, '<li>Portable Bluetooth speaker with powerful sound and waterproof design.</li>', 'download (22).jpg', 'download (23).jpg', 'download (24).jpg', 1200, 'In Stock', '2024-10-20 23:43:41', NULL),
(36, 11, 28, 'Bose SoundLink Revolve', 'Bose', 43500, 45000, '360-degree sound portable speaker with deep bass and durability.<br>', 'download (25).jpg', 'download (26).jpg', 'download (27).jpg', 1200, 'In Stock', '2024-10-20 23:44:46', NULL),
(37, 12, 29, 'ASUS ROG Zephyrus', 'ASUS', 347900, 350000, 'High-performance gaming laptop with advanced cooling and immersive visuals.<br>', 'download (28).jpg', 'download (29).jpg', 'download (30).jpg', 5000, 'In Stock', '2024-10-20 23:45:49', NULL),
(38, 12, 29, 'MSI GF65', 'MSI', 195000, 200000, 'Gaming laptop featuring a fast display and powerful graphics for an enhanced gaming experience.<br>', 'download (31).jpg', 'download (32).jpg', 'download (33).jpg', 5000, 'In Stock', '2024-10-20 23:46:49', NULL),
(39, 12, 30, 'Xbox Series X', 'Microsoft', 114200, 115000, 'Powerful gaming console with backward compatibility and a wide range of games.<br>', 'download (34).jpg', 'download (35).jpg', 'download (36).jpg', 5000, 'In Stock', '2024-10-20 23:48:10', NULL),
(40, 12, 31, 'Razer Gaming Headset', 'Razer', 19800, 20000, 'Comfortable gaming headset with surround sound and customizable RGB lighting.<br>', 'download (37).jpg', 'download (38).jpg', 'download (39).jpg', 1500, 'In Stock', '2024-10-20 23:49:05', NULL),
(41, 12, 31, 'Logitech G502 Mouse', 'Logitech', 13800, 15000, 'High-performance gaming mouse with customizable buttons and DPI settings.<br>', 'download (40).jpg', 'download (41).jpg', 'download (42).jpg', 1300, 'In Stock', '2024-10-20 23:50:04', NULL),
(42, 13, 32, 'Canon EOS R5', 'Canon', 498000, 500000, 'A full-frame mirrorless camera with advanced features for professional photographers.<br>', 'download (43).jpg', 'download (44).jpg', 'download (44).jpg', 5800, 'In Stock', '2024-10-20 23:51:09', NULL),
(43, 13, 32, 'Sony Alpha A7III', 'Sony', 398000, 400000, '&nbsp;A versatile mirrorless camera with excellent low-light performance and fast autofocus.<br>', 'download (46).jpg', 'download (47).jpg', 'download (48).jpg', 6500, 'In Stock', '2024-10-20 23:52:12', NULL),
(44, 13, 33, 'Canon RF 24-70mm', 'Canon', 190500, 200000, 'A versatile lens ideal for portraits, landscapes, and general photography.<br>', 'download (49).jpg', 'download (50).jpg', 'download (51).jpg', 6500, 'In Stock', '2024-10-20 23:53:19', NULL),
(45, 13, 33, 'Nikon AF-S 50mm', 'Nikon', 49800, 50000, 'A classic prime lens perfect for portraits and low-light photography.<br>', 'download (52).jpg', 'download (53).jpg', 'download (54).jpg', 4000, 'In Stock', '2024-10-20 23:54:14', NULL),
(46, 13, 34, 'Manfrotto Tripod', 'Manfrotto', 13900, 15000, 'A sturdy tripod designed for stability and versatility in photography.<br>', 'download (55).jpg', 'download (56).jpg', 'download (2).png', 1500, 'In Stock', '2024-10-20 23:55:09', NULL),
(47, 13, 34, 'SanDisk 128GB Memory Card', 'SanDisk', 3900, 5000, '&nbsp;High-speed memory card ideal for storing high-resolution images and videos.<br>', 'download (57).jpg', 'download (58).jpg', 'download (59).jpg', 600, 'In Stock', '2024-10-20 23:56:07', NULL),
(48, 14, 35, 'Apple Watch Series 9', 'Apple', 66900, 70000, 'The latest smartwatch featuring fitness tracking, health monitoring, and connectivity.<br>', 'download (60).jpg', 'download (61).jpg', 'download (62).jpg', 2500, 'In Stock', '2024-10-20 23:56:57', NULL),
(49, 14, 35, 'Samsung Galaxy Watch 6', 'Samsung', 58200, 60000, '&nbsp;A stylish smartwatch with advanced health features and customizable watch faces.<br>', 'download (63).jpg', 'download (64).jpg', 'download (65).jpg', 3000, 'In Stock', '2024-10-20 23:58:03', NULL),
(50, 14, 36, 'Fitbit Charge 5', 'Fitbit ', 23500, 25000, 'Comprehensive fitness tracker with built-in GPS and health monitoring features.<br>', 'download (66).jpg', 'download (67).jpg', 'download (68).jpg', 2500, 'In Stock', '2024-10-20 23:58:58', NULL),
(51, 14, 36, 'Xiaomi Mi Band 7', 'Xiaomi ', 9500, 10000, 'Affordable fitness tracker with essential features and long battery life.<br>', 'download (70).jpg', 'download (69).jpg', 'download (71).jpg', 500, 'In Stock', '2024-10-20 23:59:57', NULL),
(52, 14, 37, 'Oculus Quest 3', 'Meta', 99800, 100000, 'Standalone VR headset with immersive gaming experiences and a vast library of content.<br>', 'download (72).jpg', 'download (73).jpg', 'download (74).jpg', 6000, 'In Stock', '2024-10-21 00:00:50', NULL),
(53, 14, 37, 'HTC Vive Pro 2', 'HTC', 145000, 150000, 'High-end VR headset offering stunning visuals and precise tracking for gaming and simulation.<br>', 'download (75).jpg', 'download (76).jpg', 'images (17).jpg', 3500, 'In Stock', '2024-10-21 00:01:52', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

CREATE TABLE `subcategory` (
  `id` int(11) NOT NULL,
  `categoryid` int(11) DEFAULT NULL,
  `subcategory` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`id`, `categoryid`, `subcategory`, `creationDate`, `updationDate`) VALUES
(15, 8, 'Smartphones', '2024-10-20 18:49:04', NULL),
(16, 8, 'Phone Cases & Covers', '2024-10-20 18:49:20', NULL),
(17, 8, 'Chargers & Cables', '2024-10-20 18:49:32', NULL),
(18, 9, 'Laptops', '2024-10-20 18:49:46', NULL),
(19, 9, 'Desktops', '2024-10-20 18:49:57', NULL),
(20, 9, 'Monitors', '2024-10-20 18:50:08', NULL),
(21, 9, 'Keyboards & Mice', '2024-10-20 18:50:22', NULL),
(22, 10, 'Air Conditioners', '2024-10-20 18:51:26', NULL),
(23, 10, 'Refrigerators', '2024-10-20 18:51:41', NULL),
(24, 10, 'Washing Machines', '2024-10-20 18:51:58', NULL),
(26, 11, 'Headphones', '2024-10-20 18:52:49', NULL),
(27, 11, 'Earbuds', '2024-10-20 18:54:37', NULL),
(28, 11, 'Speakers', '2024-10-20 18:56:19', NULL),
(29, 12, 'Gaming Laptops', '2024-10-20 18:56:37', NULL),
(30, 12, 'Gaming Consoles', '2024-10-20 18:56:52', NULL),
(31, 12, 'Gaming Accessories', '2024-10-20 18:57:05', NULL),
(32, 13, 'DSLR & Mirrorless Cameras', '2024-10-20 18:57:17', NULL),
(33, 13, 'Camera Lenses', '2024-10-20 18:58:43', NULL),
(34, 13, 'Camera Accessories', '2024-10-20 18:58:53', NULL),
(35, 14, 'Smartwatches', '2024-10-20 18:59:19', NULL),
(36, 14, 'Fitness Trackers', '2024-10-20 18:59:31', NULL),
(37, 14, 'VR Headsets', '2024-10-20 18:59:42', NULL),
(38, 15, 'new', '2024-10-21 04:41:34', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `userEmail` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT current_timestamp(),
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `userEmail`, `userip`, `loginTime`, `logout`, `status`) VALUES
(6, 'buyer@jr.lk', 0x3a3a3100000000000000000000000000, '2024-10-20 20:28:55', '21-10-2024 01:59:32 AM', 1),
(7, 'buyer@jr.lk', 0x3a3a3100000000000000000000000000, '2024-10-20 21:26:42', '21-10-2024 05:34:33 AM', 1),
(8, 'testuser@jr.lk', 0x3a3a3100000000000000000000000000, '2024-10-21 00:05:40', '21-10-2024 05:39:28 AM', 1),
(9, 'buyer@jr.lk', 0x3a3a3100000000000000000000000000, '2024-10-21 00:10:21', '21-10-2024 05:40:27 AM', 1),
(10, 'testuser@jr.lk', 0x3a3a3100000000000000000000000000, '2024-10-21 00:10:33', '21-10-2024 05:41:01 AM', 1),
(11, 'testuser@jr.lk', 0x3a3a3100000000000000000000000000, '2024-10-21 00:11:18', '21-10-2024 05:41:31 AM', 1),
(12, 'buyer@jr.lk', 0x3a3a3100000000000000000000000000, '2024-10-21 00:11:37', NULL, 1),
(13, 'buyer@jr.lk', 0x3a3a3100000000000000000000000000, '2024-10-21 03:53:55', '21-10-2024 10:04:37 AM', 1),
(14, 'kamal@jr.lk', 0x3a3a3100000000000000000000000000, '2024-10-21 04:35:49', '21-10-2024 10:09:12 AM', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contactno` bigint(11) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `shippingAddress` longtext DEFAULT NULL,
  `shippingState` varchar(255) DEFAULT NULL,
  `shippingCity` varchar(255) DEFAULT NULL,
  `shippingPincode` int(11) DEFAULT NULL,
  `billingAddress` longtext DEFAULT NULL,
  `billingState` varchar(255) DEFAULT NULL,
  `billingCity` varchar(255) DEFAULT NULL,
  `billingPincode` int(11) DEFAULT NULL,
  `regDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `contactno`, `password`, `shippingAddress`, `shippingState`, `shippingCity`, `shippingPincode`, `billingAddress`, `billingState`, `billingCity`, `billingPincode`, `regDate`, `updationDate`) VALUES
(1, 'SAFNI mj', 'buyer@jr.lk', 65226630, 'a1069d04519b7544733d9ca81562aadb', 'Galle Rd', 'western', 'Colombo', 80280, 'Galle Rd', 'western', 'Colombo', 80280, '2024-10-20 18:25:03', NULL),
(7, 'testuser', 'testuser@jr.lk', 77875999, '4118a8bf489fbd19346cf51f75096d0e', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-21 00:05:35', NULL),
(8, 'kamal', 'kamal@jr.lk', 7544654444, 'e3f63997d554fd2c164e4195a900d81e', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-21 04:35:23', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `productId` int(11) DEFAULT NULL,
  `postingDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`id`, `userId`, `productId`, `postingDate`) VALUES
(5, 1, 37, '2024-10-21 00:04:26');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ordertrackhistory`
--
ALTER TABLE `ordertrackhistory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `productreviews`
--
ALTER TABLE `productreviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategory`
--
ALTER TABLE `subcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `ordertrackhistory`
--
ALTER TABLE `ordertrackhistory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `productreviews`
--
ALTER TABLE `productreviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
