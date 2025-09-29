-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 29, 2025 at 04:54 AM
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
-- Database: `lab10_webapi`
--

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `description` text DEFAULT NULL,
  `category` varchar(100) DEFAULT NULL,
  `image` varchar(500) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `price`, `description`, `category`, `image`, `created_at`) VALUES
(2, 'F-35 Lightning II Model 1:72', 1890.00, 'Detailed scale 1:72 model with stand, highly collectible.', 'models', 'https://example.com/img/f35-1-72.jpg', '2025-09-29 02:35:51'),
(3, 'Su-57 Stealth Jet Model 1:144', 750.00, 'Small scale 1:144 model for desk display.', 'models', 'https://example.com/img/su57-1-144.jpg', '2025-09-29 02:35:51'),
(4, 'Pilot Headset Replica', 990.00, 'Replica pilot-style headset for cosplay or collection.', 'accessories', 'https://example.com/img/pilot-headset.jpg', '2025-09-29 02:35:51'),
(5, 'Full-face Pilot Helmet Replica', 1490.00, 'Pilot helmet replica with visor, great for display.', 'accessories', 'https://example.com/img/pilot-helmet.jpg', '2025-09-29 02:35:51'),
(6, 'Afterburner Keychain', 120.00, 'Metal keychain shaped like a jet afterburner nozzle.', 'souvenirs', 'https://example.com/img/keychain-afterburner.jpg', '2025-09-29 02:35:51'),
(7, 'F-22 Raptor Poster A2', 250.00, 'High-quality poster A2 size, modern fighter jet graphic.', 'posters', 'https://example.com/img/jet-poster-a2.jpg', '2025-09-29 02:35:51'),
(8, 'Air Force Wing Pin Badge', 150.00, 'Metal pin badge, collectible pilot wing design.', 'souvenirs', 'https://example.com/img/pin-wing.jpg', '2025-09-29 02:35:51'),
(9, 'Mini Cockpit 3D Replica Panel', 2190.00, 'Small cockpit panel replica with switches, for display.', 'gadgets', 'https://example.com/img/cockpit-mini.jpg', '2025-09-29 02:35:51'),
(10, 'LED Light Base for Models', 190.00, 'LED strip base to enhance model display lighting.', 'accessories', 'https://example.com/img/led-base.jpg', '2025-09-29 02:35:51'),
(11, 'Wooden Stand with Jet Nameplate', 890.00, 'Display base with engraved nameplate, perfect for models.', 'display', 'https://example.com/img/wood-base.jpg', '2025-09-29 02:35:51'),
(12, 'Fighter Jet History Book', 420.00, 'Book covering specifications and history of famous jets.', 'books', 'https://example.com/img/book-jets.jpg', '2025-09-29 02:35:51'),
(13, 'Fighter Jet T-shirt (S-XL)', 350.00, 'Soft cotton t-shirt with fighter jet graphic print.', 'apparel', 'https://example.com/img/tshirt-jet.jpg', '2025-09-29 02:35:51'),
(14, 'Jet Fighter Pillow', 390.00, 'Decorative pillow with fighter jet design.', 'home', 'https://example.com/img/jet-pillow.jpg', '2025-09-29 02:35:51'),
(15, 'Jet Fighter Stickers Pack (50 pcs)', 120.00, 'Sticker set with fighter jets and air force logos.', 'accessories', 'https://example.com/img/stickers-jet.jpg', '2025-09-29 02:35:51'),
(16, 'Mini Action Cam for Drone/Model', 2890.00, 'Small camera for simulation/drone use, captures pilot view.', 'electronics', 'https://example.com/img/mini-cam.jpg', '2025-09-29 02:35:51'),
(17, 'Rotating Display Base (Electric)', 1290.00, 'Motorized rotating base for model showcase.', 'display', 'https://example.com/img/turntable.jpg', '2025-09-29 02:35:51'),
(18, 'Jet Engine Replica Model', 1590.00, 'Detailed jet engine miniature model for study/display.', 'models', 'https://example.com/img/jet-engine-model.jpg', '2025-09-29 02:35:51'),
(19, 'Gift Card Fighter Jet Store $15', 500.00, 'Gift voucher redeemable in souvenir store.', 'vouchers', 'https://example.com/img/giftcard-500.jpg', '2025-09-29 02:35:51'),
(20, 'Metal Wing Number Plate Decor', 220.00, 'Metal wall sign with fighter jet wing number.', 'decor', 'https://example.com/img/metal-sign.jpg', '2025-09-29 02:35:51'),
(21, 'F-14 Tomcat Swing-wing Model 1:72', 1490.00, 'Scale model with movable wings, collectible item.', 'models', 'https://example.com/img/f14-1-72.jpg', '2025-09-29 02:35:51'),
(22, 'Model Parts Pack (50 pcs)', 320.00, 'Plastic screws, joints, and spare parts for model repair.', 'parts', 'https://example.com/img/model-parts.jpg', '2025-09-29 02:35:51'),
(23, 'Jet Model Assembly Manual', 180.00, 'Step-by-step assembly manual for beginner model builders.', 'books', 'https://example.com/img/manual-model.jpg', '2025-09-29 02:35:51'),
(24, 'Pilot Keychain with Helmet Design', 140.00, 'Cute keychain with pilot helmet design.', 'souvenirs', 'https://example.com/img/pilot-keychain.jpg', '2025-09-29 02:35:51'),
(25, 'F-117 Stealth Jet Model 1:72', 1590.00, 'Stealth jet scale model 1:72 with detailed paint scheme.', 'models', 'https://example.com/img/f117-1-72.jpg', '2025-09-29 02:35:51'),
(26, 'F-18 Super Hornet Model 1:72', 1490.00, 'High-detail model for collection.', 'models', 'https://example.com/img/f18-1-72.jpg', '2025-09-29 02:50:49');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
