-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 13.03.2025 klo 13:59
-- Palvelimen versio: 10.4.22-MariaDB
-- PHP Version: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `react_quiz`
--

-- --------------------------------------------------------

--
-- Rakenne taululle `highscore`
--

CREATE TABLE `highscore` (
  `id` int(11) NOT NULL,
  `player` varchar(255) NOT NULL,
  `quiz_length` int(11) NOT NULL,
  `score` int(11) NOT NULL,
  `quiz_id` int(11) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Rakenne taululle `questions`
--

CREATE TABLE `questions` (
  `id` int(11) NOT NULL,
  `quiz_id` int(11) NOT NULL,
  `question` varchar(255) NOT NULL,
  `option_a` varchar(255) NOT NULL,
  `option_b` varchar(255) NOT NULL,
  `option_c` varchar(255) NOT NULL,
  `option_d` varchar(255) NOT NULL,
  `correct_option` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Vedos taulusta `questions`
--

INSERT INTO `questions` (`id`, `quiz_id`, `question`, `option_a`, `option_b`, `option_c`, `option_d`, `correct_option`) VALUES
(1, 1, 'Kuka oli The Beatlesin basisti?', 'John Lennon', 'Paul McCartney', 'George Harrison', 'Ringo Starr', 'B'),
(2, 1, 'Mikä oli The Beatlesin ensimmäinen single?', 'Love Me Do', 'Hey Jude', 'Yesterday', 'Help!', 'A'),
(3, 1, 'Minä vuonna The Beatles perustettiin?', '1958', '1960', '1962', '1964', 'B'),
(4, 1, 'Mikä seuraavista albumeista EI ole The Beatlesin?', 'Rubber Soul', 'Pet Sounds', 'Revolver', 'Abbey Road', 'B'),
(5, 1, 'Mikä oli The Beatlesin viimeinen studioalbumi?', 'Let It Be', 'Abbey Road', 'The White Album', 'Magical Mystery Tour', 'A'),
(6, 1, 'Kuka oli yhtyeen pääasiallinen sanoittajakaksikko?', 'Lennon ja Harrison', 'McCartney ja Starr', 'Lennon ja McCartney', 'Harrison ja McCartney', 'C'),
(7, 1, 'Mikä seuraavista kappaleista EI ole The Beatlesin?', 'Come Together', 'Satisfaction', 'Something', 'Strawberry Fields Forever', 'B'),
(8, 1, 'Missä kaupungissa The Beatles perustettiin?', 'Lontoo', 'Liverpool', 'Manchester', 'Birmingham', 'B'),
(9, 1, 'Kuka soitti soolokitaraa The Beatlesissa?', 'Paul McCartney', 'John Lennon', 'George Harrison', 'Ringo Starr', 'C'),
(10, 1, 'Mikä oli The Beatlesin ensimmäinen Yhdysvaltain listaykkönen?', 'She Loves You', 'I Want to Hold Your Hand', 'Can\'t Buy Me Love', 'A Hard Day\'s Night', 'B'),
(11, 1, 'Minkä kappaleen sanat sisältävät rivin \'Yesterday, all my troubles seemed so far away\'?', 'Let It Be', 'Yesterday', 'Hey Jude', 'Blackbird', 'B'),
(12, 1, 'Mikä on The Beatlesin pisin kappale?', 'Hey Jude', 'A Day in the Life', 'Revolution 9', 'I Want You (She\'s So Heavy)', 'C'),
(13, 1, 'Mikä Beatlesin jäsenistä julkaisi soolourallaan albumin \'Imagine\'?', 'Paul McCartney', 'John Lennon', 'George Harrison', 'Ringo Starr', 'B'),
(14, 1, 'Mikä seuraavista albumeista julkaistiin ensimmäisenä?', 'Help!', 'Sgt. Pepper\'s Lonely Hearts Club Band', 'Rubber Soul', 'A Hard Day’s Night', 'D'),
(15, 1, 'Mikä The Beatlesin elokuvista julkaistiin ensimmäisenä?', 'A Hard Day’s Night', 'Help!', 'Magical Mystery Tour', 'Yellow Submarine', 'A'),
(16, 1, 'Mikä seuraavista on The Beatlesin kappale?', 'Bohemian Rhapsody', 'Hotel California', 'Eleanor Rigby', 'Sweet Child O\' Mine', 'C'),
(17, 1, 'Minkä niminen oli The Beatlesin levy-yhtiö?', 'Apple Records', 'Sun Records', 'Motown', 'Parlophone', 'A'),
(18, 1, 'Kuka liittyi The Beatlesiin viimeisenä?', 'John Lennon', 'Paul McCartney', 'George Harrison', 'Ringo Starr', 'D'),
(19, 1, 'Mikä oli The Beatlesin viimeinen yhteinen esiintyminen?', 'Shea Stadiumin konsertti', 'Apple Corpsin kattokonsertti', 'BBC:n televisioesiintyminen', 'Woodstock', 'B'),
(20, 1, 'Mikä seuraavista kappaleista on Ringo Starrin laulama?', 'Yellow Submarine', 'Hey Jude', 'Something', 'Twist and Shout', 'A'),
(21, 2, 'Mikä oli ensimmäinen Assassin\'s Creed -peli?', 'Assassin\'s Creed', 'Assassin\'s Creed II', 'Assassin\'s Creed: Brotherhood', 'Assassin\'s Creed: Revelations', 'A'),
(22, 2, 'Kuka on päähenkilö ensimmäisessä Assassin\'s Creed -pelissä?', 'Ezio Auditore', 'Altaïr Ibn-La\'Ahad', 'Connor Kenway', 'Edward Kenway', 'B'),
(23, 2, 'Mikä Assassin\'s Creed -peli sijoittuu antiikin Kreikkaan?', 'Assassin\'s Creed Origins', 'Assassin\'s Creed Odyssey', 'Assassin\'s Creed Valhalla', 'Assassin\'s Creed III', 'B'),
(24, 2, 'Mihin historialliseen tapahtumaan Assassin\'s Creed III keskittyy?', 'Ranskan vallankumous', 'Englannin sisällissota', 'Yhdysvaltain vapaussota', 'Napoleonin sodat', 'C'),
(25, 2, 'Mikä on Ezio Auditore da Firenzen kotikaupunki?', 'Venetsia', 'Rooma', 'Firenze', 'Napoli', 'C'),
(26, 2, 'Mikä seuraavista ei ole Assassin\'s Creed -peli?', 'Assassin\'s Creed Syndicate', 'Assassin\'s Creed Unity', 'Assassin\'s Creed Shadows', 'Assassin\'s Creed Dark Ages', 'D'),
(27, 2, 'Kuka on Assassin\'s Creed IV: Black Flagin päähenkilö?', 'Ezio Auditore', 'Edward Kenway', 'Connor Kenway', 'Shay Cormac', 'B'),
(28, 2, 'Mikä järjestö on Assassiinien päävihollinen pelisarjassa?', 'Vapaamuurarit', 'Temppeliritarit', 'Illuminati', 'Ritarikunta', 'B'),
(29, 2, 'Mikä Assassin\'s Creed -peli toi ensimmäisenä käyttöön laivan ohjaamisen?', 'Assassin\'s Creed II', 'Assassin\'s Creed: Brotherhood', 'Assassin\'s Creed III', 'Assassin\'s Creed IV: Black Flag', 'C'),
(30, 2, 'Mikä on Desmond Milesin isän nimi?', 'Shaun Hastings', 'William Miles', 'Clay Kaczmarek', 'Daniel Cross', 'B'),
(31, 2, 'Mihin maahan Assassin\'s Creed Origins sijoittuu?', 'Kreikka', 'Italia', 'Egypti', 'Persia', 'C'),
(32, 2, 'Kuka seuraavista EI ole ollut Assassin\'s Creed -sarjan päähenkilö?', 'Ezio Auditore', 'Jacob Frye', 'Arno Dorian', 'Dante Alighieri', 'D'),
(33, 2, 'Mikä Assassin\'s Creed -peli esitteli ensimmäisenä pelattavan naishahmon pääpelissä?', 'Assassin\'s Creed Brotherhood', 'Assassin\'s Creed III', 'Assassin\'s Creed Syndicate', 'Assassin\'s Creed Odyssey', 'C'),
(34, 2, 'Mikä pelisarjan osa sijoittuu Ranskan vallankumouksen aikaan?', 'Assassin\'s Creed Unity', 'Assassin\'s Creed Brotherhood', 'Assassin\'s Creed Syndicate', 'Assassin\'s Creed Revelations', 'A'),
(35, 2, 'Mikä oli ensimmäinen Assassin\'s Creed -peli,  jossa oli avoin meritaistelu?', 'Assassin\'s Creed II', 'Assassin\'s Creed: Brotherhood', 'Assassin\'s Creed III', 'Assassin\'s Creed IV: Black Flag', 'C'),
(36, 2, 'Minkä niminen on Assassin\'s Creed Valhallan päähenkilö?', 'Eivor', 'Sigurd', 'Alfred', 'Ragnar', 'A'),
(37, 2, 'Mikä pelisarjan osa sijoittuu viktoriaaniseen Lontooseen?', 'Assassin\'s Creed Unity', 'Assassin\'s Creed Syndicate', 'Assassin\'s Creed Origins', 'Assassin\'s Creed Rogue', 'B'),
(38, 2, 'Kuka on Assassin\'s Creed II -pelissä Ezion opettaja?', 'Leonardo da Vinci', 'Rodrigo Borgia', 'Niccolò Machiavelli', 'Al Mualim', 'A'),
(39, 2, 'Mikä näistä on ensimmäinen Assassin\'s Creed -peli,  jossa pelataan temppeliritarilla?', 'Assassin\'s Creed Rogue', 'Assassin\'s Creed III', 'Assassin\'s Creed Unity', 'Assassin\'s Creed Syndicate', 'A'),
(40, 2, 'Mikä on Animuksen tarkoitus pelisarjassa?', 'Matkustaa ajassa', 'Luo uusia maailmoja', 'Sukeltaa geneettisiin muistoihin', 'Ohjata Assassiineja', 'C');

-- --------------------------------------------------------

--
-- Rakenne taululle `quiz`
--

CREATE TABLE `quiz` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Vedos taulusta `quiz`
--

INSERT INTO `quiz` (`id`, `name`) VALUES
(1, 'The Beatles Trivia'),
(2, 'Assassin\'s Creed Quiz!');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `highscore`
--
ALTER TABLE `highscore`
  ADD PRIMARY KEY (`id`),
  ADD KEY `quiz` (`quiz_id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `quiz_id` (`quiz_id`);

--
-- Indexes for table `quiz`
--
ALTER TABLE `quiz`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `highscore`
--
ALTER TABLE `highscore`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `quiz`
--
ALTER TABLE `quiz`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Rajoitteet vedostauluille
--

--
-- Rajoitteet taululle `highscore`
--
ALTER TABLE `highscore`
  ADD CONSTRAINT `highscore_ibfk_1` FOREIGN KEY (`quiz_id`) REFERENCES `quiz` (`id`);

--
-- Rajoitteet taululle `questions`
--
ALTER TABLE `questions`
  ADD CONSTRAINT `questions_ibfk_1` FOREIGN KEY (`quiz_id`) REFERENCES `quiz` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
