-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 19, 2024 at 07:06 AM
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
-- Database: `furniture_shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `AdminID` int(11) NOT NULL,
  `AdminName` varchar(50) NOT NULL,
  `AdminEmail` varchar(100) NOT NULL,
  `AdminPassword` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`AdminID`, `AdminName`, `AdminEmail`, `AdminPassword`) VALUES
(1, 'John Doe', 'john.doe@example.com', 'password123'),
(2, 'Jane Smith', 'jane.smith@example.com', 'password456'),
(3, 'Robert Brown', 'robert.brown@example.com', 'password789');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `ID` int(11) NOT NULL,
  `CustomerID` int(11) NOT NULL,
  `ProductID` int(11) NOT NULL,
  `Quantity` int(11) NOT NULL,
  `Date` date DEFAULT NULL,
  `price` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `ID` int(11) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Contact` varchar(100) NOT NULL,
  `password` varchar(50) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Address` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`ID`, `Name`, `Contact`, `password`, `Email`, `Address`) VALUES
(1, 'John Doe', '+11234567890', '1111', 'john.doe@example.com', '123 Elm Street, Springfield'),
(2, 'Jane Smith', '+11234567891', '2222', 'jane.smith@example.com', '456 Oak Street, Springfield'),
(3, 'Alice Johnson', '+11234567892', '3333', 'alice.johnson@example.com', '789 Pine Street, Springfield'),
(4, 'Bob Brown', '+11234567893', '4444', 'bob.brown@example.com', '101 Maple Street, Springfield'),
(5, 'Carol White', '+11234567894', '5555', 'carol.white@example.com', '202 Birch Street, Springfield'),
(6, 'David Green', '+11234567895', '6666', 'david.green@example.com', '303 Cedar Street, Springfield'),
(7, 'Eve Black', '+11234567896', '7777', 'eve.black@example.com', '404 Walnut Street, Springfield'),
(8, 'Frank Blue', '+11234567897', '8888', 'frank.blue@example.com', '505 Chestnut Street, Springfield'),
(9, 'Grace Red', '+11234567898', '9999', 'grace.red@example.com', '606 Cherry Street, Springfield'),
(10, 'Hank Yellow', '+11234567899', '1010', 'hank.yellow@example.com', '707 Poplar Street, Springfield');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `ID` int(11) NOT NULL,
  `ProductID` int(11) NOT NULL,
  `CustomerID` int(11) NOT NULL,
  `Quantity` int(11) NOT NULL,
  `ProductPrice` float NOT NULL,
  `TotalPrice` int(11) DEFAULT NULL,
  `Date` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`ID`, `ProductID`, `CustomerID`, `Quantity`, `ProductPrice`, `TotalPrice`, `Date`) VALUES
(1, 11, 1, 1, 100, 100, '2024-08-14 15:44:24'),
(2, 71, 1, 1, 90, 90, '2024-08-14 15:48:48'),
(3, 61, 1, 1, 40, 40, '2024-08-14 15:48:48'),
(4, 11, 1, 1, 100, 100, '2024-08-14 15:58:12'),
(5, 11, 1, 1, 100, 100, '2024-08-14 15:58:12'),
(6, 31, 1, 1, 80, 80, '2024-08-14 15:58:12'),
(7, 11, 1, 1, 100, 100, '2024-08-14 15:58:12'),
(8, 22, 1, 1, 350, 350, '2024-08-14 15:58:12'),
(9, 11, 1, 1, 100, 100, '2024-08-14 16:00:13'),
(10, 63, 1, 1, 1300, 1300, '2024-08-14 16:03:29'),
(11, 33, 1, 1, 800, 800, '2024-08-14 16:03:29'),
(12, 21, 1, 1, 130, 130, '2024-08-14 16:06:45'),
(13, 1, 1, 1, 4999, 4999, '2024-08-14 19:35:42'),
(14, 21, 1, 1, 12900, 12900, '2024-08-14 19:35:42'),
(15, 31, 1, 1, 7900, 7900, '2024-08-14 20:08:27'),
(16, 56, 1, 1, 90, 90, '2024-08-15 11:29:42'),
(17, 11, 1, 1, 7000, 7000, '2024-08-15 11:29:42'),
(18, 1, 1, 1, 4999, 4999, '2024-08-15 11:29:42'),
(19, 1, 1, 1, 15000, 15000, '2024-08-16 15:05:10'),
(20, 1, 1, 2, 15000, 30000, '2024-08-16 15:05:10'),
(22, 0, 1, 0, 0, NULL, '2024-08-18 08:52:26'),
(23, 0, 1, 0, 0, NULL, '2024-08-18 08:53:47'),
(24, 0, 1, 0, 0, NULL, '2024-08-18 08:54:25'),
(25, 0, 1, 0, 0, NULL, '2024-08-18 08:54:32'),
(26, 0, 1, 0, 0, NULL, '2024-08-18 18:35:23'),
(27, 0, 1, 0, 0, NULL, '2024-08-18 18:35:37'),
(28, 0, 1, 0, 0, NULL, '2024-08-18 18:37:53');

-- --------------------------------------------------------

--
-- Table structure for table `productcategories`
--

CREATE TABLE `productcategories` (
  `ID` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `image` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `productcategories`
--

INSERT INTO `productcategories` (`ID`, `Name`, `image`) VALUES
(1, 'Chairs', 'images/chair.jpg'),
(2, 'Tables', 'images/table.jpg'),
(3, 'Sofas', 'images/sofa.jpg'),
(4, 'Beds', 'images/bed.jpg'),
(5, 'Wardrobes', 'images/wardropes.jpg'),
(6, 'Shelves', 'images/shelves.jpg'),
(7, 'Desks', 'images/Desks.jpg'),
(8, 'Cabinets', 'images/cabinet.jpg'),
(9, 'Lamps', 'images/Lamps.jpg'),
(10, 'Outdoor Furniture', 'images/outdoor furniture.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `ID` int(11) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `CategoryID` int(11) NOT NULL,
  `SupplierID` int(11) NOT NULL,
  `Price` decimal(10,2) NOT NULL,
  `StockQuantity` int(11) NOT NULL,
  `URL` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`ID`, `Name`, `CategoryID`, `SupplierID`, `Price`, `StockQuantity`, `URL`) VALUES
(1, 'Dining Chair', 1, 1, 15000.00, 93, 'images/Dining Chair.jpg'),
(2, 'Coffee Table', 2, 2, 47000.00, 48, 'images/Coffee Table.jpg'),
(3, 'Leather Sofa', 3, 3, 45000.00, 9, 'images/Leather Sofa.jpg'),
(4, 'King Size Bed', 4, 4, 129000.00, 10, 'images/King Size Bed.jpg'),
(5, 'Sliding Wardrobe', 5, 5, 87000.00, 15, 'images/Sliding Wardrobe.jpg'),
(6, 'Bookshelf', 6, 6, 59000.00, 200, 'images/Bookshelf.jpg'),
(7, 'Office Desk', 7, 7, 34000.00, 30, 'images/Office Desk.jpg'),
(8, 'Kitchen Cabinet', 8, 8, 95000.00, 25, 'images/Kitchen Cabinet.jpg'),
(9, 'Table Lamp', 9, 9, 6000.00, 100, 'images/Table Lamp.jpg'),
(10, 'Garden Chair', 10, 10, 25000.00, 50, 'images/Garden Chair.jpg'),
(11, 'Office Chair', 1, 1, 25000.00, 75, 'images/Office Chair.jpg'),
(12, 'Side Table', 2, 2, 23000.00, 80, 'images/Side Table.jpg'),
(13, 'Fabric Sofa', 3, 3, 78000.00, 15, 'images/Fabric Sofa.jpg'),
(14, 'Single Bed', 4, 4, 30000.00, 20, 'images/Single Bed.jpg'),
(15, 'Mirror Wardrobe', 5, 5, 125000.00, 12, 'images/Mirror Wardrobe.jpg'),
(16, 'Wall Shelf', 6, 6, 25000.00, 150, 'images/Wall Shelf.jpg'),
(17, 'Writing Desk', 7, 7, 22000.00, 35, 'images/Writing Desk.jpg'),
(18, 'Bathroom Cabinet', 8, 8, 110000.00, 30, 'images/Bathroom Cabinet.jpg'),
(19, 'Floor Lamp', 9, 9, 5000.00, 70, 'images/floor lamp.jpg'),
(20, 'Patio Table', 10, 10, 14500.00, 40, 'images/Patio Table.jpg'),
(21, 'Rocking Chair', 1, 1, 12900.00, 50, 'images/rockingchair.jpg'),
(22, 'Dining Table', 2, 2, 34000.00, 40, 'images/Patio Table.jpg'),
(23, 'Sectional Sofa', 3, 3, 89000.00, 10, 'images/Sectional Sofa.jpg'),
(24, 'Bunk Bed', 4, 4, 59000.00, 5, 'images/Bunk Bed.jpg'),
(25, 'Corner Wardrobe', 5, 5, 45000.00, 8, 'images/Corner Wardrobe.jpg'),
(26, 'Floating Shelf', 6, 6, 19000.00, 200, 'images/Floating Shelf.jpg'),
(27, 'Computer Desk', 7, 7, 17000.00, 20, 'images/Computer Desk.jpg'),
(28, 'Living Room Cabinet', 8, 8, 39000.00, 15, 'images/Living Room Cabinet.jpg'),
(29, 'Desk Lamp', 9, 9, 29000.00, 120, 'images/Desk Lamp.jpg'),
(30, 'Outdoor Sofa', 10, 10, 29000.00, 30, 'images/Outdoor Sofa.jpg'),
(31, 'Lounge Chair', 1, 1, 17900.00, 90, 'images/Lounge Chair.jpg'),
(32, 'TV Stand', 2, 2, 24000.00, 25, 'images/TV Stand.jpg'),
(33, 'Recliner Sofa', 3, 3, 85000.00, 8, 'images/Recliner Sofa.jpg'),
(34, 'Queen Size Bed', 4, 4, 65000.00, 7, 'images/Queen Size Bed.jpg'),
(35, 'Walk-in Wardrobe', 5, 5, 18500.00, 3, 'images/Walk-in Wardrobe.jpg'),
(36, 'Kitchen Shelf', 6, 6, 13900.00, 180, 'images/Kitchen Shelf.jpg'),
(37, 'Study Desk', 7, 7, 17000.00, 45, 'images/Study Desk.jpg'),
(38, 'Wardrobe Cabinet', 8, 8, 8500.00, 20, 'images/Wardrobe Cabinet.jpg'),
(39, 'Ceiling Lamp', 9, 9, 7900.00, 60, 'images/Ceiling Lamp.jpg'),
(40, 'Outdoor Dining Set', 10, 10, 15000.00, 10, 'images/Outdoor Dining Set.jpg'),
(41, 'Accent Chair', 1, 1, 7500.00, 110, 'images/Accent Chair.jpg'),
(42, 'Console Table', 2, 2, 29000.00, 20, 'images/Console Table.jpg'),
(43, 'Sleeper Sofa', 3, 3, 45000.00, 6, 'images/Sleeper Sofa.jpg'),
(44, 'Metal Bed', 4, 4, 13000.00, 12, 'images/Metal Bed.jpg'),
(45, 'Traditional Wardrobe', 5, 5, 85000.00, 10, 'images/Traditional Wardrobe.jpg'),
(46, 'Garage Shelf', 6, 6, 6900.00, 160, 'images/Garage Shelf.jpg'),
(47, 'Gaming Desk', 7, 7, 7500.00, 15, 'images/Gaming Desk.jpg'),
(48, 'Bedroom Cabinet', 8, 8, 50000.00, 25, 'images/Bedroom Cabinet.jpg'),
(49, 'Wall Lamp', 9, 9, 2000.00, 100, 'images/Wall Lamp.jpg'),
(50, 'Outdoor Bench', 10, 10, 7000.00, 25, 'images/Outdoor Bench.jpg'),
(51, 'Folding Chair', 1, 1, 6000.00, 200, 'images/Folding Chair.jpg'),
(52, 'End Table', 2, 2, 5000.00, 70, 'images/End Table.jpg'),
(53, 'Loveseat', 3, 3, 18000.00, 18, 'images/Loveseat.jpg'),
(54, 'Wooden Bed', 4, 4, 25000.00, 6, 'images/Wooden Bed.jpg'),
(55, 'Antique Wardrobe', 5, 5, 149999.99, 2, 'images/antique wardrobe.jpg'),
(56, 'Office Shelf', 6, 6, 32459.99, 140, 'images/office shelf.jpg'),
(57, 'Adjustable Desk', 7, 7, 55499.99, 10, 'images/adjustable desk.jpg'),
(58, 'Storage Cabinet', 8, 8, 329.99, 20, 'images/'),
(59, 'Night Lamp', 9, 9, 6599.99, 110, 'images/night lamp.jpg'),
(60, 'Porch Swing', 10, 10, 75499.99, 20, 'images/porch swing.jpg'),
(61, 'Bar Stool', 1, 1, 11469.99, 90, 'images/bar stool.jpg'),
(62, 'Coffee Table Set', 2, 2, 79999.99, 60, 'images/coffee table set.jpg'),
(63, 'Modular Sofa', 3, 3, 50499.99, 4, 'images/modular sofa.jpg'),
(64, 'Platform Bed', 4, 4, 99999.99, 9, 'images/platform bed.jpg'),
(65, 'Contemporary Wardrobe', 5, 5, 79699.99, 7, 'images/contemporary wardrobe.jpg'),
(66, 'Bookshelves', 6, 6, 25499.99, 130, 'images/bookshelves.jpg'),
(67, 'Craft Desk', 7, 7, 34499.99, 25, 'images/craft desk.jpg'),
(68, 'Hallway Cabinet', 8, 8, 48999.99, 15, 'images/hallway cabinet.jpg'),
(69, 'Desk Fan', 9, 9, 7549.99, 50, 'images/desk fan.jpg'),
(70, 'Garden Table', 10, 10, 34459.99, 35, 'images/garden table.jpg'),
(71, 'Ottoman Chair', 1, 1, 99989.99, 80, 'images/ottoman chair.jpg'),
(72, 'Nesting Tables', 2, 2, 59999.99, 75, 'images/nesting table.jpg'),
(73, 'Chaise Lounge', 3, 3, 99999.99, 10, 'images/Chaise Lounge.jpg'),
(74, 'Canopy Bed', 4, 4, 89989.99, 5, 'images/Canopy Bed.jpg'),
(75, 'Minimalist Wardrobe', 5, 5, 30599.99, 10, 'images/Minimalist Wardrobe.jpg'),
(76, 'Pantry Shelf', 6, 6, 60499.99, 150, 'images/Pantry Shelf.jpg'),
(77, 'Drawer Desk', 7, 7, 40459.99, 30, 'images/Drawer Dsek.jpg'),
(78, 'TV Cabinet', 8, 8, 60999.99, 20, 'images/Tv Cabinet.jpg'),
(79, 'Pendant Lamp', 9, 9, 5959.99, 80, 'images/Pendant Lamp.jpg'),
(80, 'Outdoor Sofa Set', 10, 10, 99999.99, 10, 'images/Outdoor Sofa Set.jpg'),
(81, 'Swivel Chair', 1, 1, 65499.99, 100, 'images/Swivel Chair.jpg'),
(82, 'Dressing Table', 2, 2, 89999.99, 20, 'images/Dressing Table.jpg'),
(83, 'Futon Sofa', 3, 3, 112999.99, 12, 'images/Futon Sofa.jpg'),
(84, 'Murphy Bed', 4, 4, 150999.99, 3, 'images/Murphy Bed.jpg'),
(85, 'Rustic Wardrobe', 5, 5, 12549.99, 6, 'images/Rustic Wardrobe.jpg'),
(86, 'Corner Shelf', 6, 6, 35499.99, 100, 'images/Corner Shelf.jpg'),
(87, 'Portable Desk', 7, 7, 55499.99, 50, 'images/Portable Desk.jpg'),
(88, 'Display Cabinet', 8, 8, 74459.99, 10, 'images/Display Cabinet.jpg'),
(89, 'Table Lamp', 9, 9, 5699.99, 90, 'images/Table Lamp.jpg'),
(90, 'Outdoor Lounge', 10, 10, 65899.99, 15, 'images/Outdoor Lounge.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `ID` int(11) NOT NULL,
  `ProductID` int(11) NOT NULL,
  `CustomerID` int(11) NOT NULL,
  `Rating` int(11) NOT NULL,
  `RevComment` varchar(500) NOT NULL,
  `ReviewDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`ID`, `ProductID`, `CustomerID`, `Rating`, `RevComment`, `ReviewDate`) VALUES
(1, 1, 1, 5, 'Great chair, very comfortable.', '2024-07-20'),
(2, 2, 2, 4, 'Good quality table.', '2024-07-21'),
(3, 3, 3, 5, 'Love the sofa, very stylish.', '2024-07-22'),
(4, 4, 4, 3, 'Bed is okay, not as expected.', '2024-07-23'),
(5, 5, 5, 4, 'Nice wardrobe, spacious.', '2024-07-24'),
(6, 6, 6, 5, 'Shelf is sturdy and looks great.', '2024-07-25'),
(7, 7, 7, 4, 'Desk is functional and good value.', '2024-07-26'),
(8, 8, 8, 5, 'Cabinet is high quality.', '2024-07-27'),
(9, 9, 9, 3, 'Lamp is fine, could be brighter.', '2024-07-28'),
(10, 10, 10, 4, 'Comfortable outdoor chair.', '2024-07-29');

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `ID` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Contact` varchar(50) NOT NULL,
  `Email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`ID`, `Name`, `Contact`, `Email`) VALUES
(1, 'Supplier A', '+1234567890', 'supplierA@example.com'),
(2, 'Supplier B', '+1234567891', 'supplierB@example.com'),
(3, 'Supplier C', '+1234567892', 'supplierC@example.com'),
(4, 'Supplier D', '+1234567893', 'supplierD@example.com'),
(5, 'Supplier E', '+1234567894', 'supplierE@example.com'),
(6, 'Supplier F', '+1234567895', 'supplierF@example.com'),
(7, 'Supplier G', '+1234567896', 'supplierG@example.com'),
(8, 'Supplier H', '+1234567897', 'supplierH@example.com'),
(9, 'Supplier I', '+1234567898', 'supplierI@example.com'),
(10, 'Supplier J', '+1234567899', 'supplierJ@example.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`AdminID`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`ID`,`ProductID`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`ID`,`ProductID`);

--
-- Indexes for table `productcategories`
--
ALTER TABLE `productcategories`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `AdminID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `productcategories`
--
ALTER TABLE `productcategories`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
