-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 20, 2026 at 01:21 PM
-- Server version: 8.4.3
-- PHP Version: 8.3.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `campbread`
--

-- --------------------------------------------------------

--
-- Table structure for table `orderitems`
--

CREATE TABLE `orderitems` (
  `id` int NOT NULL,
  `orderId` int NOT NULL,
  `productId` int DEFAULT NULL,
  `productName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int NOT NULL DEFAULT '1',
  `price` int NOT NULL DEFAULT '0',
  `note` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orderitems`
--

INSERT INTO `orderitems` (`id`, `orderId`, `productId`, `productName`, `quantity`, `price`, `note`) VALUES
(1, 1, 1, 'Black Forest Cake', 1, 150000, NULL),
(2, 1, 2, 'Tiramisu Dessert Box', 2, 45000, NULL),
(3, 1, 3, 'Nastar Keju Premium', 1, 120000, NULL),
(4, 2, 1, 'Black Forest Cake', 1, 150000, NULL),
(5, 2, 2, 'Tiramisu Dessert Box', 1, 45000, NULL),
(6, 3, 1, 'Black Forest Cake', 1, 150000, 'Diskon 100 persen bang'),
(7, 4, 1, 'Black Forest Cake', 1, 150000, 'test catatan'),
(8, 4, 3, 'Nastar Keju Premium', 1, 120000, 'test catatan'),
(9, 5, 1, 'Black Forest Cake', 1, 150000, 'adadadad'),
(10, 6, 1, 'Black Forest Cake', 1, 150000, 'adad'),
(11, 7, 4, 'Bolu Cukke\'', 10, 15000, 'dadadd'),
(12, 8, 1, 'Black Forest Cake', 1, 150000, NULL),
(13, 9, 1, 'Black Forest cake', 2, 150000, NULL),
(14, 10, 1, 'Black Forest cake', 2, 150000, NULL),
(15, 11, 1, 'Black Forest cake', 2, 150000, NULL),
(16, 12, 1, 'Black Forest cake', 2, 150000, NULL),
(17, 13, 1, 'Black Forest Cake', 2, 150000, 'adad'),
(18, 13, 2, 'Tiramisu Dessert Box', 1, 45000, NULL),
(19, 13, 3, 'Nastar Keju Premium', 1, 120000, NULL),
(20, 13, 4, 'Bolu Cukke\'', 2, 15000, NULL),
(21, 14, 1, 'Black Forest Cake', 1, 150000, 'bwabwabaw');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int NOT NULL,
  `userId` int NOT NULL,
  `customerName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customerEmail` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('pending','confirmed','processing','completed','cancelled') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `totalAmount` int NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `userId`, `customerName`, `customerEmail`, `status`, `totalAmount`, `note`, `createdAt`, `updatedAt`) VALUES
(1, 4, 'haekal', 'haekal@gmail.com', 'completed', 360000, NULL, '2026-05-05 07:15:54', '2026-05-05 07:16:30'),
(2, 4, 'haekal', 'haekal@gmail.com', 'completed', 195000, NULL, '2026-05-05 07:22:27', '2026-05-05 12:06:40'),
(3, 4, 'haekal', 'haekal@gmail.com', 'completed', 150000, NULL, '2026-05-05 07:23:02', '2026-05-05 12:06:37'),
(4, 4, 'haekal', 'haekal@gmail.com', 'completed', 270000, NULL, '2026-05-05 07:23:40', '2026-05-05 12:06:34'),
(5, 4, 'haekal', 'haekal@gmail.com', 'cancelled', 150000, NULL, '2026-05-05 12:36:12', '2026-05-05 12:37:27'),
(6, 4, 'haekal', 'haekal@gmail.com', 'completed', 150000, NULL, '2026-05-05 12:39:03', '2026-05-05 12:39:57'),
(7, 4, 'haekal', 'haekal@gmail.com', 'completed', 150000, NULL, '2026-05-05 12:41:50', '2026-05-05 12:42:16'),
(8, 1, 'Admin CampBread', 'admin@gmail.com', 'completed', 150000, NULL, '2026-05-05 12:46:02', '2026-05-05 12:46:32'),
(9, 2, 'Pelanggan CampBread', 'customer@gmail.com', 'cancelled', 300000, 'Catatan tambahan', '2026-05-05 15:59:13', '2026-05-06 13:28:37'),
(10, 2, 'Pelanggan CampBread', 'customer@gmail.com', 'completed', 300000, 'Catatan tambahan', '2026-05-05 15:59:49', '2026-05-05 16:04:41'),
(11, 2, 'Pelanggan CampBread', 'customer@gmail.com', 'cancelled', 300000, 'Catatan tambahan', '2026-05-06 13:10:55', '2026-05-06 13:28:36'),
(12, 1, 'Admin CampBread', 'admin@gmail.com', 'cancelled', 300000, 'Catatan tambahan', '2026-05-06 13:12:01', '2026-05-06 13:28:35'),
(13, 4, 'haekal', 'haekal@gmail.com', 'cancelled', 495000, NULL, '2026-05-18 03:08:41', '2026-05-18 03:09:23'),
(14, 6, 'faiz', 'faiz@gmail.com', 'completed', 150000, NULL, '2026-05-20 02:22:59', '2026-05-20 02:23:38');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int NOT NULL DEFAULT '0',
  `imageUrl` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `stock` int NOT NULL DEFAULT '10',
  `imageGallery` json DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `category`, `price`, `imageUrl`, `description`, `stock`, `imageGallery`) VALUES
(1, 'Black Forest Cake', 'Kue Ulang Tahun', 150000, 'https://cdn.apartmenttherapy.info/image/upload/f_jpg,q_auto:eco,c_fill,g_auto,w_1500,ar_1:1/k%2FPhoto%2FRecipes%2F2024-09-black-forest-cake%2Fblack-forest-cake-389', 'Kue Black Forest klasik dengan bolu cokelat lembut, krim segar, dan ceri hitam.', 15, NULL),
(2, 'Tiramisu Dessert Box', 'Dessert Box', 45000, 'https://thumb.viva.id/vivabanyuwangi/665x374/2025/02/03/679fcf7be27ae-iilustrasi-dessert-box-simple-yang-bikin-nagih_banyuwangi.jpg', 'Dessert box tiramisu lembut dengan lapisan kopi dan mascarpone.', 20, NULL),
(3, 'Nastar Keju Premium', 'Kue Kering', 120000, 'https://www.piknikdong.com/wp-content/uploads/2026/01/Resep-Nastar-Keju-1-Kg-Blue-Band.jpeg', 'Nastar keju premium dengan selai nanas asli dan tekstur lembut.', 25, NULL),
(4, 'Bolu Cukke\'', 'Kue Kering', 15000, 'https://wikipangan.id/images/d/d2/FotoJet-13-3184265829.jpg', 'Bolu Cukke sangatlah terkenal di kalangan Suku Bugis, termasuk masyarakat Luwu yang mana sebagian besarnya berasal dari suku tersebut. Umumnya, kue ini menjadi sajian utama dalam acara-acara tertentu dan juga saat lebaran hari raya sebagai makanan penyambut tamu.', 10, NULL),
(12, 'Croissant Cokelat', 'Roti', 28000, 'https://www.smart-tbk.com/wp-content/uploads/2025/11/Choco-Almond-Praline-Croissant.jpg', 'Croissant renyah dengan isian cokelat Belgia yang meleleh di mulut.', 30, '\"[\\\"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRpFbqhzJ9Y93We3bwLIzbLGCsypL5ip-hqEw&s\\\",\\\"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSN2Q0GQfZ2UTCbzA5kHtJ7I40xUfr01_ayqw&s\\\",\\\"https://asset.kompas.com/crops/kdNaCzIwNizbKscY7oDMpVbGTxI=/122x81:938x625/750x500/data/photo/2021/01/29/60138ef6e04fd.jpg\\\"]\"'),
(13, 'Cupcake Red Velvet', 'Dessert Box', 35000, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRp-cngWbeTwTdx5jCNAbDfk53X3dmke_YWrw&s', 'Cupcake red velvet lembut dengan cream cheese frosting yang manis dan segar.', 22, '\"[\\\"https://www.recipetineats.com/tachyon/2021/08/Red-Velvet-Cupcakes_58.jpg\\\",\\\"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR9ib3Dq7gDnCSHGaWL0pdkTwx7946s0hE9bQ&s\\\"]\"'),
(14, 'Caramel Brownies', 'Dessert Box', 52000, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQZp-IK2EKM1t_9Hk8DGi8Vt2OOcSa3UCgZ-A&s', 'Brownies cokelat pekat dengan saus karamel gurih di atasnya.', 18, '\"[\\\"https://www.thespruceeats.com/thmb/M6YAFnXqdt-s7uY1ilEuAQPFuOk=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/CaramelBrowniesHERO-93597ea4336346d59c4d7eeda84a786e.jpg\\\",\\\"https://thefoodcharlatan.com/wp-content/uploads/2020/03/Salted-Caramel-Brownies-9-650x975.jpg\\\"]\"'),
(15, 'Roti Tawar Gandum', 'Roti', 25000, 'https://images.alodokter.com/dk0z4ums3/image/upload/v1635785272/attached_image/alasan-mengonsumsi-roti-gandum-dan-tips-memilihnya.jpg', 'Roti tawar sehat dengan campuran gandum utuh, cocok untuk sarapan dan sandwich.', 40, '\"[\\\"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQtugaBjYn1pHoUMB0c1vR6qBDnRchfOWGMBQ&s\\\",\\\"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSt7IAcqOVltRcd-wUUuL36hHzIbDYiAIwwug&s\\\"]\"'),
(16, 'Lapis Legit Original', 'Kue Ulang Tahun', 170000, 'https://www.lapislapis.co.id/1032-superlarge_default/lapis-legit-original.jpg', 'Kue lapis legit dengan aroma rempah hangat dan tekstur lapis yang kaya.', 12, '\"[\\\"https://image.makewebeasy.net/makeweb/m_1920x0/rGAbosWut/DefaultData/DSC_0344.jpg\\\",\\\"https://amandabrownies.co.id/wp-content/uploads/2025/01/LapisLegit2.jpg\\\"]\"');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` enum('admin','customer') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'customer'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `role`) VALUES
(1, 'Admin CampBread', 'admin@gmail.com', '$2b$10$K0npBnaogf6BX/X023K2/epqzgSzYGkTHoZ9P.is//XsC9aJ1SrZ2', 'admin'),
(2, 'Pelanggan CampBread', 'customer@gmail.com', '$2b$10$A24UNfgMLrm4R9TOL3TnO.XyY7yuAT2uy.ymFaaGLA5drvhi6mQjG', 'customer'),
(3, 'Test User', 'testuser123@example.com', '$2b$10$c4XyHMyjQynkbqXy.cIekuFuOvCG9NTXZmg3ija7Nm0ZCMtVrHHqK', 'customer'),
(4, 'haekal', 'haekal@gmail.com', '$2b$10$/4uAvCfpo/QLXDpGNN.kvOTWcFag3gMU0DMQcC0zeICR5Sah72c2m', 'customer'),
(5, 'Nama Kamu', 'email@domain.com', '$2b$10$2Gtsc0FDnVydhvcy91hJn.1kmUDJB49S6bG69IYjVUfqeJ/SCyyF.', 'customer'),
(6, 'faiz', 'faiz@gmail.com', '$2b$10$Nh2PMpJZxdKgAH8AvCD3U.Tbgzdf1ohyt9outHNE0vhFLFqhIfeoK', 'customer');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `orderitems`
--
ALTER TABLE `orderitems`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orderId` (`orderId`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userId` (`userId`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `email_2` (`email`),
  ADD UNIQUE KEY `email_3` (`email`),
  ADD UNIQUE KEY `email_4` (`email`),
  ADD UNIQUE KEY `email_5` (`email`),
  ADD UNIQUE KEY `email_6` (`email`),
  ADD UNIQUE KEY `email_7` (`email`),
  ADD UNIQUE KEY `email_8` (`email`),
  ADD UNIQUE KEY `email_9` (`email`),
  ADD UNIQUE KEY `email_10` (`email`),
  ADD UNIQUE KEY `email_11` (`email`),
  ADD UNIQUE KEY `email_12` (`email`),
  ADD UNIQUE KEY `email_13` (`email`),
  ADD UNIQUE KEY `email_14` (`email`),
  ADD UNIQUE KEY `email_15` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `orderitems`
--
ALTER TABLE `orderitems`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orderitems`
--
ALTER TABLE `orderitems`
  ADD CONSTRAINT `orderitems_ibfk_1` FOREIGN KEY (`orderId`) REFERENCES `orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `orderitems_ibfk_10` FOREIGN KEY (`orderId`) REFERENCES `orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `orderitems_ibfk_11` FOREIGN KEY (`orderId`) REFERENCES `orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `orderitems_ibfk_12` FOREIGN KEY (`orderId`) REFERENCES `orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `orderitems_ibfk_13` FOREIGN KEY (`orderId`) REFERENCES `orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `orderitems_ibfk_2` FOREIGN KEY (`orderId`) REFERENCES `orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `orderitems_ibfk_3` FOREIGN KEY (`orderId`) REFERENCES `orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `orderitems_ibfk_4` FOREIGN KEY (`orderId`) REFERENCES `orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `orderitems_ibfk_5` FOREIGN KEY (`orderId`) REFERENCES `orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `orderitems_ibfk_6` FOREIGN KEY (`orderId`) REFERENCES `orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `orderitems_ibfk_7` FOREIGN KEY (`orderId`) REFERENCES `orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `orderitems_ibfk_8` FOREIGN KEY (`orderId`) REFERENCES `orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `orderitems_ibfk_9` FOREIGN KEY (`orderId`) REFERENCES `orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `orders_ibfk_10` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `orders_ibfk_11` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `orders_ibfk_12` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `orders_ibfk_13` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `orders_ibfk_3` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `orders_ibfk_4` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `orders_ibfk_5` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `orders_ibfk_6` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `orders_ibfk_7` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `orders_ibfk_8` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `orders_ibfk_9` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
