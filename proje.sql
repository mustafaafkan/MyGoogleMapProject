-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Anamakine: localhost
-- Üretim Zamanı: 01 Haz 2012, 16:13:15
-- Sunucu sürümü: 5.5.16
-- PHP Sürümü: 5.3.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Veritabanı: `proje`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kullanici_giris`
--

CREATE TABLE IF NOT EXISTS `kullanici_giris` (
  `tc_kimlik` int(11) NOT NULL,
  `location` int(11) NOT NULL,
  `enlem` int(11) NOT NULL,
  `boylam` int(11) NOT NULL,
  `zoom` int(11) NOT NULL,
  `isaretci` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kullanici_info`
--

CREATE TABLE IF NOT EXISTS `kullanici_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `info_ad` varchar(50) NOT NULL,
  `info_soyad` varchar(50) NOT NULL,
  `info_adres` varchar(255) NOT NULL,
  `info_telefon` varchar(11) NOT NULL,
  `kordinat` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=43 ;

--
-- Tablo döküm verisi `kullanici_info`
--

INSERT INTO `kullanici_info` (`id`, `info_ad`, `info_soyad`, `info_adres`, `info_telefon`, `kordinat`) VALUES
(38, 'mustafa', 'afkan', 'kocatepe cad', '02126405460', '(41.010637, 28.93528500000002)'),
(39, 'sadiye', 'afkan', 'kocatepe mah', '02124783212', '(41.051621, 28.901155000000017)'),
(40, 'ali', 'afkan', 'kocatepe mah', '02126405469', '(40.6, 33.616666699999996)'),
(41, 'emir', 'kokten', 'kadirga', '02127894562', '(40.3166667, 36.549999999999955)'),
(42, 'gel', 'gel', 'gel', 'gel', '(39.9, 41.26999999999998)');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `uyelik`
--

CREATE TABLE IF NOT EXISTS `uyelik` (
  `tc_kimlik` varchar(11) NOT NULL,
  `adi` varchar(255) NOT NULL,
  `soyadi` varchar(255) NOT NULL,
  `tel` int(11) NOT NULL,
  `adres` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `web_adresi` varchar(255) NOT NULL,
  `kullanici_adi` varchar(255) NOT NULL,
  `kullanici_sifre` varchar(255) NOT NULL,
  PRIMARY KEY (`tc_kimlik`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Tablo döküm verisi `uyelik`
--

INSERT INTO `uyelik` (`tc_kimlik`, `adi`, `soyadi`, `tel`, `adres`, `email`, `web_adresi`, `kullanici_adi`, `kullanici_sifre`) VALUES
('2147483647', 'mustafa', 'afkan', 2126405460, 'kocatepe mah', 'mustafaafkan@hotmail.com', 'www.mustafa.com', 'mustafaafkan', '1234567'),
('39808039684', 'esra', 'afkan', 2126405460, 'kocatepe mah', 'mustafaafkan@hotmail.com', 'www.mustafa.com', 'esra', 'esra');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
