-- phpMyAdmin SQL Dump
-- version 3.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 10, 2019 at 07:18 AM
-- Server version: 5.5.25a
-- PHP Version: 5.4.4

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `online`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `password`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE IF NOT EXISTS `customers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  `gender` varchar(20) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `password` varchar(200) DEFAULT NULL,
  `contact` varchar(20) DEFAULT NULL,
  `address` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `gender`, `email`, `password`, `contact`, `address`) VALUES
(1, 'Winnnie  Nelson', 'Female', 'winnie@admin.com', '1234', '0712345678', 'p.o box 375-90100');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE IF NOT EXISTS `products` (
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_code` varchar(20) DEFAULT NULL,
  `gen_name` varchar(200) DEFAULT NULL,
  `product_name` varchar(200) DEFAULT NULL,
  `o_price` varchar(200) DEFAULT NULL,
  `price` varchar(200) DEFAULT NULL,
  `profit` varchar(200) DEFAULT NULL,
  `supplier` varchar(200) DEFAULT NULL,
  `qty` int(200) DEFAULT NULL,
  `qty_sold` int(200) DEFAULT NULL,
  `expiry` date DEFAULT NULL,
  `arrival` date DEFAULT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_code`, `gen_name`, `product_name`, `o_price`, `price`, `profit`, `supplier`, `qty`, `qty_sold`, `expiry`, `arrival`) VALUES
(1, 'on', 'Allium', 'onion', '20', '30', '10', 'Winnnie Nelson', 129, 200, '2019-04-04', '2019-03-08'),
(2, 'To', 'Cruciferous', 'Tomatoes', '30', '45', '15', 'John Doe', 400, 400, '2019-03-29', '2019-03-10');

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE IF NOT EXISTS `sales` (
  `transaction_id` int(11) NOT NULL AUTO_INCREMENT,
  `invoice_number` varchar(200) DEFAULT NULL,
  `cashier` varchar(20) DEFAULT NULL,
  `date` varchar(200) DEFAULT NULL,
  `type` varchar(200) DEFAULT NULL,
  `amount` varchar(200) DEFAULT NULL,
  `profit` varchar(200) DEFAULT NULL,
  `due_date` varchar(200) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `balance` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`transaction_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `sales_order`
--

CREATE TABLE IF NOT EXISTS `sales_order` (
  `transaction_id` int(11) NOT NULL AUTO_INCREMENT,
  `invoice` varchar(200) DEFAULT NULL,
  `product` int(20) DEFAULT NULL,
  `qty` int(20) DEFAULT NULL,
  `amount` varchar(200) DEFAULT NULL,
  `profit` varchar(200) DEFAULT NULL,
  `product_code` varchar(100) DEFAULT NULL,
  `gen_name` varchar(200) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `price` varchar(200) DEFAULT NULL,
  `discount` varchar(200) DEFAULT NULL,
  `date` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`transaction_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=45 ;

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE IF NOT EXISTS `supplier` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  `product` varchar(200) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `contact` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`id`, `name`, `product`, `address`, `contact`) VALUES
(1, 'Winnnie  Nelson', 'onion', 'p.o box 375', '0712345678'),
(2, 'John Doe', 'Tomatoes', 'p.o box  123,90100', '07003456712');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
