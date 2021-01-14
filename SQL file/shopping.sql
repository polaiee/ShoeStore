-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 15, 2018 at 03:37 PM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
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
  `creationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `creationDate`, `updationDate`) VALUES
(1, 'admin', 'f925916e2754e5e03f75dd58a5733251', '2021-01-24 16:21:18', '21-06-2018 08:27:55 PM');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `categoryName` varchar(255) DEFAULT NULL,
  `categoryDescription` longtext,
  `creationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `categoryName`, `categoryDescription`, `creationDate`, `updationDate`) VALUES
(3, 'UNISEX', 'Slip-ons', '2021-01-24 19:17:37', '30-01-2020 12:22:24 AM'),
(4, 'WOMEN', 'Women Footware', '2021-01-24 19:19:32', ''),
(5, 'MEN', 'Men Footware', '2021-01-24 19:19:54', ''),
(6, 'KIDS', 'kids', '2021-02-20 19:18:52', '');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `productId` varchar(255) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `orderDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `paymentMethod` varchar(50) DEFAULT NULL,
  `orderStatus` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `userId`, `productId`, `quantity`, `orderDate`, `paymentMethod`, `orderStatus`) VALUES
(1, 1, '3', 1, '2021-01-07 19:32:57', 'COD', NULL),
(3, 1, '4', 1, '2021-01-10 19:43:04', 'Debit / Credit card', 'Delivered'),
(4, 1, '17', 1, '2021-01-08 16:14:17', 'COD', 'in Process'),
(5, 1, '3', 1, '2021-01-08 19:21:38', 'COD', NULL),
(6, 1, '4', 1, '2021-01-08 19:21:38', 'COD', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ordertrackhistory`
--

CREATE TABLE `ordertrackhistory` (
  `id` int(11) NOT NULL,
  `orderId` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `remark` mediumtext,
  `postingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ordertrackhistory`
--

INSERT INTO `ordertrackhistory` (`id`, `orderId`, `status`, `remark`, `postingDate`) VALUES
(1, 3, 'in Process', 'Order has been Shipped.', '2021-01-10 19:36:45'),
(2, 1, 'Delivered', 'Order Has been delivered', '2021-01-10 19:37:31'),
(3, 3, 'Delivered', 'Product delivered successfully', '2021-01-10 19:43:04'),
(4, 4, 'in Process', 'Product ready for Shipping', '2021-01-10 19:50:36');

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
  `review` longtext,
  `reviewDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `productreviews`
--

INSERT INTO `productreviews` (`id`, `productId`, `quality`, `price`, `value`, `name`, `summary`, `review`, `reviewDate`) VALUES
(2, 3, 4, 5, 5, 'Vaishnavi', 'BEST PRODUCT FOR ME :)', 'BEST PRODUCT FOR ME :)', '2021-02-26 20:43:57'),
(3, 3, 3, 4, 3, 'Anuvarshini', 'Nice Product', 'Value for money', '2021-02-26 20:52:46'),
(4, 3, 3, 4, 3, 'Narendra', 'Nice Product', 'Value for money', '2021-02-26 20:59:19');

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
  `productDescription` longtext,
  `productImage1` varchar(255) DEFAULT NULL,
  `productImage2` varchar(255) DEFAULT NULL,
  `productImage3` varchar(255) DEFAULT NULL,
  `shippingCharge` int(11) DEFAULT NULL,
  `productAvailability` varchar(255) DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category`, `subCategory`, `productName`, `productCompany`, `productPrice`, `productPriceBeforeDiscount`, `productDescription`, `productImage1`, `productImage2`, `productImage3`, `shippingCharge`, `productAvailability`, `postingDate`, `updationDate`) VALUES
(1, 4, 3, 'DressBerry Black Synthetic Flats', 'DressBerry', 1019, 1699, '<span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 8px;\"> A pair of black pointed toe flats, has mid-top styling, zip detail. Synthetic upper cushioned footbed. Textured and patterned outsole. </span>', 'dressberry-1.jpg', 'dressberry-main.jpg', 'dressberry-2.jpg', 1200, 'In Stock', '2020-01-30 16:54:35', ''),
(2, 4, 4, 'Adidas sport inspired hoops2', 'ADIDAS', 2759, 4599, '<span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 8px;\">A classic high top style gets transformed into a modern look. These shoes infuse hoops DNA into the low top build to bring a basketball-inspired style to a minimalist silhouette. The leather-like upper has a breathable mesh collar and a cushioned sockliner gives you an extra touch of comfort throughout the day. Features eye-catching print on heel.</span>', 'adidas-1.jpg', 'adidas-2.jpg', 'adidas-3.jpg', 0, 'In Stock', '2020-01-30 16:59:00', ''),
(3, 4, 4, 'Nike Womens Low-Top Sneakers', 'NIKE', 7797, 8000,'<span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 8px;\"> Nike Womens Wmns Air Huarache City BLEACHED AQUA/BLACK-RACER PINK </span>' , 'nike-women-low-top-sneakers-1.jpg', 'nike-women-low-top-sneakers-2.jpg', 'nike-women-low-top-sneakers-3.jpg', 0, 'In Stock', '2021-02-04 04:03:15', ''),
(4, 4, 4, 'Nike Air Zoom Pegasus 37', 'NIKE', 9995, 11000,'<span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 8px;\">Take your training runs to the next level, with the Nike Air Zoom Pegasus 37. With unbelievable React cushioning, and a new forefoot Air unit tuned specifically to a womans foot, they are like a caffeine boost for your legs. The lightweight upper provides incredible breathability. The pared-down, perfectly placed padding helps eliminate hot spots.</span>' , 'air-zoom-pegasus-37-1.jpg', 'air-zoom-pegasus-37-2.jpg', 'air-zoom-pegasus-37-3.jpg', 45, 'In Stock', '2021-02-04 04:04:43', ''),
(5, 4, 4, 'NIKE Revolution 5 Lace-Up Running Shoes ', 'NIKE', 2439, 3695,'<span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 8px;\">The Nike Revolution 5 cushions your stride with soft foam to keep you running in comfort. Lightweight knit material wraps your foot in breathable support, while a minimalist design fits in anywhere your day takes you.</span>' , 'NIKE-Revolution-5-Lace-Up-Running-Shoes-1.jpg', 'NIKE-Revolution-5-Lace-Up-Running-Shoes-2.jpg', 'NIKE-Revolution-5-Lace-Up-Running-Shoes-3.jpg', 0, 'In Stock', '2021-02-04 04:06:17', ''),
(6, 4, 4, 'PUMA Flourish Womens Running Shoes', 'PUMA', 2499, 4999,'<span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 8px;\"> Flaunt your fierce yet feminine style in these sleek, ribbon-laced running shoes. With slip-on bootie construction, a lightweight, supportive midsole and an outsole engineered to support multi-directional movement, you will be prepared for peak performance, all while turning heads.</span>' , 'PUMA-Flourish-Womens-Running-Shoes-1.jpg', 'PUMA-Flourish-Womens-Running-Shoes-2.jpg', 'PUMA-Flourish-Womens-Running-Shoes-3.jpg', 35, 'In Stock', '2021-02-04 04:08:07', ''),
(7, 4, 4, 'REEBOK FLOATRIDE ENERGY 3 WOMENS SHOES', 'REEBOK', 7899, 9999, '<span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 8px;\"> When running is part of your routine, you dont let bad weather or long workdays keep you from getting your miles in. These womens Reebok shoes help you meet your goals with a Floatride Energy Foam midsole that provides a lightweight feel and a smooth, responsive ride. The square knit upper is comfortable and breathable.</span>', 'PUMA-FLOATRIDE-ENERGY-3-WOMENS-SHOES-1.jpg', 'PUMA-FLOATRIDE-ENERGY-3-WOMENS-SHOES-2.jpg', 'PUMA-FLOATRIDE-ENERGY-3-WOMENS-SHOES-3.jpg', 20, 'In Stock', '2021-02-04 04:10:17', ''),
(8, 4, 4, 'SKECHERS Go Run 600-Radiant Runner Lace-Up Performance Shoes', 'SKECHERS', 1519, 1999,'<span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 8px;\"> Skechers Go Run 600 - Radiant Runner is a well-cushioned, lightweight trainer perfect for running, training or playtime. The responsive cushioning midsole and a breathable mesh upper offer an incredibly responsive athletic shoe.</span>' , 'SKECHERS-Go-Run-600-Radiant-Runner-Lace-Up-Performance-Shoes-1.jpg', 'SKECHERS-Go-Run-600-Radiant-Runner-Lace-Up-Performance-Shoes-2.jpg', 'SKECHERS-Go-Run-600-Radiant-Runner-Lace-Up-Performance-Shoes-1.jpg', 0, 'In Stock', '2021-02-04 04:11:54', ''),
(9, 4, 5, 'Opulent Light Blue Denim Pencil Heels', 'MADISH', 1799, 3499, '<span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 8px;\"> Our opulent light blue denim pencil heels are super elegant and classy. These heels have amazing gold coloured metal straps at your ankles and at the front. They are also open-toed to keep your feet breathable. They have a super cushioned in-sole and an awesome finish./span>', 'Opulent-Light-Blue-Denim-Pencil-Heels-1.jpg', 'Opulent-Light-Blue-Denim-Pencil-Heels-2.jpg', 'Opulent-Light-Blue-Denim-Pencil-Heels-3.jpg', 10, 'In Stock', '2021-02-04 04:17:03', ''),
(11, 4, 6, 'Crocs Womens Patricia', 'CROCS', 1587, 1587, '<span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 8px;\"> Our customers cannnot stop raving about this all-time favorite sandal. Croslite material comfort, colors that complement any style, and a 2 wedge heel for a little lift. Perfect. Crocs Patricia Details: 2 wedge heel for a little lift. Massage-pod footbed feels good. Croslite material for maximum lightweight cushioning. Croslite material straps for support. Lightweight, non-marking sole.</span>', 'crocs-Womens-Patricia-1.jpg', 'crocs-Womens-Patricia-2.jpg', 'crocs-Womens-Patricia-3.jpg', 0, 'In Stock', '2021-02-04 04:26:17', ''),
(12, 4, 6, 'Puma Womens Vikky Stacked Laser Cut Sneakers', 'PUMA', 1104, 1104,'<span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 8px;\"> The PUMA Vikky Stacked Laser Cut is a basketball inspired womens platform sneaker for the summer months. The newly developed platform rubber outsole offers optimized grip and stability. The soft leather upper features cut outs for a summery look and extra breathability.</span>' , 'Puma-Womens-Vikky-Stacked-Laser-Cut-Sneakers-1.jpg', 'Puma-Womens-Vikky-Stacked-Laser-Cut-Sneakers-2.jpg', 'Puma-Womens-Vikky-Stacked-Laser-Cut-Sneakers-1.jpg', 0, 'In Stock', '2021-02-04 04:28:17', ''),
(13, 4, 6, 'Lee Cooper Womens LF5037S ', 'LEE COOPER', 610, 810, '<span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 8px;\">Fetch compliments for your sense of style by wearing this pair of sneakers from the house of Lee Cooper. It is made of good quality material that gives it a smart finish. It also features slip on fastening, which renders it trendy.</span>', 'Lee-Cooper-Womens-LF5037S-Sneakers-1.jpg', 'Lee-Cooper-Womens-LF5037S-Sneakers-2.jpg', 'Lee-Cooper-Womens-LF5037S-Sneakers-3.jpg', 0, 'In Stock', '2020-02-04 04:30:24', ''),
(14, 4, 6, 'Max Textured Slip-On Shoes', 'MAX', 1199, 1199, '<span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 8px;\">With a breathable upper and slip-on construction taking care of your comfort perspective, this pair of casual shoes adds a unique touch to its classic semblance.</span>', 'Max-Textured-Slip-On-Shoes-1.jpg', 'Max-Textured-Slip-On-Shoes-2.jpg', 'Max-Textured-Slip-On-Shoes-3.jpg', 0, 'In Stock', '2020-02-04 04:32:15', ''),
(15, 3, 8, 'Puma Unisex Wired Slipon Walking Shoe', 'PUMA', 2950, 3540, '<span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 8px;\"> Made for ease, the PUMA Wired Slip On Trainers are perfect for wherever the day takes you. They feature a breathable air-mesh upper and a SoftFoam+ sockliner, while the bold PUMA branding across the forefoot ensures a stylish and supportive fit.</span>', 'Puma-Unisex-Wired-Slipon-Walking-Shoe-1.jpg', 'Puma-Unisex-Wired-Slipon-Walking-Shoe-2.jpg', 'Puma-Unisex-Wired-Slipon-Walking-Shoe-3.jpg', 50, 'In Stock', '2020-02-04 04:35:13', ''),
(16, 3, 8, 'Kenkoh Japanese Massage/Reflexology Sandal Nagomi Black Slider - for Acupressure Therapy ', 'Kenkoh', 8575, 8575,'<span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 8px;\">Finding healthy shoes for back pain which are also stylish, support the foot and provide a wonderfully soothing massage as you walk doesn’t need to be a challenge – all you need to do is add our classic Nagomi Black Slider to your basket. </span>' , 'Kenkoh-Japanese-Massage-Sandal-1.jpg', 'Kenkoh-Japanese-Massage-Sandal-2.jpg', 'Kenkoh-Japanese-Massage-Sandal-3.jpg', 0, 'In Stock', '2020-02-04 04:40:37', ''),
(17, 5, 9, 'Nike Mens Air Versitile Ii Basketball Shoes', 'NIKE', 5096, 5096,'<span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 8px;\"> Our mission is what drives us to do everything possible to expand human potential. We do that by creating groundbreaking sport innovations, by making our products more sustainably, by building a creative and diverse global team and by making a positive impact in communities where we live and work.  </span>' , 'Nike-Mens-Air-Versitile-Ii-Basketball-Shoes-1.jpg', 'Nike-Mens-Air-Versitile-Ii-Basketball-Shoes-2.jpg', 'Nike-Mens-Air-Versitile-Ii-Basketball-Shoes-3.jpg', 0, 'In Stock', '2017-02-04 04:40:37', ''),
(18, 5, 10, 'Clarks Mens Leather Walking Shoes', 'CLARKS', 5000, 7688,'<span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 8px;\">C. & J. Clark International Ltd, trading as Clarks, is a British-based, international shoe manufacturer and retailer.  </span>', 'Clarks-Mens-Leather-Walking-Shoes-1.jpg', 'Clarks-Mens-Leather-Walking-Shoes-2.jpg', 'Clarks-Mens-Leather-Walking-Shoes-3.jpg', 45, 'In Stock', '2020-03-10 20:16:03', ''),
(19, 6, 12, 'Crocs Boys Coast Clogs', 'CROCS', 846, 1596,'<span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 8px;\">They offer some arch support and cushion, the holes in the shoe allow air in and keep the feet from sweating, and the antimicrobial properties of Crocs could help prevent infections in kids feet.</span>' , 'coast-clogs-1.jpg', 'coast-clogs-2.jpg', 'coast-clogs-3.jpg', 45, 'In Stock', '2017-03-10 20:16:03', ''),
(20, 6, 12, 'Crocs Unisex Crocband Clog K', 'CROCS', 934, 1795,'<span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 8px;\">They offer some arch support and cushion, the holes in the shoe allow air in and keep the feet from sweating, and the antimicrobial properties of Crocs could help prevent infections in kids feet.</span>' , 'crocband-clog-k-1.jpg', 'crocband-clog-k-2.jpg', 'crocband-clog-k-3.jpg', 0, 'In Stock', '2020-03-10 20:19:22', '');

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

CREATE TABLE `subcategory` (
  `id` int(11) NOT NULL,
  `categoryid` int(11) DEFAULT NULL,
  `subcategory` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`id`, `categoryid`, `subcategory`, `creationDate`, `updationDate`) VALUES
(2, 4, 'WOMEN BOOTS', '2020-01-26 16:24:52', '26-01-2020 11:03:40 PM'),
(3, 4, 'WOMEN FLATS', '2020-01-26 16:29:09', ''),
(4, 4, 'WOMEN SPORTS', '2020-01-30 16:55:48', ''),
(5, 4, 'HEELS', '2020-02-04 04:12:40', ''),
(6, 4, 'WOMEN CASUALS', '2020-02-04 04:13:00', ''),
(7, 4, 'BELLES', '2020-02-04 04:13:27', ''),
(8, 3, 'SLIP-ONS', '2020-02-04 04:13:54', ''),
(9, 5, 'MEN SPORTS', '2020-02-04 04:36:45', ''),
(10, 5, 'MEN CASUALS', '2020-02-04 04:37:02', ''),
(11, 5, 'MEN SLIPONS', '2020-02-04 04:37:51', ''),
(12, 6, 'KIDS CASUALS', '2020-03-10 20:12:59', '');

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `userEmail` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `userEmail`, `userip`, `loginTime`, `logout`, `status`) VALUES
(1, 'vaishnavi@gmail.com', 0x3a3a3100000000000000000000000000, '2020-02-26 11:18:50', '', 1),
(2, 'vaishnavi@gmail.com', 0x3a3a3100000000000000000000000000, '2020-02-26 11:29:33', '', 1),
(3, 'vaishnavi@gmail.com', 0x3a3a3100000000000000000000000000, '2020-02-26 11:30:11', '', 1),
(4, 'vaishnavi@gmail.com', 0x3a3a3100000000000000000000000000, '2020-02-26 15:00:23', '26-02-2020 11:12:06 PM', 1),
(5, 'vaishnavi@gmail.com', 0x3a3a3100000000000000000000000000, '2020-02-26 18:08:58', '', 0),
(6, 'vaishnavi@gmail.com', 0x3a3a3100000000000000000000000000, '2020-02-26 18:09:41', '', 0),
(7, 'vaishnavi@gmail.com', 0x3a3a3100000000000000000000000000, '2020-02-26 18:10:04', '', 0),
(8, 'vaishnavi@gmail.com', 0x3a3a3100000000000000000000000000, '2020-02-26 18:10:31', '', 0),
(9, 'vaishnavi@gmail.com', 0x3a3a3100000000000000000000000000, '2020-02-26 18:13:43', '', 1),
(10, 'vaishnavi@gmail.com', 0x3a3a3100000000000000000000000000, '2020-02-27 18:52:58', '', 0),
(11, 'vaishnavi@gmail.com', 0x3a3a3100000000000000000000000000, '2020-02-27 18:53:07', '', 1),
(12, 'vaishnavi@gmail.com', 0x3a3a3100000000000000000000000000, '2020-03-03 18:00:09', '', 0),
(13, 'vaishnavi@gmail.com', 0x3a3a3100000000000000000000000000, '2020-03-03 18:00:15', '', 1),
(14, 'vaishnavi@gmail.com', 0x3a3a3100000000000000000000000000, '2020-03-06 18:10:26', '', 1),
(15, 'vaishnavi@gmail.com', 0x3a3a3100000000000000000000000000, '2020-03-07 12:28:16', '', 1),
(16, 'vaishnavi@gmail.com', 0x3a3a3100000000000000000000000000, '2020-03-07 18:43:27', '', 1),
(17, 'vaishnavi@gmail.com', 0x3a3a3100000000000000000000000000, '2020-03-07 18:55:33', '', 1),
(18, 'vaishnavi@gmail.com', 0x3a3a3100000000000000000000000000, '2020-03-07 19:44:29', '', 1),
(19, 'vaishnavi@gmail.com', 0x3a3a3100000000000000000000000000, '2020-03-08 19:21:15', '', 1),
(20, 'vaishnavi@gmail.com', 0x3a3a3100000000000000000000000000, '2020-03-15 17:19:38', '', 1),
(21, 'vaishnavi@gmail.com', 0x3a3a3100000000000000000000000000, '2020-03-15 17:20:36', '15-03-2020 10:50:39 PM', 1),
(22, 'vaishnavi@gmail.com', 0x3a3a3100000000000000000000000000, '2020-03-16 01:13:57', '', 1),
(23, 'hgfhgf@gmass.com', 0x3a3a3100000000000000000000000000, '2018-04-29 09:30:40', '', 1);

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
  `shippingAddress` longtext,
  `shippingState` varchar(255) DEFAULT NULL,
  `shippingCity` varchar(255) DEFAULT NULL,
  `shippingPincode` int(11) DEFAULT NULL,
  `billingAddress` longtext,
  `billingState` varchar(255) DEFAULT NULL,
  `billingCity` varchar(255) DEFAULT NULL,
  `billingPincode` int(11) DEFAULT NULL,
  `regDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `contactno`, `password`, `shippingAddress`, `shippingState`, `shippingCity`, `shippingPincode`, `billingAddress`, `billingState`, `billingCity`, `billingPincode`, `regDate`, `updationDate`) VALUES
(1, 'Vaishnavi', 'vaishnavi@gmail.com', 9009857868, '123', 'CS Bangalore', 'Bangalore', 'Delhi', 560001, 'Bangalore', 'Bangalore', 'Bangalore', 560001, '2021-02-04 19:30:50', ''),
(2, 'Anuvarshini ', 'anu@gmail.com', 8285703355, '123', '', '', '', 0, '', '', '', 0, '2021-03-15 17:21:22', ''),
(3, 'hg', 'hgfhgf@gmass.com', 1121312312, '123', '', '', '', 0, '', '', '', 0, '2021-04-29 09:30:32', '');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `productId` int(11) DEFAULT NULL,
  `postingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`id`, `userId`, `productId`, `postingDate`) VALUES
(1, 1, 0, '2021-02-27 18:53:17');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `ordertrackhistory`
--
ALTER TABLE `ordertrackhistory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `productreviews`
--
ALTER TABLE `productreviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
