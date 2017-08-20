-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 06, 2014 at 05:15 PM
-- Server version: 5.6.16
-- PHP Version: 5.5.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `gamingplace`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`) VALUES
(1, 'Xbox One Games'),
(2, 'PS4 Games'),
(3, 'Nintendo Wii Games'),
(4, 'Xbox 360 Games'),
(5, 'PS3 Games');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE IF NOT EXISTS `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `transaction_id` varchar(255) NOT NULL,
  `qty` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `address` varchar(255) NOT NULL,
  `address2` varchar(255) NOT NULL,
  `city` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL,
  `zipcode` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `product_id`, `user_id`, `transaction_id`, `qty`, `price`, `address`, `address2`, `city`, `state`, `zipcode`) VALUES
(1, 1, 1, '0', 1, '59.99', '55 Main St', '', 'Boston', 'Massachusetts', '01951'),
(2, 1, 3, '0', 1, '59.99', '55Main st', '', 'Amesnury', 'MA', '01913'),
(3, 4, 3, '0', 2, '99.98', '55Main st', '', 'Amesnury', 'MA', '01913');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE IF NOT EXISTS `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `image` varchar(100) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `title`, `description`, `image`, `price`) VALUES
(1, 1, 'Destiny', 'Destiny is an action game from the creators of Halo, set in a mysterious future. Create a unique and powerful character, customize the way you look and fight, and explore what remains of the solar system. Destiny features a compelling storyline, competitive multiplayer, cooperative gameplay choices, wide open public combat destinations, and third-person community spaces where you can repair and rearm before going out on your next adventure.', 'game1.jpg', '59.99'),
(2, 1, 'Call of Duty: Ghosts', 'Call of Duty: Ghosts is an extraordinary step forward for one of the largest entertainment franchises of all-time. This new chapter in the Call of Duty franchise features a new dynamic where players are on the side of a crippled nation fighting not for freedom, or liberty, but simply to survive.', 'game2.jpg', '59.99'),
(3, 5, 'Watch Dogs', 'Today, all major cities are networked. Urban infrastructures are monitored and controlled by complex operating systems. In Watch Dogs, this system is called the Central Operating System (ctOS) - and it controls almost every piece of the city''s technology and holds key information on all of the city''s residents. You play as Aiden Pearce, a brilliant hacker and former thug, whose criminal past led to a violent family tragedy. Now on the hunt for those who hurt your family, you''ll be able to monitor and hack all who surround you by manipulating everything connected to the city''s network. Access omnipresent security cameras, download personal information to locate a target, control traffic lights and public transportation to stop the enemy... and more!', 'game3.jpg', '49.99'),
(4, 1, 'Sniper Elite', 'Sniper Elite 3 takes players to the unforgiving yet exotic terrain of WW2''s North Africa conflict in a battle against a deadly new foe. Equipped with Tiger tanks and the latest weaponry, Germany''s infamous Afrika Korps have the Allies outnumbered and outgunned.', 'game4.jpg', '49.99'),
(5, 2, 'Batman Arkham Night', 'Face a unified roster of villains in the explosive finale to the legendary series', 'game5.jpg', '59.99'),
(6, 2, 'Shadow of Mordor', 'Seek revenge and redemption in an epic new chronicle of Middle-earth', 'game6.jpg', '49.99');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `join_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `username`, `password`, `join_date`) VALUES
(1, 'Brad', 'Traversy', 'techguyinfo@gmail.com', 'brad', '098f6bcd4621d373cade4e832627b4f6', '2014-07-05 17:17:35'),
(3, 'John', 'Doe', 'jdoe@gmail.com', 'jdoe', '827ccb0eea8a706c4c34a16891f84e7b', '2014-07-06 14:07:45');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
