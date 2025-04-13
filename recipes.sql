-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Aug 05, 2023 at 11:35 PM
-- Server version: 5.6.12-log
-- PHP Version: 5.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `recipes`
--
CREATE DATABASE IF NOT EXISTS `recipes` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `recipes`;

-- --------------------------------------------------------

--
-- Table structure for table `customer_customeringredientsmodel`
--

CREATE TABLE IF NOT EXISTS `customer_customeringredientsmodel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `loginid` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `ingredients` varchar(100) NOT NULL,
  `recipes` varchar(100) NOT NULL,
  `descriptions` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=28 ;

--
-- Dumping data for table `customer_customeringredientsmodel`
--

INSERT INTO `customer_customeringredientsmodel` (`id`, `loginid`, `email`, `ingredients`, `recipes`, `descriptions`, `status`, `name`) VALUES
(19, 'Meghana', 'arumallameghana7@gmail.com', 'butter,chicken', 'Butterchicken', 'No Data found', 'sent', 'notassigned'),
(20, 'Meghana', 'arumallameghana7@gmail.com', 'garammasala,Cauliflower,turmeric', 'Aloogobi', 'No Data found', 'waiting', 'notassigned'),
(21, 'Meghana', 'arumallameghana7@gmail.com', 'garammasala,Cauliflower,turmeric', 'Chicken65', 'No Data found', 'sent', 'notassigned'),
(22, 'Meghana', 'arumallameghana7@gmail.com', 'garammasala,Cauliflower,turmeric', 'Aloogobi', 'No Data found', 'waiting', 'notassigned'),
(23, 'Meghana', 'arumallameghana7@gmail.com', 'garammasala,Cauliflower,turmeric', 'Chicken65', 'No Data found', 'waiting', 'notassigned'),
(24, 'Maggi', 'meghana@gmail.com', 'Onions,chicken', 'Eggomelette', 'No Data found', 'waiting', 'notassigned'),
(25, 'Maggi', 'meghana@gmail.com', 'Onions,chicken', 'Butterchicken', 'No Data found', 'sent', 'notassigned'),
(26, 'Teju', 'teju@gmail.com', 'chicken, curd, chilies, tomato, ginger', 'Butterchicken', 'No Data found', 'sent', 'notassigned'),
(27, 'fazal', 'fazalsirmail@gmail.com', 'chicken, ginger, chilies, onion, tomato, curd', 'Butterchicken', 'No Data found', 'sent', 'notassigned');

-- --------------------------------------------------------

--
-- Table structure for table `customer_customerregistrationmodel`
--

CREATE TABLE IF NOT EXISTS `customer_customerregistrationmodel` (
  `id` int(41) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `loginid` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mobile` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL,
  `authkey` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `customer_customerregistrationmodel`
--

INSERT INTO `customer_customerregistrationmodel` (`id`, `first_name`, `last_name`, `loginid`, `password`, `email`, `mobile`, `address`, `state`, `authkey`, `status`) VALUES
(1, 'Meghana', 'Arumalla', 'Meghana', '123', 'arumallameghana7@gmail.com', '9676358258', 'Vijayawada', 'Ap', '12720078', 'activated'),
(2, 'Nandana', 'Arumalla', 'Nandana', '123', 'nandana@gmail.com', '9247129626', 'Vijayawada', 'AP', '91240350', 'activated'),
(3, 'Maggi', 'Meghu', 'Maggi', '123', 'meghana@gmail.com', '7780110618', 'Hyderabad', 'Telagana', '24071176', 'activated'),
(4, 'teju', 'Teju', 'Teju', '123', 'teju@gmail.com', '7780110618', 'Htd', 'Telagana', '27163172', 'activated'),
(5, 'fazal', 'rahman', 'fazal', 'fazal', 'fazalsirmail@gmail.com', '8555887986', 'hyderabad', 'ts', '29015024', 'activated');

-- --------------------------------------------------------

--
-- Table structure for table `customer_recommendmodel`
--

CREATE TABLE IF NOT EXISTS `customer_recommendmodel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(100) NOT NULL,
  `recommend` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `customer_recommendmodel`
--

INSERT INTO `customer_recommendmodel` (`id`, `email`, `recommend`) VALUES
(1, 'arumallameghana7@gmail.com', 'nice'),
(2, 'nandana@gmail.com', 'This item is verynice'),
(3, 'arumallameghana7@gmail.com', 'gy'),
(4, 'nandana@gmail.com', 'Wanna try this one'),
(5, 'arumallameghana7@gmail.com', 'once try it..'),
(6, 'teju@gmail.com', 'chicken mughlai'),
(7, 'fazalsirmail@gmail.com', 'butter chicken');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime NOT NULL,
  PRIMARY KEY (`session_key`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('3js0p1ejnl9yy52g0qwltanx0mhipagr', 'YTA5MjQ0YmFiYTU3YjIzNjBiNWM3YmQzMWU4Y2Y2MmJjZjFjMDA1MDp7ImN1c3RvbWVyaWQiOiJNZWdoYW5hIiwiZW1haWwiOiJhcnVtYWxsYW1lZ2hhbmE3QGdtYWlsLmNvbSJ9', '2019-09-04 05:50:14'),
('4qjtfzou1t0ewaa659eh15nkq5repik4', 'YTA5MjQ0YmFiYTU3YjIzNjBiNWM3YmQzMWU4Y2Y2MmJjZjFjMDA1MDp7ImN1c3RvbWVyaWQiOiJNZWdoYW5hIiwiZW1haWwiOiJhcnVtYWxsYW1lZ2hhbmE3QGdtYWlsLmNvbSJ9', '2019-09-04 07:18:13'),
('aong53pgm3u7eu7vhd85jln5xc5psh20', 'ZTA1NWIxMjM5YjQ5M2NmYTY0MzUwNGQyMWVkY2NhYTgwYzUzMjRiZDp7ImN1c3RvbWVyaWQiOiJNZWdoYW5hIiwiZW1haWwiOiJuYW5kYW5hQGdtYWlsLmNvbSIsImlkIjoiTmFuZGFuYSJ9', '2019-09-03 09:31:36'),
('byoa81vbxsnpa38oqfp0zubtatwcjgqz', 'MjVlN2U4NTFlY2NmMDkwMmNjYmIxMTg3MzIyZTg1MmJlMGNlN2E5Mjp7ImlkIjoiTWVnaGFuYSIsImVtYWlsIjoiYXJ1bWFsbGFtZWdoYW5hN0BnbWFpbC5jb20iLCJjdXN0b21lcmlkIjoiTWVnaGFuYSJ9', '2019-09-09 04:24:45'),
('k1p9m4q7v5or83qe0nprwsufsfj5ejwi', 'ZjEyMTk3OGY1MmU0YTMxNzJiMjc3YzdjY2I1Y2NmNzg4YTM0ZTgxODp7ImlkIjoiTmFuZGFuYSIsImVtYWlsIjoibmFuZGFuYUBnbWFpbC5jb20iLCJjdXN0b21lcmlkIjoiTWVnaGFuYSJ9', '2019-09-04 08:45:51'),
('tukpgqtqnmgrt1xzvzbi2haqae3altwr', 'MjViM2E3Mjk4MDcwM2Q2ZTc0YzVjNDM3N2QyOWM5YWYzNzUwMGIzNjp7ImlkIjoiTmFuZGFuYSIsImVtYWlsIjoiYXJ1bWFsbGFtZWdoYW5hN0BnbWFpbC5jb20iLCJjdXN0b21lcmlkIjoiTWVnaGFuYSJ9', '2019-09-04 04:16:58'),
('xti401299e456sn8d69w2har6lya1zqv', 'ZGIxOGI1NzEzOGUyYjlkODEyZTBlOTg3YjAwNDY3ZjVkOTg0OGM3ZTp7ImlkIjoiY29kZWJvb2siLCJlbWFpbCI6ImNvZGVib29rLmluQGdtYWlsLmNvbSIsImN1c3RvbWVyaWQiOiJmYXphbCJ9', '2023-08-15 20:30:46');

-- --------------------------------------------------------

--
-- Table structure for table `foodcourt_addrecipemodel`
--

CREATE TABLE IF NOT EXISTS `foodcourt_addrecipemodel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `recipename` varchar(100) NOT NULL,
  `ingredients` varchar(100) NOT NULL,
  `description` varchar(100) NOT NULL,
  `file` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `foodcourt_addrecipemodel`
--

INSERT INTO `foodcourt_addrecipemodel` (`id`, `recipename`, `ingredients`, `description`, `file`) VALUES
(1, 'Chicken', 'chicken,garlic past,chilli powder,oil,salt.', 'yummy', 'files/pdfs/meghana_4YrBsC2.mp4'),
(2, 'ChilliCapsicum', 'capsicum,chilli', 'nice', 'files/pdfs/CHILLI_CAPSICUM_-_CAPSICUM_MASALA_-_CAPSICUM_DRY_FRY_-_EASY_CAPSICUM_RECIPE_1.mp4'),
(3, 'EggCurry', 'egg,tomato,onions', 'tasty', 'files/pdfs/meghana.mp4'),
(4, 'Mughalai chicken', 'chicken, turmeric, tomato, chilies, ginger, curd', 'tasty mughlai chicken', 'files/pdfs/images_2.jpg'),
(5, 'chicken mughlai', 'chicken, curd, ginger, tomato', 'chicken mughlai', 'files/pdfs/images_2_wWUQF7C.jpg'),
(6, 'tandoori chicken', 'chicken, ginger, chilies, onion, tomato, curd', 'tasty tandoori chicken', 'files/pdfs/food_item_3.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `foodcourt_foodcourtregistrationmodel`
--

CREATE TABLE IF NOT EXISTS `foodcourt_foodcourtregistrationmodel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `loginid` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mobile` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `authkey` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `foodcourt_foodcourtregistrationmodel`
--

INSERT INTO `foodcourt_foodcourtregistrationmodel` (`id`, `name`, `loginid`, `password`, `email`, `mobile`, `address`, `authkey`, `status`) VALUES
(1, 'Nandana', 'Nandana', '123', 'nandana@gmail.com', '9247129626', 'Vijayawada', '68582453', 'activated'),
(2, 'Meghana', 'Meghana', '123', 'arumallameghana7@gmail.com', '9676358258', 'Hyderabad', '41036796', 'activated'),
(3, 'Teju', 'Teju', '123', 'teju@gmail.com', '7780110618', 'Hyd', '42290866', 'activated'),
(4, 'codebook', 'codebook', 'codebook', 'codebook.in@gmail.com', '8555887986', 'hyderabad', '35665134', 'activated');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
