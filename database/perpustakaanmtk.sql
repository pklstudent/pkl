-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 09, 2020 at 10:30 PM
-- Server version: 5.7.30-0ubuntu0.16.04.1
-- PHP Version: 7.3.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `perpustakaanmtk`
--

-- --------------------------------------------------------

--
-- Table structure for table `bidang`
--

CREATE TABLE `bidang` (
  `Nama` varchar(25) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bidang`
--

INSERT INTO `bidang` (`Nama`, `id`) VALUES
('Aktuaria', 1),
('Aljabar', 2),
('Analisis', 3),
('Komputasi', 4),
('Statistika', 5),
('Terapan', 6),
('Unknown', 7),
('Matematika Dasar', 8);

-- --------------------------------------------------------

--
-- Table structure for table `buku`
--

CREATE TABLE `buku` (
  `Judul` varchar(255) NOT NULL,
  `id` int(11) NOT NULL,
  `Penerbit` varchar(255) NOT NULL,
  `Tahun` int(11) NOT NULL,
  `Banyak` int(11) NOT NULL,
  `Detail` varchar(255) DEFAULT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `lokasi_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `buku`
--

INSERT INTO `buku` (`Judul`, `id`, `Penerbit`, `Tahun`, `Banyak`, `Detail`, `foto`, `lokasi_id`, `created_at`, `updated_at`) VALUES
('Mathematics Experiments', 1, 'World Scientific', 2003, 1, NULL, NULL, 5, '2019-07-23 16:29:17', '0000-00-00 00:00:00'),
('Dasar Teori Antrian', 2, 'Andi (Andi Offset)', 2004, 1, NULL, NULL, 7, '2019-07-23 16:29:17', '0000-00-00 00:00:00'),
('Himpunan & Logika Samar serta Aplikasinya', 3, 'Graha Ilmu', 2009, 3, NULL, NULL, 6, '2019-07-23 16:29:17', '0000-00-00 00:00:00'),
('Digraphs', 4, 'Springer Science & Business Media', 2008, 1, NULL, NULL, 8, '2019-07-23 16:29:17', '0000-00-00 00:00:00'),
('Low Rank Representation and Graphs for Sporadic Groups', 5, 'Cambridge University Press', 1996, 1, NULL, NULL, 8, '2019-07-23 16:29:17', '0000-00-00 00:00:00'),
('Graph Theory and Applications\r\n', 6, 'ISTE Ltd', 2009, 1, NULL, NULL, 8, '2019-07-23 16:29:17', '0000-00-00 00:00:00'),
('Graphs & Digraphs\r\n', 7, 'CRC Press', 2011, 1, NULL, NULL, 8, '2019-07-23 16:29:17', '0000-00-00 00:00:00'),
('Fuzzy Mathematics\r\n', 8, 'Springer Science & Business Media', 2001, 1, NULL, NULL, 6, '2019-07-23 16:29:17', '0000-00-00 00:00:00'),
('Pengantar Logika\r\n', 9, 'Refika Aditama', 2008, 1, NULL, NULL, 6, '2019-07-23 16:29:17', '0000-00-00 00:00:00'),
('Fuzzy Group Theory\r\n', 10, 'Springer Science & Business Media', 2005, 1, NULL, NULL, 6, '2019-07-23 16:29:17', '0000-00-00 00:00:00'),
('Introduction to Graph Theory\r\n', 11, 'John Wiley & Sons, Inc.', 1986, 1, NULL, NULL, 8, '2019-07-23 16:29:17', '0000-00-00 00:00:00'),
('Fuzzy Sets and Fuzzy Logic\r\n', 12, 'Prentice-Hall, Inc', 1995, 1, NULL, NULL, 6, '2019-07-23 16:29:17', '0000-00-00 00:00:00'),
('A First Course in Logic', 13, 'Oxford University Press', 2004, 1, NULL, NULL, 6, '2019-07-23 16:29:17', '0000-00-00 00:00:00'),
('Graph Spectra for Complex Networks\r\n', 14, 'Cambridge University Press', 2010, 1, NULL, NULL, 8, '2019-07-23 16:29:17', '0000-00-00 00:00:00'),
('Rainbow Connection of Graphs\r\n', 15, 'Springer Japan', 2012, 1, NULL, NULL, 8, '2019-07-23 16:29:17', '0000-00-00 00:00:00'),
('Fuzzy Logic for Bussines Finance and Management', 16, 'World Scientific Publishing Co., Inc.', 2007, 1, NULL, NULL, 6, '2019-07-23 16:29:17', '0000-00-00 00:00:00'),
('Logika dan Teori Himpunan\r\n', 17, ' Universitas Brawijaya Press (UB Press)', 2010, 1, NULL, NULL, 5, '2019-07-23 16:29:17', '0000-00-00 00:00:00'),
('Fuzzy Graphs and Fuzzy Hypergraphs\r\n', 18, 'Physica-Verlag Heidelberg', 2000, 1, NULL, NULL, 5, '2019-07-23 16:29:17', '0000-00-00 00:00:00'),
('Topics in Graph Theory Graphs and Their Cartesian Product', 19, 'CRC Press ', 2008, 1, NULL, NULL, 8, '2019-07-23 16:29:17', '0000-00-00 00:00:00'),
('Logika Dasar Tradisional, Simbolik, dan Induktif\r\n', 20, 'Gramedia Pustaka Utama', 1991, 1, NULL, NULL, 5, '2019-07-23 16:29:17', '0000-00-00 00:00:00'),
('Modern Graph Theory\r\n', 21, 'Springer Science & Business Media', 1998, 2, NULL, NULL, 5, '2019-07-23 16:29:17', '0000-00-00 00:00:00'),
('Graph Theory\r\n', 22, '', 2013, 2, NULL, NULL, 5, '2019-07-23 16:29:17', '0000-00-00 00:00:00'),
('Graph Theory With Applications\r\n', 23, 'Elsevier Ltd', 1976, 1, NULL, NULL, 5, '2019-07-23 16:29:17', '0000-00-00 00:00:00'),
('Belajar Cepat Fuzzy Logic Menggunakan Matlab\r\n', 24, 'ANDI', 2009, 1, NULL, NULL, 6, '2019-07-23 16:29:17', '0000-00-00 00:00:00'),
('Graph Theory and Intraconnection Networks\r\n', 25, 'CRC Press', 2008, 1, NULL, NULL, 5, '2019-07-23 16:29:17', '0000-00-00 00:00:00'),
('Graph Theory Annals of Discrete Mathematics\r\n', 26, '', 0, 1, NULL, NULL, 5, '2019-07-23 16:29:17', '0000-00-00 00:00:00'),
('Graphs and Hypergraphs\r\n', 27, 'Elsevier Ltd', 1985, 1, NULL, NULL, 5, '2019-07-23 16:29:17', '0000-00-00 00:00:00'),
('Pearls in Graph Theory\r\n', 28, 'San Diego Academic Press', 1995, 1, NULL, NULL, 5, '2019-07-23 16:29:17', '0000-00-00 00:00:00'),
('Chromatic Graph Theory\r\n', 29, 'CRC Press', 2008, 1, NULL, NULL, 5, '2019-07-23 16:29:17', '0000-00-00 00:00:00'),
('Graph Theory\r\n\r\n', 30, 'John Wiley & Sons, Inc.', 2001, 1, NULL, NULL, 5, '2019-07-23 16:29:17', '0000-00-00 00:00:00'),
('Matematika Dasar Untuk Perguruan Tinggi\r\n', 31, 'Rekayasa Sains', 2011, 1, NULL, NULL, 1, '2019-07-23 16:29:17', '0000-00-00 00:00:00'),
('Matematika Shalat \"Rahasia Hikmah Dibalik Perintah\"', 32, 'RAHMA MEDIA PUSTAKA', 2009, 1, NULL, NULL, 1, '2019-07-23 16:29:17', '0000-00-00 00:00:00'),
('Pengembangan Silabus Dan Penilaian Mata Pelajaran Matematika', 33, '', 0, 1, NULL, NULL, 1, '2019-07-23 16:29:17', '0000-00-00 00:00:00'),
('Matematika Untuk Perguruan Tinggi\r\n', 34, 'Rekayasa Sains', 2011, 1, NULL, NULL, 1, '2019-07-23 16:29:17', '0000-00-00 00:00:00'),
('Matematika Dasar Untuk Biologiawan\r\n', 35, 'UGM Press', 1993, 1, NULL, NULL, 1, '2019-07-23 16:29:17', '0000-00-00 00:00:00'),
('Cara Mudah Menyelesaikan Matematika Dengan Mathematica', 36, 'Andi', 2008, 7, NULL, NULL, 1, '2019-07-23 16:29:17', '0000-00-00 00:00:00'),
('Dasar-Dasar Penelitian Kualitatif\r\n', 37, 'Pustaka Pelajar', 2003, 1, NULL, NULL, 3, '2019-07-23 16:29:17', '0000-00-00 00:00:00'),
('Ensiklopedia Matematika\r\n', 38, 'Ghalia Indonesia', 2010, 1, NULL, NULL, 4, '2019-07-23 16:29:17', '0000-00-00 00:00:00'),
('Matematika Diskrit 1\r\n', 39, 'Salemba Teknika', 2001, 1, NULL, NULL, 1, '2019-07-23 16:29:17', '0000-00-00 00:00:00'),
('Mathematics: A Practical Odyssey Sixth Edition\r\n', 40, 'Brooks Cole', 2006, 1, NULL, NULL, 1, '2019-07-23 16:29:17', '0000-00-00 00:00:00'),
('Dasar-Dasar Operations Research', 41, 'BPFE', 1993, 1, NULL, NULL, 1, '2019-07-23 16:29:17', '0000-00-00 00:00:00'),
('Riset Operasi', 42, 'Binapura Aksara', 1996, 1, NULL, NULL, 1, '2019-07-23 16:29:17', '0000-00-00 00:00:00'),
('College Algebra', 43, 'McGraw-Hill Companies', 2005, 1, NULL, NULL, 9, '2019-07-23 16:29:17', '0000-00-00 00:00:00'),
('Linear Algebra\r\n', 44, 'McGraw-Hill Companies', 2000, 1, NULL, NULL, 9, '2019-07-23 16:29:17', '0000-00-00 00:00:00'),
('Third Edition Linear Algebra\r\n', 45, 'McGraw-Hill Companies', 2004, 1, NULL, NULL, 9, '2019-07-23 16:29:17', '0000-00-00 00:00:00'),
('Elements of Set Theory\r\n', 46, 'Academic Press', 1977, 1, NULL, NULL, 10, '2019-07-23 16:29:17', '0000-00-00 00:00:00'),
('Aljabar Matplus dan Terapannya\r\n', 47, '', 2011, 2, NULL, NULL, 9, '2019-07-23 16:29:17', '0000-00-00 00:00:00'),
('Groups with Prescribed Quotient Groups and Associated Module Theory', 48, 'World Scientific', 2002, 1, NULL, NULL, 10, '2019-07-23 16:29:17', '0000-00-00 00:00:00'),
('Generalized Inverses of Linear Transformations', 49, 'SIAM', 2009, 1, NULL, NULL, 9, '2019-07-23 16:29:17', '0000-00-00 00:00:00'),
('Abstract Algebra Theory and Application', 50, 'PWS Publishing Company', 1994, 1, NULL, NULL, 9, '2019-07-23 16:29:17', '0000-00-00 00:00:00'),
('Graph Theory\r\n', 51, '', 0, 1, NULL, NULL, 9, '2019-07-23 16:29:17', '0000-00-00 00:00:00'),
('Aljabar Linear Dasar\r\n', 52, 'Erlangga', 2013, 5, NULL, NULL, 9, '2019-07-23 16:29:17', '0000-00-00 00:00:00'),
('Connected Dominating Set : Theory and Application', 53, 'Springer Publishing Company', 2012, 1, NULL, NULL, 9, '2019-07-23 16:29:17', '0000-00-00 00:00:00'),
('Aljabar Matriks', 54, 'Bhratara Karya Aksara', 1980, 1, NULL, NULL, 9, '2019-07-23 16:29:17', '0000-00-00 00:00:00'),
('Intermediate Algebra with Application\r\n', 55, 'Wm. C. Brown Publishers', 1996, 1, NULL, NULL, 9, '2019-07-23 16:29:17', '0000-00-00 00:00:00'),
('Linear Algebra\r\n', 56, 'Virginia Commonwealth University ', 2009, 1, NULL, NULL, 9, '2019-07-23 16:29:17', '0000-00-00 00:00:00'),
('Menguasai Matrik dan Vektor\r\n', 57, 'Rekayasa Sains', 2006, 2, NULL, NULL, 9, '2019-07-23 16:29:17', '0000-00-00 00:00:00'),
('Representation of Real P-Adic Groups \r\n', 58, 'World Scientific', 2004, 1, NULL, NULL, 9, '2019-07-23 16:29:17', '0000-00-00 00:00:00'),
('A Course on Borel Sets\r\n', 59, 'Springer-Verlag', 1998, 1, NULL, NULL, 9, '2019-07-23 16:29:17', '0000-00-00 00:00:00'),
('Lectures on Lie Groups\r\n', 60, 'World Scientific', 2000, 1, NULL, NULL, NULL, '2019-07-23 16:29:17', '0000-00-00 00:00:00'),
('Matriks & Transformasi Linear\r\n', 61, 'Garaha Ilmu', 2005, 2, NULL, NULL, 9, '2019-07-23 16:29:17', '0000-00-00 00:00:00'),
('Pengantar Aljabar Linear', 62, 'FMIPA UGM', 1998, 2, NULL, NULL, 9, '2019-07-23 16:29:17', '0000-00-00 00:00:00'),
('Dasar-dasar Aljabar Linear\r\n', 63, 'Bina Rupa Aksara', 0, 2, NULL, NULL, 9, '2019-07-23 16:29:17', '0000-00-00 00:00:00'),
('Linear Algebra and Its Application\r\n', 64, 'Thomson, Brooks/Cole', 2006, 1, NULL, NULL, 9, '2019-07-23 16:29:17', '0000-00-00 00:00:00'),
('Elementary Linear Algebra', 65, 'John Wiley & Sons', 2010, 1, NULL, NULL, 9, '2019-07-23 16:29:17', '0000-00-00 00:00:00'),
('Matriks Persamaan Linear dan Pemrograman Linear\r\n', 66, 'Rekayasa Sains', 2009, 1, NULL, NULL, 9, '2019-07-23 16:29:17', '0000-00-00 00:00:00'),
('Aljabar Linear\r\n', 67, 'Rekayasa Sains', 2010, 4, NULL, NULL, 9, '2019-07-23 16:29:17', '0000-00-00 00:00:00'),
('Pengantar Matrix\r\n', 68, 'Rineka Cipta', 1998, 1, NULL, NULL, 11, '2019-07-23 16:29:17', '0000-00-00 00:00:00'),
('Matrices Over Commutative Rings\r\n', 69, 'CRC Press', 1992, 1, NULL, NULL, 12, '2019-07-23 16:29:17', '0000-00-00 00:00:00'),
('Representations of Finite and Lie Groups\r\n', 70, 'Imperial College Press', 2004, 1, NULL, NULL, 10, '2019-07-23 16:29:17', '0000-00-00 00:00:00'),
('Pengantar Aljabar\r\n', 71, 'Prestasi Pustakaraya', 2011, 2, NULL, NULL, 9, '2019-07-23 16:29:17', '0000-00-00 00:00:00'),
('Aljabar Linear\r\n', 72, 'Erlangga', 2006, 1, NULL, NULL, 9, '2019-07-23 16:29:17', '0000-00-00 00:00:00'),
('Special Set Linear Algebra and Special Set Fuzzy Linear Algebra', 73, 'Infinite Study', 2008, 1, NULL, NULL, 9, '2019-07-23 16:29:17', '0000-00-00 00:00:00'),
('Decision Making in the Manufacturing Environment\r\n', 74, 'Springer-Verlag', 2007, 1, NULL, NULL, 9, '2019-07-23 16:29:17', '0000-00-00 00:00:00'),
('Advanced Control of Wheeled inverted Pendulum System', 75, 'Springer-Verlag', 2013, 1, NULL, NULL, 9, '2019-07-23 16:29:17', '0000-00-00 00:00:00'),
('Advances in Fuzzy Clustering and its Applications', 76, 'John Wiley & Sons, Inc.', 2007, 1, NULL, NULL, 9, '2019-07-23 16:29:17', '0000-00-00 00:00:00'),
('Fuzzy Sets and Sytems : Theory and Applications\r\n', 77, 'Academic Press, Inc.', 1997, 1, NULL, NULL, 9, '2019-07-23 16:29:17', '0000-00-00 00:00:00'),
('Modern Algebra An Introduction\r\n', 78, 'John Wiley & Sons, Inc.', 2004, 1, NULL, NULL, 9, '2019-07-23 16:29:17', '0000-00-00 00:00:00'),
('Banach Lattices\r\n', 79, 'Springer-Verlag', 1991, 1, NULL, NULL, 9, '2019-07-23 16:29:17', '0000-00-00 00:00:00'),
('A Glimpse at Hilbert Space Operators\r\n', 80, 'Birkhäuser Basel', 2010, 1, NULL, NULL, 9, '2019-07-23 16:29:17', '0000-00-00 00:00:00'),
('Elementary Linear Algebra with Applications\r\n', 81, 'John Wiley & Sons', 2005, 2, NULL, NULL, 9, '2019-07-23 16:29:17', '0000-00-00 00:00:00'),
('An Introduction to Abstract Algebra\r\n', 82, 'Walter de Gruyter', 2003, 1, NULL, NULL, 9, '2019-07-23 16:29:17', '0000-00-00 00:00:00'),
('Elementary Differential Geometry\r\n', 83, 'Cambridge University Press', 2010, 1, NULL, NULL, 9, '2019-07-23 16:29:17', '0000-00-00 00:00:00'),
('Algebraic Topology\r\n', 84, 'Cambridge University Press', 2002, 1, NULL, NULL, 9, '2019-07-23 16:29:17', '0000-00-00 00:00:00'),
('Pengantar Aljabar Abstrak\r\n', 85, 'Universitas Negeri Yogyakarta', 2000, 1, NULL, NULL, 9, '2019-07-23 16:29:17', '0000-00-00 00:00:00'),
('Linear Algebra\r\n', 86, 'Springer Science & Business Media', 1987, 1, NULL, NULL, 9, '2019-07-23 16:29:17', '0000-00-00 00:00:00'),
('Finite Group Theory\r\n', 87, 'Cambridge University Press', 2000, 1, NULL, NULL, 9, '2019-07-23 16:29:17', '0000-00-00 00:00:00'),
('Aljabar\r\n', 88, 'Penerbit ITB', 2000, 1, NULL, NULL, 9, '2019-07-23 16:29:17', '0000-00-00 00:00:00'),
('Einführung in die Fuzzy-Logik', 89, '', 0, 1, NULL, NULL, 9, '2019-07-23 16:29:17', '0000-00-00 00:00:00'),
('An Introduction to Abstract Algebra\r\n', 90, 'Cambridge University Press', 2009, 1, NULL, NULL, 9, '2019-07-23 16:29:17', '0000-00-00 00:00:00'),
('Aljabar Linear', 91, 'PT. Ercontara Rajawali', 2005, 2, NULL, NULL, 9, '2019-07-23 16:29:17', '0000-00-00 00:00:00'),
('Geometri', 92, '', 0, 1, NULL, NULL, 9, '2019-07-23 16:29:17', '0000-00-00 00:00:00'),
('Modern Algebra\r\n', 93, '', 0, 1, NULL, NULL, 9, '2019-07-23 16:29:17', '0000-00-00 00:00:00'),
('Aljabar Linear and Matriks\r\n', 94, '', 0, 2, NULL, NULL, 9, '2019-07-23 16:29:17', '0000-00-00 00:00:00'),
('Aljabar Linear Elementer Versi Aplikasi', 95, 'Erlangga', 2004, 1, NULL, NULL, 9, '2019-07-23 16:29:17', '0000-00-00 00:00:00'),
('Aljabar Linear Elementer\r\n', 96, 'Erlangga', 1995, 3, NULL, NULL, 9, '2019-07-23 16:29:17', '0000-00-00 00:00:00'),
('Pell\'s Equation\r\n', 97, 'Springer Science&Business Media', 2003, 1, NULL, NULL, 9, '2019-07-23 16:29:17', '0000-00-00 00:00:00'),
('A Course in Abstract Algebra\r\n', 98, '', 2017, 1, NULL, NULL, 9, '2019-07-23 16:29:17', '0000-00-00 00:00:00'),
('Graph Theory and Combinatorial Optimization\r\n', 99, 'Springer-Verlag', 2005, 1, NULL, NULL, 9, '2019-07-23 16:29:17', '0000-00-00 00:00:00'),
('Dasar-dasar Teori Bilangan', 100, 'Universitas Terbuka', 1997, 1, NULL, NULL, 9, '2019-07-23 16:29:17', '0000-00-00 00:00:00'),
('Complex Numbers from A to Z', 101, 'Birkhäuser Basel', 2006, 1, NULL, NULL, 9, '2019-07-23 16:29:17', '0000-00-00 00:00:00'),
('Matematika Dasar', 102, 'Rekayasa Sains', 2009, 2, NULL, NULL, 9, '2019-07-23 16:29:17', '0000-00-00 00:00:00'),
('Elementary Statistics A Step By Step Approach\r\n', 103, 'Mcgraw-hill Education', 1992, 1, NULL, NULL, 16, '2019-07-23 16:29:17', '0000-00-00 00:00:00'),
('Fundamentals of Probability and Statistics For Engineers\r\n', 104, 'CRC Press', 2004, 1, NULL, NULL, 16, '2019-07-23 16:29:17', '0000-00-00 00:00:00'),
('Statistika Penelitian Sebab Akibat\r\n', 105, 'Pustaka Bani Quraisy', 2004, 1, NULL, NULL, 16, '2019-07-23 16:29:17', '0000-00-00 00:00:00'),
('Robust Regression and Outlier Detection\r\n', 106, 'Wiley-Interscience', 2003, 2, NULL, NULL, 16, '2019-07-23 16:29:17', '0000-00-00 00:00:00'),
('Prosedur Statistik untuk Penelitian Pertanian\r\n', 107, 'UI Press', 2007, 1, NULL, NULL, 16, '2019-07-23 16:29:17', '0000-00-00 00:00:00'),
('Learning Statistics with Real Data\r\n', 108, 'Cengage Learning', 2001, 1, NULL, NULL, 16, '2019-07-23 16:29:17', '0000-00-00 00:00:00'),
('Hand-book on Statistical Distributions for Experimentalist\r\n', 109, 'Particle Physics Group Fysikum University of Stockholm', 1996, 1, NULL, NULL, 16, '2019-07-23 16:29:17', '0000-00-00 00:00:00'),
('Pengantar Matematika untuk Ekonomi\r\n', 110, 'PT. Pustaka LP3ES Indonesia', 1974, 1, NULL, NULL, 16, '2019-07-23 16:29:17', '0000-00-00 00:00:00'),
('Analisis Multivariat\r\n', 111, 'Penerbit UAJY', 2009, 1, NULL, NULL, 16, '2019-07-23 16:29:17', '0000-00-00 00:00:00'),
('Uji Khi Kuadrat & Regresi untuk Penelitian\r\n', 112, 'Graha Ilmu', 2009, 1, NULL, NULL, 16, '2019-07-23 16:29:17', '0000-00-00 00:00:00'),
('Modern Industrial Statistics\r\n', 113, 'John Wiley & Sons Inc', 2014, 1, NULL, NULL, 16, '2019-07-23 16:29:17', '0000-00-00 00:00:00'),
('Teori Statistika Matematik dan Penyelesaiannya\r\n', 114, 'Yrama Widya', 2010, 3, NULL, NULL, 16, '2019-07-23 16:29:17', '0000-00-00 00:00:00'),
('Teknik-teknik Optimasi Heuristik\r\n', 115, 'Graha Ilmu', 2010, 1, NULL, NULL, 16, '2019-07-23 16:29:17', '0000-00-00 00:00:00'),
('Statistika Untuk Pengambilan Keputusan\r\n', 116, 'Ghalia Indonesia', 2001, 1, NULL, NULL, 16, '2019-07-23 16:29:17', '0000-00-00 00:00:00'),
('A First Course in The Theory of Linear Statistical  Models \r\n', 117, 'Boston PWS-KENT Pub. Co', 1991, 1, NULL, NULL, 16, '2019-07-23 16:29:17', '0000-00-00 00:00:00'),
('Pengantar Metode Statistik Jilid I\r\n', 118, 'PT. Pustaka LP3ES Indonesia', 1986, 3, NULL, NULL, 16, '2019-07-23 16:29:17', '0000-00-00 00:00:00'),
('Pengantar Statistika  Edisi Ketiga\r\n', 119, 'Gramedia', 1995, 3, NULL, NULL, 16, '2019-07-23 16:29:17', '0000-00-00 00:00:00'),
('Pengantar Metode Statistik Jilid II\r\n', 120, 'PT. Pustaka LP3ES Indonesia', 1984, 1, NULL, NULL, 16, '2019-07-23 16:29:17', '0000-00-00 00:00:00'),
('Optimization and Optimal Control\r\n', 121, 'Springer', 2010, 1, NULL, NULL, 16, '2019-07-23 16:29:17', '0000-00-00 00:00:00'),
('Metode Statistik dan Ekonometri\r\n', 122, 'Liberty Yogyakarta', 1995, 1, NULL, NULL, 16, '2019-07-23 16:29:17', '0000-00-00 00:00:00'),
('Statistika Dasar\r\n', 123, 'Universitas Terbuka', 2006, 1, NULL, NULL, 16, '2019-07-23 16:29:17', '0000-00-00 00:00:00'),
('Statistik Matematik \r\n', 124, '', 0, 1, NULL, NULL, 16, '2019-07-23 16:29:17', '0000-00-00 00:00:00'),
('Statistika untuk Penelitian\r\n', 125, 'Alfabeta', 2009, 12, NULL, NULL, 16, '2019-07-23 16:29:17', '0000-00-00 00:00:00'),
('Introduction to Statistical Quality Control\r\n', 126, 'John Wiley & Sons Inc', 1991, 1, NULL, NULL, 16, '2019-07-23 16:29:17', '0000-00-00 00:00:00'),
('Groups As Graphs\r\n', 127, 'CuArt', 2009, 1, NULL, NULL, 16, '2019-07-23 16:29:17', '0000-00-00 00:00:00'),
('Fundamental Statistics for the Behavioral Sciences\r\n', 128, 'Thomson Wadsworth', 2008, 1, NULL, NULL, 16, '2019-07-23 16:29:17', '0000-00-00 00:00:00'),
('Probability Models for Economic Decisions\r\n', 129, 'Cengage Learning', 2004, 1, NULL, NULL, 16, '2019-07-23 16:29:17', '0000-00-00 00:00:00'),
('Elements of Applied Probability \r\n', 130, 'World Scientific ', 2004, 1, NULL, NULL, 16, '2019-07-23 16:29:17', '0000-00-00 00:00:00'),
('Introduction to Mathematical Statistics \r\n', 131, 'Prentice Hall', 1995, 1, NULL, NULL, 16, '2019-07-23 16:29:17', '0000-00-00 00:00:00'),
('Applied Statistics and Probability for Engineers', 132, 'John Wiley & Sons', 2007, 1, NULL, NULL, 16, '2019-07-23 16:29:17', '0000-00-00 00:00:00'),
('Using Gretl for Principles of Econometrics', 133, 'Oklahoma State University', 2014, 1, NULL, NULL, 16, '2019-07-23 16:29:17', '0000-00-00 00:00:00'),
('The Science and Engineering of Materials', 134, 'Thomson Wadsworth', 2006, 1, NULL, NULL, 16, '2019-07-23 16:29:17', '0000-00-00 00:00:00'),
('Topics in The Theory of Chrodinger Operators', 135, 'World Scientific ', 2004, 1, NULL, NULL, 16, '2019-07-23 16:29:17', '0000-00-00 00:00:00'),
('A Handbook of Statistical Analyses Using R', 136, 'CRC Press', 2006, 2, NULL, NULL, 16, '2019-07-23 16:29:17', '0000-00-00 00:00:00'),
('Statistik Non Parametrik', 137, 'Elex Media Komputindo', 2010, 1, NULL, NULL, 16, '2019-07-23 16:29:17', '0000-00-00 00:00:00'),
('Robust Statistics Theory and Methods', 138, 'John Wiley & Sons', 2006, 1, NULL, NULL, 16, '2019-07-23 16:29:17', '0000-00-00 00:00:00'),
('Econometrics By Example', 139, 'Palgr Mac', 2016, 1, NULL, NULL, 16, '2019-07-23 16:29:17', '0000-00-00 00:00:00'),
('Using Econometrics A Practical Guide', 140, 'Pearson Higher Education', 2001, 1, NULL, NULL, 16, '2019-07-23 16:29:17', '0000-00-00 00:00:00'),
('Applied Regression Analysis Third Edition', 141, 'John Wiley & Sons', 1998, 1, NULL, NULL, 16, '2019-07-23 16:29:17', '0000-00-00 00:00:00'),
('Ekonometrika Teori & Praktik Eksperimen dengan MATLAB', 142, 'UIN Press', 2010, 1, NULL, NULL, 16, '2019-07-23 16:29:17', '0000-00-00 00:00:00'),
('Elements of Stochastic Modelling', 143, 'World scientific', 2014, 1, NULL, NULL, 16, '2019-07-23 16:29:17', '0000-00-00 00:00:00'),
('Elementary Survey Sampling Fourth Edition', 144, 'Duxbury', 1990, 1, NULL, NULL, 16, '2019-07-23 16:29:17', '0000-00-00 00:00:00'),
('Actuarial Mathematics For Life Contingent Risks', 145, 'Cambridge University Press', 2013, 2, NULL, NULL, 16, '2019-07-23 16:29:17', '0000-00-00 00:00:00'),
('Modern Mathematical Statistics with Applications', 146, 'Springer', 2012, 1, NULL, NULL, 16, '2019-07-23 16:29:17', '0000-00-00 00:00:00'),
('Introduction to Mathematical Statistics Seventh Edition', 147, 'Pearson Higher Education', 2013, 1, NULL, NULL, 16, '2019-07-23 16:29:17', '0000-00-00 00:00:00'),
('Financial Econometrics second edition', 148, 'Routledge', 2009, 1, NULL, NULL, 16, '2019-07-23 16:29:17', '0000-00-00 00:00:00'),
('Theory of Multivariate Statistics', 149, 'Springer-Verlag ', 2013, 1, NULL, NULL, 16, '2019-07-23 16:29:17', '0000-00-00 00:00:00'),
('Matematika Diskrit', 150, 'Graha Ilmu', 2009, 1, NULL, NULL, 1, '2019-07-23 16:29:17', '0000-00-00 00:00:00'),
('Pengantar Ekonometri', 151, 'Andi', 2009, 1, NULL, NULL, 16, '2019-07-23 16:29:17', '0000-00-00 00:00:00'),
('Statistical Methods for Fuzzy Data', 152, 'John Wiley & Sons', 2013, 1, NULL, NULL, 16, '2019-07-23 16:29:17', '0000-00-00 00:00:00'),
('Market Risk Analysis Volumne II Practical Financial Econometrics', 153, 'John Wiley & Sons', 2008, 1, NULL, NULL, 16, '2019-07-23 16:29:17', '0000-00-00 00:00:00'),
('Fundamentals Method of Mathematical Economics', 154, 'McGraw Hill Education ', 2013, 1, NULL, NULL, 16, '2019-07-23 16:29:17', '0000-00-00 00:00:00'),
('Semiparametric Regression', 155, 'Cambridge University Press', 2010, 1, NULL, NULL, 16, '2019-07-23 16:29:17', '0000-00-00 00:00:00'),
('Tools for Computational Finance Third Edition', 156, 'Springer', 2006, 1, NULL, NULL, 16, '2019-07-23 16:29:17', '0000-00-00 00:00:00'),
('Matematika: Hakikat Dan Logika', 157, 'Ar - Ruzz Media', 2009, 1, NULL, NULL, 1, '2019-07-23 16:29:17', '0000-00-00 00:00:00'),
('Matematika Diskrit Revisi Kelima', 158, 'Bandung Informatika', 2012, 3, NULL, NULL, 1, '2019-07-23 16:29:17', '0000-00-00 00:00:00'),
('Applied Regression Analysis: A Research Tool, Second Edition', 159, 'Springer-Verlag', 1998, 1, NULL, NULL, 16, '2019-07-23 16:29:17', '0000-00-00 00:00:00'),
('Models for Quantifying Risk Second Edition', 160, 'ACTEX Publications', 2006, 1, NULL, NULL, 16, '2019-07-23 16:29:17', '0000-00-00 00:00:00'),
('Mathematical Statistics: A Unified Introduction', 161, 'Springer', 2011, 1, NULL, NULL, 16, '2019-07-23 16:29:17', '0000-00-00 00:00:00'),
('Quantitative Risk Management Concepts, Techniques and Tools', 162, 'Princeton University Press', 2015, 1, NULL, NULL, 16, '2019-07-23 16:29:17', '0000-00-00 00:00:00'),
('Fuzzy Logic and Probability Applications Bridging the Gap', 163, 'World Scientific ', 2018, 1, NULL, NULL, 16, '2019-07-23 16:29:17', '0000-00-00 00:00:00'),
('Mathematical Statistics with Resampling and R', 164, 'John Wiley & Sons', 2009, 1, NULL, NULL, 16, '2019-07-23 16:29:17', '0000-00-00 00:00:00'),
('Pengantar Statistika', 165, 'Gramedia Pustaka Utama', 1982, 1, NULL, NULL, 16, '2019-07-23 16:29:17', '0000-00-00 00:00:00'),
('Penuntun Pelajar Matematika Berdasarkan Kurikulum 1984', 166, 'GANECA EXACT', 1986, 1, NULL, NULL, 1, '2019-07-23 16:29:17', '0000-00-00 00:00:00'),
('An introduction to market risk measurement', 167, 'John Wiley & Sons', 2002, 1, NULL, NULL, 16, '2019-07-23 16:29:17', '0000-00-00 00:00:00'),
('Risk budgeting Portfolio Problem Solving with Value-at-Risk', 168, 'John Wiley & Sons', 2002, 1, NULL, NULL, 16, '2019-07-23 16:29:17', '0000-00-00 00:00:00'),
('Actuarial Models The Mathematics of Insurance Second Edition', 169, 'Taylor & Francis Inc', 2014, 1, NULL, NULL, 16, '2019-07-23 16:29:17', '0000-00-00 00:00:00'),
('Statistics For The Behavioraal and Social Sciences', 170, 'Pearson Higher Education', 2010, 1, NULL, NULL, 16, '2019-07-23 16:29:17', '0000-00-00 00:00:00'),
('Advanced Robust ans Nonparametric Methods in Efficiency Analysis', 171, 'Springer', 2007, 1, NULL, NULL, 14, '2019-07-23 16:29:17', '0000-00-00 00:00:00'),
('Numerical Solution of Partial Differential Equations', 172, 'Cambridge University Press', 2005, 2, NULL, NULL, 15, '2019-07-23 16:29:17', '0000-00-00 00:00:00'),
('Numerical Solution of Partial Differential Equations on Parallel Computers', 173, 'Springer', 2006, 1, NULL, NULL, 15, '2019-07-23 16:29:17', '0000-00-00 00:00:00'),
('Numerical Methods for General and Structured Eigenvalue Problems', 174, 'Springer', 2005, 1, NULL, NULL, 15, '2019-07-23 16:29:17', '0000-00-00 00:00:00'),
('Analysis of Numerical Differential Equations and Finite Element Mothod', 175, 'World Technologies', 2014, 1, NULL, NULL, 15, '2019-07-23 16:29:17', '0000-00-00 00:00:00'),
('Numerical Analysis', 176, 'Brooks Publishing Company', 1997, 1, NULL, NULL, 15, '2019-07-23 16:29:17', '0000-00-00 00:00:00'),
('Waves In Oceanic and Coastal Waters', 177, 'Cambridge University Press', 2007, 1, NULL, NULL, 15, '2019-07-23 16:29:17', '0000-00-00 00:00:00'),
('Beyond Perturbation Introduction to the Homotopy Analysis Method', 178, 'CRC Press', 2007, 1, NULL, NULL, 15, '2019-07-23 16:29:17', '0000-00-00 00:00:00'),
('Multiquadric Radical Basis Function Approximation Methods for the Numerical Solution of Partical Differential Equations', 179, 'Marshall University', 2009, 1, NULL, NULL, 15, '2019-07-23 16:29:17', '0000-00-00 00:00:00'),
('Numerical Analysis', 180, 'Pearson Higher Education', 2014, 1, NULL, NULL, 15, '2019-07-23 16:29:17', '0000-00-00 00:00:00'),
('Struktur Matematika Al-Qur\'an', 181, 'Surakarta Rahma Media Pustaka', 2009, 1, NULL, NULL, 1, '2019-07-23 16:29:17', '0000-00-00 00:00:00'),
('Theory and Problems of General Topology', 182, 'McGraw-Hill International', 1965, 1, NULL, NULL, 1, '2019-07-23 16:29:17', '0000-00-00 00:00:00'),
('Pendidikan Matematika I', 183, 'Departemen Agama R.I', 2001, 1, NULL, NULL, 1, '2019-07-23 16:29:17', '0000-00-00 00:00:00'),
('Memoirs of a Proof Theorist', 184, 'World Scientific ', 2003, 1, NULL, NULL, 2, '2019-07-23 16:29:17', '0000-00-00 00:00:00'),
('Filsafat Dunia Matematika', 185, 'Prestasi Pustaka', 2007, 1, NULL, NULL, 2, '2019-07-23 16:29:17', '0000-00-00 00:00:00'),
('A History of Abstract Algebra', 186, 'Birkhauser', 2007, 1, NULL, NULL, 2, '2019-07-23 16:29:17', '0000-00-00 00:00:00'),
('Tes IQ Matematika', 187, 'Tugu Publisher', 2007, 1, NULL, NULL, 1, '2019-07-23 16:29:17', '0000-00-00 00:00:00'),
('Translations of Mathematical Monographs', 188, 'American Mathematical Society', 1994, 1, NULL, NULL, 1, '2019-07-23 16:29:17', '0000-00-00 00:00:00'),
('Green Technology for Better Fututre', 189, 'UIN Press', 2010, 1, NULL, NULL, 1, '2019-07-23 16:29:17', '0000-00-00 00:00:00'),
('finite Mathematics', 190, 'Cengage Learning', 2018, 1, NULL, NULL, 1, '2019-07-23 16:29:17', '0000-00-00 00:00:00'),
('Discrete Mathematics', 191, 'McGraw - Hill', 2003, 2, NULL, NULL, 1, '2019-07-23 16:29:17', '0000-00-00 00:00:00'),
('Matematika', 192, 'Jakarta Depdiknas', 2004, 1, NULL, NULL, 1, '2019-07-23 16:29:17', '0000-00-00 00:00:00'),
('Mathematics Assessment', 193, '', 0, 2, NULL, NULL, 1, '2019-07-23 16:29:17', '0000-00-00 00:00:00'),
('Buku Pintar Matematika', 194, 'Prestasi Pustaka ', 2006, 1, NULL, NULL, 1, '2019-07-23 16:29:17', '0000-00-00 00:00:00'),
('An Introduction to Mathematical Cryptography', 195, 'Springer-Verlag', 2016, 1, NULL, NULL, 1, '2019-07-23 16:29:17', '0000-00-00 00:00:00'),
('Keterampilan Dasar Mengajar', 196, '', 0, 1, NULL, NULL, 1, '2019-07-23 16:29:17', '0000-00-00 00:00:00'),
('Matematika 1', 197, 'UIN Press', 2009, 1, NULL, NULL, 1, '2019-07-23 16:29:17', '0000-00-00 00:00:00'),
('Theory and Problems of Discrete Mathematics', 198, 'McGraw - Hill', 1976, 1, NULL, NULL, 1, '2019-07-23 16:29:17', '0000-00-00 00:00:00'),
('Pearls of Discrete Mathematics', 199, 'Taylor & Francis', 2010, 1, NULL, NULL, 1, '2019-07-23 16:29:17', '0000-00-00 00:00:00'),
('Matematika Diskrit ', 200, 'Institut Pertanian Bogor', 2004, 1, NULL, NULL, 1, '2019-07-23 16:29:17', '0000-00-00 00:00:00'),
('Cluster Analysis', 201, 'Wiley-Interscience', 2011, 1, NULL, NULL, 1, '2019-07-23 16:29:17', '0000-00-00 00:00:00'),
('Matematika Diskrit ', 202, 'Informatika', 2010, 1, NULL, NULL, 1, '2019-07-23 16:29:17', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `didanai`
--

CREATE TABLE `didanai` (
  `IDDana` int(11) NOT NULL,
  `IDKategori` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `didanai`
--

INSERT INTO `didanai` (`IDDana`, `IDKategori`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(1, 6),
(1, 7),
(1, 8),
(1, 9),
(1, 10),
(1, 11),
(1, 12),
(1, 13),
(1, 14),
(1, 15),
(1, 16),
(1, 17),
(1, 18),
(5, 19),
(1, 20),
(1, 21);

-- --------------------------------------------------------

--
-- Table structure for table `dosen`
--

CREATE TABLE `dosen` (
  `id` int(11) NOT NULL,
  `NIP` varchar(25) DEFAULT NULL,
  `NIDN` varchar(25) DEFAULT NULL,
  `Nama` varchar(50) NOT NULL,
  `Golongan` varchar(25) DEFAULT NULL,
  `Jabatan` varchar(11) DEFAULT NULL,
  `Jurusan` varchar(25) NOT NULL,
  `Fakultas` varchar(50) NOT NULL,
  `TglLahir` date DEFAULT NULL,
  `Status` varchar(7) DEFAULT NULL,
  `Gender` varchar(11) NOT NULL,
  `Alamat` varchar(255) DEFAULT NULL,
  `Bidang` varchar(100) DEFAULT NULL,
  `profil` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dosen`
--

INSERT INTO `dosen` (`id`, `NIP`, `NIDN`, `Nama`, `Golongan`, `Jabatan`, `Jurusan`, `Fakultas`, `TglLahir`, `Status`, `Gender`, `Alamat`, `Bidang`, `profil`, `created_at`, `updated_at`) VALUES
(1, '19571005 198203 1 006', NULL, 'Turmudi', NULL, NULL, 'Matematika', 'Sains dan Teknologi', '1957-10-05', 'PNS', 'Laki-laki', 'Jl. Sunan Drajat II/4 Malang', 'Keahlian Aljabar', '', '2019-07-10 07:51:40', '2019-07-22 12:54:19'),
(2, '19630502 198703 1 005', NULL, 'Imam Sujarwo', NULL, NULL, 'Matematika', 'Sains dan Teknologi', '1963-05-02', 'PNS', 'Laki-laki', 'Jalan Kaca Piring A7 Dau – Sengkaling', 'Keahlian Aljabar', NULL, '2019-07-10 07:51:40', '0000-00-00 00:00:00'),
(3, '19650414 200312 1 001', NULL, 'Usman Pagalay', NULL, NULL, 'Matematika', 'Sains dan Teknologi', '1965-04-14', 'PNS', 'Laki-laki', 'Villa Bukit Tidar A4 No. 96 Merjosari-Lowokwaru-Malang', 'Keahlian Analisis Terapan', NULL, '2019-07-10 07:51:40', '0000-00-00 00:00:00'),
(4, '19710420 200003 1 003', NULL, 'Wahyu H. Irawan', NULL, NULL, 'Matematika', 'Sains dan Teknologi', '1971-04-20', 'PNS', 'Laki-laki', 'Jl. Danau Surubec F4/E8 Sawojajar Malang', 'Keahlian Aljabar', NULL, '2019-07-10 07:51:40', '0000-00-00 00:00:00'),
(5, '19720604 199903 2 001', NULL, 'Evawati Alisah', NULL, NULL, 'Matematika', 'Sains dan Teknologi', '1972-06-04', 'PNS', 'Perempuan', 'Jl. Masjid 80 RT/RW. 003/003 Tumpukrenteng-Turen-Malang', 'Keahlian Analisis', NULL, '2019-07-10 07:51:40', '0000-00-00 00:00:00'),
(6, '19730705 200003 1 001', NULL, 'Ach. Nashichuddin', NULL, NULL, 'Matematika', 'Sains dan Teknologi', '1973-07-05', 'PNS', 'Laki-laki', 'Jl. Mertojoyo Selatan I/12 Merjosari, Lowokwaru, Malang', 'Keahlian Agama dan Integrasi', NULL, '2019-07-10 07:51:40', '0000-00-00 00:00:00'),
(7, '19731014 200112 2 002', NULL, 'Sri Harini', NULL, NULL, 'Matematika', 'Sains dan Teknologi', '1973-10-14', 'PNS', 'Perempuan', 'Perum Griya Shanta E-312 Malang', 'Keahlian Statistika', NULL, '2019-07-10 07:51:40', '0000-00-00 00:00:00'),
(8, '19741129 200012 2 005', NULL, 'Elly Susanti', NULL, NULL, 'Matematika', 'Sains dan Teknologi', '1974-11-29', 'PNS', 'Perempuan', '', 'Keahlian Analisis', NULL, '2019-07-10 07:51:40', '0000-00-00 00:00:00'),
(9, '19751006 200312 1 001', NULL, 'Abdussakir', NULL, NULL, 'Matematika', 'Sains dan Teknologi', '1975-10-06', 'PNS', 'Laki-laki', 'Perum OMA View Blok EF 01 Malang', 'Keahlian Analisis', NULL, '2019-07-10 07:51:40', '0000-00-00 00:00:00'),
(10, '19760318 200604 1 002', NULL, 'Abdul Aziz', NULL, NULL, 'Matematika', 'Sains dan Teknologi', '1976-03-18', 'PNS', 'Laki-laki', 'Jl. Pahlawan 291 Malang', 'Keahlian Aktuaria', NULL, '2019-07-10 07:51:40', '0000-00-00 00:00:00'),
(11, '19770521 200501 2 004', NULL, 'Ari Kusumastuti', NULL, NULL, 'Matematika', 'Sains dan Teknlogi', '1977-05-21', 'PNS', 'Perempuan', 'Jl. Sumpil II Gg. Pondok No. A-4 Blimbing Malang', 'Keahlian Analisis Terapan', NULL, '2019-07-10 07:51:40', '0000-00-00 00:00:00'),
(12, '19800429 200604 1 003', NULL, 'Hairur Rahman', NULL, NULL, 'Matematika', 'Sains dan Teknologi', '1980-04-29', 'PNS', 'Laki-laki', 'Jl. Tirto Mulyo Gg. 5B/17, Landung Sari – Malang', 'Keahlian Analisis', NULL, '2019-07-10 07:51:40', '0000-00-00 00:00:00'),
(13, '19800527 200801 1 012', NULL, 'Fachrur Rozi', NULL, NULL, 'Matematika', 'Sains dan Teknologi', '1980-05-27', 'PNS', 'Laki-laki', 'Perum Puri Firdaus Regency H-20, Pendem – Batu', 'Keahlian Statistik Multiv', NULL, '2019-07-10 07:51:40', '0000-00-00 00:00:00'),
(14, '19810502 200501 1 004', NULL, 'Mohammad Jamhuri', NULL, NULL, 'Matematika', 'Sains dan Teknologi', '1981-05-02', 'PNS', 'Laki-laki', 'Dsn. Genitri RT/RW. 001/001, Pakis – Malang', 'Keahlian Matematika Kompu', NULL, '2019-07-10 07:51:40', '0000-00-00 00:00:00'),
(15, NULL, NULL, 'Dewi Ismiarti', NULL, NULL, 'Matematika', 'Sains dan Teknologi', '1987-05-05', 'BLU', 'Perempuan', 'Jl. MT Haryono XIII/432 Malang', 'Keahlian Aljabar', NULL, '2019-07-10 07:51:40', '0000-00-00 00:00:00'),
(16, NULL, NULL, 'Mohammad Nafie Jauhari', NULL, NULL, 'Matematika', 'Sains dan Teknologi', NULL, 'DTPNS', 'Laki-laki', 'Desa Blongko, Kec. Ngetos Kab. Nganjuk', 'Keahlian Kombinatorik', NULL, '2019-07-10 07:51:40', '0000-00-00 00:00:00'),
(17, NULL, NULL, 'Juhari', NULL, NULL, 'Matematika', 'Sains dan Teknologi', NULL, 'DTPNS', 'Laki-laki', 'Jl. Kertosariro No. 20 Malang', 'Keahlian Analisis', NULL, '2019-07-10 07:51:40', '0000-00-00 00:00:00'),
(18, NULL, NULL, 'Muhammad Khudzaifah', NULL, NULL, 'Matematika', 'Sains dan Teknologi', '1990-05-11', 'DTPNS', 'Laki-laki', 'Jl. Perumahan The Emerald Blok E no.23, Junrejo, Batu', 'Keahlian Aljabar', NULL, '2019-07-10 07:51:40', '0000-00-00 00:00:00'),
(19, '198907272019031018', '2027078901', 'Hisyam Fahmi', 'III/b', 'Calon Dosen', 'Matematika', 'Sains dan Teknologi', '1989-07-27', 'CPNS', 'Laki-laki', 'Bodosari RT 02 RW 06 Tunjungtirto, Singosari', 'Keahlian Komputer', 'qrcodelab.png', '2019-07-10 07:51:40', '2019-11-13 14:05:14'),
(20, NULL, NULL, 'Ratnaning Palupi', NULL, NULL, 'Matematika', 'Sains dan Teknologi', NULL, 'BLU', 'Perempuan', 'Jalan Pelabuhan Bakahuni, Bumi Emas Residence 40 Kota Malang', 'Keahlian Aljabar', NULL, '2019-07-10 07:51:40', '0000-00-00 00:00:00'),
(21, NULL, NULL, 'Ria Dhea Layla Nur Karisma', NULL, NULL, 'Matematika', 'Sains dan Teknologi', '1990-07-09', 'BLU', 'Perempuan', 'Jl. Perum. Tugurejo Indah Cemani C2 kediri', 'Keahlian Statistik', NULL, '2019-07-10 07:51:40', '0000-00-00 00:00:00'),
(22, NULL, NULL, 'Heni Widayani', NULL, NULL, 'Matematika', 'Sains dan Teknologi', '1990-10-06', 'BLU', 'Perempuan', 'Kedoyo Tengah, RT/RW:01/14 Desa Mangliawan, Kec.Pakis, Kab.Malang', 'Keahlian Matematika Terap', NULL, '2019-07-10 07:51:40', '0000-00-00 00:00:00'),
(23, NULL, NULL, 'Angga Dwi Mulyanto', NULL, NULL, 'Matematika', 'Sains dan Teknologi', NULL, 'BLU', 'Laki-laki', 'Jl. Kembang Kertas 8A RT 06 RW 4 Jatimulyo, Malang', 'Keahlian Statistik', NULL, '2019-07-10 07:51:40', '0000-00-00 00:00:00'),
(24, NULL, NULL, 'Hawzah Sa’adati', NULL, NULL, 'Matematika', 'Sains dan Teknologi', NULL, NULL, 'Perempuan', 'Jl. Perumahan The Emerald Blok E no.23, Junrejo, Batu', 'Keahlian Matematika Terap', NULL, '2019-07-10 07:51:40', '0000-00-00 00:00:00'),
(25, NULL, NULL, 'Begum Fauziyah, S.Si., M.Farm ', NULL, NULL, 'Farmasi', 'Kedokteran dan Ilmu Kesehatan', NULL, NULL, 'Perempuan', '', '', NULL, '2019-07-16 19:22:35', '0000-00-00 00:00:00'),
(26, NULL, NULL, 'Ahmad Abtokhi, M.Pd ', NULL, NULL, 'Pendidikan Guru Madrasah ', 'Ilmu Tarbiyah dan Keguruan', NULL, NULL, 'Laki-laki', '', '', NULL, '2019-07-16 19:22:35', '0000-00-00 00:00:00'),
(27, NULL, NULL, 'Muhammad Sulhan, SE, MM', NULL, NULL, 'Manajemen', 'Ekonomi', NULL, NULL, 'Laki-laki', '', '', NULL, '2019-07-16 19:22:35', '0000-00-00 00:00:00'),
(28, NULL, NULL, ' A. Ghanaim Fasya, S.Si., M.Si  ', NULL, NULL, 'Kimia', 'Sains dan Teknologi', NULL, NULL, 'Laki-laki', '', '', NULL, '2019-07-16 19:22:35', '0000-00-00 00:00:00'),
(29, NULL, NULL, 'Nurul Yaqien, S.Pd.I, M.Pd  ', NULL, NULL, 'Manajemen Pendidikan Isla', 'Ilmu Tarbiyah dan Keguruan', NULL, NULL, 'Laki-laki', '', '', NULL, '2019-07-16 19:22:35', '0000-00-00 00:00:00'),
(30, NULL, NULL, 'Dr. Danial Hilmi, S. Hum., M.Pd  ', NULL, NULL, 'Pendidikan Bahasa Arab', 'Ilmu Tarbiyah dan Keguruan', NULL, NULL, 'Laki-laki', '', '', NULL, '2019-07-16 19:22:35', '0000-00-00 00:00:00'),
(31, NULL, NULL, 'Dra. Jundiani, SH., M.Hum', NULL, NULL, 'Hukum Tata Negara', 'Syariah', NULL, NULL, 'Perempuan', '', '', NULL, '2019-07-16 19:22:35', '0000-00-00 00:00:00'),
(32, NULL, NULL, 'Dr. Fathul Lubabin Nuqul, M.Si  ', NULL, NULL, 'Psikologi', 'Psikologi', NULL, NULL, 'Laki-laki', '', '', NULL, '2019-07-16 19:22:35', '0000-00-00 00:00:00'),
(33, NULL, NULL, 'Musleh Harry, SH., M.Hum ', NULL, NULL, 'Hukum Tata Negara', 'Syariah', NULL, NULL, 'Laki-laki', '', '', NULL, '2019-07-16 19:22:35', '0000-00-00 00:00:00'),
(34, NULL, NULL, 'Faisol M.Pd', NULL, NULL, 'Manajemen', 'Ekonomi', NULL, NULL, 'Laki-laki', '', '', NULL, '2019-07-16 19:22:35', '0000-00-00 00:00:00'),
(35, NULL, NULL, ' Indah Aminatuz Zuhriyah, M.Pd  ', NULL, NULL, 'Pendidikan Guru Madrasah ', 'Ilmu Tarbiyah dan Keguruan', NULL, NULL, 'Perempuan', '', '', NULL, '2019-07-16 19:22:35', '0000-00-00 00:00:00'),
(36, NULL, NULL, 'Dr. H. Mulyono, MA ', NULL, NULL, 'Manajemen Pendidikan Isla', 'Ilmu Tarbiyah dan Keguruan', NULL, NULL, 'Laki-laki', '', '', NULL, '2019-07-16 19:22:35', '0000-00-00 00:00:00'),
(37, NULL, NULL, 'Dr. Sudirman, M. A  ', NULL, NULL, 'Al-Ahwal Al-Syakhsiyah ', 'Syariah', NULL, NULL, 'Laki-laki', '', '', NULL, '2019-07-16 19:22:35', '0000-00-00 00:00:00'),
(38, NULL, NULL, 'Muhammad Ainul Yaqin, M.Kom  ', NULL, NULL, 'Teknik Informatika', 'Sains dan Teknologi', NULL, NULL, 'Laki-laki', '', '', NULL, '2019-07-16 19:22:35', '0000-00-00 00:00:00'),
(39, NULL, NULL, 'Dr. Ach. Sani Supriyanto, M.Si  ', NULL, NULL, 'Manajemen', 'Ekonomi', NULL, NULL, 'Laki-laki', '', '', NULL, '2019-07-16 19:22:35', '0000-00-00 00:00:00'),
(40, NULL, NULL, 'Dr. M. Fahim Tharaba, M.Pd  ', NULL, NULL, 'Manajemen Pendidikan Isla', 'Ilmu Tarbiyah dan Keguruan', NULL, NULL, 'Laki-laki', '', '', NULL, '2019-07-16 19:22:35', '0000-00-00 00:00:00'),
(41, NULL, NULL, 'Dr. Muhammad Walid, M.A ', NULL, NULL, 'Pendidikan Guru Madrasah ', 'Ilmu Tarbiyah dan Keguruan', NULL, NULL, 'Laki-laki', '', '', NULL, '2019-07-16 19:22:35', '0000-00-00 00:00:00'),
(42, NULL, NULL, 'Dr. Abdul Wahab Rosyidi, M.Pd ', NULL, NULL, 'Pendidikan Bahasa Arab', 'Ilmu Tarbiyah dan Keguruan', NULL, NULL, 'Laki-laki', '', '', NULL, '2019-07-16 19:22:35', '0000-00-00 00:00:00'),
(43, NULL, NULL, 'Drs. Abdul Basid, M.Si ', NULL, NULL, 'Fisika', 'Sains dan Teknologi', NULL, NULL, 'Laki-laki', '', '', NULL, '2019-07-16 19:22:35', '0000-00-00 00:00:00'),
(44, NULL, NULL, 'Meilina Ratna D., S.Kep., NS., ', NULL, NULL, 'Farmasi', 'Kedokteran dan Ilmu Kesehatan', NULL, NULL, 'Perempuan', '', '', NULL, '2019-07-16 19:22:35', '0000-00-00 00:00:00'),
(45, NULL, NULL, 'Dr. H. Helmi Syaifuddin, M.Fil.I ', NULL, NULL, 'Pendidikan Bahasa Arab', 'Ilmu Tarbiyah dan Keguruan', NULL, NULL, 'Laki-laki', '', '', NULL, '2019-07-16 19:22:35', '0000-00-00 00:00:00'),
(46, NULL, NULL, 'Ni\'matuz Zuhroh, M.Si ', NULL, NULL, 'Pendidikan Ilmu Pengetahu', 'Ilmu Tarbiyah dan Keguruan', NULL, NULL, 'Perempuan', '', '', NULL, '2019-07-16 19:22:35', '0000-00-00 00:00:00'),
(47, NULL, NULL, ' Dr. Moh. Toriquddin, Lc, M.Hi  ', NULL, NULL, 'Al-Akhwal Al-Syakshiyah', 'Syariah', NULL, NULL, 'Laki-laki', '', '', NULL, '2019-07-16 19:22:35', '0000-00-00 00:00:00'),
(48, NULL, NULL, 'Abdul Fattah, M.Th.I', NULL, NULL, 'Pendidikan Agama Islam', 'Ilmu Tarbiyah dan Keguruan', NULL, NULL, 'Laki-laki', '', '', NULL, '2019-07-16 19:22:35', '0000-00-00 00:00:00'),
(49, NULL, NULL, 'Siti Ma’rifatul Hasanah, M.Pd.', NULL, NULL, 'Pendidikan Agama Islam', 'Ilmu Tarbiyah dan Keguruan', NULL, NULL, 'Perempuan', '', '', NULL, '2019-07-16 19:22:35', '0000-00-00 00:00:00'),
(50, '19760101 201101 1 004', NULL, 'Ali Hamdan, MA., Ph.D', NULL, NULL, 'Hukum Bisnis Syariah', 'Syariah', NULL, NULL, 'Laki-laki', '', '', NULL, '2019-07-16 19:22:35', '0000-00-00 00:00:00'),
(51, NULL, NULL, 'Dr. Suwandi, M.H', NULL, NULL, 'Al-Akhwal Al-Syakshiyah', 'Syariah', NULL, NULL, 'Laki-laki', '', '', NULL, '2019-07-16 19:22:35', '0000-00-00 00:00:00'),
(52, NULL, NULL, 'Dr. Hj. Sulalah, M.Ag', NULL, NULL, 'Pendidikan Agama Islam', 'Ilmu Tarbiyah dan Keguruan', NULL, NULL, 'Perempuan', '', '', NULL, '2019-07-16 19:22:35', '0000-00-00 00:00:00'),
(53, NULL, NULL, 'Mochamad Imamudin, MA', NULL, NULL, 'Teknik Informatika', 'Sains dan Teknologi', NULL, NULL, 'Laki-laki', '', '', NULL, '2019-07-16 19:22:35', '0000-00-00 00:00:00'),
(54, NULL, NULL, 'Dr. H. Achmad Khudori Soleh, M.Ag', NULL, NULL, 'Pendidikan Agama Islam', 'Ilmu Tarbiyah dan Keguruan', NULL, NULL, 'Laki-laki', '', '', NULL, '2019-07-16 19:22:35', '0000-00-00 00:00:00'),
(55, NULL, NULL, 'Dr. H. Saifullah, SH., M.Hum', NULL, NULL, 'Hukum Tata Negara', 'Syariah', NULL, NULL, 'Laki-laki', '', '', NULL, '2019-07-16 19:22:35', '0000-00-00 00:00:00'),
(56, NULL, NULL, 'Iswahyudi Widodo, ST', NULL, NULL, '', '', NULL, NULL, '', '', '', NULL, '2019-07-16 19:22:35', '0000-00-00 00:00:00'),
(57, '19731212 199803 1 001', NULL, 'Dr. H. Ahmad Barizi, M.A', NULL, NULL, 'Manajemen Pendidikan Isla', 'Ilmu Tarbiyah dan Keguruan', NULL, NULL, 'Laki-laki', '', '', NULL, '2019-07-16 19:22:35', '0000-00-00 00:00:00'),
(58, '19630201 198912 1 002', NULL, 'Ir. Nanang Widodo, M.Si', NULL, NULL, '', 'Sains dan Teknologi', NULL, NULL, 'Laki-laki', '', '', NULL, '2019-07-16 19:22:35', '0000-00-00 00:00:00'),
(59, NULL, NULL, 'Oky Bagas Prasetyo, M.Pd.I', NULL, NULL, 'Kimia', 'Sains dan Teknologi', NULL, NULL, 'Laki-laki', NULL, NULL, NULL, '2019-07-31 14:48:05', '0000-00-00 00:00:00'),
(60, NULL, NULL, 'MASROKHIN, MA', NULL, NULL, 'Sastra Inggris', 'Humaniora', NULL, NULL, 'Laki-laki', NULL, NULL, NULL, '2019-07-31 14:48:05', '0000-00-00 00:00:00'),
(61, NULL, NULL, 'M. ABDULLAH CHARIS, M.Pd', NULL, NULL, 'Hukum Bisnis Syariah', 'Syariah', NULL, NULL, 'Laki-laki', NULL, NULL, NULL, '2019-07-31 14:48:05', '0000-00-00 00:00:00'),
(62, NULL, NULL, 'MUHAMMAD, Lc., M.Th.I', NULL, NULL, 'Ilmu Al-Qur`an dan Tafsir', 'Ilmu Tarbiyah dan Keguruan', NULL, NULL, '', NULL, NULL, NULL, '2019-07-31 14:48:05', '0000-00-00 00:00:00'),
(63, NULL, NULL, 'HAKMI HIDAYAT, M.Pd', NULL, NULL, 'Hukum Bisnis Syariah', 'Syariah', NULL, NULL, 'Laki-laki', NULL, NULL, NULL, '2019-07-31 14:48:05', '0000-00-00 00:00:00'),
(64, NULL, NULL, 'FANI FIRMANSYAH, MM.', NULL, NULL, 'Perbankan Syariah', 'Syariah', NULL, NULL, 'Laki-laki', NULL, NULL, NULL, '2019-07-31 14:48:05', '0000-00-00 00:00:00'),
(65, NULL, NULL, 'RIF\'ATUL MAHMUDAH, M.Si', NULL, NULL, 'Kimia', 'Sains dan Teknologi', NULL, NULL, 'Perempuan', NULL, NULL, NULL, '2019-07-31 14:48:05', '0000-00-00 00:00:00'),
(66, NULL, NULL, 'TITIS MIRANTI, M.Si', NULL, NULL, 'Perbankan Syariah', 'Syariah', NULL, NULL, 'Perempuan', NULL, NULL, NULL, '2019-07-31 14:48:05', '0000-00-00 00:00:00'),
(67, NULL, NULL, 'ABDUL KADIR, M.Ag', NULL, NULL, 'Hukum Tata Negara', 'Syariah', NULL, NULL, 'Laki-laki', NULL, NULL, NULL, '2019-07-31 14:48:05', '0000-00-00 00:00:00'),
(68, NULL, NULL, 'ESY NUR AISYAH, SE., MM', NULL, NULL, 'Perbankan Syariah', 'Syariah', NULL, NULL, 'Perempuan', NULL, NULL, NULL, '2019-07-31 14:48:05', '0000-00-00 00:00:00'),
(69, NULL, NULL, 'SYAHIRUL ALIM, SE., MM', NULL, NULL, 'Manajemen', 'Ekonomi', NULL, NULL, 'Laki-laki', NULL, NULL, NULL, '2019-07-31 14:48:05', '0000-00-00 00:00:00'),
(70, NULL, NULL, 'Dr. H. Syaiful Mustofa, M.Pd', NULL, NULL, 'Pendidikan Bahasa Arab', 'Ilmu Tarbiyah dan Keguruan', NULL, NULL, 'Laki-laki', NULL, NULL, NULL, '2019-07-31 14:48:05', '0000-00-00 00:00:00'),
(71, NULL, NULL, 'NAWIRAH,  SE., MSA., Ak', NULL, NULL, 'Akuntansi', 'Ekonomi', NULL, NULL, 'Perempuan', NULL, NULL, NULL, '2019-07-31 14:48:05', '0000-00-00 00:00:00'),
(72, NULL, NULL, 'Dr. Drs. MOKHAMMAD TIRONO, M.Si', NULL, NULL, 'Fisika', 'Sains dan Teknologi', NULL, NULL, 'Laki-laki', NULL, NULL, NULL, '2019-07-31 14:48:05', '0000-00-00 00:00:00'),
(73, NULL, NULL, 'FARID SAMSU HANANTO, S.Si., M.T.', NULL, NULL, 'Fisika', 'Sains dan Teknologi', NULL, NULL, 'Laki-laki', NULL, NULL, NULL, '2019-07-31 14:48:05', '0000-00-00 00:00:00'),
(74, NULL, NULL, 'A. SAMSUL MA\'ARIF, M.Pd', NULL, NULL, 'Al-Ahwal Al-Syakhsiyah ', 'Syariah', NULL, NULL, 'Laki-laki', NULL, NULL, NULL, '2019-07-31 14:48:05', '0000-00-00 00:00:00'),
(75, NULL, NULL, 'NUR LATIFAH, MA', NULL, NULL, 'Sastra Inggris', 'Humaniora', NULL, NULL, 'Perempuan', NULL, NULL, NULL, '2019-07-31 14:48:05', '0000-00-00 00:00:00'),
(76, NULL, NULL, 'NUR TOIFAH, M.Pd', NULL, NULL, 'Pendidikan Dokter', 'Kedokteran dan Ilmu Kesehatan', NULL, NULL, 'Perempuan', NULL, NULL, NULL, '2019-07-31 14:48:05', '0000-00-00 00:00:00'),
(77, NULL, NULL, 'ABD. ROZAQ, M.Ag.', NULL, NULL, 'Hukum Bisnis Syariah', 'Syariah', NULL, NULL, 'Laki-laki', NULL, NULL, NULL, '2019-07-31 14:48:05', '0000-00-00 00:00:00'),
(78, NULL, NULL, 'MUHAMMAD SULHAN, SE., MM.', NULL, NULL, 'Manajemen', 'Ekonomi', NULL, NULL, 'Laki-laki', NULL, NULL, NULL, '2019-07-31 14:48:05', '0000-00-00 00:00:00'),
(79, NULL, NULL, 'H.  SYAHIDUZ ZAMAN,  M.Kom', NULL, NULL, 'Teknik Informatika', 'Sains dan Teknologi', NULL, NULL, 'Laki-laki', NULL, NULL, NULL, '2019-07-31 14:48:05', '0000-00-00 00:00:00'),
(80, '19740602 200901 1 010', '2002067401', 'M. IMAMUDIN, Lc., MA', NULL, NULL, 'Teknik Informatika', 'Sains dan Teknologi', NULL, NULL, 'Laki-laki', NULL, NULL, NULL, '2019-07-31 14:48:05', '0000-00-00 00:00:00'),
(81, NULL, NULL, 'H. ABDUL WAHAB ROSYIDI,  M.Pd', NULL, NULL, 'Pendidikan Bahasa Arab', 'Ilmu Tarbiyah dan Keguruan', NULL, NULL, 'Laki-laki', NULL, NULL, NULL, '2019-07-31 14:48:05', '0000-00-00 00:00:00'),
(82, NULL, NULL, 'FAJAR ROHMAN HARIRI, M.Kom', NULL, NULL, 'Teknik Informatika', 'Sains dan Teknologi', NULL, NULL, 'Laki-laki', NULL, NULL, NULL, '2019-07-31 14:48:05', '0000-00-00 00:00:00'),
(83, NULL, NULL, 'MOHAMMAD ROHMANAN, M.Th.I', NULL, NULL, 'Pendidikan Agama Islam', 'Ilmu Tarbiyah dan Keguruan', NULL, NULL, 'Laki-laki', NULL, NULL, NULL, '2019-07-31 14:48:05', '0000-00-00 00:00:00'),
(84, NULL, NULL, 'Dr. Hj. UMI MAHMUDAH, M.A', NULL, NULL, 'Pendidikan Bahasa Arab', 'Ilmu Tarbiyah dan Keguruan', NULL, NULL, 'Perempuan', NULL, NULL, NULL, '2019-07-31 14:48:05', '0000-00-00 00:00:00'),
(85, NULL, NULL, 'IMAM SUKADI, SH. MH', NULL, NULL, 'Hukum Tata Negara', 'Syariah', NULL, NULL, 'Laki-laki', NULL, NULL, NULL, '2019-07-31 14:48:05', '0000-00-00 00:00:00'),
(86, NULL, NULL, 'MUSTAFA LUTFI, S.Pd., SH., MH', NULL, NULL, 'Hukum Tata Negara', 'Syariah', NULL, NULL, 'Laki-laki', NULL, NULL, NULL, '2019-07-31 14:48:05', '0000-00-00 00:00:00'),
(87, NULL, NULL, 'Dr. H. M. Fauzan Zenrif, M.Ag', NULL, NULL, 'Al-Ahwal Al-Syakhsiyah', 'Syariah', NULL, NULL, 'Laki-laki', NULL, NULL, NULL, '2019-07-31 14:48:05', '0000-00-00 00:00:00'),
(88, NULL, NULL, 'M. IBNU AHMAD, M.Pd', NULL, NULL, 'Pendidikan Bahasa Arab', 'Ilmu Tarbiyah dan Keguruan', NULL, NULL, 'Laki-laki', NULL, NULL, NULL, '2019-07-31 14:48:05', '0000-00-00 00:00:00'),
(89, NULL, NULL, 'IRHAM BASHORI HASBA, M.H.', NULL, NULL, 'Hukum Tata Negara', 'Syariah', NULL, NULL, 'Laki-laki', NULL, NULL, NULL, '2019-07-31 14:48:05', '0000-00-00 00:00:00'),
(90, NULL, NULL, 'MUHAMMAD AMIRUDDIN, Lc., M.Pd', NULL, NULL, 'Farmasi', 'Kedokteran dan Ilmu Kesehatan', NULL, NULL, 'Laki-laki', NULL, NULL, NULL, '2019-07-31 14:48:05', '0000-00-00 00:00:00'),
(91, NULL, NULL, 'Ahmad Wahidi, M.HI', NULL, NULL, 'Al-Ahwal Al-Syakhsiyah', 'Syariah', NULL, NULL, 'Laki-laki', NULL, NULL, NULL, '2019-07-31 14:48:05', '0000-00-00 00:00:00'),
(92, NULL, NULL, 'JUMRIYAH, M.Pd.I', NULL, NULL, 'Al-Ahwal Al-Syakhsiyah ', 'Syariah', NULL, NULL, 'Perempuan', NULL, NULL, NULL, '2019-07-31 14:48:05', '0000-00-00 00:00:00'),
(93, NULL, NULL, 'MARYAM FAIZAH, M.PdI', NULL, NULL, 'Pendidikan Guru Madrasah ', 'Ilmu Tarbiyah dan Keguruan', NULL, NULL, 'Perempuan', NULL, NULL, NULL, '2019-07-31 14:48:05', '0000-00-00 00:00:00'),
(94, NULL, NULL, 'MUBASYIROH, S.S., M.Pd.I', NULL, NULL, 'Fisika', 'Sains dan Teknologi', NULL, NULL, 'Perempuan', NULL, NULL, NULL, '2019-07-31 14:48:05', '0000-00-00 00:00:00'),
(95, NULL, NULL, 'MARETHA IKA PRAJAWATI,  SE., MM', NULL, NULL, 'Manajemen', 'Ekonomi', NULL, NULL, 'Perempuan', NULL, NULL, NULL, '2019-07-31 14:48:05', '0000-00-00 00:00:00'),
(96, NULL, NULL, 'DWI FIDHAYANTI, S.HI., M.H.', NULL, NULL, 'Hukum Bisnis Syariah', 'Syariah', NULL, NULL, 'Perempuan', NULL, NULL, NULL, '2019-07-31 14:48:05', '0000-00-00 00:00:00'),
(97, NULL, NULL, 'MARDIANA,  SE., MM', NULL, NULL, 'Manajemen', 'Ekonomi', NULL, NULL, 'Perempuan', NULL, NULL, NULL, '2019-07-31 14:48:05', '0000-00-00 00:00:00'),
(98, NULL, NULL, 'MUSATAKLIMA, M.H', NULL, NULL, 'Hukum Bisnis Syariah', 'Syariah', NULL, NULL, 'Laki-laki', NULL, NULL, NULL, '2019-07-31 14:48:05', '0000-00-00 00:00:00'),
(99, NULL, NULL, 'Ulfi Kartika Oktaviana,SE.,Ak, M.Ec', NULL, NULL, 'Akuntansi', 'Ekonomi', NULL, NULL, 'Perempuan', NULL, NULL, NULL, '2019-07-31 14:48:05', '0000-00-00 00:00:00'),
(100, NULL, NULL, 'H. AHMAD MAKKI HASAN, M.Pd', NULL, NULL, 'Pendidikan Bahasa Arab', 'Ilmu Tarbiyah dan Keguruan', NULL, NULL, 'Laki-laki', NULL, NULL, NULL, '2019-07-31 14:48:05', '0000-00-00 00:00:00'),
(101, NULL, NULL, 'MAKHI ULIL KIROM, M.Pd.I', NULL, NULL, 'Bahasa dan Sastra Arab', 'Humaniora', NULL, NULL, 'Laki-laki', NULL, NULL, NULL, '2019-07-31 14:48:05', '0000-00-00 00:00:00'),
(102, NULL, NULL, 'ALI KADARISMAN,  M.HI', NULL, NULL, 'Al-Ahwal Al-Syakhsiyah ', 'Syariah', NULL, NULL, 'Laki-laki', NULL, NULL, NULL, '2019-07-31 14:48:05', '0000-00-00 00:00:00'),
(103, NULL, NULL, 'SHIDQI AHYANI, M.Ag', NULL, NULL, 'Pendidikan Agama Islam', 'Ilmu Tarbiyah dan Keguruan', NULL, NULL, 'Laki-laki', NULL, NULL, NULL, '2019-07-31 14:48:05', '0000-00-00 00:00:00'),
(104, NULL, NULL, 'DEVI PRAMITHA, M.Pd.I', NULL, NULL, 'Pendidikan Agama Islam', 'Ilmu Tarbiyah dan Keguruan', NULL, NULL, 'Perempuan', NULL, NULL, NULL, '2019-07-31 14:48:05', '0000-00-00 00:00:00'),
(105, NULL, NULL, 'LAILA MASRURO PIMADA, M.SEI', NULL, NULL, 'Perbankan Syariah', 'Syariah', NULL, NULL, 'Perempuan', NULL, NULL, NULL, '2019-07-31 14:48:05', '0000-00-00 00:00:00'),
(106, NULL, NULL, 'UMAR AL FARUQ, S.Pd., M.Pd.I', NULL, NULL, 'Ilmu Al-Qur\'an dan Tafsir', 'Ilmu Tarbiyah dan Keguruan', NULL, NULL, 'Laki-laki', NULL, NULL, NULL, '2019-07-31 14:48:05', '0000-00-00 00:00:00'),
(107, NULL, NULL, 'M. ANWAR FIRDAUSI, M.Ag', NULL, NULL, 'Bahasa dan Sastra Arab', 'Humaniora', NULL, NULL, 'Laki-laki', NULL, NULL, NULL, '2019-07-31 14:48:05', '0000-00-00 00:00:00'),
(108, NULL, NULL, 'AHMAD HANAPI, M.Sc', NULL, NULL, 'Kimia', 'Sains dan Teknologi', NULL, NULL, 'Laki-laki', NULL, NULL, NULL, '2019-07-31 14:48:05', '0000-00-00 00:00:00'),
(109, NULL, NULL, 'Saiful Amin, M.Pd', NULL, NULL, 'Pendidikan Ilmu Pengetahu', 'Ilmu Tarbiyah dan Keguruan', NULL, NULL, 'Laki-laki', NULL, NULL, NULL, '2019-07-31 14:48:05', '0000-00-00 00:00:00'),
(110, NULL, NULL, 'KHAIRUL UMAM, M.HI', NULL, NULL, 'Al-Ahwal Al-Syakhsiyah ', 'Syariah', NULL, NULL, 'Laki-laki', NULL, NULL, NULL, '2019-07-31 14:48:05', '0000-00-00 00:00:00'),
(111, NULL, NULL, 'NUR ARIFUDDIN, M.Pd', NULL, NULL, 'Manajemen', 'Ekonomi', NULL, NULL, 'Laki-laki', NULL, NULL, NULL, '2019-07-31 14:48:05', '0000-00-00 00:00:00'),
(112, NULL, NULL, 'Prima Kurniawaty, ST., M.Si', NULL, NULL, 'Teknik Arsitektur', 'Sains dan Teknologi', NULL, NULL, 'Perempuan', NULL, NULL, NULL, '2019-07-31 14:48:05', '0000-00-00 00:00:00'),
(113, NULL, NULL, 'Dr. Imam Tazi, M.Si', NULL, NULL, 'Fisika', 'Sains dan Teknologi', NULL, NULL, 'Laki-laki', NULL, NULL, NULL, '2019-07-31 14:48:05', '0000-00-00 00:00:00'),
(114, NULL, NULL, 'Dr. H. Moh. Padil, M.Pd.I', NULL, NULL, 'Pendidikan Agama Islam', 'Ilmu Tarbiyah dan Keguruan', NULL, NULL, 'Laki-laki', NULL, NULL, NULL, '2019-07-31 14:48:05', '0000-00-00 00:00:00'),
(115, NULL, NULL, 'Dr. Lailatul Farida, M.AB', NULL, NULL, 'Manajemen', 'Ekonomi', NULL, NULL, 'Perempuan', NULL, NULL, NULL, '2019-07-31 14:48:05', '0000-00-00 00:00:00'),
(116, NULL, NULL, 'Intan Nisfulaila, M.Si', NULL, NULL, 'Matematika', 'Sains dan Teknologi', NULL, NULL, 'Perempuan', NULL, NULL, NULL, '2019-07-31 14:48:05', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `dsnmeneliti`
--

CREATE TABLE `dsnmeneliti` (
  `KodeDosen` int(11) NOT NULL,
  `IDPenelitian` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dsnmeneliti`
--

INSERT INTO `dsnmeneliti` (`KodeDosen`, `IDPenelitian`) VALUES
(56, 5),
(12, 8),
(14, 8),
(18, 10),
(10, 18);

-- --------------------------------------------------------

--
-- Table structure for table `dsnmengabdi`
--

CREATE TABLE `dsnmengabdi` (
  `KodeDosen` int(11) NOT NULL,
  `IDPengabdian` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dsnmengabdi`
--

INSERT INTO `dsnmengabdi` (`KodeDosen`, `IDPengabdian`) VALUES
(48, 1),
(49, 1),
(6, 3),
(50, 3),
(52, 3),
(10, 4),
(53, 4),
(55, 4),
(12, 5),
(2, 6),
(8, 7),
(16, 7);

-- --------------------------------------------------------

--
-- Table structure for table `jenispublikasi`
--

CREATE TABLE `jenispublikasi` (
  `id` int(11) NOT NULL,
  `Nama_Jenis` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jenispublikasi`
--

INSERT INTO `jenispublikasi` (`id`, `Nama_Jenis`) VALUES
(1, 'Publikasi di jurnal nasional tidak terakreditasi'),
(2, 'Publikasi di jurnal nasional terakreditasi'),
(3, 'Publikasi di jurnal internasional'),
(4, 'Publikasi di jurnal internasional bereputasi'),
(5, 'Publikasi di seminar wilayah/lokal/perguruan tinggi'),
(6, 'Publikasi di seminar nasional'),
(7, 'Publikasi di seminar internasional'),
(8, 'Pagelaran/pameran/presentasi dalam forum di tingkat wilayah'),
(9, 'Pagelaran/pameran/presentasi dalam frum di tingkat nasional'),
(10, 'Pagelaran/pameran/presentasi dalam frum di tingkat internasional'),
(11, 'Unknown');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id` int(11) NOT NULL,
  `Nama` varchar(255) NOT NULL,
  `JumlahDana` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id`, `Nama`, `JumlahDana`, `created_at`, `updated_at`) VALUES
(1, 'RISET PENGEMBANGAN ILMU (RPI) MONO-DISIPLIN ', 'Rp. 13.600.000', '2019-07-18 09:38:53', '0000-00-00 00:00:00'),
(2, 'RISET PENGEMBANGAN ILMU (RPI) INTER-DISIPLIN ', 'Rp. 19.000.000', '2019-07-18 09:38:53', '0000-00-00 00:00:00'),
(3, 'RISET PENGEMBANGAN ILMU (RPI) MULTI-DISIPLIN', 'Rp. 17.200.000', '2019-07-18 09:38:53', '0000-00-00 00:00:00'),
(4, 'RISET PENGEMBANGAN KEAHLIAN (RPK)', 'Rp. 12.700.000', '2019-07-18 09:38:53', '0000-00-00 00:00:00'),
(5, 'RISET KOLABORATIF (RK)', 'Rp. 19.000.000', '2019-07-18 09:38:53', '0000-00-00 00:00:00'),
(6, 'RISET UNGGULAN BIDANG INTEGRASI SAINS DAN ISLAM', 'Rp. 29.800.000', '2019-07-18 09:38:53', '0000-00-00 00:00:00'),
(7, 'RISET UNGGULAN BIDANG SOSIAL DAN BUDAYA', 'Rp. 29.800.000', '2019-07-18 09:38:53', '0000-00-00 00:00:00'),
(8, 'RISET UNGGULAN BIDANG SAINS DAN TEKNOLOGI', 'Rp. 73.400.000', '2019-07-18 09:38:53', '0000-00-00 00:00:00'),
(9, 'RISET UNGGULAN BIDANG GENDER', 'Rp. 29.800.000', '2019-07-18 09:38:53', '0000-00-00 00:00:00'),
(10, 'Penelitian Peningkatan Kapasitas/Pembinaan', 'Rp. 15.000.000', '2019-07-18 09:38:53', '0000-00-00 00:00:00'),
(11, 'Penelitian Dasar Pengembangan Prodi', 'Rp. 21.000.000', '2019-07-18 09:38:53', '0000-00-00 00:00:00'),
(12, 'Penelitian Dasar Interdisipliner', 'Rp. 41.000.000', '2019-07-18 09:38:53', '0000-00-00 00:00:00'),
(13, 'Penelitian Dasar Integrasi Keilmuan', 'Rp. 65.000.000', '2019-07-18 09:38:53', '0000-00-00 00:00:00'),
(14, 'Penelitian Terapan dan Pengembangan PTKI', 'Rp. 75.000.000', '2019-07-18 09:38:53', '0000-00-00 00:00:00'),
(15, 'Penelitian Terapan dan Pengembangan Unggulan Nasional', 'Rp. 100.000.000', '2019-07-18 09:38:53', '0000-00-00 00:00:00'),
(16, 'Penelitian Pengembangan Pendidikan Tinggi', 'Rp. 41.000.000', '2019-07-18 09:38:53', '0000-00-00 00:00:00'),
(17, 'Penelitian Terapan Kajian Strategis Nasional', 'Rp.75.000.000', '2019-07-18 09:38:53', '0000-00-00 00:00:00'),
(18, 'Penelitian Terapan dan Kolaborasi antar Perguruan Tinggi', 'Rp. 100.000.000', '2019-07-18 09:38:53', '0000-00-00 00:00:00'),
(19, 'Unknown', 'Unknown', '2019-07-18 09:38:53', '0000-00-00 00:00:00'),
(20, 'Pengabdian Berbasis Program Studi', 'Rp. 60.000.000', '2019-07-18 09:38:53', '0000-00-00 00:00:00'),
(21, 'Pendampingan Komunitas', 'Rp. 30.000.000', '2019-07-18 09:38:53', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `lokasi`
--

CREATE TABLE `lokasi` (
  `id` int(11) NOT NULL,
  `NamaLokasi` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lokasi`
--

INSERT INTO `lokasi` (`id`, `NamaLokasi`) VALUES
(1, '510'),
(2, '510.1'),
(3, '510.72'),
(4, '510.3'),
(5, '511'),
(6, '511.3'),
(7, '511.1'),
(8, '511.5'),
(9, '512'),
(10, '512.2'),
(11, '512.9'),
(12, '512.4'),
(13, '519'),
(14, '514'),
(15, '518'),
(16, '519');

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `Nama` varchar(255) NOT NULL,
  `Angkatan` int(11) NOT NULL,
  `Tgl_Lahir` date DEFAULT NULL,
  `Gender` varchar(25) DEFAULT NULL,
  `Alamat` text,
  `fotomhs` varchar(255) DEFAULT NULL,
  `id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`Nama`, `Angkatan`, `Tgl_Lahir`, `Gender`, `Alamat`, `fotomhs`, `id`, `created_at`, `updated_at`) VALUES
('Mahasiswa', 1, '2000-01-01', 'Laki-laki', 'Malang', NULL, 1, '2020-05-07 08:06:16', '2020-05-07 15:06:16'),
('Wahyudi\r\n', 2010, '0000-00-00', 'Laki-laki', '', '', 10610001, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('Mar\'atus Sholichah\r\n', 2010, '0000-00-00', 'Perempuan', '', '', 10610003, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('Iffatul Lailiyah\r\n', 2010, '0000-00-00', 'Perempuan', '', '', 10610004, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('Rianti Mandasari\r\n', 2010, '0000-00-00', 'Perempuan', '', '', 10610006, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('Rina Candra Mulyani\r\n', 2010, '0000-00-00', 'Perempuan', '', '', 10610009, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('Siti Barokatur Rohmah\r\n', 2010, '0000-00-00', 'Perempuan', '', '', 10610010, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('Binti Tsamrotul Fitria\r\n', 2010, '0000-00-00', 'Perempuan', '', '', 10610011, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('Ayu Dewi Purwndini\r\n', 2010, '0000-00-00', 'Perempuan', '', '', 10610015, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('Farida Maslucha\r\n', 2010, '0000-00-00', 'Perempuan', '', '', 10610016, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('MUHAMAD GHOZALI \r\n', 2010, '0000-00-00', 'Laki-laki', '', '', 10610017, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('A. Syihabuddin Zahid', 2010, NULL, 'Laki-laki', NULL, '', 10610019, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('Chusnul Fathonah\r\n', 2010, '0000-00-00', 'Perempuan', '', '', 10610021, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('Rofiatun Jamila\r\n', 2010, '0000-00-00', 'Perempuan', '', '', 10610022, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('Masruroh\r\n', 2010, '0000-00-00', 'Perempuan', '', '', 10610024, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('Sri Susanti\r\n', 2010, '0000-00-00', 'Perempuan', '', '', 10610026, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('Siska Dwi Oktavia\r\n', 2010, '0000-00-00', 'Perempuan', '', '', 10610027, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('Laila Fitriyah\r\n', 2010, '0000-00-00', 'Perempuan', '', '', 10610029, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('Fatma Mufudah\r\n', 2010, '0000-00-00', 'Perempuan', '', '', 10610030, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('Jumrotun Nikmah\r\n', 2010, '0000-00-00', 'Perempuan', '', '', 10610031, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('Rista Umdah M\r\n', 2010, '0000-00-00', 'Perempuan', '', '', 10610032, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('Siti Asyah\r\n', 2010, '0000-00-00', 'Perempuan', '', '', 10610033, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('Fahmi Muhammad\r\n', 2010, '0000-00-00', 'Laki-laki', '', '', 10610034, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('Ani Sri Wiryaningsih\r\n', 2010, '0000-00-00', 'Perempuan', '', '', 10610036, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('Syifa\'ul Amanah\r\n', 2010, '0000-00-00', 'Perempuan', '', '', 10610037, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('Nur Laili Arofah\r\n', 2010, '0000-00-00', 'Perempuan', '', '', 10610038, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('Yulias Mitra Rosanti\r\n', 2010, '0000-00-00', 'Perempuan', '', '', 10610039, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('Muflihatun Nafisah\r\n', 2010, '0000-00-00', 'Perempuan', '', '', 10610040, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('Khoirun Nisak\r\n', 2010, '0000-00-00', 'Perempuan', '', '', 10610041, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('Atikah Abdillah \r\n', 2010, '0000-00-00', 'Perempuan', '', '', 10610042, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('Syarifatuz Zakkiya\r\n', 2010, '0000-00-00', 'Perempuan', '', '', 10610043, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('ALFI NUR ROCHMATIN\r\n', 2010, '0000-00-00', 'Perempuan', '', '', 10610044, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('SITI MUYASSAROH \r\n', 2010, '0000-00-00', 'Perempuan', '', '', 10610045, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('AFIFAH NUR\'AINI M\r\n', 2010, '0000-00-00', 'Perempuan', '', '', 10610046, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('Sigit Fembrianto', 2010, NULL, 'Laki-laki', NULL, '', 10610047, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('NAILA NAFILAH \r\n', 2010, '0000-00-00', 'Perempuan', '', '', 10610048, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('Marita Siti Nurmala Sari\r\n', 2010, '0000-00-00', 'Perempuan', '', '', 10610049, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('Ririn Zulaikah \r\n', 2010, '0000-00-00', 'Perempuan', '', '', 10610050, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('Fitria Nur Aini\r\n', 2010, '0000-00-00', 'Perempuan', '', '', 10610051, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('Sitta Amalia Nur Santi\r\n', 2010, '0000-00-00', 'Perempuan', '', '', 10610052, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('Nurhasanah\r\n', 2010, '0000-00-00', 'Perempuan', '', '', 10610053, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('HARUM KURNIASARI \r\n', 2010, '0000-00-00', 'Perempuan', '', '', 10610054, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('Rivatul Ridho Elvierayani\r\n', 2010, '0000-00-00', 'Perempuan', '', '', 10610055, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('MOCH. FAHMI C.A.\r\n', 2010, '0000-00-00', 'Laki-laki', '', '', 10610057, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('Silvi Kamaliyah\r\n', 2010, '0000-00-00', 'Perempuan', '', '', 10610059, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('Khurotul Lisnaini\r\n', 2010, '0000-00-00', 'Perempuan', '', '', 10610060, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('ANISA IKA INDRAYANTI\r\n', 2010, '0000-00-00', 'Perempuan', '', '', 10610061, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('ISTIQOMAH \r\n', 2010, '0000-00-00', 'Perempuan', '', '', 10610062, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('ABDUL HAPIZ\r\n', 2010, '0000-00-00', 'Laki-laki', '', '', 10610063, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('Israfatul Furaidah\r\n', 2010, '0000-00-00', 'Perempuan', '', '', 10610064, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('EVI NURUL FATMAWATI\r\n', 2010, '0000-00-00', 'Perempuan', '', '', 10610065, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('Muhlis\r\n', 2010, '0000-00-00', 'Laki-laki', '', '', 10610066, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('Thoufina Kurniyati \r\n', 2010, '0000-00-00', 'Perempuan', '', '', 10610068, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('Khofidhoh Nurul Aini\r\n', 2010, '0000-00-00', 'Perempuan', '', '', 10610069, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('Nova Nevisa A.F\r\n', 2010, '0000-00-00', 'Perempuan', '', '', 10610070, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('SITI ZUHRIYAH\r\n', 2010, '0000-00-00', 'Perempuan', '', '', 10610071, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('Edi Supriyanto\r\n', 2010, '0000-00-00', 'Laki-laki', '', '', 10610072, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('Suryani Aswatul Asyiah\r\n', 2010, '0000-00-00', 'Perempuan', '', '', 10610073, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('Qoid Humaini\r\n', 2010, '0000-00-00', 'Laki-laki', '', '', 10610075, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('Saalisa Silfia Fauzi\r\n', 2010, '0000-00-00', 'Perempuan', '', '', 10610076, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('Alfi Fadlinana\r\n\r\n', 2010, '0000-00-00', 'Perempuan', '', '', 10610077, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('Wahyu Setyo M\r\n', 2010, '0000-00-00', 'Laki-laki', '', '', 10610078, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('Khirul Umam\r\n', 2010, '0000-00-00', 'Laki-laki', '', '', 10610079, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('Lukman Hakim\r\n', 2010, '0000-00-00', 'Laki-laki', '', '', 10610080, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('Maslachah\r\n', 2010, '0000-00-00', 'Perempuan', '', '', 10610081, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('Mayasaroh\r\n', 2010, '0000-00-00', 'Perempuan', '', '', 10610082, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('Khoirul A\'yuni\r\n', 2010, '0000-00-00', 'Perempuan', '', '', 10610083, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('Muhtar Latif Anshori\r\n', 2010, '0000-00-00', 'Laki-laki', '', '', 10610084, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('Erviana Novita Imayati\r\n', 2010, '0000-00-00', 'Perempuan', '', '', 10610085, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('Silvia Anggarini\r\n', 2010, '0000-00-00', 'Perempuan', '', '', 10610086, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('Rumatus Shofia\r\n', 2010, '0000-00-00', 'Perempuan', '', '', 10610087, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('Eva Kurniasih\r\n', 2010, '0000-00-00', 'Perempuan', '', '', 10610088, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('KHORIDATUL BADRIYAH\r\n', 2010, '0000-00-00', 'Perempuan', '', '', 10610089, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('Nur Saidah\r\n', 2010, '0000-00-00', 'Perempuan', '', '', 10610090, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('Luluk I\'anatul Afifah\r\n', 2010, '0000-00-00', 'Perempuan', '', '', 10610091, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('Wildan Hakim\r\n', 2010, '0000-00-00', 'Laki-laki', '', '', 10610093, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('Ninis Nofelia M.P.A.F \r\n', 2010, '0000-00-00', 'Perempuan', '', '', 10610095, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('Abdaus Salamah\r\n', 2010, '0000-00-00', 'Laki-laki', '', '', 10610096, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('Mohamad Yunus\r\n', 2010, '0000-00-00', 'Laki-laki', '', '', 10610097, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('Dina Maria Munika\r\n', 2010, '0000-00-00', 'Perempuan', '', '', 10610098, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('Lailatul Mubarokah\r\n', 2010, '0000-00-00', 'Perempuan', '', '', 10610099, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('Khuriatul Hawin\r\n', 2010, '0000-00-00', 'Perempuan', '', '', 10610100, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('Fina Amalia I\r\n', 2010, '0000-00-00', 'Perempuan', '', '', 10610101, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('Wardatul Jannah\r\n', 2010, '0000-00-00', 'Perempuan', '', '', 10610102, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('Mahmuda\r\n', 2010, '0000-00-00', 'Perempuan', '', '', 10610103, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('Linawati\r\n', 2010, '0000-00-00', 'Perempuan', '', '', 10610192, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('DIA KUSUMAWATI\r\n', 2011, '0000-00-00', 'Perempuan', '', '', 11610001, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('MINNATIN CHARIZAH \r\n', 2011, '0000-00-00', 'Perempuan', '', '', 11610002, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('INTAN TIKA SITTA W\r\n', 2011, '0000-00-00', 'Perempuan', '', '', 11610003, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('AHMAD KHOIRURROZIQIN\r\n', 2011, '0000-00-00', 'Laki-laki', '', '', 11610004, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('AHMAD KHOLID NADHORI\r\n', 2011, '0000-00-00', 'Laki-laki', '', '', 11610005, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('WAHYU INGGRIANA\r\n', 2011, '0000-00-00', 'Perempuan', '', '', 11610006, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('IFAH ULIL MAZIYAH\r\n', 2011, '0000-00-00', 'Perempuan', '', '', 11610007, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('SOFIATIN NISA\'\r\n', 2011, '0000-00-00', 'Perempuan', '', '', 11610008, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('IMROATUL KHASANAH\r\n', 2011, '0000-00-00', 'Perempuan', '', '', 11610011, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('Amita Pradana Putri', 2018, NULL, 'Perempuan', NULL, '', 11610012, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('IDA NUR HAYATI\r\n', 2011, '0000-00-00', 'Perempuan', '', '', 11610013, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('AZMIL ZACHIROH\r\n', 2011, '0000-00-00', 'Perempuan', '', '', 11610015, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('YANTO\r\n', 2011, '0000-00-00', 'Laki-laki', '', '', 11610016, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('RICA WULANDARI\r\n', 2011, '0000-00-00', 'Perempuan', '', '', 11610017, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('Aminatus Zuria', 2011, NULL, 'Perempuan', NULL, '', 11610018, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('MIFTAKHUL KHOIRIYAH\r\n', 2011, '0000-00-00', 'Perempuan', '', '', 11610019, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('UMMU HANIFUL MILLAH\r\n', 2011, '0000-00-00', 'Perempuan', '', '', 11610020, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('ANGGI FAIZTA WIDIYATIKA\r\n', 2011, '0000-00-00', 'Perempuan', '', '', 11610021, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('HARDIANA DEVITA ANDRIANY\r\n', 2011, '0000-00-00', 'Perempuan', '', '', 11610023, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('ASWIN MITUS\r\n', 2011, '0000-00-00', 'Laki-laki', '', '', 11610026, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('NIA CAHYANI\r\n', 2011, '0000-00-00', 'Perempuan', '', '', 11610027, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('HILWIN NISA\'\r\n', 2011, '0000-00-00', 'Perempuan', '', '', 11610028, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('ANIS MUKIBATUL BADI\'\r\n', 2011, '0000-00-00', 'Perempuan', '', '', 11610029, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('ACHMAD JAINI\r\n', 2011, '0000-00-00', 'Laki-laki', '', '', 11610030, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('IMAM MUFID\r\n', 2011, '0000-00-00', 'Laki-laki', '', '', 11610031, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('LILI MONIKA\r\n', 2011, '0000-00-00', 'Perempuan', '', '', 11610032, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('YETI ASTREANDINI\r\n', 2011, '0000-00-00', 'Perempuan', '', '', 11610034, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('MOCHAMMAD YUSUP\r\n', 2011, '0000-00-00', 'Laki-laki', '', '', 11610035, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('NUR EVITA ADININGSIH\r\n', 2011, '0000-00-00', 'Perempuan', '', '', 11610036, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('ENHA SOVIANA FIRDAUS\r\n', 2011, '0000-00-00', 'Perempuan', '', '', 11610038, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('NOOR MILLAH S.\r\n', 2011, '0000-00-00', 'Laki-laki', '', '', 11610040, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('FITRIYATUS ZAKIYAH\r\n', 2011, '0000-00-00', 'Perempuan', '', '', 11610042, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('MAY LION PUTRI LESTARI D.\r\n', 2011, '0000-00-00', 'Perempuan', '', '', 11610043, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('MUKHAMMAD GADDAFI\r\n', 2011, '0000-00-00', 'Laki-laki', '', '', 11610044, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('JADI TAQWA \r\n', 2011, '0000-00-00', 'Laki-laki', '', '', 11610045, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('ZIYAN FARID\r\n', 2011, '0000-00-00', 'Laki-laki', '', '', 11610046, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('MOH SYAIFUL ARIF\r\n', 2011, '0000-00-00', 'Laki-laki', '', '', 11610049, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('WAHYUNI FITRIA A. W.\r\n', 2011, '0000-00-00', 'Perempuan', '', '', 11610050, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('SITI JUMAROH\r\n', 2011, '0000-00-00', 'Perempuan', '', '', 11610052, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('ZUKHRUFUN NADHIFA\r\n', 2011, '0000-00-00', 'Perempuan', '', '', 11610053, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('HARUM ANINDITA R.\r\n', 2011, '0000-00-00', 'Perempuan', '', '', 11610054, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('FAFIKA HAYATI\r\n', 2011, '0000-00-00', 'Perempuan', '', '', 11610055, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('ENY MARUROH HADI SANTANA\r\n', 2011, '0000-00-00', 'Perempuan', '', '', 11610057, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('M. HASBI SYARIFUL\r\n', 2011, '0000-00-00', 'Laki-laki', '', '', 11610058, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('WINDA APRILIANI\r\n', 2011, '0000-00-00', 'Perempuan', '', '', 11610059, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('DIAH PRAMINIA\r\n', 2011, '0000-00-00', 'Perempuan', '', '', 11610061, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('ALIFATURROHMAH\r\n', 2011, '0000-00-00', 'Perempuan', '', '', 11610062, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('LU\'LU\'UL BARROH\r\n', 2011, '0000-00-00', 'Perempuan', '', '', 11610063, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('MUHAMMAD FIRMAN ALI\r\n', 2011, '0000-00-00', 'Laki-laki', '', '', 11610065, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('ERNI OCTAFIATININGSIH\r\n', 2011, '0000-00-00', 'Perempuan', '', '', 11610066, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('ALFU LAILA\r\n', 2011, '0000-00-00', 'Perempuan', '', '', 11610067, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('MUHAMMAD ARIFIN\r\n', 2011, '0000-00-00', 'Laki-laki', '', '', 11610068, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('CHOIRUL UMAM\r\n', 2011, '0000-00-00', 'Laki-laki', '', '', 11610069, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('MOH AFIFUDIN\r\n', 2011, '0000-00-00', 'Laki-laki', '', '', 11610070, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('MUHAMMAD JAZULY\r\n', 2011, '0000-00-00', 'Laki-laki', '', '', 11610071, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('JAMALLUDIN\r\n', 2011, '0000-00-00', 'Laki-laki', '', '', 11610072, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('MOHAMMAD IRFAN \r\n', 2011, '0000-00-00', 'Laki-laki', '', '', 11610073, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('Uslifatut Jannah', 2018, NULL, 'Perempuan', NULL, '', 11610074, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('RONI SAPUTRA\r\n', 2011, '0000-00-00', 'Laki-laki', '', '', 11610075, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('AULIYA RIZKY N\r\n', 2012, '0000-00-00', 'Perempuan', '', '', 12610001, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('BAYU KRISTANTO\r\n', 2012, '0000-00-00', 'Laki-laki', '', '', 12610002, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('ULFATUL MAHMUDAH\r\n', 2012, '0000-00-00', 'Perempuan', '', '', 12610003, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('CHOLIFATUL MAULIDIAH\r\n', 2012, '0000-00-00', 'Perempuan', '', '', 12610004, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('MUHAMMAD AMIRUDDIN LATHIF\r\n', 2012, '0000-00-00', 'Laki-laki', '', '', 12610005, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('HENDRIK WIDYA P\r\n', 2012, '0000-00-00', 'Perempuan', '', '', 12610006, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('ZIYADATUR ROHMAH\r\n', 2012, '0000-00-00', 'Perempuan', '', '', 12610007, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('ANA KHOIRUNNISA\'\r\n', 2012, '0000-00-00', 'Perempuan', '', '', 12610008, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('WASIATUN RIZQIYAH\r\n', 2012, '0000-00-00', 'Perempuan', '', '', 12610009, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('DWI ANNISA P\r\n', 2012, '0000-00-00', 'Perempuan', '', '', 12610010, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('ALFI RENY K\r\n', 2012, '0000-00-00', 'Perempuan', '', '', 12610011, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('LILIS SURYANI\r\n', 2012, '0000-00-00', 'Perempuan', '', '', 12610012, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('MEIRIKE HARTIKA\r\n', 2012, '0000-00-00', 'Perempuan', '', '', 12610013, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('KARINA APRILISMAH\r\n', 2012, '0000-00-00', 'Perempuan', '', '', 12610014, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('NUR HAENI YUNUS\r\n', 2012, '0000-00-00', 'Perempuan', '', '', 12610015, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('IFFAH NUR HAMIDAH\r\n', 2012, '0000-00-00', 'Perempuan', '', '', 12610016, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('MARATUL ISTIQOMAH\r\n', 2012, '0000-00-00', 'Perempuan', '', '', 12610017, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('OKTA DWI CAHYONO\r\n', 2012, '0000-00-00', 'Laki-laki', '', '', 12610018, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('DINI CHANDRA A.P\r\n', 2012, '0000-00-00', 'Perempuan', '', '', 12610019, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('AHMAD MUHAMMAD MUFTIRRIDHA\r\n', 2012, '0000-00-00', 'Laki-laki', '', '', 12610020, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('FARAZIZA NUR AINI\r\n', 2012, '0000-00-00', 'Perempuan', '', '', 12610021, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('AZKA HILYATUL UMMAH\r\n', 2012, '0000-00-00', 'Perempuan', '', '', 12610022, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('ROBI\'ATUL \'ADAWIYAH\r\n', 2012, '0000-00-00', 'Perempuan', '', '', 12610023, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('ARISTA FITRIA N\r\n', 2012, '0000-00-00', 'Perempuan', '', '', 12610024, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('AMINATUS SHOLIHAH\r\n', 2012, '0000-00-00', 'Perempuan', '', '', 12610025, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('RATNA MUFFIDAH\r\n', 2012, '0000-00-00', 'Perempuan', '', '', 12610026, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('NAUFAL MAHARANI\r\n', 2012, '0000-00-00', 'Perempuan', '', '', 12610027, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('NURUL FITRIYAH\r\n', 2012, '0000-00-00', 'Perempuan', '', '', 12610028, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('FATMAWATI HIDAYAT\r\n', 2012, '0000-00-00', 'Perempuan', '', '', 12610029, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('SYAUQI ABDULLAH\r\n', 2012, '0000-00-00', 'Laki-laki', '', '', 12610030, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('DWI ARISTIANTI\r\n', 2012, '0000-00-00', 'Perempuan', '', '', 12610031, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('IRNAWATI\r\n', 2012, '0000-00-00', 'Perempuan', '', '', 12610032, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('ACH. SIROJUDDIN\r\n', 2012, '0000-00-00', 'Laki-laki', '', '', 12610033, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('FITRIA NINGSIH\r\n', 2012, '0000-00-00', 'Perempuan', '', '', 12610035, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('MUKHAMAD LUKMAN\r\n', 2012, '0000-00-00', 'Laki-laki', '', '', 12610036, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('ISTIQOMAH\r\n', 2012, '0000-00-00', 'Perempuan', '', '', 12610037, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('ERNY WIDIASTUTI\r\n', 2012, '0000-00-00', 'Perempuan', '', '', 12610038, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('M. SYAIFUL ANWAR\r\n', 2012, '0000-00-00', 'Laki-laki', '', '', 12610039, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('EKA FENIYATUN D. P\r\n', 2012, '0000-00-00', 'Perempuan', '', '', 12610040, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('MARWAN DESKY I\r\n', 2012, '0000-00-00', 'Laki-laki', '', '', 12610041, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('ICHA RISQIE MEIRISSA\r\n', 2012, '0000-00-00', 'Perempuan', '', '', 12610042, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('ARUMSARI PUTRIAJI\r\n', 2012, '0000-00-00', 'Perempuan', '', '', 12610043, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('RIA RISYANDANI\r\n', 2012, '0000-00-00', 'Perempuan', '', '', 12610044, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('MUHAMMAD AMIR HAMZAH\r\n', 2012, '0000-00-00', 'Laki-laki', '', '', 12610045, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('LUQMAN EL HAKIM\r\n', 2012, '0000-00-00', 'Laki-laki', '', '', 12610046, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('ERISKA NOERHAYATI\r\n', 2012, '0000-00-00', 'Perempuan', '', '', 12610047, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('KARLINA RATNASARI\r\n', 2012, '0000-00-00', 'Perempuan', '', '', 12610048, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('ELLY ROHMATUL H\r\n', 2012, '0000-00-00', 'Perempuan', '', '', 12610049, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('DIAH MAGHFIROH WAHYUNI\r\n', 2012, '0000-00-00', 'Perempuan', '', '', 12610050, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('RIZQATUL KHOIROH\r\n', 2012, '0000-00-00', 'Perempuan', '', '', 12610051, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('AAN SA\'ADILLAH\r\n', 2012, '0000-00-00', 'Laki-laki', '', '', 12610052, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('PINGLAN ANTA MAULANA\r\n', 2012, '0000-00-00', 'Laki-laki', '', '', 12610053, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('VANY LINDA FIBRIANTI\r\n', 2012, '0000-00-00', 'Perempuan', '', '', 12610054, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('MUCH. FUAD HASAN\r\n', 2012, '0000-00-00', 'Laki-laki', '', '', 12610055, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('ARINA HIDAYATI\r\n', 2012, '0000-00-00', 'Perempuan', '', '', 12610056, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('M. FAHMI BIQOTUL KHOIROT\r\n', 2012, '0000-00-00', 'Laki-laki', '', '', 12610057, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('AFIDATUS SHOLICHAH\r\n', 2012, '0000-00-00', 'Perempuan', '', '', 12610058, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('NURHAYATI\r\n', 2012, '0000-00-00', 'Perempuan', '', '', 12610059, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('ERWIN FAHMI ERLAMBANG\r\n', 2012, '0000-00-00', 'Laki-laki', '', '', 12610060, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('CINTIA TRISTANTI\r\n', 2012, '0000-00-00', 'Perempuan', '', '', 12610061, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('FIRMA LIAANAHARU\r\n', 2012, '0000-00-00', 'Perempuan', '', '', 12610062, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('GRAFIKA AKBAR MUTTAQIN\r\n', 2012, '0000-00-00', 'Laki-laki', '', '', 12610063, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('MAYA PUSPITA SARI\r\n', 2012, '0000-00-00', 'Perempuan', '', '', 12610065, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('ADIKA SETIA B\r\n', 2012, '0000-00-00', 'Laki-laki', '', '', 12610066, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('MUHDOR\r\n', 2012, '0000-00-00', 'Laki-laki', '', '', 12610067, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('IFKRA FEBRY\r\n', 2012, '0000-00-00', 'Perempuan', '', '', 12610069, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('AGUSTINA DIAN F\r\n', 2012, '0000-00-00', 'Perempuan', '', '', 12610070, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('CAHYA \'AISYAH LAILI SOETOMO\r\n', 2012, '0000-00-00', 'Perempuan', '', '', 12610071, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('FARIH HASNIA WARDANI\r\n', 2012, '0000-00-00', 'Perempuan', '', '', 12610072, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('ACHMAD HADYAN\r\n', 2012, '0000-00-00', 'Laki-laki', '', '', 12610073, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('ARIS MUNANDAR\r\n', 2012, '0000-00-00', 'Laki-laki', '', '', 12610074, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('AZIZATUL AMALIYA\r\n', 2012, '0000-00-00', 'Perempuan', '', '', 12610075, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('CHOLISOTUL UMMAH\r\n', 2012, '0000-00-00', 'Perempuan', '', '', 12610076, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('MIRATUL HUSNA\r\n', 2012, '0000-00-00', 'Perempuan', '', '', 12610077, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('FATIMATUZ ZAHRO\r\n', 2012, '0000-00-00', 'Perempuan', '', '', 12610078, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('OKTA DWI RAHMAWATI\r\n', 2012, '0000-00-00', 'Perempuan', '', '', 12610079, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('NUR ISMIARIN FAUZIAH\r\n', 2012, '0000-00-00', 'Perempuan', '', '', 12610080, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('DWI NUR A\r\n', 2011, '0000-00-00', 'Perempuan', '', '', 12610081, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('RIZADATUL MILADIYAH\r\n', 2012, '0000-00-00', 'Perempuan', '', '', 12610082, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('ROHMAD\r\n', 2012, '0000-00-00', 'Laki-laki', '', '', 12610083, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('MOHAMMAD SAFIN ALI\r\n', 2012, '0000-00-00', 'Laki-laki', '', '', 12610085, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('UMROTUL MAHFUDHOH\r\n', 2012, '0000-00-00', 'Perempuan', '', '', 12610086, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('ASTRI ANGGAR P\r\n', 2012, '0000-00-00', 'Perempuan', '', '', 12610087, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('AINUS SOFY\r\n', 2012, '0000-00-00', 'Perempuan', '', '', 12610088, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('RIFKY AISYATUL F\r\n', 2012, '0000-00-00', 'Perempuan', '', '', 12610089, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('MUHAMMAD JUNIAWAN E\r\n', 2012, '0000-00-00', 'Laki-laki', '', '', 12610090, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('M. Firmansyah Akbar Rosyadi\r\n', 2012, NULL, 'Laki-laki', NULL, '', 12610091, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('ANISYAH\r\n', 2012, '0000-00-00', 'Perempuan', '', '', 12610092, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('NURUL MARIATUL U\r\n', 2012, '0000-00-00', 'Perempuan', '', '', 12610093, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('M. NASICHUDDIN\r\n', 2012, '0000-00-00', 'Laki-laki', '', '', 12610094, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('SITI PATIMAH\r\n', 2012, '0000-00-00', 'Perempuan', '', '', 12610095, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('MUHAMMAD THAHIRUDDIN\r\n', 2012, '0000-00-00', 'Laki-laki', '', '', 12610096, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('OKI ULYANI\r\n', 2012, '0000-00-00', 'Laki-laki', '', '', 12610097, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('NURUDDIN SYAUQI\r\n', 2012, '0000-00-00', 'Laki-laki', '', '', 12610098, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('RAMADHANI\r\n', 2012, '0000-00-00', 'Perempuan', '', '', 12610100, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('RUHMA MUFIDA\r\n', 2012, '0000-00-00', 'Perempuan', '', '', 12610101, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('NITA RACHMAWATI\r\n', 2012, '0000-00-00', 'Perempuan', '', '', 12610102, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('LINA NIKMATUL KARIMAH\r\n', 2012, '0000-00-00', 'Perempuan', '', '', 12610103, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('SYAYIDATUL UMARA\r\n', 2013, '0000-00-00', 'Perempuan', '', '', 13610001, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('ILMI NUR FADHILAH\r\n', 2013, '0000-00-00', 'Perempuan', '', '', 13610003, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('UMI LATIFA KURNIAYANTI\r\n', 2013, '0000-00-00', 'Perempuan', '', '', 13610004, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('SIRAJATUNNUR\r\n', 2013, '0000-00-00', 'Perempuan', '', '', 13610005, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('KHAIRIL BARIYAH \r\n', 2013, '0000-00-00', 'Perempuan', '', '', 13610006, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('SOVIL WIDAD\r\n', 2013, '0000-00-00', 'Perempuan', '', '', 13610008, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('MILLATUL HANIFIAH\r\n', 2013, '0000-00-00', 'Perempuan', '', '', 13610009, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('SOLICHIN MUCHOROBIN\r\n', 2013, '0000-00-00', 'Laki-laki', '', '', 13610010, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('YUSRI FAIZZATIN NALLA\r\n', 2013, '0000-00-00', 'Perempuan', '', '', 13610011, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('DINA FITRIYA ALWI\r\n', 2013, '0000-00-00', 'Perempuan', '', '', 13610012, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('RISNA ZULFA MUSRIROH\r\n', 2013, '0000-00-00', 'Perempuan', '', '', 13610013, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('JAUHAROH MAULIDIYAH\r\n', 2013, '0000-00-00', 'Perempuan', '', '', 13610014, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('YUSRI WARDANI\r\n', 2013, '0000-00-00', 'Perempuan', '', '', 13610015, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('YUSRINA\r\n', 2013, '0000-00-00', 'Perempuan', '', '', 13610016, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('SYIFA QOLBY AL-IMANI\r\n', 2013, '0000-00-00', 'Perempuan', '', '', 13610017, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('RIFAL ANDIKA FAISAL \r\n', 2013, '0000-00-00', 'Laki-laki', '', '', 13610018, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('SUJIATI\r\n', 2013, '0000-00-00', 'Perempuan', '', '', 13610020, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('RHOUL KHASANAH\r\n', 2013, '0000-00-00', 'Perempuan', '', '', 13610021, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('M.AHNAF ZUFAR \r\n', 2013, '0000-00-00', 'Laki-laki', '', '', 13610022, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('AHMAD BAYHAQI\r\n', 2013, '0000-00-00', 'Laki-laki', '', '', 13610023, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('MUHAMMAD HASAN ASNAWI\r\n', 2013, '0000-00-00', 'Laki-laki', '', '', 13610024, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('DIANA AMALIA \r\n', 2013, '0000-00-00', 'Perempuan', '', '', 13610027, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('MOH.ALEX MAGHFUR\r\n', 2013, '0000-00-00', 'Laki-laki', '', '', 13610028, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('KENNY WAN MEIVRITA\r\n', 2013, '0000-00-00', 'Perempuan', '', '', 13610030, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('AHMAD SUKRON JAZULI\r\n', 2013, '0000-00-00', 'Laki-laki', '', '', 13610033, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('INDRI ROFIAH AMBARWATI\r\n', 2013, '0000-00-00', 'Perempuan', '', '', 13610034, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('IDA NUR AZIZAH\r\n', 2013, '0000-00-00', 'Perempuan', '', '', 13610035, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('AFINA SA\'BAN\r\n', 2013, '0000-00-00', 'Perempuan', '', '', 13610036, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('IDA ROHMANIA\r\n', 2013, '0000-00-00', 'Perempuan', '', '', 13610037, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('NAFI\'UL ABRORIYYAH\r\n', 2013, '0000-00-00', 'Perempuan', '', '', 13610038, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('NUR FUAD KHOLIQUL HUDA\r\n', 2013, '0000-00-00', 'Laki-laki', '', '', 13610039, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('KAULIN NIHAYATUL HUDA\r\n', 2013, '0000-00-00', 'Perempuan', '', '', 13610040, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('FINA ALIYATUL HIMAH \r\n', 2013, '0000-00-00', 'Perempuan', '', '', 13610041, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('ISMA IMROATUL FITRIYAH \r\n', 2013, '0000-00-00', 'Perempuan', '', '', 13610042, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('UMMIYATUS SUBAIDA \r\n', 2013, '0000-00-00', 'Perempuan', '', '', 13610044, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('MOCH MIFATAKHUL HARIR\r\n', 2013, '0000-00-00', 'Laki-laki', '', '', 13610045, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('MUHAMMAD SAIFUL ANWAR \r\n', 2013, '0000-00-00', 'Laki-laki', '', '', 13610046, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('ADELIANA\r\n', 2013, '0000-00-00', 'Perempuan', '', '', 13610049, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('ISMI RIZQA LINA\r\n', 2013, '0000-00-00', 'Perempuan', '', '', 13610050, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('KUSNIA NUR HADIYAH\r\n', 2013, '0000-00-00', 'Perempuan', '', '', 13610051, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('LAILATUL AZIZAH Y.F.\r\n', 2013, '0000-00-00', 'Perempuan', '', '', 13610052, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('MUSTABIROTUN NI\'MAH \r\n', 2013, '0000-00-00', 'Perempuan', '', '', 13610053, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('IMAM VERY FAUZI\r\n', 2013, '0000-00-00', 'Laki-laki', '', '', 13610055, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('SITI CHOIRIYAH\r\n', 2013, '0000-00-00', 'Perempuan', '', '', 13610056, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('EKA RESTU SAFITRI\r\n', 2013, '0000-00-00', 'Perempuan', '', '', 13610058, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('MUSTIKA ANA KURFIA\r\n', 2013, '0000-00-00', 'Perempuan', '', '', 13610060, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('MAR\'ATUS SHOLIKHAH \r\n', 2013, '0000-00-00', 'Perempuan', '', '', 13610061, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('RIKA SAPUTRI\r\n', 2013, '0000-00-00', 'Perempuan', '', '', 13610063, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('SETIA ALAM \r\n', 2013, '0000-00-00', 'Laki-laki', '', '', 13610065, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('ANANG MAULANA\r\n', 2013, '0000-00-00', 'LAki-laki', '', '', 13610066, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('ALLIFA NUR CHASANAH\r\n', 2013, '0000-00-00', 'Perempuan', '', '', 13610067, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('NIANATUS HOLIHAH\r\n', 2013, '0000-00-00', 'Perempuan', '', '', 13610068, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('FATHULLAH FUADY\r\n', 2013, '0000-00-00', 'Laki-laki', '', '', 13610069, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('UMI KHOLIFATUR ROSIDAH\r\n', 2013, '0000-00-00', 'Perempuan', '', '', 13610070, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('DWIKI MARLINDA AGUSTINA\r\n', 2013, '0000-00-00', 'Perempuan', '', '', 13610071, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('Mukhammad Fahmi', 2013, NULL, 'Laki-laki', NULL, '', 13610072, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('SITI ZAHIROTUL L.\r\n', 2013, '0000-00-00', 'Perempuan', '', '', 13610073, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('ANWAR IBRAHIM MUSTHOFA AKHYAR\r\n', 2013, '0000-00-00', 'Laki-laki', '', '', 13610074, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('ASYRIFA ISTIVIAN\r\n', 2013, '0000-00-00', 'Perempuan', '', '', 13610076, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('M.MUZAKIR\r\n', 2013, '0000-00-00', 'Laki-laki', '', '', 13610077, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('UMI MUFIDAH\r\n', 2013, '0000-00-00', 'Perempuan', '', '', 13610078, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('LAILATUL BADRIYAH\r\n', 2013, '0000-00-00', 'Perempuan', '', '', 13610079, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('IFATUL FARICHAN \r\n', 2013, '0000-00-00', 'Perempuan', '', '', 13610080, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('SITI NUR MAULIDIAH\r\n', 2013, '0000-00-00', 'Perempuan', '', '', 13610081, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('KAMALIA RIZKI RAHMAWATI\r\n', 2013, '0000-00-00', 'Perempuan', '', '', 13610082, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('AL VIATUR ROHMAH\r\n', 2013, '0000-00-00', 'Perempuan', '', '', 13610083, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('IZZA FARIHAH\r\n', 2013, '0000-00-00', 'Perempuan', '', '', 13610086, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('NUR HIDAYATI\r\n', 2013, '0000-00-00', 'Perempuan', '', '', 13610087, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('ERVINA NI\'MATUL A\r\n', 2013, '0000-00-00', 'Perempuan', '', '', 13610088, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('WAHYU NURIL FITRI\r\n', 2013, '0000-00-00', 'Perempuan', '', '', 13610090, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('ALVI NUR Z. M.\r\n', 2013, '0000-00-00', 'Perempuan', '', '', 13610091, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('MAR\'ATUS SHOLIHATULA\r\n', 2013, '0000-00-00', 'Perempuan\r\n', '', '', 13610092, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('VIVI ALIFIA KANISA\r\n', 2013, '0000-00-00', 'Perempuan', '', '', 13610093, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('MUTHOLAFATUL ALIM\r\n', 2013, '0000-00-00', 'Perempuan', '', '', 13610094, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('MOH. MIFTAKHUL ULUM\r\n', 2013, '0000-00-00', 'Laki-laki', '', '', 13610095, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('LAILA IZZATUN NAFI\'AH\r\n', 2013, '0000-00-00', 'Perempuan', '', '', 13610098, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('MARDIANA\r\n', 2013, '0000-00-00', 'Perempuan', '', '', 13610099, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('LELY AMELIA\r\n', 2013, '0000-00-00', 'Perempuan', '', '', 13610102, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('NILA ITIGHFARIN\r\n', 2013, '0000-00-00', 'Perempuan', '', '', 13610103, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('MISBAHUL MUNIR SETIAWAN \r\n', 2013, '0000-00-00', 'Laki-laki', '', '', 13610105, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('WISE AHMAD SOFIA\r\n', 2013, '0000-00-00', 'Laki-laki', '', '', 13610106, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('ALVI NUR LAILA INDAHSARI\r\n', 2013, '0000-00-00', 'Perempuan', '', '', 13610107, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('MIFTAKHUL JANAH\r\n', 2013, '0000-00-00', 'Perempuan', '', '', 13610108, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('PUSPITA HANUNG PALUPI\r\n', 2013, '0000-00-00', 'Perempuan', '', '', 13610109, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('VINA MAFAZA\r\n', 2013, '0000-00-00', 'Perempuan', '', '', 13610110, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('SYAFITRI HIDAYAHNINGRUM\r\n', 2013, '0000-00-00', 'Perempuan', '', '', 13610111, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('DIAN NAN BRYLLIANT\r\n', 2013, '0000-00-00', 'Perempuan', '', '', 13610112, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('FAIZATUL WAHIDAH \r\n', 2013, '0000-00-00', 'Perempuan', '', '', 13610113, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('SRI SURYA NINGRUM\r\n', 2013, '0000-00-00', 'Perempuan', '', '', 13610114, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('MUHAMAD IRFANDI\r\n', 2013, '0000-00-00', 'Laki-laki', '', '', 13610115, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('ISMAIL\r\n', 2013, '0000-00-00', 'Laki-laki', '', '', 13610116, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('EDY SUTRINO\r\n', 2013, '0000-00-00', 'Laki-laki', '', '', 13610117, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('MUHAMAD WAIS AL Q\r\n', 2013, '0000-00-00', 'Laki-laki', '', '', 13610118, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('ISNA AFIFAH\r\n', 2013, '0000-00-00', 'Perempuan', '', '', 13610119, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('AMINATUL MARDIYAH\r\n', 2013, '0000-00-00', 'Perempuan', '', '', 13610120, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('FARAH AUNIL HAQ\r\n', 2014, NULL, 'Perempuan', NULL, '', 14610006, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('DEWI ZUMROTUL NAFISA ', 2014, NULL, 'Perempuan', NULL, '', 14610012, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('ITA PURWINDA', 2014, NULL, 'Perempuan', NULL, '', 14610016, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('RUFI AULIA ASMARANI', 2014, NULL, 'Perempuan', NULL, '', 14610017, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('NOVIA ANI SA\'ADA', 2014, NULL, 'Perempuan', NULL, '', 14610018, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('M HELMI PRASETYO\r\n', 2014, NULL, 'Laki-laki', NULL, '', 14610020, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('AYNIN RIZQI ANGGRAINI ', 2014, NULL, 'Perempuan', NULL, '', 14610024, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('Ikhwan Muji Abdillah\r\n', 2014, NULL, 'Laki-laki', NULL, '', 14610025, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('FILDA KHULWANA', 2014, NULL, 'Perempuan', NULL, '', 14610027, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('SITI AINUROHMAH', 2014, NULL, 'Perempuan', NULL, '', 14610030, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('IFFAT RAHMADHANI NURIANSYAH\r\n', 2014, NULL, 'Perempuan', NULL, '', 14610036, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('FARAH R.ROSYADI\r\n', 2014, NULL, 'Perempuan', NULL, '', 14610040, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('SOFI KURNIAWATI \r\n', 2014, NULL, 'Perempuan', NULL, '', 14610041, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('Alinul Layali', 2014, NULL, NULL, NULL, '', 14610042, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('DINA SYAMSA AYUNDRIA ', 2014, NULL, 'Perempuan', NULL, '', 14610043, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('YUNI PURWANTI ', 2014, NULL, 'Perempuan', NULL, '', 14610044, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('UMMATUS SALAMAH', 2014, NULL, 'Perempuan', NULL, '', 14610045, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('ERIKA FITRIA LIANDARI', 2014, NULL, 'Perempuan', NULL, '', 14610047, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('ULFA AINURRIDHA', 2014, NULL, 'Perempuan', NULL, '', 14610049, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('Atika Zakiyatul Fikriya', 2014, NULL, NULL, NULL, '', 14610054, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('IFFANA INTANLYA FAUZIE\r\n', 2014, NULL, 'Perempuan', NULL, '', 14610057, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('MASYITOH FIRDAUS FAHMI\r\n', 2014, NULL, 'Perempuan', NULL, '', 14610058, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('CICI ERISA MAULIDAH\r\n', 2014, NULL, 'Perempuan', NULL, '', 14610059, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('Muhammad Karim Amrulloh\r\n', 2014, NULL, 'Laki-laki', NULL, '', 14610061, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('SITI MAISAROH\r\n', 2014, NULL, 'Perempuan', NULL, '', 14610062, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('MOCH. ULIN NUHA', 2014, NULL, 'Laki-laki', NULL, '', 14610068, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('USNIDATUL KHOIRIYAH\r\n', 2014, NULL, 'Perempuan', NULL, '', 14610072, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('ENDANG KRISNAWATI ', 2014, NULL, 'Perempuan', NULL, '', 14610074, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('MUTIA RAHMANIA M', 2014, NULL, 'Perempuan', NULL, '', 14610075, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('SILVIA MAULIDATUL LAILA', 2014, NULL, 'Perempuan', NULL, '', 14610076, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('MAULANA FAJERI D', 2014, NULL, 'Laki-laki', NULL, '', 14610077, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('HISBIYATUL JANNAH', 2014, NULL, 'Perempuan', NULL, '', 14610079, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('DURORIN KHUMAIROH\r\n', 2014, NULL, 'Perempuan', NULL, '', 14610081, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('DENY FATCHUR ROCHMAN', 2014, NULL, 'Laki-laki', NULL, '', 14610082, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('Moh. Alvin\r\n', 2014, NULL, 'Laki-laki', NULL, '', 14610087, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('MUHAMMAD YUSRUL HANA', 2014, NULL, 'Laki-laki', NULL, '', 14610090, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('RHAZILUN MARSYAHID BADU\r\n', 2014, NULL, 'Laki-laki', NULL, '', 14610091, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('MOH. BADRUT TAMAM', 2014, NULL, 'Laki-laki', NULL, '', 14610095, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('Septedi Nugroho Wijayanto', 2014, NULL, 'Laki-laki', NULL, '', 14610096, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('AHMAD ZAINI\r\n', 2014, NULL, 'Laki-laki', NULL, '', 14610098, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('ARBANIA KABES\r\n', 2014, NULL, 'Perempuan', NULL, '', 14610099, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('DINDA RIZKI MAULINA\r\n', 2015, NULL, 'Perempuan', NULL, '', 15610001, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('KURNIANSYAH ADE ISLAMI\r\n', 2015, NULL, 'Laki-laki', NULL, '', 15610002, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('ANGGI DESTIANA\r\n', 2015, NULL, 'Perempuan', NULL, '', 15610003, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('NOVIA VICKI RINANTI\r\n', 2015, NULL, 'Perempuan', NULL, '', 15610004, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('MUHAMMAD ZAINUR ROZIKIN\r\n', 2015, NULL, 'Laki-laki', NULL, '', 15610005, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('IFTITAHUS SA\'ADAH\r\n', 2015, NULL, 'Perempuan', NULL, '', 15610006, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('MUSFIATIS ZUHROH\r\n', 2015, NULL, 'Perempuan', NULL, '', 15610007, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('FARIDA NURUL \'AINI\r\n', 2015, NULL, 'Perempuan', NULL, '', 15610008, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('MARISKA PERMATA SARI\r\n', 2015, NULL, 'Perempuan', NULL, '', 15610009, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('EVI NOR LAILI SOLIKH AMIN\r\n', 2015, NULL, 'Perempuan', NULL, '', 15610010, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('ATIYATUL ULYA\r\n', 2015, NULL, 'Perempuan', NULL, '', 15610011, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('AHMAD RIDHO A.T\r\n', 2015, NULL, 'Laki-laki', NULL, '', 15610012, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('RUCHIYA AZKIYA\r\n', 2015, NULL, 'Perempuan', NULL, '', 15610013, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('BRILLIANA MAHARANI\r\n', 2015, NULL, 'Perempuan', NULL, '', 15610014, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('MOH. NASIH AMINULLOH\r\n', 2015, NULL, 'Laki-laki', NULL, '', 15610015, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('MOCH. FAISAL HABIBI\r\n', 2015, NULL, 'Laki-laki', NULL, '', 15610016, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('SITI NAULI HIDAYATI\r\n', 2015, NULL, 'Perempuan', NULL, '', 15610017, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('MUJIONO\r\n', 2015, NULL, 'Laki-laki', NULL, '', 15610018, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('KHAIRUL ALI SHIDDIQI\r\n', 2015, NULL, 'Laki-laki', NULL, '', 15610019, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('SARAH RIZKAYANTI\r\n', 2015, NULL, 'Perempuan', NULL, '', 15610020, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('DITA PUSPITA ANGGRAENI\r\n', 2015, NULL, 'Perempuan', NULL, '', 15610021, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('NANDA MUSTAGFIROTUL ULYA\r\n', 2015, NULL, 'Perempuan', NULL, '', 15610022, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('MAULANA AKBAR WIBI\r\n', 2015, NULL, 'Laki-laki', NULL, '', 15610023, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('AMALIA WAHYUNING TYAS\r\n', 2015, NULL, 'Perempuan', NULL, '', 15610024, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('ISVINA UNAIZAHROYA', 2015, NULL, 'Perempuan', NULL, '', 15610025, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('GIMAS NUR MUNAWAROH\r\n', 2015, NULL, 'Perempuan', NULL, '', 15610026, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('ERA JOVANKA FITRI\r\n', 2015, NULL, 'Perempuan', NULL, '', 15610027, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('LILLA NUR RIZKI\r\n', 2015, NULL, 'Perempuan', NULL, '', 15610028, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('AKHMAD KHUMAIDI\r\n', 2015, NULL, 'Laki-laki', NULL, '', 15610029, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('NISA IZZAROTUN NURONIA\r\n', 2015, NULL, 'Perempuan', NULL, '', 15610030, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('PAULANA MEGA SILVANA\r\n', 2015, NULL, 'Perempuan', NULL, '', 15610031, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('ILHAM AHBAB SYAHBANA\r\n', 2015, NULL, 'Laki-laki', NULL, '', 15610032, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('NURUL HIDAYATI\r\n', 2015, NULL, 'Perempuan', NULL, '', 15610033, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('SITI NURHAZIMAH SYAFIGA SAHDA\r\n', 2015, NULL, 'Perempuan', NULL, '', 15610034, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('NOVIANI\r\n', 2015, NULL, 'Perempuan', NULL, '', 15610035, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('NUR AGUSTIN\r\n', 2015, NULL, 'Perempuan', NULL, '', 15610036, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('ANISATUR RIZQIYAH\r\n', 2015, NULL, 'Perempuan', NULL, '', 15610037, '2019-07-16 19:10:34', '0000-00-00 00:00:00');
INSERT INTO `mahasiswa` (`Nama`, `Angkatan`, `Tgl_Lahir`, `Gender`, `Alamat`, `fotomhs`, `id`, `created_at`, `updated_at`) VALUES
('IMADUDDIN\r\n', 2015, NULL, 'Laki-laki', NULL, '', 15610038, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('NOFFRIDA RIANIS SANI', 2015, NULL, 'Perempuan', NULL, '', 15610039, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('GRENDA AYUNING NURANI\r\n', 2015, NULL, 'Perempuan', NULL, '', 15610040, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('RIZAL ARDIANSYAH\r\n', 2015, NULL, 'Laki-laki', NULL, '', 15610041, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('DEWI FIRDAUS\r\n', 2015, NULL, 'Perempuan', NULL, '', 15610042, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('NUR ALIFATUL MUNAWWAROH\r\n', 2015, NULL, 'Perempuan', NULL, '', 15610043, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('MUHAS SHANAH\r\n', 2015, NULL, 'Perempuan', NULL, '', 15610044, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('DEWI KHASANATUL MASYKUROH\r\n', 2015, NULL, 'Perempuan', NULL, '', 15610045, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('MUHAMMAD DZIKRULLAH HANAFI\r\n', 2015, NULL, 'Laki-laki', NULL, '', 15610046, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('NAUFAL INDRA PRADANA\r\n', 2015, NULL, 'Laki-laki', NULL, '', 15610047, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('DWI NOVIANA\r\n', 2015, NULL, 'Perempuan', NULL, '', 15610048, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('MOHAMAD ABDUL FALAH\r\n', 2015, NULL, 'Laki-laki', NULL, '', 15610049, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('FUTICHATUL JANNAH\r\n', 2015, NULL, 'Perempuan', NULL, '', 15610050, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('NUR AINA WIJAYANTI\r\n', 2015, NULL, 'Perempuan', NULL, '', 15610051, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('M. IVAN SOLEH\r\n', 2015, NULL, 'Laki-laki', NULL, '', 15610052, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('ACHMAD SYADDAD MUTAWAKKIL ALALLAH\r\n', 2015, NULL, 'Laki-laki', NULL, '', 15610054, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('NADIA WALINDRA\r\n', 2015, NULL, 'Perempuan', NULL, '', 15610055, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('SAHRUL MUNIR\r\n', 2015, NULL, 'Laki-laki', NULL, '', 15610056, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('MANNAWATUN TOYYIBAH\r\n', 2015, NULL, 'Perempuan', NULL, '', 15610057, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('INDAH NURUL KHUSNA\r\n', 2015, NULL, 'Perempuan', NULL, '', 15610058, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('DIMAS ADI PRATAMA\r\n', 2015, NULL, 'Laki-laki', NULL, '', 15610059, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('KURNIA SHINTA LATUSINDAH\r\n', 2015, NULL, 'Perempuan', NULL, '', 15610060, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('ZHELA DITA\r\n', 2015, NULL, 'Perempuan', NULL, '', 15610061, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('SIGIT DENI SANTOSO\r\n', 2015, NULL, 'Laki-laki', NULL, '', 15610062, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('NINDI AGUSTIA ISLAMI\r\n', 2015, NULL, 'Perempuan', NULL, '', 15610063, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('DIDA HALIMATUS SA`DIYAH\r\n', 2015, NULL, 'Perempuan', NULL, '', 15610064, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('AZIM AYU ZAMZAMI', 2015, NULL, 'Perempuan', NULL, '', 15610065, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('VERA MUSTIKA', 2015, NULL, 'Perempuan', NULL, '', 15610066, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('NAILY FAJRIYATUL MAFTUHAH\r\n', 2015, NULL, 'Perempuan', NULL, '', 15610067, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('LAZATIN `ANIQOH\r\n', 2015, NULL, 'Perempuan', NULL, '', 15610068, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('FARRAH NURMALIA SARI', 2015, NULL, 'Perempuan', NULL, '', 15610069, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('INTAN LAILI FAUJIAH\r\n', 2015, NULL, 'Perempuan', NULL, '', 15610070, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('MUSTAINUL IHWAN\r\n', 2015, NULL, 'Laki-laki', NULL, '', 15610071, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('UMAR ZUKI\r\n', 2015, NULL, 'Laki-laki', NULL, '', 15610072, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('ARRAFI KURNIA RASYID\r\n', 2015, NULL, 'Laki-laki', NULL, '', 15610073, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('AHMAD ULUL HAZMI\r\n', 2015, NULL, 'Laki-laki', NULL, '', 15610074, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('M. SYAMSU DLUCHA\r\n', 2015, NULL, 'Laki-laki', NULL, '', 15610075, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('ARIK ADI PRAMONO\r\n', 2015, NULL, 'Laki-laki', NULL, '', 15610076, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('TYAS AYU EVANI\r\n', 2015, NULL, 'Perempuan', NULL, '', 15610077, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('ASTRI KUMALA\r\n', 2015, NULL, 'Perempuan', NULL, '', 15610078, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('FIDYATUS SAFITRI', 2015, NULL, 'Perempuan', NULL, '', 15610079, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('ELMA AL HUSNA\r\n', 2015, NULL, 'Perempuan', NULL, '', 15610080, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('APRILIA HARVYE SOVIA DEWI\r\n', 2015, NULL, 'Perempuan', NULL, '', 15610081, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('TIA WAHYU SEPTIANA', 2015, NULL, 'Perempuan', NULL, '', 15610082, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('ZAHROTUL FAJRIYAH\r\n', 2015, NULL, 'Perempuan', NULL, '', 15610083, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('NUR AKROMATUL LAILI RAMADHAN\r\n', 2015, NULL, 'Perempuan', NULL, '', 15610084, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('M. HUSEN AL FARISY\r\n', 2015, NULL, 'Laki-laki', NULL, '', 15610085, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('IKKA MEILISA NOVIANI\r\n', 2015, NULL, 'Perempuan', NULL, '', 15610086, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('GHINA AYU KUSUMANING DEWI\r\n', 2015, NULL, 'Perempuan', NULL, '', 15610087, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('JIE YAN KIRANA EMBUN KUMALA ASIH\r\n', 2015, NULL, 'Perempuan', NULL, '', 15610088, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('IQBAL TAUFIQURROCHMAN\r\n', 2015, NULL, 'Laki-laki', NULL, '', 15610089, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('MOH.MUHLIS FIRDAUS\r\n', 2015, NULL, 'Laki-laki', NULL, '', 15610090, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('ELMIRA DWI YUNIZAR\r\n', 2015, NULL, 'Perempuan', NULL, '', 15610091, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('MOCHAMMAD DEDIK ZAINURROZIQIN\r\n', 2015, NULL, 'Laki-laki', NULL, '', 15610093, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('FITRIA IMROATUL MUFIDA\r\n', 2015, NULL, 'Perempuan', NULL, '', 15610094, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('SULAIMAN HAMDANI ALFARID\r\n', 2015, NULL, 'Laki-laki', NULL, '', 15610095, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('AMINATUS SA`DIAH\r\n', 2015, NULL, 'Perempuan', NULL, '', 15610096, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('EVANA DYAH PURNAMASTUTI\r\n', 2015, NULL, 'Perempuan', NULL, '', 15610097, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('MOHAMMAD ULIL ALBAB\r\n', 2015, NULL, 'Laki-laki', NULL, '', 15610098, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('AULIA RIF`ATI\r\n', 2015, NULL, 'Perempuan', NULL, '', 15610101, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('RAFENDA MUNDI WIDYA ZALICHA\r\n', 2015, NULL, 'Perempuan', NULL, '', 15610102, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('ABDULLAH FAHMI\r\n', 2015, NULL, 'Laki-laki', NULL, '', 15610103, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('HILMA DWI IKTAMALA\r\n', 2015, NULL, 'Perempuan', NULL, '', 15610104, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('DWY AINURROKHIMAH PUTRI\r\n', 2015, NULL, 'Perempuan', NULL, '', 15610105, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('NUR AINI AMILATUS SOLIKAH\r\n', 2015, NULL, 'Perempuan', NULL, '', 15610106, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('LILA ARYANI PUSPITASARI\r\n', 2015, NULL, 'Perempuan', NULL, '', 15610107, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('AFRIZAL PRADANA\r\n', 2015, NULL, 'Laki-laki', NULL, '', 15610108, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('MUHAMMAD ARIS ABDILLAH\r\n', 2015, NULL, 'Laki-laki', NULL, '', 15610109, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('INTAN MUSTIKA SAKTI\r\n', 2015, NULL, 'Perempuan', NULL, '', 15610110, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('MAILA SANTI RAHMANIA\r\n', 2015, NULL, 'Perempuan', NULL, '', 15610111, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('RIZKA NINDA LESTARI\r\n', 2015, NULL, 'Perempuan', NULL, '', 15610112, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('LISA SHERLY CHOLIQA\r\n', 2015, NULL, 'Perempuan', NULL, '', 15610114, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('FITRIA QOTRUNNADA\r\n', 2015, NULL, 'Perempuan', NULL, '', 15610115, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('TRI CANDRA NUR MUHAIMIN\r\n', 2015, NULL, 'Laki-laki', NULL, '', 15610116, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('LISAHATUL KHOTIJAH\r\n', 2015, NULL, 'Perempuan', NULL, '', 15610117, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('MOH MASBUHIN SULAIMAN\r\n', 2015, NULL, 'Laki-laki', NULL, '', 15610118, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('SYAFIUL ULUM\r\n', 2015, NULL, 'Laki-laki', NULL, '', 15610119, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('NABILA UMAR\r\n', 2015, NULL, 'Perempuan', NULL, '', 15610120, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('MUHAMMAD ROFIUL HAMIM\r\n', 2015, NULL, 'Laki-laki', NULL, '', 15610121, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('ALIF SAIDA AL HUSNA\r\n', 2015, NULL, 'Perempuan', NULL, '', 15610122, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('HANA PUTRI PERTIWI\r\n', 2015, NULL, 'Perempuan', NULL, '', 15610123, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('ARDI MULIAWAN\r\n', 2015, NULL, 'Laki-laki', NULL, '', 15610124, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('MOHAMMAD FIRMAN BAYUSAKTI\r\n', 2015, NULL, 'Laki-laki', NULL, '', 15610125, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('MIYA RIZKIYA ULKHAK\r\n', 2015, NULL, 'Perempuan', NULL, '', 15610126, '2019-07-16 19:10:34', '0000-00-00 00:00:00'),
('RIZKY AMELIA KHASANAH', 2016, NULL, 'Perempuan', NULL, NULL, 16610001, '2019-08-02 09:43:19', '0000-00-00 00:00:00'),
('WINDA ANUGRAHANTI', 2016, NULL, 'Perempuan', NULL, NULL, 16610002, '2019-08-02 09:43:19', '0000-00-00 00:00:00'),
('Mardiah', 2016, NULL, 'Perempuan', NULL, NULL, 16610003, '2019-08-02 09:43:19', '0000-00-00 00:00:00'),
('LUTFIATUL QUMAH', 2016, NULL, 'Perempuan', NULL, NULL, 16610004, '2019-08-02 09:43:19', '0000-00-00 00:00:00'),
('Ulil Amri Akbar', 2016, NULL, 'Laki-laki', NULL, NULL, 16610005, '2019-08-02 09:43:19', '0000-00-00 00:00:00'),
('TUTY ALFIANI', 2016, NULL, 'Perempuan', NULL, NULL, 16610006, '2019-08-02 09:43:19', '0000-00-00 00:00:00'),
('Nur Jihan Qothrunnada', 2016, NULL, 'Perempuan', NULL, NULL, 16610007, '2019-08-02 09:43:19', '0000-00-00 00:00:00'),
('Nuchaila Ainiyah', 2016, NULL, 'Perempuan', NULL, NULL, 16610008, '2019-08-02 09:43:19', '0000-00-00 00:00:00'),
('Doni Yogi Pratama', 2016, NULL, 'Laki-laki', NULL, NULL, 16610009, '2019-08-02 09:43:19', '0000-00-00 00:00:00'),
('Ilmiatul Muhibah', 2016, NULL, 'Perempuan', NULL, NULL, 16610010, '2019-08-02 09:43:19', '0000-00-00 00:00:00'),
('PUTRI LESTARI', 2016, NULL, 'Perempuan', NULL, NULL, 16610011, '2019-08-02 09:43:19', '0000-00-00 00:00:00'),
('NUR DANA NOVIYANTI SALMA', 2016, NULL, 'Perempuan', NULL, NULL, 16610012, '2019-08-02 09:43:19', '0000-00-00 00:00:00'),
('M. INDRA SEPTIAN HARIS', 2016, NULL, 'Laki-laki', NULL, NULL, 16610013, '2019-08-02 09:43:19', '0000-00-00 00:00:00'),
('ZAUHAROTUL MAKNUN', 2016, NULL, 'Perempuan', NULL, NULL, 16610014, '2019-08-02 09:43:19', '0000-00-00 00:00:00'),
('SAFRILA SHOFANIA', 2016, NULL, 'Perempuan', NULL, NULL, 16610015, '2019-08-02 09:43:19', '0000-00-00 00:00:00'),
('DWI HAMEDIA WATI', 2016, NULL, 'Perempuan', NULL, NULL, 16610016, '2019-08-02 09:43:19', '0000-00-00 00:00:00'),
('Herry Kumala Cahya', 2016, NULL, 'Laki-laki', NULL, NULL, 16610018, '2019-08-02 09:43:19', '0000-00-00 00:00:00'),
('Adib Maulida', 2016, NULL, 'Laki-laki', NULL, NULL, 16610019, '2019-08-02 09:43:19', '0000-00-00 00:00:00'),
('FIRA RIAN NUGRAHENI\r\n', 2016, NULL, 'Perempuan', NULL, NULL, 16610020, '2019-08-02 09:43:19', '0000-00-00 00:00:00'),
('Machmud Khudlori Alfauzi', 2019, NULL, 'Laki-laki', NULL, NULL, 16610021, '2019-08-02 09:43:19', '0000-00-00 00:00:00'),
('ELOK IZZATUL MARDHIYAH', 2016, NULL, 'Perempuan', NULL, NULL, 16610022, '2019-08-02 09:43:19', '0000-00-00 00:00:00'),
('ABIL ANAM BIL HAQ', 2016, NULL, 'Laki-laki', NULL, NULL, 16610023, '2019-08-02 09:43:19', '0000-00-00 00:00:00'),
('LUTFI ALWI MUZAKKA', 2016, NULL, 'Laki-laki', NULL, NULL, 16610024, '2019-08-02 09:43:19', '0000-00-00 00:00:00'),
('This\'atun Na\'imah', 2016, NULL, 'Perempuan', NULL, NULL, 16610025, '2019-08-02 09:43:19', '0000-00-00 00:00:00'),
('FAHMI ISHAQI', 2016, NULL, 'Laki-laki', NULL, NULL, 16610026, '2019-08-02 09:43:19', '0000-00-00 00:00:00'),
('HERNITA EKA KURNIATI', 2016, NULL, 'Laki-laki', NULL, NULL, 16610027, '2019-08-02 09:43:19', '0000-00-00 00:00:00'),
('ROHAMAH', 2016, NULL, 'Perempuan', NULL, NULL, 16610028, '2019-08-02 09:43:19', '0000-00-00 00:00:00'),
('RIZKA APRIYANTI', 2016, NULL, 'Perempuan', NULL, NULL, 16610029, '2019-08-02 09:43:19', '0000-00-00 00:00:00'),
('AISA KHOIRUL UMAROH', 2016, NULL, 'Perempuan', NULL, NULL, 16610030, '2019-08-02 09:43:19', '0000-00-00 00:00:00'),
('SAIDAH AJILATUN N', 2016, NULL, 'Perempuan', NULL, NULL, 16610031, '2019-08-02 09:43:19', '0000-00-00 00:00:00'),
('Ni\'matul Ilmi M. Rojabi', 2016, NULL, 'Perempuan', NULL, NULL, 16610032, '2019-08-02 09:43:19', '0000-00-00 00:00:00'),
('WEKA DWI KARTIKA', 2016, NULL, 'Perempuan', NULL, NULL, 16610033, '2019-08-02 09:43:19', '0000-00-00 00:00:00'),
('ELLY NUR FARIDA', 2016, NULL, 'Perempuan', NULL, NULL, 16610034, '2019-08-02 09:43:19', '0000-00-00 00:00:00'),
('MUHAMMAD ZIA ALGHAR', 2016, NULL, 'Laki-laki', NULL, NULL, 16610035, '2019-08-02 09:43:19', '0000-00-00 00:00:00'),
('NUR CHOLIS SANTIYA DEWI', 2016, NULL, 'Perempuan', NULL, NULL, 16610037, '2019-08-02 09:43:19', '0000-00-00 00:00:00'),
('HELLIYATUS SAADAH', 2016, NULL, 'Perempuan', NULL, NULL, 16610038, '2019-08-02 09:43:19', '0000-00-00 00:00:00'),
('Abdur Rozak', 2016, NULL, 'Laki-laki', NULL, NULL, 16610039, '2019-08-02 09:43:19', '0000-00-00 00:00:00'),
('HADI', 2016, NULL, 'Laki-laki', NULL, NULL, 16610040, '2019-08-02 09:43:19', '0000-00-00 00:00:00'),
('Siti Hurriyati', 2016, NULL, 'Perempuan', NULL, NULL, 16610041, '2019-08-02 09:43:19', '0000-00-00 00:00:00'),
('Indah Cahyanti', 2016, NULL, 'Perempuan', NULL, NULL, 16610042, '2019-08-02 09:43:19', '0000-00-00 00:00:00'),
('Hilmiyatur Robiah', 2016, NULL, 'Perempuan', NULL, NULL, 16610043, '2019-08-02 09:43:19', '0000-00-00 00:00:00'),
('Febri Nur Fitriana', 2016, NULL, 'Perempuan', NULL, NULL, 16610044, '2019-08-02 09:43:19', '0000-00-00 00:00:00'),
('Tsabitatur Rohmawati', 2016, NULL, 'Perempuan', NULL, NULL, 16610045, '2019-08-02 09:43:19', '0000-00-00 00:00:00'),
('DEVI NUR AFIFAH', 2016, NULL, 'Perempuan', NULL, NULL, 16610046, '2019-08-02 09:43:19', '0000-00-00 00:00:00'),
('EMALIA NAILUN MACHFUDHO', 2016, NULL, 'Perempuan', NULL, NULL, 16610047, '2019-08-02 09:43:19', '0000-00-00 00:00:00'),
('RIF`ATUL SYARIFAH', 2016, NULL, 'Perempuan', NULL, NULL, 16610048, '2019-08-02 09:43:19', '0000-00-00 00:00:00'),
('IRMA DWI PRATIWI', 2016, NULL, 'Perempuan', NULL, NULL, 16610049, '2019-08-02 09:43:19', '0000-00-00 00:00:00'),
('Rizha Husnur Rozikin', 2016, NULL, 'Laki-laki', NULL, NULL, 16610050, '2019-08-02 09:43:19', '0000-00-00 00:00:00'),
('Soimatul Makfiroh', 2016, NULL, 'Perempuan', NULL, NULL, 16610051, '2019-08-02 09:43:19', '0000-00-00 00:00:00'),
('LULUK AFIFAH', 2016, NULL, 'Perempuan', NULL, NULL, 16610052, '2019-08-02 09:43:19', '0000-00-00 00:00:00'),
('Alfi Unsiati Ummi Hana', 2016, NULL, 'Perempuan', NULL, NULL, 16610053, '2019-08-02 09:43:19', '0000-00-00 00:00:00'),
('ISTIQOMA PUTRI SALSABIL', 2016, NULL, 'Perempuan', NULL, NULL, 16610054, '2019-08-02 09:43:19', '0000-00-00 00:00:00'),
('Noer Sakinah Isroniyah Arisanti', 2016, NULL, 'Perempuan', NULL, NULL, 16610055, '2019-08-02 09:43:19', '0000-00-00 00:00:00'),
('INTAN FARA MAULIDA', 2016, NULL, 'Perempuan', NULL, NULL, 16610056, '2019-08-02 09:43:19', '0000-00-00 00:00:00'),
('KHANIFATUN MAISYAROH', 2016, NULL, 'Perempuan', NULL, NULL, 16610057, '2019-08-02 09:43:19', '0000-00-00 00:00:00'),
('RENTA WINDASARI', 2016, NULL, 'Perempuan', NULL, NULL, 16610058, '2019-08-02 09:43:19', '0000-00-00 00:00:00'),
('Mega Putri Sriutari', 2016, NULL, 'Perempuan', NULL, NULL, 16610059, '2019-08-02 09:43:19', '0000-00-00 00:00:00'),
('LAILATUL MAZIYAH WILDAN MUFARIDHO', 2016, NULL, 'Perempuan', NULL, NULL, 16610060, '2019-08-02 09:43:19', '0000-00-00 00:00:00'),
('Alfu Alfinnikmah', 2016, NULL, 'Perempuan', NULL, NULL, 16610061, '2019-08-02 09:43:19', '0000-00-00 00:00:00'),
('SELY AYU RAHMASARI', 2016, NULL, 'Perempuan', NULL, NULL, 16610062, '2019-08-02 09:43:19', '0000-00-00 00:00:00'),
('Yusrotul Fajri', 2016, NULL, 'Laki-laki', NULL, NULL, 16610063, '2019-08-02 09:43:19', '0000-00-00 00:00:00'),
('Misnoto', 2016, NULL, 'Laki-laki', NULL, NULL, 16610064, '2019-08-02 09:43:19', '0000-00-00 00:00:00'),
('Misbah Fahamsyah', 2016, NULL, 'Laki-laki', NULL, NULL, 16610066, '2019-08-02 09:43:19', '0000-00-00 00:00:00'),
('TALITHA NARISWARI FARENDRA', 2016, NULL, 'Perempuan', NULL, NULL, 16610067, '2019-08-02 09:43:19', '0000-00-00 00:00:00'),
('Iqbalia Ilham Pradini Putri', 2016, NULL, 'Perempuan', NULL, NULL, 16610068, '2019-08-02 09:43:19', '0000-00-00 00:00:00'),
('MUHAMMAD IRFAN AFANDI', 2016, NULL, 'Laki-laki', NULL, NULL, 16610070, '2019-08-02 09:43:19', '0000-00-00 00:00:00'),
('Syaiful Ghozi', 2016, NULL, 'Laki-laki', NULL, NULL, 16610071, '2019-08-02 09:43:19', '0000-00-00 00:00:00'),
('Yasmine Ramadhanty A.', 2016, NULL, 'Perempuan', NULL, NULL, 16610072, '2019-08-02 09:43:19', '0000-00-00 00:00:00'),
('ERI ULFAH SUKMANIATI PUTRI', 2016, NULL, 'Perempuan', NULL, NULL, 16610073, '2019-08-02 09:43:19', '0000-00-00 00:00:00'),
('RUTBAH', 2016, NULL, 'Perempuan', NULL, NULL, 16610075, '2019-08-02 09:43:19', '0000-00-00 00:00:00'),
('ARINA FITRI ROZANNI', 2016, NULL, 'Perempuan', NULL, NULL, 16610076, '2019-08-02 09:43:19', '0000-00-00 00:00:00'),
('HESTI WIJAYANTI', 2016, NULL, 'Perempuan', NULL, NULL, 16610077, '2019-08-02 09:43:19', '0000-00-00 00:00:00'),
('Muhimmatul Aliyah', 2016, NULL, 'Perempuan', NULL, NULL, 16610079, '2019-08-02 09:43:19', '0000-00-00 00:00:00'),
('Niksie Greta Sanchia', 2016, NULL, 'Perempuan', NULL, NULL, 16610081, '2019-08-02 09:43:19', '0000-00-00 00:00:00'),
('AMELIA ALAN NISYA`', 2016, NULL, 'Perempuan', NULL, NULL, 16610082, '2019-08-02 09:43:19', '0000-00-00 00:00:00'),
('AHMAD MUMTAZ ANWARI', 2016, NULL, 'Laki-laki', NULL, NULL, 16610083, '2019-08-02 09:43:19', '0000-00-00 00:00:00'),
('Nida Nisrina', 2016, NULL, 'Perempuan', NULL, NULL, 16610084, '2019-08-02 09:43:19', '0000-00-00 00:00:00'),
('DAVID SUDARMAWAN', 2016, NULL, 'Laki-laki', NULL, NULL, 16610085, '2019-08-02 09:43:19', '0000-00-00 00:00:00'),
('FADHILAH', 2016, NULL, 'Perempuan', NULL, NULL, 16610087, '2019-08-02 09:43:19', '0000-00-00 00:00:00'),
('Aminatuz Zahro', 2016, NULL, 'Perempuan', NULL, NULL, 16610088, '2019-08-02 09:43:19', '0000-00-00 00:00:00'),
('Ramadani Auliyana Rosa', 2016, NULL, 'Perempuan', NULL, NULL, 16610089, '2019-08-02 09:43:19', '0000-00-00 00:00:00'),
('Rina Setyawati', 2016, NULL, 'Perempuan', NULL, NULL, 16610090, '2019-08-02 09:43:19', '0000-00-00 00:00:00'),
('AKHMAD HAIDAR A`FWANDI', 2016, NULL, 'Laki-laki', NULL, NULL, 16610091, '2019-08-02 09:43:19', '0000-00-00 00:00:00'),
('Maulana Fadli', 2016, NULL, 'Laki-laki', NULL, NULL, 16610092, '2019-08-02 09:43:19', '0000-00-00 00:00:00'),
('Khilmi Hani', 2016, NULL, 'Perempuan', NULL, NULL, 16610093, '2019-08-02 09:43:19', '0000-00-00 00:00:00'),
('Mohammad Rifqi Riza P.', 2016, NULL, 'Laki-laki', NULL, NULL, 16610094, '2019-08-02 09:43:19', '0000-00-00 00:00:00'),
('Silvia Nafarin', 2016, NULL, 'Perempuan', NULL, NULL, 16610095, '2019-08-02 09:43:19', '0000-00-00 00:00:00'),
('Dwi Miftakhul Jannah', 2016, NULL, 'Perempuan', NULL, NULL, 16610096, '2019-08-02 09:43:19', '0000-00-00 00:00:00'),
('Jazilatul \'Atiyyaah', 2016, NULL, 'Perempuan', NULL, NULL, 16610097, '2019-08-02 09:43:19', '0000-00-00 00:00:00'),
('Zahra Firdausa K.', 2016, NULL, 'Perempuan', NULL, NULL, 16610099, '2019-08-02 09:43:19', '0000-00-00 00:00:00'),
('Fatimatuzzahro', 2016, NULL, 'Perempuan', NULL, NULL, 16610100, '2019-08-02 09:43:19', '0000-00-00 00:00:00'),
('Muhammad Fahrurrozi', 2016, NULL, 'Laki-laki', NULL, NULL, 16610101, '2019-08-02 09:43:19', '0000-00-00 00:00:00'),
('Iim Masniyah', 2016, NULL, 'Perempuan', NULL, NULL, 16610102, '2019-08-02 09:43:19', '0000-00-00 00:00:00'),
('Nur Rif\'at Sonhaji', 2016, NULL, 'Laki-laki', NULL, NULL, 16610103, '2019-08-02 09:43:19', '0000-00-00 00:00:00'),
('A`YUNINA FAIDATUL N', 2016, NULL, 'Perempuan', NULL, NULL, 16610105, '2019-08-02 09:43:19', '0000-00-00 00:00:00'),
('KIKI RIZKIYATUL FAJRIYAH', 2016, NULL, 'Laki-laki', NULL, NULL, 16610106, '2019-08-02 09:43:19', '0000-00-00 00:00:00'),
('Lilis Fatmayustika', 2016, NULL, 'Perempuan', NULL, NULL, 16610107, '2019-08-02 09:43:19', '0000-00-00 00:00:00'),
('Ahmat Arifin', 2016, NULL, 'Laki-laki', NULL, NULL, 16610108, '2019-08-02 09:43:19', '0000-00-00 00:00:00'),
('MEIDITAMA FIRMANDIO SANURIBAS', 2016, NULL, 'Laki-laki', NULL, NULL, 16610109, '2019-08-02 09:43:19', '0000-00-00 00:00:00'),
('Rizka Allifatur Rohmah', 2016, NULL, 'Perempuan', NULL, NULL, 16610110, '2019-08-02 09:43:19', '0000-00-00 00:00:00'),
('Achmad Zailanil Ulum', 2016, NULL, 'Laki-laki', NULL, NULL, 16610111, '2019-08-02 09:43:19', '0000-00-00 00:00:00'),
('Sayid Syeh Yusuf A.', 2016, NULL, 'Laki-laki', NULL, NULL, 16610112, '2019-08-02 09:43:19', '0000-00-00 00:00:00'),
('Miladia Kholilah', 2016, NULL, 'Perempuan', NULL, NULL, 16610113, '2019-08-02 09:43:19', '0000-00-00 00:00:00'),
('Nourma Firdausi', 2016, NULL, 'Perempuan', NULL, NULL, 16610114, '2019-08-02 09:43:19', '0000-00-00 00:00:00'),
('Kaisarama A\'raaf Azadirachta', 2016, NULL, 'Laki-laki', NULL, NULL, 16610115, '2019-08-02 09:43:19', '0000-00-00 00:00:00'),
('Jingga Sukma Titanica', 2016, NULL, 'Perempuan', NULL, NULL, 16610116, '2019-08-02 09:43:19', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `melaksanakan`
--

CREATE TABLE `melaksanakan` (
  `mahasiswa_id` int(11) NOT NULL,
  `pklkkm_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `melaksanakan`
--

INSERT INTO `melaksanakan` (`mahasiswa_id`, `pklkkm_id`) VALUES
(15610082, 1),
(15610039, 2),
(15610065, 3),
(15610066, 4),
(15610079, 5),
(15610036, 6),
(15610019, 7),
(15610083, 8),
(15610095, 9),
(15610120, 9),
(15610025, 10),
(15610094, 11),
(15610114, 12),
(15610111, 13),
(15610126, 14),
(15610123, 15),
(15610010, 16),
(15610115, 17),
(15610030, 18),
(15610046, 19),
(15610080, 19),
(15610042, 20),
(15610108, 21),
(15610090, 22),
(15610021, 23),
(15610081, 24),
(15610015, 25),
(15610061, 25),
(15610055, 26),
(15610078, 27),
(15610051, 28),
(15610071, 28),
(15610069, 29),
(15610045, 30),
(15610093, 31),
(15610058, 32),
(15610125, 32),
(15610067, 33),
(15610068, 34),
(15610084, 35),
(15610070, 36),
(15610063, 37),
(15610041, 38),
(15610016, 39),
(15610007, 40),
(15610004, 41),
(15610001, 42),
(15610018, 43),
(15610103, 44),
(15610075, 45),
(15610002, 46),
(15610033, 47),
(15610022, 48),
(15610056, 49),
(15610035, 50),
(15610027, 51),
(15610076, 52),
(15610038, 53),
(15610072, 54),
(15610008, 55),
(15610013, 56),
(15610029, 56),
(15610031, 57),
(15610117, 57),
(15610057, 58),
(15610037, 59),
(15610104, 60),
(15610091, 61),
(15610050, 62),
(15610028, 63),
(15610106, 64),
(14610091, 65),
(15610017, 65),
(15610026, 66),
(15610024, 67),
(15610062, 68),
(15610107, 69),
(15610064, 70),
(15610101, 71),
(15610032, 72),
(15610112, 72),
(15610105, 73),
(15610012, 74),
(15610087, 75),
(15610047, 76),
(15610003, 77),
(15610118, 78),
(15610119, 79),
(15610048, 80),
(15610110, 81),
(15610121, 82),
(15610088, 83),
(15610102, 84),
(15610014, 85),
(15610049, 85),
(15610097, 86),
(15610006, 87),
(15610011, 87),
(15610009, 88),
(15610086, 89),
(15610098, 89),
(15610077, 90),
(15610060, 91),
(15610052, 92),
(15610116, 93),
(15610089, 94),
(15610109, 95),
(15610040, 96),
(15610096, 97),
(15610034, 98),
(15610085, 99),
(15610059, 100),
(15610073, 101),
(15610074, 102),
(15610023, 103),
(15610005, 104),
(15610020, 105),
(15610122, 106),
(15610043, 107),
(15610044, 108),
(15610124, 108),
(15610054, 109),
(14610020, 110),
(14610099, 111),
(14610098, 112),
(14610027, 113),
(14610058, 114),
(14610059, 115),
(14610081, 116),
(14610036, 117),
(14610041, 118),
(14610057, 119),
(14610047, 120),
(14610062, 121),
(14610006, 122),
(14610012, 123),
(14610016, 124),
(14610030, 125),
(14610049, 126),
(14610095, 127),
(14610068, 128),
(14610090, 129),
(14610075, 130),
(14610072, 131),
(14610074, 132),
(14610076, 133),
(14610077, 134),
(14610079, 135),
(14610082, 136),
(14610040, 137),
(14610043, 138),
(14610044, 139),
(14610045, 140),
(14610017, 141),
(14610018, 142),
(14610024, 143),
(15610058, 144),
(15610063, 145),
(15610070, 146),
(15610081, 147),
(15610084, 148),
(15610001, 149),
(15610008, 150),
(15610016, 151),
(15610030, 152),
(15610089, 153),
(15610007, 154),
(15610031, 155),
(15610060, 156),
(15610078, 157),
(15610015, 158),
(15610021, 159),
(15610120, 160),
(15610013, 161),
(15610024, 162),
(15610025, 163),
(15610026, 164),
(15610085, 165),
(15610033, 166),
(15610003, 167),
(15610022, 168),
(15610006, 169),
(15610009, 170),
(15610011, 171),
(15610050, 172),
(15610064, 173),
(15610077, 174),
(15610076, 175),
(15610082, 176),
(15610093, 177),
(15610115, 178),
(15610123, 179),
(15610028, 180),
(15610086, 181),
(15610087, 182),
(15610097, 183),
(15610056, 184),
(15610072, 185),
(15610045, 186),
(15610066, 187),
(15610116, 188),
(15610119, 189),
(14610025, 190),
(15610121, 191),
(15610098, 192),
(15610096, 193),
(15610110, 194),
(15610112, 195),
(15610126, 196),
(15610036, 197),
(15610057, 198),
(15610051, 199),
(15610054, 200),
(15610124, 201),
(15610038, 202),
(15610039, 203),
(15610041, 204),
(15610042, 205),
(15610043, 206),
(15610101, 207),
(15610111, 208),
(15610114, 209),
(15610019, 210),
(15610029, 211),
(15610035, 212),
(15610088, 213),
(15610117, 214),
(15610102, 215),
(15610104, 216),
(15610106, 217),
(15610109, 218),
(15610122, 219),
(15610005, 220),
(15610103, 221),
(15610049, 222),
(15610105, 223),
(15610004, 224),
(15610040, 225),
(15610059, 226),
(15610075, 227),
(15610073, 228),
(15610071, 229),
(15610079, 230),
(15610048, 231),
(15610091, 232),
(15610037, 233),
(15610068, 234),
(15610074, 235),
(15610125, 236),
(15610027, 237),
(15610065, 238),
(15610002, 239),
(15610062, 240),
(15610090, 241),
(15610095, 242),
(15610014, 243),
(15610020, 244),
(15610044, 245),
(15610055, 246),
(15610061, 247),
(15610067, 248),
(12610091, 249),
(14610061, 250),
(14610087, 251),
(14610096, 252),
(15610023, 253),
(15610118, 254),
(15610018, 255),
(14610091, 256),
(15610017, 257),
(15610094, 258),
(15610080, 259),
(15610083, 260),
(15610108, 261),
(15610046, 262),
(15610052, 263),
(15610032, 264),
(15610107, 265),
(15610010, 266),
(15610069, 267),
(16610006, 268),
(16610076, 271),
(16610054, 272),
(16610028, 275),
(16610070, 275),
(16610072, 275),
(16610108, 278),
(16610011, 281),
(16610089, 282),
(16610001, 285),
(16610013, 287),
(16610023, 287),
(16610027, 288),
(16610093, 288),
(16610105, 288),
(16610005, 291),
(16610035, 291),
(16610063, 291),
(16610094, 291),
(16610103, 291),
(16610077, 292),
(16610116, 292),
(16610042, 294),
(16610079, 294),
(16610081, 294),
(16610003, 295),
(16610043, 295),
(16610044, 295),
(16610045, 295),
(16610084, 295),
(16610018, 296),
(16610039, 296),
(16610050, 296),
(16610071, 296),
(16610111, 296),
(16610076, 297),
(16610012, 298),
(16610075, 299),
(16610014, 300),
(16610067, 301),
(16610054, 302),
(16610038, 303),
(16610062, 304),
(16610001, 305),
(16610048, 306),
(16610004, 307),
(16610082, 307),
(16610037, 308),
(16610049, 309),
(16610046, 310),
(16610047, 311),
(16610052, 312),
(16610006, 313),
(16610056, 314),
(16610060, 314),
(16610033, 315),
(16610002, 316),
(16610024, 317),
(16610030, 317),
(16610020, 318),
(16610026, 318),
(16610013, 319),
(16610022, 319),
(16610029, 320),
(16610028, 321),
(16610015, 322),
(16610031, 322),
(16610057, 323),
(16610011, 324),
(16610091, 324),
(16610016, 325),
(16610035, 325),
(16610070, 326),
(16610073, 327),
(16610109, 328),
(16610106, 329),
(16610027, 330),
(16610023, 331),
(16610058, 332),
(16610083, 334),
(16610085, 334),
(16610105, 335),
(16610034, 336),
(16610077, 337),
(16610040, 338),
(16610087, 338),
(16610092, 339),
(16610025, 340),
(16610066, 341),
(16610064, 342),
(16610018, 343),
(16610072, 344),
(16610063, 345),
(16610102, 346),
(16610032, 347),
(16610019, 348),
(16610093, 348),
(16610100, 349),
(16610005, 350),
(16610103, 351),
(16610021, 352),
(16610008, 353),
(16610097, 354),
(16610045, 355),
(16610053, 356),
(16610094, 357),
(16610044, 358),
(16610059, 359),
(16610061, 360),
(16610068, 361),
(16610007, 362),
(16610107, 363),
(16610009, 364),
(16610096, 364),
(16610050, 365),
(16610081, 366),
(16610071, 367),
(16610051, 368),
(16610115, 368),
(16610101, 369),
(16610114, 369),
(16610108, 370),
(16610111, 371),
(16610042, 372),
(16610116, 373),
(16610079, 374),
(16610113, 375),
(16610003, 376),
(16610055, 377),
(16610099, 378),
(16610110, 379),
(16610089, 380),
(16610088, 381),
(16610090, 382),
(16610010, 383),
(16610095, 384),
(16610041, 385),
(16610043, 386);

-- --------------------------------------------------------

--
-- Table structure for table `membimbing`
--

CREATE TABLE `membimbing` (
  `KodeDosen` int(11) NOT NULL,
  `ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mengarang`
--

CREATE TABLE `mengarang` (
  `IDPenulis` int(11) NOT NULL,
  `IDBuku` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mengarang`
--

INSERT INTO `mengarang` (`IDPenulis`, `IDBuku`, `created_at`, `updated_at`) VALUES
(1, 1, '2019-07-23 14:45:21', '0000-00-00 00:00:00'),
(2, 2, '2019-07-23 14:45:21', '0000-00-00 00:00:00'),
(3, 3, '2019-07-23 14:45:21', '0000-00-00 00:00:00'),
(3, 62, '2019-07-23 14:45:21', '0000-00-00 00:00:00'),
(4, 4, '2019-07-23 14:45:21', '0000-00-00 00:00:00'),
(5, 5, '2019-07-23 14:45:21', '0000-00-00 00:00:00'),
(6, 6, '2019-07-23 14:45:21', '0000-00-00 00:00:00'),
(7, 7, '2019-07-23 14:45:21', '0000-00-00 00:00:00'),
(7, 29, '2019-07-23 14:45:21', '0000-00-00 00:00:00'),
(8, 8, '2019-07-23 14:45:21', '0000-00-00 00:00:00'),
(8, 10, '2019-07-23 14:45:21', '0000-00-00 00:00:00'),
(8, 18, '2019-07-23 14:45:21', '0000-00-00 00:00:00'),
(9, 9, '2019-07-23 14:45:21', '0000-00-00 00:00:00'),
(10, 23, '2019-07-23 14:45:21', '0000-00-00 00:00:00'),
(11, 11, '2019-07-23 14:45:21', '0000-00-00 00:00:00'),
(12, 12, '2019-07-23 14:45:21', '0000-00-00 00:00:00'),
(13, 13, '2019-07-23 14:45:21', '0000-00-00 00:00:00'),
(14, 14, '2019-07-23 14:45:21', '0000-00-00 00:00:00'),
(15, 15, '2019-07-23 14:45:21', '0000-00-00 00:00:00'),
(16, 16, '2019-07-23 14:45:21', '0000-00-00 00:00:00'),
(17, 17, '2019-07-23 14:45:21', '0000-00-00 00:00:00'),
(18, 18, '2019-07-23 14:45:21', '0000-00-00 00:00:00'),
(19, 19, '2019-07-23 14:45:21', '0000-00-00 00:00:00'),
(20, 20, '2019-07-23 14:45:21', '0000-00-00 00:00:00'),
(21, 21, '2019-07-23 14:45:21', '0000-00-00 00:00:00'),
(21, 26, '2019-07-23 14:45:21', '0000-00-00 00:00:00'),
(22, 22, '2019-07-23 14:45:21', '0000-00-00 00:00:00'),
(23, 23, '2019-07-23 14:45:21', '0000-00-00 00:00:00'),
(24, 24, '2019-07-23 14:45:21', '0000-00-00 00:00:00'),
(25, 25, '2019-07-23 14:45:21', '0000-00-00 00:00:00'),
(26, 25, '2019-07-23 14:45:21', '0000-00-00 00:00:00'),
(27, 27, '2019-07-23 14:45:21', '0000-00-00 00:00:00'),
(28, 28, '2019-07-23 14:45:21', '0000-00-00 00:00:00'),
(29, 29, '2019-07-23 14:45:21', '0000-00-00 00:00:00'),
(30, 30, '2019-07-23 14:45:21', '0000-00-00 00:00:00'),
(36, 142, '2019-07-23 14:45:21', '0000-00-00 00:00:00'),
(38, 193, '2019-07-23 14:45:21', '0000-00-00 00:00:00'),
(45, 197, '2019-07-23 14:45:21', '0000-00-00 00:00:00'),
(47, 181, '2019-07-23 14:45:21', '0000-00-00 00:00:00'),
(48, 39, '2019-07-23 14:45:21', '0000-00-00 00:00:00'),
(48, 44, '2019-07-23 14:45:21', '0000-00-00 00:00:00'),
(48, 45, '2019-07-23 14:45:21', '0000-00-00 00:00:00'),
(48, 72, '2019-07-23 14:45:21', '0000-00-00 00:00:00'),
(48, 182, '2019-07-23 14:45:21', '0000-00-00 00:00:00'),
(48, 191, '2019-07-23 14:45:21', '0000-00-00 00:00:00'),
(48, 198, '2019-07-23 14:45:21', '0000-00-00 00:00:00'),
(49, 183, '2019-07-23 14:45:21', '0000-00-00 00:00:00'),
(50, 184, '2019-07-23 14:45:21', '0000-00-00 00:00:00'),
(51, 186, '2019-07-23 14:45:21', '0000-00-00 00:00:00'),
(52, 187, '2019-07-23 14:45:21', '0000-00-00 00:00:00'),
(53, 187, '2019-07-23 14:45:21', '0000-00-00 00:00:00'),
(54, 188, '2019-07-23 14:45:21', '0000-00-00 00:00:00'),
(55, 189, '2019-07-23 14:45:21', '0000-00-00 00:00:00'),
(56, 190, '2019-07-23 14:45:21', '0000-00-00 00:00:00'),
(57, 192, '2019-07-23 14:45:21', '0000-00-00 00:00:00'),
(58, 194, '2019-07-23 14:45:21', '0000-00-00 00:00:00'),
(59, 195, '2019-07-23 14:45:21', '0000-00-00 00:00:00'),
(60, 196, '2019-07-23 14:45:21', '0000-00-00 00:00:00'),
(62, 199, '2019-07-23 14:45:21', '0000-00-00 00:00:00'),
(63, 200, '2019-07-23 14:45:21', '0000-00-00 00:00:00'),
(64, 136, '2019-07-23 14:45:21', '0000-00-00 00:00:00'),
(64, 201, '2019-07-23 14:45:21', '0000-00-00 00:00:00'),
(65, 158, '2019-07-23 14:45:21', '0000-00-00 00:00:00'),
(65, 202, '2019-07-23 14:45:21', '0000-00-00 00:00:00'),
(66, 101, '2019-07-23 14:45:21', '0000-00-00 00:00:00'),
(67, 31, '2019-07-23 14:45:21', '0000-00-00 00:00:00'),
(67, 34, '2019-07-23 14:45:21', '0000-00-00 00:00:00'),
(67, 67, '2019-07-23 14:45:21', '0000-00-00 00:00:00'),
(67, 102, '2019-07-23 14:45:21', '0000-00-00 00:00:00'),
(68, 150, '2019-07-23 14:45:21', '0000-00-00 00:00:00'),
(69, 157, '2019-07-23 14:45:21', '0000-00-00 00:00:00'),
(70, 166, '2019-07-23 14:45:21', '0000-00-00 00:00:00'),
(71, 32, '2019-07-23 14:45:21', '0000-00-00 00:00:00'),
(72, 33, '2019-07-23 14:45:21', '0000-00-00 00:00:00'),
(73, 35, '2019-07-23 14:45:21', '0000-00-00 00:00:00'),
(74, 36, '2019-07-23 14:45:21', '0000-00-00 00:00:00'),
(75, 37, '2019-07-23 14:45:21', '0000-00-00 00:00:00'),
(76, 37, '2019-07-23 14:45:21', '0000-00-00 00:00:00'),
(77, 38, '2019-07-23 14:45:21', '0000-00-00 00:00:00'),
(78, 38, '2019-07-23 14:45:21', '0000-00-00 00:00:00'),
(79, 40, '2019-07-23 14:45:21', '0000-00-00 00:00:00'),
(80, 40, '2019-07-23 14:45:21', '0000-00-00 00:00:00'),
(81, 41, '2019-07-23 14:45:21', '0000-00-00 00:00:00'),
(82, 42, '2019-07-23 14:45:21', '0000-00-00 00:00:00'),
(83, 43, '2019-07-23 14:45:21', '0000-00-00 00:00:00'),
(84, 46, '2019-07-23 14:45:21', '0000-00-00 00:00:00'),
(85, 47, '2019-07-23 14:45:21', '0000-00-00 00:00:00'),
(86, 48, '2019-07-23 14:45:21', '0000-00-00 00:00:00'),
(87, 49, '2019-07-23 14:45:21', '0000-00-00 00:00:00'),
(88, 50, '2019-07-23 14:45:21', '0000-00-00 00:00:00'),
(89, 51, '2019-07-23 14:45:21', '0000-00-00 00:00:00'),
(90, 52, '2019-07-23 14:45:21', '0000-00-00 00:00:00'),
(91, 53, '2019-07-23 14:45:21', '0000-00-00 00:00:00'),
(92, 185, '2019-07-23 14:45:21', '0000-00-00 00:00:00'),
(93, 55, '2019-07-23 14:45:21', '0000-00-00 00:00:00'),
(94, 56, '2019-07-23 14:45:21', '0000-00-00 00:00:00'),
(95, 57, '2019-07-23 14:45:21', '0000-00-00 00:00:00'),
(96, 58, '2019-07-23 14:45:21', '0000-00-00 00:00:00'),
(97, 59, '2019-07-23 14:45:21', '0000-00-00 00:00:00'),
(98, 60, '2019-07-23 14:45:21', '0000-00-00 00:00:00'),
(99, 61, '2019-07-23 14:45:21', '0000-00-00 00:00:00'),
(100, 54, '2019-07-23 14:45:21', '0000-00-00 00:00:00'),
(100, 63, '2019-07-23 14:45:21', '0000-00-00 00:00:00'),
(100, 65, '2019-07-23 14:45:21', '0000-00-00 00:00:00'),
(100, 81, '2019-07-23 14:45:21', '0000-00-00 00:00:00'),
(100, 96, '2019-07-23 14:45:21', '0000-00-00 00:00:00'),
(101, 64, '2019-07-23 14:45:21', '0000-00-00 00:00:00'),
(102, 66, '2019-07-23 14:45:21', '0000-00-00 00:00:00'),
(103, 91, '2019-07-23 14:45:21', '0000-00-00 00:00:00'),
(104, 68, '2019-07-23 14:45:21', '0000-00-00 00:00:00'),
(105, 69, '2019-07-23 14:45:21', '0000-00-00 00:00:00'),
(106, 70, '2019-07-23 14:45:21', '0000-00-00 00:00:00'),
(107, 71, '2019-07-23 14:45:21', '0000-00-00 00:00:00'),
(108, 73, '2019-07-23 14:45:21', '0000-00-00 00:00:00'),
(108, 127, '2019-07-23 14:45:21', '0000-00-00 00:00:00'),
(109, 74, '2019-07-23 14:45:21', '0000-00-00 00:00:00'),
(110, 75, '2019-07-23 14:45:21', '0000-00-00 00:00:00'),
(111, 76, '2019-07-23 14:45:21', '0000-00-00 00:00:00'),
(112, 77, '2019-07-23 14:45:21', '0000-00-00 00:00:00'),
(113, 78, '2019-07-23 14:45:21', '0000-00-00 00:00:00'),
(114, 79, '2019-07-23 14:45:21', '0000-00-00 00:00:00'),
(115, 80, '2019-07-23 14:45:21', '0000-00-00 00:00:00'),
(116, 82, '2019-07-23 14:45:21', '0000-00-00 00:00:00'),
(117, 83, '2019-07-23 14:45:21', '0000-00-00 00:00:00'),
(118, 84, '2019-07-23 14:45:21', '0000-00-00 00:00:00'),
(119, 85, '2019-07-23 14:45:21', '0000-00-00 00:00:00'),
(120, 86, '2019-07-23 14:45:21', '0000-00-00 00:00:00'),
(121, 87, '2019-07-23 14:45:21', '0000-00-00 00:00:00'),
(122, 88, '2019-07-23 14:45:21', '0000-00-00 00:00:00'),
(123, 89, '2019-07-23 14:45:21', '0000-00-00 00:00:00'),
(124, 90, '2019-07-23 14:45:21', '0000-00-00 00:00:00'),
(125, 54, '2019-07-23 14:45:21', '0000-00-00 00:00:00'),
(126, 93, '2019-07-23 14:45:21', '0000-00-00 00:00:00'),
(127, 94, '2019-07-23 14:45:21', '0000-00-00 00:00:00'),
(128, 95, '2019-07-23 14:45:21', '0000-00-00 00:00:00'),
(128, 180, '2019-07-23 14:45:21', '0000-00-00 00:00:00'),
(129, 97, '2019-07-23 14:45:21', '0000-00-00 00:00:00'),
(130, 98, '2019-07-23 14:45:21', '0000-00-00 00:00:00'),
(131, 99, '2019-07-23 14:45:21', '0000-00-00 00:00:00'),
(132, 100, '2019-07-23 14:45:21', '0000-00-00 00:00:00'),
(133, 54, '2019-07-23 14:45:21', '0000-00-00 00:00:00'),
(134, 103, '2019-07-23 14:45:21', '0000-00-00 00:00:00'),
(135, 104, '2019-07-23 14:45:21', '0000-00-00 00:00:00'),
(136, 105, '2019-07-23 14:45:21', '0000-00-00 00:00:00'),
(137, 92, '2019-07-23 14:45:21', '0000-00-00 00:00:00'),
(138, 106, '2019-07-23 14:45:21', '0000-00-00 00:00:00'),
(139, 106, '2019-07-23 14:45:21', '0000-00-00 00:00:00'),
(140, 107, '2019-07-23 14:45:21', '0000-00-00 00:00:00'),
(141, 107, '2019-07-23 14:45:21', '0000-00-00 00:00:00'),
(142, 108, '2019-07-23 14:45:21', '0000-00-00 00:00:00'),
(143, 109, '2019-07-23 14:45:21', '0000-00-00 00:00:00'),
(144, 110, '2019-07-23 14:45:21', '0000-00-00 00:00:00'),
(145, 110, '2019-07-23 14:45:21', '0000-00-00 00:00:00'),
(146, 111, '2019-07-23 14:45:21', '0000-00-00 00:00:00'),
(147, 112, '2019-07-23 14:45:21', '0000-00-00 00:00:00'),
(148, 113, '2019-07-23 14:45:21', '0000-00-00 00:00:00'),
(149, 114, '2019-07-23 14:45:21', '0000-00-00 00:00:00'),
(149, 123, '2019-07-23 14:45:21', '0000-00-00 00:00:00'),
(150, 115, '2019-07-23 14:45:21', '0000-00-00 00:00:00'),
(151, 115, '2019-07-23 14:45:21', '0000-00-00 00:00:00'),
(152, 116, '2019-07-23 14:45:21', '0000-00-00 00:00:00'),
(153, 117, '2019-07-23 14:45:21', '0000-00-00 00:00:00'),
(154, 117, '2019-07-23 14:45:21', '0000-00-00 00:00:00'),
(155, 118, '2019-07-23 14:45:21', '0000-00-00 00:00:00'),
(155, 120, '2019-07-23 14:45:21', '0000-00-00 00:00:00'),
(156, 119, '2019-07-23 14:45:21', '0000-00-00 00:00:00'),
(156, 165, '2019-07-23 14:45:21', '0000-00-00 00:00:00'),
(157, 121, '2019-07-23 14:45:21', '0000-00-00 00:00:00'),
(158, 122, '2019-07-23 14:45:21', '0000-00-00 00:00:00'),
(159, 123, '2019-07-23 14:45:21', '0000-00-00 00:00:00'),
(160, 124, '2019-07-23 14:45:21', '0000-00-00 00:00:00'),
(161, 125, '2019-07-23 14:45:21', '0000-00-00 00:00:00'),
(162, 126, '2019-07-23 14:45:21', '0000-00-00 00:00:00'),
(162, 132, '2019-07-23 14:45:21', '0000-00-00 00:00:00'),
(163, 131, '2019-07-23 14:45:21', '0000-00-00 00:00:00'),
(163, 147, '2019-07-23 14:45:21', '0000-00-00 00:00:00'),
(164, 131, '2019-07-23 14:45:21', '0000-00-00 00:00:00'),
(164, 147, '2019-07-23 14:45:21', '0000-00-00 00:00:00'),
(165, 131, '2019-07-23 14:45:21', '0000-00-00 00:00:00'),
(165, 147, '2019-07-23 14:45:21', '0000-00-00 00:00:00'),
(166, 128, '2019-07-23 14:45:21', '0000-00-00 00:00:00'),
(167, 129, '2019-07-23 14:45:21', '0000-00-00 00:00:00'),
(168, 130, '2019-07-23 14:45:21', '0000-00-00 00:00:00'),
(169, 132, '2019-07-23 14:45:21', '0000-00-00 00:00:00'),
(170, 133, '2019-07-23 14:45:21', '0000-00-00 00:00:00'),
(171, 134, '2019-07-23 14:45:21', '0000-00-00 00:00:00'),
(172, 134, '2019-07-23 14:45:21', '0000-00-00 00:00:00'),
(173, 135, '2019-07-23 14:45:21', '0000-00-00 00:00:00'),
(174, 135, '2019-07-23 14:45:21', '0000-00-00 00:00:00'),
(175, 151, '2019-07-23 14:45:21', '0000-00-00 00:00:00'),
(176, 136, '2019-07-23 14:45:21', '0000-00-00 00:00:00'),
(177, 137, '2019-07-23 14:45:21', '0000-00-00 00:00:00'),
(178, 138, '2019-07-23 14:45:21', '0000-00-00 00:00:00'),
(179, 138, '2019-07-23 14:45:21', '0000-00-00 00:00:00'),
(180, 139, '2019-07-23 14:45:21', '0000-00-00 00:00:00'),
(181, 140, '2019-07-23 14:45:21', '0000-00-00 00:00:00'),
(182, 141, '2019-07-23 14:45:21', '0000-00-00 00:00:00'),
(183, 141, '2019-07-23 14:45:21', '0000-00-00 00:00:00'),
(184, 143, '2019-07-23 14:45:21', '0000-00-00 00:00:00'),
(185, 144, '2019-07-23 14:45:21', '0000-00-00 00:00:00'),
(186, 144, '2019-07-23 14:45:21', '0000-00-00 00:00:00'),
(187, 138, '2019-07-23 14:45:21', '0000-00-00 00:00:00'),
(188, 144, '2019-07-23 14:45:21', '0000-00-00 00:00:00'),
(189, 145, '2019-07-23 14:45:21', '0000-00-00 00:00:00'),
(190, 146, '2019-07-23 14:45:21', '0000-00-00 00:00:00'),
(191, 146, '2019-07-23 14:45:21', '0000-00-00 00:00:00'),
(194, 148, '2019-07-23 14:45:21', '0000-00-00 00:00:00'),
(195, 149, '2019-07-23 14:45:21', '0000-00-00 00:00:00'),
(196, 149, '2019-07-23 14:45:21', '0000-00-00 00:00:00'),
(197, 152, '2019-07-23 14:45:21', '0000-00-00 00:00:00'),
(198, 153, '2019-07-23 14:45:21', '0000-00-00 00:00:00'),
(199, 154, '2019-07-23 14:45:21', '0000-00-00 00:00:00'),
(200, 154, '2019-07-23 14:45:21', '0000-00-00 00:00:00'),
(201, 155, '2019-07-23 14:45:21', '0000-00-00 00:00:00'),
(202, 155, '2019-07-23 14:45:21', '0000-00-00 00:00:00'),
(203, 155, '2019-07-23 14:45:21', '0000-00-00 00:00:00'),
(204, 156, '2019-07-23 14:45:21', '0000-00-00 00:00:00'),
(205, 159, '2019-07-23 14:45:21', '0000-00-00 00:00:00'),
(206, 159, '2019-07-23 14:45:21', '0000-00-00 00:00:00'),
(207, 159, '2019-07-23 14:45:21', '0000-00-00 00:00:00'),
(208, 160, '2019-07-23 14:45:21', '0000-00-00 00:00:00'),
(209, 161, '2019-07-23 14:45:21', '0000-00-00 00:00:00'),
(210, 162, '2019-07-23 14:45:21', '0000-00-00 00:00:00'),
(211, 163, '2019-07-23 14:45:21', '0000-00-00 00:00:00'),
(212, 164, '2019-07-23 14:45:21', '0000-00-00 00:00:00'),
(213, 164, '2019-07-23 14:45:21', '0000-00-00 00:00:00'),
(214, 167, '2019-07-23 14:45:21', '0000-00-00 00:00:00'),
(215, 168, '2019-07-23 14:45:21', '0000-00-00 00:00:00'),
(216, 169, '2019-07-23 14:45:21', '0000-00-00 00:00:00'),
(217, 170, '2019-07-23 14:45:21', '0000-00-00 00:00:00'),
(218, 171, '2019-07-23 14:45:21', '0000-00-00 00:00:00'),
(219, 172, '2019-07-23 14:45:21', '0000-00-00 00:00:00'),
(220, 172, '2019-07-23 14:45:21', '0000-00-00 00:00:00'),
(221, 173, '2019-07-23 14:45:21', '0000-00-00 00:00:00'),
(221, 174, '2019-07-23 14:45:21', '0000-00-00 00:00:00'),
(222, 175, '2019-07-23 14:45:21', '0000-00-00 00:00:00'),
(223, 176, '2019-07-23 14:45:21', '0000-00-00 00:00:00'),
(224, 176, '2019-07-23 14:45:21', '0000-00-00 00:00:00'),
(225, 177, '2019-07-23 14:45:21', '0000-00-00 00:00:00'),
(226, 178, '2019-07-23 14:45:21', '0000-00-00 00:00:00'),
(227, 179, '2019-07-23 14:45:21', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `menulis`
--

CREATE TABLE `menulis` (
  `IDPenulis` int(11) NOT NULL,
  `IDPublikasi` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menulis`
--

INSERT INTO `menulis` (`IDPenulis`, `IDPublikasi`) VALUES
(31, 1),
(32, 2),
(33, 3),
(34, 4),
(35, 4),
(36, 5),
(37, 5),
(31, 6),
(34, 7),
(38, 8),
(39, 8),
(40, 8),
(31, 9),
(33, 10),
(41, 10),
(41, 11),
(42, 12),
(42, 13),
(43, 14),
(44, 15),
(32, 16),
(32, 17),
(36, 18),
(45, 18),
(46, 19),
(46, 20),
(43, 21),
(43, 22);

-- --------------------------------------------------------

--
-- Table structure for table `mhsmeneliti`
--

CREATE TABLE `mhsmeneliti` (
  `NIM` int(11) NOT NULL,
  `IDPenelitian` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mhsmeneliti`
--

INSERT INTO `mhsmeneliti` (`NIM`, `IDPenelitian`) VALUES
(13610072, 4);

-- --------------------------------------------------------

--
-- Table structure for table `mhsmengabdi`
--

CREATE TABLE `mhsmengabdi` (
  `NIM` int(11) NOT NULL,
  `IDPengabdian` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mhsmengabdi`
--

INSERT INTO `mhsmengabdi` (`NIM`, `IDPengabdian`) VALUES
(14610025, 1);

-- --------------------------------------------------------

--
-- Table structure for table `mitra`
--

CREATE TABLE `mitra` (
  `id` int(11) NOT NULL,
  `Nama` varchar(255) NOT NULL,
  `Alamat` text NOT NULL,
  `CP` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mitra`
--

INSERT INTO `mitra` (`id`, `Nama`, `Alamat`, `CP`, `created_at`, `updated_at`) VALUES
(1, 'Masjid Hidayatul Muttaqin ', 'Dsn. Bunut Kidul Ds. Asrikaton Kec. Pakis Kab. Malang', '', '2019-07-18 09:37:45', '0000-00-00 00:00:00'),
(2, 'Masjid Al-Musthofa', 'Ds.Pakiskembar Kec. Pakis Kab. Malang', '', '2019-07-18 09:37:45', '0000-00-00 00:00:00'),
(3, 'Masjid Al-Ishlah', 'RW.07 RT.01 Dsn.Kanigoro Ds.Tirtomoyo Kec. Pakis Kab. Malang', '', '2019-07-18 09:37:45', '0000-00-00 00:00:00'),
(4, 'Masjid Nurul Falah ', 'RT.02 RW.04 Dsn.Premban Ds.Sumber Kradenan Kec. Pakis Kab. Malang', '', '2019-07-18 09:37:45', '0000-00-00 00:00:00'),
(5, 'Masjid Darussalam', 'Jl. Raya No.2 RT.03 RW.01 Dsn. Bareng Ds. Sidomulyo Kec. Jabung Kab. Malang', '', '2019-07-18 09:37:45', '0000-00-00 00:00:00'),
(6, 'Mambaus Saadah', 'Desa Benjor Kec. Tumpang', '', '2019-07-18 09:37:45', '0000-00-00 00:00:00'),
(7, 'Bahruddin', 'Dusun Krajan, Desa Kambingan, Kec. Tumpang', '', '2019-07-18 09:37:45', '0000-00-00 00:00:00'),
(8, 'Nurul Hikmah', 'Dusun Bangilan, Desa Pandanajeng, Kec. Tumpang', '', '2019-07-18 09:37:45', '0000-00-00 00:00:00'),
(9, 'Nailur Rohmah', 'Dusun Wringinanom, Desa Slamet, Kec. Tumpang', '', '2019-07-18 09:37:45', '0000-00-00 00:00:00'),
(10, 'Masjid Baiturahman', 'Jalan Masjid Nomor 2 RT 02 RW 06, Desa Ngadireso, Kec. Poncokusumo', '', '2019-07-18 09:37:45', '0000-00-00 00:00:00'),
(11, 'Masjid Baitul Muttaqin', 'Jl Raya Wonorejo kec Poncokusumo', '', '2019-07-18 09:37:45', '0000-00-00 00:00:00'),
(12, 'Masjid An-Nur', 'Dsn. Krajan RT. 03/ RW. 10, Ds. Pandansari, Kec. Poncokusumo', '', '2019-07-18 09:37:45', '0000-00-00 00:00:00'),
(13, 'Masjid Al-Amin', 'Jalan Panjaitan RT 22 RW 09 Dusun Pancuran Desa Karanganyar, Kec. Poncokusumo', '', '2019-07-18 09:37:45', '0000-00-00 00:00:00'),
(14, 'Masjid Sabilul Muttaqin', 'RT. 13/RW. 03 Dusun Kunci Desa Wringinanom, Kec. Poncokusumo', '', '2019-07-18 09:37:45', '0000-00-00 00:00:00'),
(15, 'Masjid Baiturrokhim ', 'Jln. Garuda RT 06 RW 01 Simpar Wringinanom II Poncokusumo', '', '2019-07-18 09:37:45', '0000-00-00 00:00:00'),
(16, 'Miftakhul Huda ', 'RT.63/RW.11, Dusun Tenggeran, Desa Karangnongko, Kec. Poncokusumo', '', '2019-07-18 09:37:45', '0000-00-00 00:00:00'),
(17, 'Masjid Baituttaqwa', 'Desa Buntaran, Kec. Wajak', '', '2019-07-18 09:37:45', '0000-00-00 00:00:00'),
(18, 'Masjid As- Shobirin', 'Jln. Masjid RT 23 RW 09 Patuk Meduran, Sukolilo, Kec. Wajak', '', '2019-07-18 09:37:45', '0000-00-00 00:00:00'),
(19, 'Masjid Sabilillah', 'Dusun Tambakrejo, Desa Bringin, Kec. Wajak', '', '2019-07-18 09:37:45', '0000-00-00 00:00:00'),
(20, 'Masjid Baitul Amin', 'RT 31 Dusun Sarirejo, Desa Sumberputih, Kec. Wajak', '', '2019-07-18 09:37:45', '0000-00-00 00:00:00'),
(21, 'Masjid Baitul Muttaqin', 'Jl. Raya Semeru RT 01 RW 01, Desa Wonoayu, Kec. Wajak', '', '2019-07-18 09:37:45', '0000-00-00 00:00:00'),
(22, 'Masjid Baitur Rohman', 'Jl. Kramat RT 08 RW 02 Dusun Sumberputih, Desa Sumberputih, Kec. Wajak', '', '2019-07-18 09:37:45', '0000-00-00 00:00:00'),
(23, 'Masjid Miftakhul Hidayah', 'Jln. Ahmad Yani no. 100, Patuk, Sukolilo, Kec. Wajak', '', '2019-07-18 09:37:45', '0000-00-00 00:00:00'),
(24, 'Masjid Babus Syafa’ah', 'Jalan Sidomulyo Gang III  Ds. Wandanpuro, KEc. Bululawang', '', '2019-07-18 09:37:45', '0000-00-00 00:00:00'),
(25, 'Masjid Baithurrahman', 'RT 08 RW 02  Ds. Kasembon, Kec. Bululawang', '', '2019-07-18 09:37:45', '0000-00-00 00:00:00'),
(26, 'Masjid Sirotul Jannah', 'Dusun Maqbul , Ds. Kuwolu, Kec. Bululawang', '', '2019-07-18 09:37:45', '0000-00-00 00:00:00'),
(27, 'Masjid Baitul Izza', 'Jl. Raya Krebet Tugu Hitam Dsn. Krajan Ds. Krebet, Kec. Bululawang', '', '2019-07-18 09:37:45', '0000-00-00 00:00:00'),
(28, 'AL-AZHAR ', 'Ds. Turen, Kec. Turen', '', '2019-07-18 09:37:45', '0000-00-00 00:00:00'),
(29, 'ABU BAKAR AL-MUTTAHID', 'Jln. Mayor Damar, Bokor, No. Pagedangan, Kec. Turen', '', '2019-07-18 09:37:45', '0000-00-00 00:00:00'),
(30, 'BAITUR RAHMAN', 'Jln. Letjen Sutoyo RT 03 RW 01 Ds. Tanggung, Kec. Turen', '', '2019-07-18 09:37:45', '0000-00-00 00:00:00'),
(31, 'Masjid Darussalam', 'RT 01/ RW 02 Ds. Tanggung, Kec. Turen', '', '2019-07-18 09:37:45', '0000-00-00 00:00:00'),
(32, 'Masjid Baitul Mukhsinin', 'JL. Al-Ishan RT 09 RW 03 Ds. Jeru, Kec. Turen', '', '2019-07-18 09:37:45', '0000-00-00 00:00:00'),
(33, 'BAITUR RAHMAN', 'Ds. Tawang Rejeni, Kec. Turen', '', '2019-07-18 09:37:45', '0000-00-00 00:00:00'),
(34, 'Baitur Rohman', 'Ds. Talang Suko, Kec. Turen', '', '2019-07-18 09:37:45', '0000-00-00 00:00:00'),
(35, 'Baitur Rohim', 'Ds. Tempung, Kec. Turen', '', '2019-07-18 09:37:45', '0000-00-00 00:00:00'),
(36, 'Masjid  jami\' sarikerto ', 'Jl. Kauman rt. 04 rw. 01 Desa Jambangan, Kec. Dampit', '', '2019-07-18 09:37:45', '0000-00-00 00:00:00'),
(37, 'Masjid Baiturrahman', 'Dsn. Kampung Selang RT. 30 RW. 04 Desa. Baturetno, Kec. Dampit', '', '2019-07-18 09:37:45', '0000-00-00 00:00:00'),
(38, 'Masjid Nur Iman ', 'Dsn. Kedawung, RT 13 RW 01, Ds. Pojok, Kec. Dampit', '', '2019-07-18 09:37:45', '0000-00-00 00:00:00'),
(39, 'Hidayatul Muttaqin', 'Jl. Raden Fatah RT. 03 RW. 22 No.122 Kepatihan, Pamotan, Kec. Dampit', '', '2019-07-18 09:37:45', '0000-00-00 00:00:00'),
(40, 'Masjid Al Ikhlas', 'Dsn. Sumberayu Mataram, Ds. Dampit, Kec. Dampit', '', '2019-07-18 09:37:45', '0000-00-00 00:00:00'),
(41, 'Masjid Darussalam', 'Dusun Krajan RT 08, RW 01, desa Srimulyo, Kec. Dampit', '', '2019-07-18 09:37:45', '0000-00-00 00:00:00'),
(42, 'Masjid Nurul Falah', 'Jl. Sidoluhur RT 01 RT 01 Dsn Sukorejo, Desa Sukorejo, Kec. Tirtoyudo', '', '2019-07-18 09:37:45', '0000-00-00 00:00:00'),
(43, 'Masjid Darussalam', 'Jl. Semera RT 07 RW 01 Dsn Sukodono, Desa Tirtoyudo, Kec. Tirtoyudo', '', '2019-07-18 09:37:45', '0000-00-00 00:00:00'),
(44, 'Masjid Hidayatul Mubarokah', 'RT 28 RW 06 Pujiharjo, Kec. Tirtoyudo', '', '2019-07-18 09:37:45', '0000-00-00 00:00:00'),
(45, 'Masjid Ahmad Yani', 'Dsn Krajan, Desa Taman Kuncaran, Kec. Tirtoyudo', '', '2019-07-18 09:37:45', '0000-00-00 00:00:00'),
(46, 'Masjid Baiturrahman', 'Dsn. Karangsuko, Desa Taman Satrian, Kec. Tirtoyudo', '', '2019-07-18 09:37:45', '0000-00-00 00:00:00'),
(47, 'Masjid Mujahidin', 'RT 05 Desa Pujiharjo, Kec. Tirtoyudo', '', '2019-07-18 09:37:45', '0000-00-00 00:00:00'),
(48, 'Masjid miftakhussalam', 'Rt. 21 Dusun.Sidomarto Desa.Sidorenggo, Kec. Ampelgading', '', '2019-07-18 09:37:45', '0000-00-00 00:00:00'),
(49, 'Masjid Baiturrahim', 'RT. 23 Dusun Sumbergentong Wetan, Desa Tirtomoyo, Kec. Ampelgading', '', '2019-07-18 09:37:45', '0000-00-00 00:00:00'),
(50, 'Masjid Al-Amin', 'Jalan Penggalang Putera RT 12 RW 05 Dsn. Krajan I-B Ds. Lebakharjo, Kec. Ampelgading', '', '2019-07-18 09:37:45', '0000-00-00 00:00:00'),
(51, 'Masjid Al-hidayah', 'Dusun Glidik Argosuko Desa Argoyuowono, Kec. Ampelgading', '', '2019-07-18 09:37:45', '0000-00-00 00:00:00'),
(52, 'Masjid Baitut Taqwa ', 'Dsn. Krajan RT 02 RW 01, DesaWirotaman, Kec. Ampelgading', '', '2019-07-18 09:37:45', '0000-00-00 00:00:00'),
(53, 'Masjid Ar-Rahman', 'Dusun Tamansari, Desa Tamansari RT. 11 RW. 05, Kec. Ampelgading', '', '2019-07-18 09:37:45', '0000-00-00 00:00:00'),
(54, 'Masjid Baiturrahman', 'Dsn. Sumberbuncis, Desa. Sonowangi, Kec. Ampelgading', '', '2019-07-18 09:37:45', '0000-00-00 00:00:00'),
(55, 'Masjid Uswatun Hasanah', 'Sukodono Simojayan, Kec. Ampelgading', '', '2019-07-18 09:37:45', '0000-00-00 00:00:00'),
(56, 'Masjid Sunan Kalijogo', 'RT 01 RW 01 Jalan Masjid Sunan Kalijogo, Ds. Wonokerso, Kec. Pakisaji', '', '2019-07-18 09:37:45', '0000-00-00 00:00:00'),
(57, 'THORIQUL HUDA', 'Jalan Raya Wadung, RT 11/ RW 03, dsn. Wadung, desa wadung, Kec. Pakisaji', '', '2019-07-18 09:37:45', '0000-00-00 00:00:00'),
(58, 'Masjid Al-ikhlas', 'Jl. Golek, karangduren, Pakisaji RT 04 RW 04, Kec. Pakisaji', '', '2019-07-18 09:37:45', '0000-00-00 00:00:00'),
(59, 'Nurul Muttaqin', 'Jl. Karang tengah, Ds. Karangpandan, Kec. Pakisaji', '', '2019-07-18 09:37:45', '0000-00-00 00:00:00'),
(60, 'TSANAWIYAH', 'RT 06, 08 RW 01 Jalan Pahlawan Trip, Dusun Cupak, Desa Jatikerto, Kec. Kromengan', '', '2019-07-18 09:37:45', '0000-00-00 00:00:00'),
(61, 'AL-IKHLAS ', 'Jl.Plasmen RT.36 RW.05 Jatikerto, Kec. Kromengan', '', '2019-07-18 09:37:45', '0000-00-00 00:00:00'),
(62, 'NURUL HIDAYAH', 'Jl. Raya Slorok Ds.Slorok, Kec. Kromengan', '', '2019-07-18 09:37:45', '0000-00-00 00:00:00'),
(63, 'Masjid Al – Hikmah', 'Jln. Kolonel Sugiono RT 11 RW 04 \r\nDs. Senggreng, Kec. Sumberpucung', '', '2019-07-18 09:37:45', '0000-00-00 00:00:00'),
(64, 'Mushalla Al-Hikam', 'Ds. Sumberpucung, Kec. Sumberpucung', '', '2019-07-18 09:37:45', '0000-00-00 00:00:00'),
(65, 'Mushallah Nur Sabilillah', 'Dsn. Pakel Timur RT 16 RW 02 Ds. Sumberpucung, Kec. Sumberpucung', '', '2019-07-18 09:37:45', '0000-00-00 00:00:00'),
(66, 'Fafirru Ilallah', '13/04 Dusun Kalipakem, Donomulyo, Kec. Donomulyo', '', '2019-07-18 09:37:45', '0000-00-00 00:00:00'),
(67, 'Masjid al-ilyas', 'Dusun krajan desa kalipare Kec. Kalipare', '', '2019-07-18 09:37:45', '0000-00-00 00:00:00'),
(68, 'Masjid Al-Arafah', 'Jl. Bumi Gusdur no 01 Kampung pasar-krajan, Kec. Kalipare', '', '2019-07-18 09:37:45', '0000-00-00 00:00:00'),
(69, 'Masjid nurul hidayah ', 'Dusun cungkal sumber petung, Kec. Kalipare', '', '2019-07-18 09:37:45', '0000-00-00 00:00:00'),
(70, 'Masjid Ar-Ridlo', 'Rt/Rw:30/06 dusun tawang sukowilangun, Kec. Kalipare', '', '2019-07-18 09:37:45', '0000-00-00 00:00:00'),
(71, 'BPS Kabupaten Pasuruan', '', '', '2019-07-18 09:37:45', '0000-00-00 00:00:00'),
(72, 'Manarussalam', '17/13 Dusun Karangrejo Utara, Pureworejo, Kec. Donomulyo', '', '2019-07-18 09:37:45', '0000-00-00 00:00:00'),
(73, 'Al Hikmah', '32/07 Dusun Kalisangkrah Sumberoto, Kec. Donomulyo', '', '2019-07-18 09:37:45', '0000-00-00 00:00:00'),
(74, 'Mushola Al-Hidayah', '17/06 dsn Mulyosari Donomulyo, Kec. Donomulyo', '', '2019-07-18 09:37:45', '0000-00-00 00:00:00'),
(75, 'Masjid Nurul Jawad ', 'Dusun Dempok Kulon Kali RT 16 RW 02 Desa Gampingan, Kec. Pagak', '', '2019-07-18 09:37:45', '0000-00-00 00:00:00'),
(76, 'Masjid Nurul Muttaqin ', 'RT 35 RW 09 Dusun Bekur Tengah Desa Sumberejo, Kec. Pagak', '', '2019-07-18 09:37:45', '0000-00-00 00:00:00'),
(77, 'Mushallah Al- Muhajirin', 'Dsn. Krajan, Ds. Sumbermanjing kulon, Kec. Pagak', '', '2019-07-18 09:37:45', '0000-00-00 00:00:00'),
(78, 'Pesantren Rakyat Nurul Mubarok', 'Dsn. Druju RT. 28 RW. 07 Ds. Tlogorejo, Kec. Pagak', '', '2019-07-18 09:37:45', '0000-00-00 00:00:00'),
(79, 'Masjid Al- Falah', 'Ds. Sumber Bening RT 19 RW 03, Dsn. Krajan, Kec. Bantur', '', '2019-07-18 09:37:45', '0000-00-00 00:00:00'),
(80, 'Masjid Nurul Huda', 'Dsn. Durmo, Ds. Bantur, Kec. Bantur', '', '2019-07-18 09:37:45', '0000-00-00 00:00:00'),
(81, 'Saifudin Hidayatullah ', 'Krajan Rt 25 Rw 04 Sumber bening – Bantur', '', '2019-07-18 09:37:45', '0000-00-00 00:00:00'),
(82, 'Masjid Sufi Rahman Al-Qohar', 'Jl. Genitu Rt.14 Rw.02 Desa Balearjo Kec. Pagelaran', '', '2019-07-18 09:37:45', '0000-00-00 00:00:00'),
(83, 'Masjid Baitut Taubah', 'Jl. Arjuna Rt.08 Rw.05 Dusun Jambe Gede Desa Kanigoro Kec. Pagelaran', '', '2019-07-18 09:37:45', '0000-00-00 00:00:00'),
(84, 'Masjid Nurul Huda', 'Dusun Recobanteng Rt.10 Rw.04 Desa Suwaru Kecamatan Pagelaran', '', '2019-07-18 09:37:45', '0000-00-00 00:00:00'),
(85, 'Masjid Baitur Rahman', 'Jl. Raya Clumprit Rt.09 Rw.02 Desa Clumprit Kec. Pagelaran', '', '2019-07-18 09:37:45', '0000-00-00 00:00:00'),
(86, 'Masjid Hidayatullah', 'Dusun Krajan Rt.08 Rw.01 Desa Kademangan Kec. Pagelaran', '', '2019-07-18 09:37:45', '0000-00-00 00:00:00'),
(87, 'Masjid Fathur Rahman', 'Jl. KH Ikhsan Rt.18 Rw.05 Brongkal Kec. Pagelaran', '', '2019-07-18 09:37:45', '0000-00-00 00:00:00'),
(88, 'Masjid Hasbullah', 'Jl. Al-Hasbulloh Rt.19 Rw.06 Banjarejo Kec. Pagelaran', '', '2019-07-18 09:37:45', '0000-00-00 00:00:00'),
(89, 'Masjid Miftahul Huda', 'Jl. Soekarno Hatta no.04 Dusun Sidoayu Desa Sidorejo Kec. Pagelaran', '', '2019-07-18 09:37:45', '0000-00-00 00:00:00'),
(90, 'Masjid Al Mubarok', 'Dusun Sumberbanteng, Desa Segaran, Kec. Gedangan', '', '2019-07-18 09:37:45', '0000-00-00 00:00:00'),
(91, 'Masjid Sabilul Muttaqin', 'Dusun Dokosari, Desa Sumberejo, Kec. Gedangan', '', '2019-07-18 09:37:45', '0000-00-00 00:00:00'),
(92, 'Masjid Nurul Hidayah ', 'Dusun Sumberduren, Desa Sidodadi, Kec. Gedangan', '', '2019-07-18 09:37:45', '0000-00-00 00:00:00'),
(93, 'Masjid Miftahul Huda ', 'Dusun Umbulrejo, Desa Sidodadi, Kec. Gedangan', '', '2019-07-18 09:37:45', '0000-00-00 00:00:00'),
(94, 'Musholla Miftahul Ulum ', 'Dusun Tumpak Dawung, Desa Sidodadi, Kec. Gedangan', '', '2019-07-18 09:37:45', '0000-00-00 00:00:00'),
(95, 'Masjid Al-Hikmah', 'Dusun Krajan, Desa Ringinsari, Kec. Sumbermanjing', '', '2019-07-18 09:37:45', '0000-00-00 00:00:00'),
(96, 'Masjid Baiturrahim', 'Jalan Mulyosari RT 25 Desa Harjokuncaran Kec. Sumbermanjing', '', '2019-07-18 09:37:45', '0000-00-00 00:00:00'),
(97, 'MIFTAHUL FALAH', 'Jln. Masjid Dsn. Babaan RT/RW 04/07 Ds. Ngenep Kec. Karangploso', '', '2019-07-18 09:37:45', '0000-00-00 00:00:00'),
(98, 'NURUL HIKMAH', 'Dusun Leses Desa Ngijo Kec. Karangploso', '', '2019-07-18 09:37:45', '0000-00-00 00:00:00'),
(99, 'Masjid Al-Hayatul Islamiyah', 'Jl. KH. Malik Dalam 1/4 Kedungkandang Kec. Kedungkandang', '', '2019-07-18 09:37:45', '0000-00-00 00:00:00'),
(100, 'Mushallah Al – Khodijah', 'Kedungkandang timur RT 05 RW 05 Kec. Kedungkandang', '', '2019-07-18 09:37:45', '0000-00-00 00:00:00'),
(101, 'Masjid Hizbulloh ', 'Dusun Maron Sebaluh, RT 27 RW 6, Desa Pandesari, Kec. Pujon', '', '2019-07-18 09:37:45', '0000-00-00 00:00:00'),
(102, 'Masjid An-Nur ', 'Jl. Kawi, Dusun Bakir, RT 7, RW 2, Desa Sukomulyo, Kec. Pujon', '', '2019-07-18 09:37:45', '0000-00-00 00:00:00'),
(103, 'Masjid Al-Hikmah', 'Dsn. Kambal Ds. Mulyorejo Kec. Ngantang', '', '2019-07-18 09:37:45', '0000-00-00 00:00:00'),
(104, 'Masjid Miftahul Falah ', 'Ds. Banjarejo Kec. Ngantang', '', '2019-07-18 09:37:45', '0000-00-00 00:00:00'),
(105, 'Nurul Huda ', 'Dusun Jeruk Desa Purworejo Kec. Ngantang', '', '2019-07-18 09:37:45', '0000-00-00 00:00:00'),
(106, 'AL-IKHLAS', 'Dsn. Sumbersuko, RT.03, RW. 15, Desa. Sukosari, Kec. Kasembon', '', '2019-07-18 09:37:45', '0000-00-00 00:00:00'),
(107, 'Masjid Miftahul Huda ', 'Dsn. Bocok, Ds. Pondok Agung, Kec. Kasembon', '', '2019-07-18 09:37:45', '0000-00-00 00:00:00'),
(108, 'AT-TAQWA', 'Dusun Toyomerto, RT. 8 RW. 3, Desa Wonoagung, Kec. Kasembon', '', '2019-07-18 09:37:45', '0000-00-00 00:00:00'),
(109, 'AL-IKHLAS', 'Dsn. Dodol, Ds. Wonoagung, Kec. Kasembon', '', '2019-07-18 09:37:45', '0000-00-00 00:00:00'),
(110, 'BABUSSALAM', 'Dsn. Wungurejo, Ds. Wonoagung, Kec. Kasembon', '', '2019-07-18 09:37:45', '0000-00-00 00:00:00'),
(111, 'PT Pergadaian Cabang Singosari Malang', '', '', '2019-07-18 09:37:45', '0000-00-00 00:00:00'),
(112, 'Dinas Kesehatan Kabupaten Malang', '', '', '2019-07-18 09:37:45', '0000-00-00 00:00:00'),
(113, 'BMKG Kelas II Tretes Pasuruan', '', '', '2019-07-18 09:37:45', '0000-00-00 00:00:00'),
(114, 'Dinas Perindustrian dan Perdagangan Kabupaten Malang', '', '', '2019-07-18 09:37:45', '0000-00-00 00:00:00'),
(115, 'Badan Perencanaan Penelitian dan Pengembangan Kota Malang', '', '', '2019-07-18 09:37:45', '0000-00-00 00:00:00'),
(116, 'Dinas Penanaman Modal dan Pelayanan Terpadu Satu Pintu Kota Malang', '', '', '2019-07-18 09:37:45', '0000-00-00 00:00:00'),
(117, 'BPS Kota Batu', '', '', '2019-07-18 09:37:45', '0000-00-00 00:00:00'),
(118, 'BPS Kabupaten Mojokerto', '', '', '2019-07-18 09:37:45', '0000-00-00 00:00:00'),
(119, 'Badan Amil Zakat Nasional Kota Malang', '', '', '2019-07-18 09:37:45', '0000-00-00 00:00:00'),
(120, 'Badan Pertahanan Nasional Kota Malang', '', '', '2019-07-18 09:37:45', '0000-00-00 00:00:00'),
(121, 'PT INDOLAKTO Purwosari', '', '', '2019-07-18 09:37:45', '0000-00-00 00:00:00'),
(122, 'Balai Pengkajian Teknologi Pertanian ', '', '', '2019-07-18 09:37:45', '0000-00-00 00:00:00'),
(123, 'BPS Kota Blitar', '', '', '2019-07-18 09:37:45', '0000-00-00 00:00:00'),
(124, 'BPS Bangkalan', '', '', '2019-07-18 09:37:45', '0000-00-00 00:00:00'),
(125, 'Dinas Pertanian dan Ketahanan Pangan', '', '', '2019-07-18 09:37:45', '0000-00-00 00:00:00'),
(126, 'Balai Penelitian Tanaman Kacang dan Umbi', '', '', '2019-07-18 09:37:45', '0000-00-00 00:00:00'),
(127, 'Koperasi Pegawai Republik Indonesia ', '', '', '2019-07-18 09:37:45', '0000-00-00 00:00:00'),
(128, 'Kantor Pelayanan Pajak Pratama Blitar', '', '', '2019-07-18 09:37:45', '0000-00-00 00:00:00'),
(129, 'BPS Kabupaten Lamongan', '', '', '2019-07-18 09:37:45', '0000-00-00 00:00:00'),
(130, 'BPS Kabupaten Probolinggo', '', '', '2019-07-18 09:37:45', '0000-00-00 00:00:00'),
(131, 'BPS Kabupaten Banyuwangi', '', '', '2019-07-18 09:37:45', '0000-00-00 00:00:00'),
(132, 'BPS Kabupaten Malang', '', '', '2019-07-18 09:37:45', '0000-00-00 00:00:00'),
(133, 'Dinas Pemberdayaan Masyarakat dan Desa', '', '', '2019-07-18 09:37:45', '0000-00-00 00:00:00'),
(134, 'BPS Kabupaten Sidoarjo', '', '', '2019-07-18 09:37:45', '0000-00-00 00:00:00'),
(135, 'Bank Syariah Mandiri Kantor Area Malang', '', '', '2019-07-18 09:37:45', '0000-00-00 00:00:00'),
(136, 'BPS Kabupaten Blitar', '', '', '2019-07-18 09:37:45', '0000-00-00 00:00:00'),
(137, 'BPAA LAPAN Bagian Matahari', '', '', '2019-07-18 09:37:45', '0000-00-00 00:00:00'),
(138, 'BMKG Meteorologi Kelas III Banyuwangi', '', '', '2019-07-18 09:37:45', '0000-00-00 00:00:00'),
(139, 'BRI Syariah Kantor Kas Turen', '', '', '2019-07-18 09:37:45', '0000-00-00 00:00:00'),
(140, 'PT Berdikari Meubel Nusantara', '', '', '2019-07-18 09:37:45', '0000-00-00 00:00:00'),
(141, 'Dinas Penanaman Modal Pelayanan Terpadu Satu Pintu dan Tenaga Kerja Kota Batu', '', '', '2019-07-18 09:37:45', '0000-00-00 00:00:00'),
(142, 'Pangkalan Pengawasan Sumberdaya Kelautan dan Perikanan Benoa', '', '', '2019-07-18 09:37:45', '0000-00-00 00:00:00'),
(143, 'Badan Pertahanan Nasional Kota Batu', '', '', '2019-07-18 09:37:45', '0000-00-00 00:00:00'),
(144, 'Lanud Abdulrachman Saleh Malang', '', '', '2019-07-18 09:37:45', '0000-00-00 00:00:00'),
(145, 'MI Darul Qur\'an Malang', '', '', '2019-07-18 09:37:45', '0000-00-00 00:00:00'),
(146, 'BPS Kabupaten Jombang', '', '', '2019-07-18 09:37:45', '0000-00-00 00:00:00'),
(147, 'Jurusan Matematika, Fakultas Sains dan Teknologi, UIN Malang', '', '', '2019-07-18 09:37:45', '0000-00-00 00:00:00'),
(148, 'Universitas Kebangsaan Malaysia 43600 UKM Bangi, Selangor', '', '', '2019-07-18 09:37:45', '0000-00-00 00:00:00'),
(149, 'Kelurahan Losari', 'Kelurahan Losari, Kecamatan Singosari, Malang', '', '2019-07-31 14:41:48', '0000-00-00 00:00:00'),
(150, 'Kelurahan Pagentan', 'Keluarahan Pagetan, Kecamatan Singosari, Malang', '', '2019-07-31 14:41:48', '0000-00-00 00:00:00'),
(151, 'Kelurahan Candirenggo', 'Kelurahan Candirenggo, Kecamatan Singosari, Malang', '', '2019-07-31 14:41:48', '0000-00-00 00:00:00'),
(152, 'Desa Langlang', 'Desa Langlang, Kecamatan Singosari, Malang', '', '2019-07-31 14:41:48', '0000-00-00 00:00:00'),
(153, 'Desa Tunjungtirto', 'Desa Tunjungtirto, Kecamatan Singosari, Malang', '', '2019-07-31 14:41:48', '0000-00-00 00:00:00'),
(154, 'Desa Banjararum', 'Desa Banjararum, Kecamatan Singosari, Malang', '', '2019-07-31 14:41:48', '0000-00-00 00:00:00'),
(155, 'Desa Watugede', 'Desa Watugede, Kecamatan Singosari, Malang', '', '2019-07-31 14:41:48', '0000-00-00 00:00:00'),
(156, 'Desa Dengkol', 'Desa Dengkol, Kecamatan Singosari, Malang', '', '2019-07-31 14:41:48', '0000-00-00 00:00:00'),
(157, 'Desa Wonorejo', 'Desa Wonorejo, Kecamatan Singosari, Malang', '', '2019-07-31 14:41:48', '0000-00-00 00:00:00'),
(158, 'Desa Baturetno', 'Desa Baturetno, Kecamatan Singosari, Malang', '', '2019-07-31 14:41:48', '0000-00-00 00:00:00'),
(159, 'Desa Purwoasri', 'Desa Purwoasri, Kecamatan Singosari, Malang', '', '2019-07-31 14:41:48', '0000-00-00 00:00:00'),
(160, 'Desa Klampok', 'Desa Klampok, Kecamatan Singosari, Malang', '', '2019-07-31 14:41:48', '0000-00-00 00:00:00'),
(161, 'Desa Ardimulyo', 'Desa Ardimulyo, Kecamatan Singosari, Malang', '', '2019-07-31 14:41:48', '0000-00-00 00:00:00'),
(162, 'Desa Randuagung', 'Desa Randuagung, Kecamatan Singosari, Malang', '', '2019-07-31 14:41:48', '0000-00-00 00:00:00'),
(163, 'Desa Tegalgondo', 'Desa Tegalgondo, Kecamatan Karangploso, Malang', '', '2019-07-31 14:41:48', '0000-00-00 00:00:00'),
(164, 'Desa Ngenep', 'Desa Ngenep, Kecamatan Karangploso, Malang', '', '2019-07-31 14:41:48', '0000-00-00 00:00:00'),
(165, 'Desa Ngijo', 'Desa Ngijo, Kecamatan Karangploso, Malang', '', '2019-07-31 14:41:48', '0000-00-00 00:00:00'),
(166, 'Desa Ampeldento', 'Desa Ampeldento, Kecamatan Karangploso, Malang', '', '2019-07-31 14:41:48', '0000-00-00 00:00:00'),
(167, 'Desa Girimoyo', 'Desa Girimoyo, Kecamatan Karangploso, Malang', '', '2019-07-31 14:41:48', '0000-00-00 00:00:00'),
(168, 'Desa Kenongo', 'Desa Kenongo, Kecamatan Jabung, Malang', '', '2019-07-31 14:41:48', '0000-00-00 00:00:00'),
(169, 'Desa Ngadirejo', 'Desa Ngadirejo, Kecamatan Jabung, Malang', '', '2019-07-31 14:41:48', '0000-00-00 00:00:00'),
(170, 'Desa Taji', 'Desa Taji, Kecamatan Jabung, Malang', '', '2019-07-31 14:41:48', '0000-00-00 00:00:00'),
(171, 'Desa Wonokerso', 'Desa Wonokerso, Kecamatan Pakisaji, Malang', '', '2019-07-31 14:41:48', '0000-00-00 00:00:00'),
(172, 'Desa Sidomulyo', 'Desa Sidomulyo, Kecamatan Jabung, Malang', '', '2019-07-31 14:41:48', '0000-00-00 00:00:00'),
(173, 'Desa Gadingkembar', 'Desa Gadingkembar, Kecamatan Jabung, Malang', '', '2019-07-31 14:41:48', '0000-00-00 00:00:00'),
(174, 'Desa Slamparejo', 'Desa Slamparejo, Kecamatan Jabung, Malang', '', '2019-07-31 14:41:48', '0000-00-00 00:00:00'),
(175, 'Desa Kemiri', 'Desa Kemiri, Kecamatan Jabung, Malang', '', '2019-07-31 14:41:48', '0000-00-00 00:00:00'),
(176, 'Desa Jabung', 'Desa Jabung, Kecamatan Jabung, Malang', '', '2019-07-31 14:41:48', '0000-00-00 00:00:00'),
(177, 'Desa Gunungjati', 'Desa Gunungjati, Kecamatan Jabung, Malang', '', '2019-07-31 14:41:48', '0000-00-00 00:00:00'),
(178, 'Desa Sumber Kradenan', 'Desa Sumber Kradenan, Kecamatan Pakis, Malang', '', '2019-07-31 14:41:48', '0000-00-00 00:00:00'),
(179, 'Desa Pucangsongo', 'Desa Pucangsongo, Kecamatan Pakis, Malang', '', '2019-07-31 14:41:48', '0000-00-00 00:00:00'),
(180, 'Desa Sukoanyar', 'Desa Sukoanyar, Kecamatan Pakis, Malang', '', '2019-07-31 14:41:48', '0000-00-00 00:00:00'),
(181, 'Desa Sumberpasir', 'Desa Sumberpasir, Kecamatan Pakis, Malang', '', '2019-07-31 14:41:48', '0000-00-00 00:00:00'),
(182, 'Desa Pakiskembar', 'Desa Pakiskembar, Kecamatan Pakis, Malang', '', '2019-07-31 14:41:48', '0000-00-00 00:00:00'),
(183, 'Desa Bunut Wetan', 'Desa Bunut Wetan, Kecamatan Pakis, Malang', '', '2019-07-31 14:41:48', '0000-00-00 00:00:00'),
(184, 'Desa Asrikaton', 'Desa Asrikaton, Kecamatan Pakis, Malang', '', '2019-07-31 14:41:48', '0000-00-00 00:00:00'),
(185, 'Desa Mangliawan', 'Desa Mangliawan, Kecamatan Pakis, Malang', '', '2019-07-31 14:41:48', '0000-00-00 00:00:00'),
(186, 'Desa Tumpang', 'Desa Tumpang, Kecamatan Tumpang, Malang', '', '2019-07-31 14:41:48', '0000-00-00 00:00:00'),
(187, 'Desa Duwetkrajan', 'Desa Duwetkrajan, Kecamatan Tumpang, Malang', '', '2019-07-31 14:41:48', '0000-00-00 00:00:00'),
(188, 'Desa Gading', 'Desa Gading, Kecamatan Bululawang, Malang', '', '2019-07-31 14:41:48', '0000-00-00 00:00:00'),
(189, 'Desa Bakalan', 'Desa Bakalan, Kecamatan Bululawang, Malang', '', '2019-07-31 14:41:48', '0000-00-00 00:00:00'),
(190, 'Desa Kasri', 'Desa Kasri, Kecamatan Bululawang, Malang', '', '2019-07-31 14:41:48', '0000-00-00 00:00:00'),
(191, 'Desa Kuwolu', 'Desa Kuwolu, Kecamatan Bululawang, Malang', '', '2019-07-31 14:41:48', '0000-00-00 00:00:00'),
(192, 'Desa Bululawang', 'Desa Bululawang, Kecamatan Bululawang, Malang', '', '2019-07-31 14:41:48', '0000-00-00 00:00:00'),
(193, 'Desa Glanggang', 'Desa Glanggang, Kecamatan Pakisaji, Malang', '', '2019-07-31 14:41:48', '0000-00-00 00:00:00'),
(194, 'Desa Jatisari', 'Desa Jatisari, Kecamatan Pakisaji, Malang', '', '2019-07-31 14:41:48', '0000-00-00 00:00:00'),
(195, 'Desa Parangargo', 'Desa Parangargo, Kecamatan Wagir, Malang', '', '2019-07-31 14:41:48', '0000-00-00 00:00:00'),
(196, 'Desa Jedong', 'Desa Jedong, Kecamatan Wagir, Malang', '', '2019-07-31 14:41:48', '0000-00-00 00:00:00'),
(197, 'Desa Petungsewu', 'Desa Petungsewu, Kecamatan Dau, Malang', '', '2019-07-31 14:41:48', '0000-00-00 00:00:00'),
(198, 'Desa Tegalweru', 'Desa Tegalweru, Kecamatan Dau, Malang', '', '2019-07-31 14:41:48', '0000-00-00 00:00:00'),
(199, 'Desa Junrejo', 'Desa Junrejo, Kecamatan Junrejo, Malang', '', '2019-07-31 14:41:48', '0000-00-00 00:00:00'),
(200, 'Desa Mojorejo', 'Desa Mojorejo, Kecamatan Junrejo, Malang', '', '2019-07-31 14:41:48', '0000-00-00 00:00:00'),
(201, 'Desa Pendem', 'Desa Pendem, Kecamatan Junrejo, Malang', '', '2019-07-31 14:41:48', '0000-00-00 00:00:00'),
(202, 'Desa Tlekung', 'Desa Tlekung, Kecamatan Junrejo, Malang', '', '2019-07-31 14:41:48', '0000-00-00 00:00:00'),
(203, 'Desa Bulukerto', 'Desa Bulukerto, Kecamatan Bumiaji, Batu', '', '2019-07-31 14:41:48', '0000-00-00 00:00:00'),
(204, 'Desa Gunungsari', 'Desa Gunungsari, Kecamatan Bumiaji, Batu', '', '2019-07-31 14:41:48', '0000-00-00 00:00:00'),
(205, 'Desa Sumberejo', 'Desa Sumberejo, Kecamatan Batu, Batu', '', '2019-07-31 14:41:48', '0000-00-00 00:00:00'),
(206, 'Desa Pakisjajar', 'Desa Pakisjajar, Kecamatan Pakis, Malang', '', '2019-07-31 14:41:48', '0000-00-00 00:00:00'),
(207, 'Desa Ngingit', 'Desa Ngingit, Kecamatan Tumpang, Malang', '', '2019-07-31 14:41:48', '0000-00-00 00:00:00'),
(208, 'Desa Pandanajeng', 'Desa Pandanajeng, Kecamatan Tumpang, Malang', '', '2019-07-31 14:41:48', '0000-00-00 00:00:00'),
(209, 'Desa Pulungdowo', 'Desa Desa Pulungdowo, Kecamatan Tumpang, Malang', '', '2019-07-31 14:41:48', '0000-00-00 00:00:00'),
(210, 'Desa Tamanharjo', 'Desa Tamanharjo, Kecamatan Singosari, Malang', '', '2019-07-31 14:41:48', '0000-00-00 00:00:00'),
(211, 'Desa Sukopuro', 'Desa Sukopuro, Kecamatan Jabung, Malang', '', '2019-07-31 14:41:48', '0000-00-00 00:00:00'),
(212, 'Desa Sidorejo', 'Desa Sidorejo, Kecamatan Jabung, Malang', '', '2019-07-31 14:41:48', '0000-00-00 00:00:00'),
(213, 'Desa Kepuharjo', 'Desa Kepuharjo, Kecamatan Karangploso, Malang', '', '2019-07-31 14:41:48', '0000-00-00 00:00:00'),
(214, 'Desa Argosari', 'Desa Argosari, Kecamatan Jabung, Malang', '', '2019-07-31 14:41:48', '0000-00-00 00:00:00'),
(215, 'Desa Kedungrejo', 'Desa Kedungrejo, Kecamatan Pakis, Malang', '', '2019-07-31 14:41:48', '0000-00-00 00:00:00'),
(216, 'Desa Tulusbesar', 'Desa Tulusbesar, Kecamatan Tumpang, Malang', '', '2019-07-31 14:41:48', '0000-00-00 00:00:00'),
(217, 'Desa Permanu', 'Desa Permanu, Kecamatan Pakisaji, Malang', '', '2019-07-31 14:41:48', '0000-00-00 00:00:00'),
(218, 'Desa Lumbangsari', 'Desa Lumbangsari, Kecamatan Bululawang, Malang', '', '2019-07-31 14:41:48', '0000-00-00 00:00:00'),
(219, 'Desa Tawangargo', 'Desa Tawangargo, Kecamatan Karangploso, Malang', '', '2019-07-31 14:41:48', '0000-00-00 00:00:00'),
(220, 'Bank BTN Syariah', 'Jl. Jaksa Agung Suprapto, Rampal Celaket, Klojen Malang', '', '2019-07-31 14:41:48', '0000-00-00 00:00:00'),
(221, 'Kantor Pelayanan Pajak (KPP) Pratama Solok', 'Jl. Solok - Liang (Tembok Raya), Nan Balmo, Tj Harapan, Kota Solok', '', '2019-07-31 14:41:48', '0000-00-00 00:00:00'),
(222, 'Badan Meterologi, Klimatologi, dan Geofisika', 'Bandar Udara Juanda, Sidoarjo', '', '2019-07-31 14:41:48', '0000-00-00 00:00:00'),
(223, 'Kantor Pelayanan Pajak Pratama Sidoarjo Utara', 'Jl. Pahlawan No.55, Sidoarjo 61212', '', '2019-07-31 14:41:48', '0000-00-00 00:00:00'),
(224, 'Kantor Pelayanan Pajak (KPP) Pratama Raba Bima', 'Jl. Sukarno Hatta No. 17 Raba Bima 64113', '', '2019-07-31 14:41:48', '0000-00-00 00:00:00'),
(225, 'Badan Pusat Statistika (BPS) Provinsi Jawa Timur', 'Jl. Raya Kendangsari Industri No. 43-44, Surabaya-60292', '', '2019-07-31 14:41:48', '0000-00-00 00:00:00'),
(226, 'RSUD, \"Dr. Syaiful Anwar\" Malang bidang Rekam Medik dan Evapor', 'Jl. Jaksa Agung Suprapto No. 2 Malang 65111', '', '2019-07-31 14:41:48', '0000-00-00 00:00:00'),
(227, 'Dinas Kesehatan Kota Batu', 'Jl. Jendral Sudirman 507 Balaikota Among Tani Gedung B Lantai 2', '', '2019-07-31 14:41:48', '0000-00-00 00:00:00'),
(228, 'Dinas Koperasi Usaha Mikro Dan Perdagangan Kota Batu', 'Jl. Jendral Sudirman 507 Balaikota Among Tani Gedung B Lantai 2', '', '2019-07-31 14:41:48', '0000-00-00 00:00:00'),
(229, 'Dinas Komunikasi Dan Informatika (KOMINFO) Kota Malang', 'Jl. Mayjend Sungkono (Perkantoran Terpadu Gedung A Lt. 4)', '', '2019-07-31 14:41:48', '0000-00-00 00:00:00'),
(230, 'Balai Konservasi Tumbuhan Kebun Raya Purwodadi-LIPI', 'Jl. Raya Surabaya-Malang Km. 65 Purwodadi-Pasuruan 67163', '', '2019-07-31 14:41:48', '0000-00-00 00:00:00'),
(231, 'Badan Perencanaan Pembangunan, Penelitian Dan Pengembangan Daerah', 'Jl. KH. Wachid Hasyim No. 5, Trenggalek 66311 ', 'Telp. (0355)791121', '2019-07-31 14:41:48', '0000-00-00 00:00:00'),
(232, 'Badan Pusat Statistika (BPS) Kota Mojokerto', 'Jl. Meri No. 7 Mojokerto (61315)', '', '2019-07-31 14:41:48', '0000-00-00 00:00:00'),
(233, 'UPT Pelayanan Jasa Kebandarudaraan Abdurachman Saleh, Malang', 'Jl. Lettu Udara Soewoto, Malang', 'Telp. 0341-793888', '2019-07-31 14:41:48', '0000-00-00 00:00:00'),
(234, 'PT. Berdikari Maubel Nusantara', 'Jl. Raya Kluncing Desa Petung Asri, Pandaan-Pasuruan', '', '2019-07-31 14:41:48', '0000-00-00 00:00:00'),
(235, 'PT. Asuransi Jiwasraya (Persero) Kantor Cabang Malang Kota', 'Jl. Brigjend, Selamet riyadi No. 18, Malang Jawa Timur', '', '2019-07-31 14:41:48', '0000-00-00 00:00:00'),
(236, 'Dinas Kependudukan Dan Catatan Sipil Kab. Malang', 'Jl. Trunojoyo No. 4 Ngadeluwih Kepanjen', 'Telp. (0341)570048', '2019-07-31 14:41:48', '0000-00-00 00:00:00'),
(237, 'CV. Fortune Berkah Abadi', 'Jl. Griya Permata Alam Blok J5, No 17-18, Ngijo Karangploso Malang', '', '2019-07-31 14:41:48', '0000-00-00 00:00:00'),
(238, 'PT POS Indonesia (Persero)', 'Jl. Sultan Agung No. 50 Sidoarjo 61211', '', '2019-07-31 14:41:48', '0000-00-00 00:00:00'),
(239, 'Badan Amil Zakat Nasional Kota Malang (BAZANAS)', 'Jl. SImpang Mojopahit No. 1 Malang-Jawa Timur', '', '2019-07-31 14:41:48', '0000-00-00 00:00:00'),
(240, 'Madrasah Aliyah Khairuddin', 'Jl. Murcoyo I RT.4 RW.04 Gondanglegi-Malang', 'Telp. (0341)879737', '2019-07-31 14:41:48', '0000-00-00 00:00:00'),
(241, 'Badan Pusat Statistik Kabupaten Bojonegoro', 'Jl. Sawunggaling No. 62, Bojonegoro.', 'Telp. (0353)881080', '2019-07-31 14:41:48', '0000-00-00 00:00:00'),
(242, 'BMKG Kelas II Tretes Pasuruan', '', '', '2019-07-31 14:41:48', '0000-00-00 00:00:00'),
(243, 'BPS Kota Batu', '', '', '2019-07-31 14:41:48', '0000-00-00 00:00:00'),
(244, 'BPS Kabupaten Mojokerto', '', '', '2019-07-31 14:41:48', '0000-00-00 00:00:00'),
(245, 'Badan Pertahanan Nasional Kota Malang', '', '', '2019-07-31 14:41:48', '0000-00-00 00:00:00'),
(246, 'Jurusan Matematika, Fakultas Sains dan Teknologi, UIN Malang', '', '', '2019-07-31 14:41:48', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `penelitian`
--

CREATE TABLE `penelitian` (
  `id` int(11) NOT NULL,
  `Tahun` int(11) NOT NULL,
  `Judul` varchar(255) NOT NULL,
  `Laporan` varchar(255) DEFAULT NULL,
  `Proposal` varchar(255) DEFAULT NULL,
  `bidang_id` int(11) NOT NULL,
  `dosene_id` int(11) NOT NULL,
  `kategori_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `penelitian`
--

INSERT INTO `penelitian` (`id`, `Tahun`, `Judul`, `Laporan`, `Proposal`, `bidang_id`, `dosene_id`, `kategori_id`, `created_at`, `updated_at`) VALUES
(1, 2017, 'Modifikasi Bentuk Kurva dan Permukaan Putar Poligon Bezier pada Rancang Bangun Benda Industri Kerajinan Marmer', NULL, NULL, 3, 17, 1, '2019-07-17 06:04:37', '0000-00-00 00:00:00'),
(2, 2017, 'Karakterisasi Modul Tidak Terdekomposisi Atas Daerah Dedekind', NULL, NULL, 2, 15, 1, '2019-07-17 06:04:37', '0000-00-00 00:00:00'),
(3, 2017, 'Aplikasi Quasigroup Encryption untuk Mengamankan Soal Ujian', NULL, NULL, 2, 18, 1, '2019-07-17 06:04:37', '0000-00-00 00:00:00'),
(4, 2017, 'Analisis Dinamik Model Fitzhugh-Nagumo pada Penjalaran Impuls Sel Saraf Menggunakan Transformasi Lienard', NULL, NULL, 6, 3, 5, '2019-07-17 06:04:37', '0000-00-00 00:00:00'),
(5, 2017, 'Pengaruh Beban Kinerja Dosen Terhadap Indeks Kepuasan Mahasiswa di UIN Maulana Malik Ibrahim Malang Menggunakan Structural Equation Modeling', NULL, NULL, 6, 10, 4, '2019-07-17 06:04:37', '0000-00-00 00:00:00'),
(6, 2018, 'Pengembangan Seni dan Teknik Desain Relief Industri Kreatif Berbantu Komputer', NULL, NULL, 4, 17, 10, '2019-07-17 06:04:37', '0000-00-00 00:00:00'),
(7, 2018, 'ANALISIS DINAMIK SISTEM DUA DIMENSI MODEL HODGKIN-HUXLEY PADA PROPAGASI IMPULS SEL SARAF', NULL, NULL, 6, 3, 11, '2019-07-17 06:04:37', '0000-00-00 00:00:00'),
(8, 2018, 'Model Gelombang Dawai untuk Penentukan Nada Do-Re-Mi Tanpa Noise', NULL, NULL, 6, 11, 11, '2019-07-17 06:04:37', '0000-00-00 00:00:00'),
(9, 2019, 'Studi Desain Geometri Fraktal Pada Motif Batik Dan Anyam Khas Indonesia', NULL, NULL, 3, 17, 10, '2019-07-17 06:04:37', '0000-00-00 00:00:00'),
(10, 2019, 'Mapping Dan Prediksi Daerah Rawan Gempa di Indonesia Dengan Algoritma Clustering', NULL, NULL, 5, 7, 16, '2019-07-17 06:04:37', '0000-00-00 00:00:00'),
(11, 2017, 'ANALISIS STABILITAS PENYEBARAN VIRUS EBOLA PADA MANUSIA\r\n', NULL, NULL, 3, 7, 19, '2019-07-17 06:04:37', '0000-00-00 00:00:00'),
(12, 2017, 'PENYELESAIAN PERSAMAAN DIFFERENSIAL PARTIAL NON LINIEAR DENGAN METODE BARU YANG LEBIH EFISIEN\r\n', NULL, NULL, 2, 1, 19, '2019-07-17 06:04:37', '0000-00-00 00:00:00'),
(13, 2017, 'Hybrid Algorithm with Super Encryption of Medical Record Image Data\r\n', NULL, NULL, 2, 1, 19, '2019-07-17 06:04:37', '0000-00-00 00:00:00'),
(14, 2017, 'DETOUR ENERGY OF COMPLEMENT OF SUBGROUP GRAPH OF DIHEDRAL GROUP\r\n', NULL, NULL, 2, 16, 19, '2019-07-17 06:04:37', '0000-00-00 00:00:00'),
(15, 2017, 'Radius, Diameter, Multiplisitas Sikel, dan Dimensi Metrik Graf Komuting dari Grup Dihedral\r\n', NULL, NULL, 5, 21, 19, '2019-07-17 06:04:37', '0000-00-00 00:00:00'),
(16, 2017, 'Spektrum Graf Konjugasi dan Komplemen Graf Konjugasi dari Grup Dihedral\r\n', NULL, NULL, 2, 15, 19, '2019-07-17 06:04:37', '0000-00-00 00:00:00'),
(17, 2017, 'Internalisasi nilai-nilai Islami dalam pembelajaran matematika dengan strategi analogi\r\n', NULL, NULL, 3, 15, 19, '2019-07-17 06:04:37', '0000-00-00 00:00:00'),
(18, 2018, 'Cognitif Prosess Students of Mathematical Problem Solving in Productive Connectivity Thinking\r\n', NULL, NULL, 3, 9, 19, '2019-07-17 06:04:37', '0000-00-00 00:00:00'),
(19, 2018, 'The effect of organizational learning on market orientation moderated by job satisfaction\r\n', NULL, NULL, 4, 13, 19, '2019-07-17 06:04:37', '0000-00-00 00:00:00'),
(20, 2018, 'Full automorphism group of commuting and non-commuting graph of dihedral and symmetric groups\r\n', NULL, NULL, 2, 13, 19, '2019-07-17 06:04:37', '0000-00-00 00:00:00'),
(21, 2018, 'Detour spectrum and detour energy of conjugate graph complement of dihedral group\r\n', NULL, NULL, 7, 16, 19, '2019-07-17 06:04:37', '0000-00-00 00:00:00'),
(22, 2018, 'Contribution of Organizational Learning and Market Orientation on Business Unit Performance Mediated by Job Satisfaction at Dairy Cattle Milk Cooperatives in East...\r\n', NULL, NULL, 7, 16, 19, '2019-07-17 06:04:37', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `pengabdian`
--

CREATE TABLE `pengabdian` (
  `id` int(11) NOT NULL,
  `Judul` varchar(255) NOT NULL,
  `Tahun` int(11) NOT NULL,
  `ketua_id` int(11) DEFAULT NULL,
  `bidang_id` int(11) DEFAULT NULL,
  `kategori_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pengabdian`
--

INSERT INTO `pengabdian` (`id`, `Judul`, `Tahun`, `ketua_id`, `bidang_id`, `kategori_id`, `created_at`, `updated_at`) VALUES
(1, 'PEMBERDAYAAN IBU RUMAH TANGGA MELALUI USAHA', 2018, 4, NULL, 19, '2019-07-17 06:06:55', '0000-00-00 00:00:00'),
(2, 'APLIKASI ASET BASE COMMUNITY DEVELOPMENT THEORY DALAM PENDAMPINGAN BANK SAMPAH MENUJU ZERO WASTE DI KELURAHAN TLOGOMAS MALANG', 2018, 5, 4, 19, '2019-07-17 06:06:55', '0000-00-00 00:00:00'),
(3, 'Peningkatan Kualitas Mental Spiritrual Kelurahan Tunjungsekar', 2018, 51, NULL, 19, '2019-07-17 06:06:55', '0000-00-00 00:00:00'),
(4, 'Peningkatan Kualitas Mental Spiritrual Kelurahan Lowokwaru', 2018, 54, NULL, 19, '2019-07-17 06:06:55', '0000-00-00 00:00:00'),
(5, 'Akulturasi Budaya Islam Pada \"Upacara Petik Laut\" Di Pantai Sendang Biru Malang Selatan', 2019, 5, NULL, 20, '2019-07-17 06:06:55', '0000-00-00 00:00:00'),
(6, 'Perancangan Pengadaan Sanitasi Lingkungan Di Taman Nasional Bromo Tengger Semeru Dengan Pendekatan Sanitasi Total Berbasis Masyarakat', 2019, 14, NULL, 21, '2019-07-17 06:06:55', '0000-00-00 00:00:00'),
(7, 'Penyusunan E-Book dan E-Learning utnuk Meningkatkan Pembelajaran Berbasis Teknologi Pada Kelompok Kerja Madrasah Kabupaten Tulungagung', 2019, 1, NULL, 21, '2019-07-17 06:06:55', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `penulis`
--

CREATE TABLE `penulis` (
  `id` int(11) NOT NULL,
  `NamaBelakang` varchar(255) DEFAULT NULL,
  `NamaDepan` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `penulis`
--

INSERT INTO `penulis` (`id`, `NamaBelakang`, `NamaDepan`, `created_at`, `updated_at`) VALUES
(1, ' Chen', 'Falai', '2019-07-23 14:44:55', '0000-00-00 00:00:00'),
(2, 'Kakiay', 'Thomas J. ', '2019-07-23 14:44:55', '0000-00-00 00:00:00'),
(3, '', 'Setiadji', '2019-07-23 14:44:55', '0000-00-00 00:00:00'),
(4, 'Bang-jensen', 'Jorgen ', '2019-07-23 14:44:55', '0000-00-00 00:00:00'),
(5, 'Praeger', 'Cheryl E. ', '2019-07-23 14:44:55', '0000-00-00 00:00:00'),
(6, 'Fournier', 'Jean-claude ', '2019-07-23 14:44:55', '0000-00-00 00:00:00'),
(7, 'Chartrand', 'Gary', '2019-07-23 14:44:55', '0000-00-00 00:00:00'),
(8, 'Mordeson', 'John N. ', '2019-07-23 14:44:55', '0000-00-00 00:00:00'),
(9, 'Sidharta', 'B. Arief ', '2019-07-23 14:44:55', '0000-00-00 00:00:00'),
(10, 'Murty', 'U.S.R ', '2019-07-23 14:44:55', '0000-00-00 00:00:00'),
(11, 'Wilson', 'Robin J. ', '2019-07-23 14:44:55', '0000-00-00 00:00:00'),
(12, 'Klir', 'George J. ', '2019-07-23 14:44:55', '0000-00-00 00:00:00'),
(13, 'Hedman', 'Shawn ', '2019-07-23 14:44:55', '0000-00-00 00:00:00'),
(14, 'Mieghem', 'Piet Van ', '2019-07-23 14:44:55', '0000-00-00 00:00:00'),
(15, 'Li', 'Xueliang', '2019-07-23 14:44:55', '0000-00-00 00:00:00'),
(16, 'Bojadziev', 'George ', '2019-07-23 14:44:55', '0000-00-00 00:00:00'),
(17, '', 'Marsudi\r\n', '2019-07-23 14:44:55', '0000-00-00 00:00:00'),
(18, 'Nair', 'Premchand S. ', '2019-07-23 14:44:55', '0000-00-00 00:00:00'),
(19, 'Imrich', 'Wilfried ', '2019-07-23 14:44:55', '0000-00-00 00:00:00'),
(20, 'Soekadijo', 'R.G ', '2019-07-23 14:44:55', '0000-00-00 00:00:00'),
(21, 'Bollobas', 'Bela ', '2019-07-23 14:44:55', '0000-00-00 00:00:00'),
(22, 'Ruohonen', 'Keijo ', '2019-07-23 14:44:55', '0000-00-00 00:00:00'),
(23, 'Bondy', 'J.A ', '2019-07-23 14:44:55', '0000-00-00 00:00:00'),
(24, 'Naba', 'Agus ', '2019-07-23 14:44:55', '0000-00-00 00:00:00'),
(25, 'Hsu', 'Lih-Hsing ', '2019-07-23 14:44:55', '0000-00-00 00:00:00'),
(26, 'Lin', 'Cheng-Kuan', '2019-07-23 14:44:55', '0000-00-00 00:00:00'),
(27, 'Berge', 'Claude ', '2019-07-23 14:44:55', '0000-00-00 00:00:00'),
(28, 'Ringel', 'Nora Hartsfield Gerhard', '2019-07-23 14:44:55', '0000-00-00 00:00:00'),
(29, 'Zhang', 'Ping ', '2019-07-23 14:44:55', '0000-00-00 00:00:00'),
(30, 'Merris', 'Russell ', '2019-07-23 14:44:55', '0000-00-00 00:00:00'),
(31, '', 'Juhari', '2019-07-23 14:44:55', '0000-00-00 00:00:00'),
(32, 'Ismiarti', 'Dewi', '2019-07-23 14:44:55', '0000-00-00 00:00:00'),
(33, 'Khudzaifah', 'Muhammad', '2019-07-23 14:44:55', '0000-00-00 00:00:00'),
(34, 'Pagalay', 'Usman', '2019-07-23 14:44:55', '0000-00-00 00:00:00'),
(35, 'Fahmi', 'Muhammad', '2019-07-23 14:44:55', '0000-00-00 00:00:00'),
(36, 'Aziz', 'Abdul', '2019-07-23 14:44:55', '0000-00-00 00:00:00'),
(37, 'Widodo', 'Iswahyudi', '2019-07-23 14:44:55', '0000-00-00 00:00:00'),
(38, 'Kusumastuti', 'Ari', '2019-07-23 14:44:55', '0000-00-00 00:00:00'),
(39, 'Rahman', 'Hairur', '2019-07-23 14:44:55', '0000-00-00 00:00:00'),
(40, 'Jamhuri', 'Muhammad', '2019-07-23 14:44:55', '0000-00-00 00:00:00'),
(41, 'Harini', 'Sri', '2019-07-23 14:44:55', '0000-00-00 00:00:00'),
(42, '', 'Turmudzi', '2019-07-23 14:44:55', '0000-00-00 00:00:00'),
(43, 'Jauhari', 'Mohammad Nafie', '2019-07-23 14:44:55', '0000-00-00 00:00:00'),
(44, 'Karisma', 'Ria Dhea Layla Nur', '2019-07-23 14:44:55', '0000-00-00 00:00:00'),
(45, '', 'Abdussakir', '2019-07-23 14:44:55', '0000-00-00 00:00:00'),
(46, 'Rozi', 'Fachrur', '2019-07-23 14:44:55', '0000-00-00 00:00:00'),
(47, 'At-Tubany', 'Ziyad Ul-Haq ', '2019-07-23 14:44:55', '0000-00-00 00:00:00'),
(48, 'Lipschutz', 'Seymour ', '2019-07-23 14:44:55', '0000-00-00 00:00:00'),
(49, 'Lukman ', 'Rosadi', '2019-07-23 14:44:55', '0000-00-00 00:00:00'),
(50, 'Yasugi', 'Mariko ', '2019-07-23 14:44:55', '0000-00-00 00:00:00'),
(51, 'Kleiner', 'Israel ', '2019-07-23 14:44:55', '0000-00-00 00:00:00'),
(52, 'Hariwijaya', 'M.', '2019-07-23 14:44:55', '0000-00-00 00:00:00'),
(53, 'Surya', 'Sutan ', '2019-07-23 14:44:55', '0000-00-00 00:00:00'),
(54, 'Volpert', 'Aizik I. ', '2019-07-23 14:44:55', '0000-00-00 00:00:00'),
(55, 'Rozi', 'Fachrur ', '2019-07-23 14:44:55', '0000-00-00 00:00:00'),
(56, 'Constenoble', 'Waner ', '2019-07-23 14:44:55', '0000-00-00 00:00:00'),
(57, '', 'PEN', '2019-07-23 14:44:55', '0000-00-00 00:00:00'),
(58, 'Idris', 'Moh. ', '2019-07-23 14:44:55', '0000-00-00 00:00:00'),
(59, 'Hoffstein', 'Jeffrey ', '2019-07-23 14:44:55', '0000-00-00 00:00:00'),
(60, 'Kusrini', 'Siti ', '2019-07-23 14:44:55', '0000-00-00 00:00:00'),
(61, 'Razali', 'Muhammad ', '2019-07-23 14:44:55', '0000-00-00 00:00:00'),
(62, 'Erickson', 'Martin', '2019-07-23 14:44:55', '0000-00-00 00:00:00'),
(63, 'Guritman', 'Sugi ', '2019-07-23 14:44:55', '0000-00-00 00:00:00'),
(64, 'Everitt', 'Brian S. ', '2019-07-23 14:44:55', '0000-00-00 00:00:00'),
(65, 'Munir', 'Rinaldi ', '2019-07-23 14:44:55', '0000-00-00 00:00:00'),
(66, 'Andreescu', 'Titu', '2019-07-23 14:44:55', '0000-00-00 00:00:00'),
(67, 'Mursita', 'Danang', '2019-07-23 14:44:55', '0000-00-00 00:00:00'),
(68, 'Bustami', 'Fadlisyah ', '2019-07-23 14:44:55', '0000-00-00 00:00:00'),
(69, 'Fathani', 'Abdul Halim ', '2019-07-23 14:44:55', '0000-00-00 00:00:00'),
(70, 'Sembiring', 'Suah ', '2019-07-23 14:44:55', '0000-00-00 00:00:00'),
(71, '', 'Gus Aa', '2019-07-23 14:44:55', '0000-00-00 00:00:00'),
(72, '', 'Pedoman Khusus', '2019-07-23 14:44:55', '0000-00-00 00:00:00'),
(73, 'R.', 'Causton David ', '2019-07-23 14:44:55', '0000-00-00 00:00:00'),
(74, 'Razali', 'Muhammad ', '2019-07-23 14:44:55', '0000-00-00 00:00:00'),
(75, 'Anselm', 'Strauss ', '2019-07-23 14:44:55', '0000-00-00 00:00:00'),
(76, 'Corbin', 'Juliet ', '2019-07-23 14:44:55', '0000-00-00 00:00:00'),
(77, '', 'Negoro', '2019-07-23 14:44:55', '0000-00-00 00:00:00'),
(78, 'Harahap', 'B. ', '2019-07-23 14:44:55', '0000-00-00 00:00:00'),
(79, 'B.', 'Johnson David ', '2019-07-23 14:44:55', '0000-00-00 00:00:00'),
(80, 'A.', 'Mowry Thomas ', '2019-07-23 14:44:55', '0000-00-00 00:00:00'),
(81, 'Subagyo', 'Pangestu ', '2019-07-23 14:44:55', '0000-00-00 00:00:00'),
(82, 'Taha', 'Hamdy A ', '2019-07-23 14:44:55', '0000-00-00 00:00:00'),
(83, 'Spiegel', 'Murray R. ', '2019-07-23 14:44:55', '0000-00-00 00:00:00'),
(84, 'Enderton', 'Herbert B. ', '2019-07-23 14:44:55', '0000-00-00 00:00:00'),
(85, '', 'Subiono', '2019-07-23 14:44:55', '0000-00-00 00:00:00'),
(86, 'Otal', 'J. ', '2019-07-23 14:44:55', '0000-00-00 00:00:00'),
(87, 'Campbell', 'Stephen L. ', '2019-07-23 14:44:55', '0000-00-00 00:00:00'),
(88, 'Judson', 'Thomas W. ', '2019-07-23 14:44:55', '0000-00-00 00:00:00'),
(89, 'Holland', 'North', '2019-07-23 14:44:55', '0000-00-00 00:00:00'),
(90, 'Imrona', 'Mahmud ', '2019-07-23 14:44:55', '0000-00-00 00:00:00'),
(91, 'Du', 'Ding-Zhu ', '2019-07-23 14:44:55', '0000-00-00 00:00:00'),
(92, 'Alisah', 'Evawati', '2019-07-23 14:44:55', '0000-00-00 00:00:00'),
(93, 'Wesner', 'Terry H. ', '2019-07-23 14:44:55', '0000-00-00 00:00:00'),
(94, 'Hefferon', 'Jim', '2019-07-23 14:44:55', '0000-00-00 00:00:00'),
(95, 'Andrianto', 'Heri ', '2019-07-23 14:44:55', '0000-00-00 00:00:00'),
(96, 'Eng-Chye', 'Tan ', '2019-07-23 14:44:55', '0000-00-00 00:00:00'),
(97, 'Srivastava', 'S.M. ', '2019-07-23 14:44:55', '0000-00-00 00:00:00'),
(98, 'Hsiang', 'W.Y ', '2019-07-23 14:44:55', '0000-00-00 00:00:00'),
(99, 'Gazali', 'Wikaria ', '2019-07-23 14:44:55', '0000-00-00 00:00:00'),
(100, 'Anton', 'Howard ', '2019-07-23 14:44:55', '0000-00-00 00:00:00'),
(101, 'Strang', 'Gilbert ', '2019-07-23 14:44:55', '0000-00-00 00:00:00'),
(102, '', 'Ruminta', '2019-07-23 14:44:55', '0000-00-00 00:00:00'),
(103, 'Purwanto', 'Heri ', '2019-07-23 14:44:55', '0000-00-00 00:00:00'),
(104, 'Supranto', 'J. ', '2019-07-23 14:44:55', '0000-00-00 00:00:00'),
(105, 'Brown', 'William C. ', '2019-07-23 14:44:55', '0000-00-00 00:00:00'),
(106, 'Thomas', 'Charles B ', '2019-07-23 14:44:55', '0000-00-00 00:00:00'),
(107, 'Dharmawan', 'Eko Prasetyo ', '2019-07-23 14:44:55', '0000-00-00 00:00:00'),
(108, 'Kandasamy', 'W.B. Vasantha ', '2019-07-23 14:44:55', '0000-00-00 00:00:00'),
(109, 'Rao', 'R. Venkata ', '2019-07-23 14:44:55', '0000-00-00 00:00:00'),
(110, 'Li', 'Zhijun ', '2019-07-23 14:44:55', '0000-00-00 00:00:00'),
(111, 'Valente', 'Jose ', '2019-07-23 14:44:55', '0000-00-00 00:00:00'),
(112, 'Dubois', 'Didier ', '2019-07-23 14:44:55', '0000-00-00 00:00:00'),
(113, 'Durbin', 'John R. ', '2019-07-23 14:44:55', '0000-00-00 00:00:00'),
(114, 'Nieberg', 'Peter Meyer', '2019-07-23 14:44:55', '0000-00-00 00:00:00'),
(115, 'Halmos ', 'Paul R. ', '2019-07-23 14:44:55', '0000-00-00 00:00:00'),
(116, 'Robinson', 'Derek J. S. ', '2019-07-23 14:44:55', '0000-00-00 00:00:00'),
(117, 'Bar', 'Christian ', '2019-07-23 14:44:55', '0000-00-00 00:00:00'),
(118, 'Hatcher', 'Allen ', '2019-07-23 14:44:55', '0000-00-00 00:00:00'),
(119, '', 'Sukirman', '2019-07-23 14:44:55', '0000-00-00 00:00:00'),
(120, 'Lang', 'Serge ', '2019-07-23 14:44:55', '0000-00-00 00:00:00'),
(121, 'Aschbacher', 'M. ', '2019-07-23 14:44:55', '0000-00-00 00:00:00'),
(122, 'Arifin', 'Achmad ', '2019-07-23 14:44:55', '0000-00-00 00:00:00'),
(123, 'Thiele', 'Helmut ', '2019-07-23 14:44:55', '0000-00-00 00:00:00'),
(124, 'Hall', 'F. M. ', '2019-07-23 14:44:55', '0000-00-00 00:00:00'),
(125, 'Rorres', 'Chris ', '2019-07-23 14:44:55', '0000-00-00 00:00:00'),
(126, 'Raisinghania', 'M.D ', '2019-07-23 14:44:55', '0000-00-00 00:00:00'),
(127, 'Kusumawati', 'Ririen ', '2019-07-23 14:44:55', '0000-00-00 00:00:00'),
(128, 'Sauer', 'Timothy', '2019-07-23 14:44:55', '0000-00-00 00:00:00'),
(129, 'Barbeau', 'Edward J.', '2019-07-23 14:44:55', '0000-00-00 00:00:00'),
(130, 'Jackson', 'Nicholas ', '2019-07-23 14:44:55', '0000-00-00 00:00:00'),
(131, 'Avis', 'David ', '2019-07-23 14:44:55', '0000-00-00 00:00:00'),
(132, 'Muhsetyo', 'Gatot ', '2019-07-23 14:44:55', '0000-00-00 00:00:00'),
(133, 'Nasoetion', 'Andi Hakim ', '2019-07-23 14:44:55', '0000-00-00 00:00:00'),
(134, '', 'Bluman', '2019-07-23 14:44:55', '0000-00-00 00:00:00'),
(135, 'Soong', 'T.T. ', '2019-07-23 14:44:55', '0000-00-00 00:00:00'),
(136, '', 'Rusdin', '2019-07-23 14:44:55', '0000-00-00 00:00:00'),
(137, 'Hademenos', 'Geoge J.', '2019-07-23 14:44:55', '0000-00-00 00:00:00'),
(138, 'Rousseeuw', 'Peter J. ', '2019-07-23 14:44:55', '0000-00-00 00:00:00'),
(139, 'Leroy', 'Annick M. ', '2019-07-23 14:44:55', '0000-00-00 00:00:00'),
(140, 'Gomez', 'Kwanchai A. ', '2019-07-23 14:44:55', '0000-00-00 00:00:00'),
(141, 'Gomez ', 'Arturo A. ', '2019-07-23 14:44:55', '0000-00-00 00:00:00'),
(142, 'Trumbo', 'Bruce E. ', '2019-07-23 14:44:55', '0000-00-00 00:00:00'),
(143, 'Walck', 'Christian ', '2019-07-23 14:44:55', '0000-00-00 00:00:00'),
(144, '', ' Johannes', '2019-07-23 14:44:55', '0000-00-00 00:00:00'),
(145, 'Handoko', 'Budiono Sri ', '2019-07-23 14:44:55', '0000-00-00 00:00:00'),
(146, 'Wijaya', 'Tony ', '2019-07-23 14:44:55', '0000-00-00 00:00:00'),
(147, 'Sunyoto', 'Danang ', '2019-07-23 14:44:55', '0000-00-00 00:00:00'),
(148, 'Zacks', 'Ron S. Kenett Shelemyahu ', '2019-07-23 14:44:55', '0000-00-00 00:00:00'),
(149, 'Herrhyanto', 'Nar ', '2019-07-23 14:44:55', '0000-00-00 00:00:00'),
(150, 'Berlianty', 'Intan ', '2019-07-23 14:44:55', '0000-00-00 00:00:00'),
(151, 'Arifin', 'Miftahol ', '2019-07-23 14:44:55', '0000-00-00 00:00:00'),
(152, 'Waluyo', 'Sihono Dwi ', '2019-07-23 14:44:55', '0000-00-00 00:00:00'),
(153, 'Myers', 'Raymond H. ', '2019-07-23 14:44:55', '0000-00-00 00:00:00'),
(154, 'Milton', 'Janet S. ', '2019-07-23 14:44:55', '0000-00-00 00:00:00'),
(155, 'Dajan', 'Anto ', '2019-07-23 14:44:55', '0000-00-00 00:00:00'),
(156, 'Walpole ', 'Ronald E. ', '2019-07-23 14:44:55', '0000-00-00 00:00:00'),
(157, 'Pardalos', 'Panos M. ', '2019-07-23 14:44:55', '0000-00-00 00:00:00'),
(158, 'Awat', 'Napa J. ', '2019-07-23 14:44:55', '0000-00-00 00:00:00'),
(159, 'Hamid', 'M. Akib ', '2019-07-23 14:44:55', '0000-00-00 00:00:00'),
(160, 'A', 'Suparman I.', '2019-07-23 14:44:55', '0000-00-00 00:00:00'),
(161, '', 'Sugiyono', '2019-07-23 14:44:55', '0000-00-00 00:00:00'),
(162, 'Montgomery', 'Douglas C. ', '2019-07-23 14:44:55', '0000-00-00 00:00:00'),
(163, '', 'Craig', '2019-07-23 14:44:55', '0000-00-00 00:00:00'),
(164, '', 'Mc.Kean', '2019-07-23 14:44:55', '0000-00-00 00:00:00'),
(165, '', 'Hogg', '2019-07-23 14:44:55', '0000-00-00 00:00:00'),
(166, 'Howell', 'David C. ', '2019-07-23 14:44:55', '0000-00-00 00:00:00'),
(167, 'Myerson', 'Roger B. ', '2019-07-23 14:44:55', '0000-00-00 00:00:00'),
(168, 'McDonald', 'David ', '2019-07-23 14:44:55', '0000-00-00 00:00:00'),
(169, 'Runger', 'George C.', '2019-07-23 14:44:55', '0000-00-00 00:00:00'),
(170, 'Adkins', 'Lee C. ', '2019-07-23 14:44:55', '0000-00-00 00:00:00'),
(171, 'Askeland', 'Donald R. ', '2019-07-23 14:44:55', '0000-00-00 00:00:00'),
(172, 'Phule', 'Pradeep P. ', '2019-07-23 14:44:55', '0000-00-00 00:00:00'),
(173, 'Araki', 'Hizihiro ', '2019-07-23 14:44:55', '0000-00-00 00:00:00'),
(174, 'Ezawa', 'Hiroshi ', '2019-07-23 14:44:55', '0000-00-00 00:00:00'),
(175, 'Yuwono', 'Prapto ', '2019-07-23 14:44:55', '0000-00-00 00:00:00'),
(176, 'Hothorn', 'Torsten ', '2019-07-23 14:44:55', '0000-00-00 00:00:00'),
(177, 'Santoso', 'Singgih ', '2019-07-23 14:44:55', '0000-00-00 00:00:00'),
(178, 'Maronna', 'Ricardo A. ', '2019-07-23 14:44:55', '0000-00-00 00:00:00'),
(179, 'Martin ', 'R.Douglas ', '2019-07-23 14:44:55', '0000-00-00 00:00:00'),
(180, 'Gujarati', 'Damodar ', '2019-07-23 14:44:55', '0000-00-00 00:00:00'),
(181, 'Studenmund', 'A.H. ', '2019-07-23 14:44:55', '0000-00-00 00:00:00'),
(182, 'Draper', 'Norman R. ', '2019-07-23 14:44:55', '0000-00-00 00:00:00'),
(183, 'Smith', 'Harry ', '2019-07-23 14:44:55', '0000-00-00 00:00:00'),
(184, 'Borovkov', 'K. ', '2019-07-23 14:44:55', '0000-00-00 00:00:00'),
(185, 'Scheaffer', 'Richard L. ', '2019-07-23 14:44:55', '0000-00-00 00:00:00'),
(186, 'Mendenhall ', 'William ', '2019-07-23 14:44:55', '0000-00-00 00:00:00'),
(187, 'Yohai ', 'Victor J. ', '2019-07-23 14:44:55', '0000-00-00 00:00:00'),
(188, 'Ott', 'Lyman ', '2019-07-23 14:44:55', '0000-00-00 00:00:00'),
(189, 'Dickson', 'David C. M. ', '2019-07-23 14:44:55', '0000-00-00 00:00:00'),
(190, 'Hardy', 'Mary R. ', '2019-07-23 14:44:55', '0000-00-00 00:00:00'),
(191, 'Waters', 'Howard R. ', '2019-07-23 14:44:55', '0000-00-00 00:00:00'),
(192, 'Devore', 'Jay L. ', '2019-07-23 14:44:55', '0000-00-00 00:00:00'),
(193, 'Berk', 'Kenneth N. ', '2019-07-23 14:44:55', '0000-00-00 00:00:00'),
(194, 'Wang', 'Peijie ', '2019-07-23 14:44:55', '0000-00-00 00:00:00'),
(195, 'Bilodeau', 'Martin ', '2019-07-23 14:44:55', '0000-00-00 00:00:00'),
(196, 'Brenner', 'David ', '2019-07-23 14:44:55', '0000-00-00 00:00:00'),
(197, 'Viertl', 'Reinhard ', '2019-07-23 14:44:55', '0000-00-00 00:00:00'),
(198, 'Alexander', 'Carol ', '2019-07-23 14:44:55', '0000-00-00 00:00:00'),
(199, 'Chiang', 'Alpha C. ', '2019-07-23 14:44:55', '0000-00-00 00:00:00'),
(200, 'Wainwright', 'Kevin ', '2019-07-23 14:44:55', '0000-00-00 00:00:00'),
(201, 'Ruppert', 'David ', '2019-07-23 14:44:55', '0000-00-00 00:00:00'),
(202, 'Wand', 'M. P. ', '2019-07-23 14:44:55', '0000-00-00 00:00:00'),
(203, 'Carrol', 'R.J. ', '2019-07-23 14:44:55', '0000-00-00 00:00:00'),
(204, 'Seydel', 'Rudinger U. ', '2019-07-23 14:44:55', '0000-00-00 00:00:00'),
(205, 'Rawlings', 'John O. ', '2019-07-23 14:44:55', '0000-00-00 00:00:00'),
(206, 'Pantul', 'Sastry G. ', '2019-07-23 14:44:55', '0000-00-00 00:00:00'),
(207, 'Dickey', 'David A. ', '2019-07-23 14:44:55', '0000-00-00 00:00:00'),
(208, 'Cunningham', 'Robin ', '2019-07-23 14:44:55', '0000-00-00 00:00:00'),
(209, 'Terrell', 'George R. ', '2019-07-23 14:44:55', '0000-00-00 00:00:00'),
(210, 'MeNeil', 'Alexander J. ', '2019-07-23 14:44:55', '0000-00-00 00:00:00'),
(211, 'Zadeh', 'Lotfi A. ', '2019-07-23 14:44:55', '0000-00-00 00:00:00'),
(212, 'Cbibara', 'Laura ', '2019-07-23 14:44:55', '0000-00-00 00:00:00'),
(213, 'Hesterberg', 'Tim ', '2019-07-23 14:44:55', '0000-00-00 00:00:00'),
(214, 'Down', 'Kevin ', '2019-07-23 14:44:55', '0000-00-00 00:00:00'),
(215, 'Pearson', 'Nell D. ', '2019-07-23 14:44:55', '0000-00-00 00:00:00'),
(216, 'Rotoar', 'Vladimir I. ', '2019-07-23 14:44:55', '0000-00-00 00:00:00'),
(217, 'Aron', 'Arthur ', '2019-07-23 14:44:55', '0000-00-00 00:00:00'),
(218, 'Darairo', 'Cinzia ', '2019-07-23 14:44:55', '0000-00-00 00:00:00'),
(219, 'Morton', 'K.W. ', '2019-07-23 14:44:55', '0000-00-00 00:00:00'),
(220, 'Mayers', 'David ', '2019-07-23 14:44:55', '0000-00-00 00:00:00'),
(221, 'Barth', 'T.J ', '2019-07-23 14:44:55', '0000-00-00 00:00:00'),
(222, 'Clemmons', 'Jenna Brandenburg Lashaun', '2019-07-23 14:44:55', '0000-00-00 00:00:00'),
(223, 'Burden', 'Richard L. ', '2019-07-23 14:44:55', '0000-00-00 00:00:00'),
(224, 'Faires', 'J. Douglas ', '2019-07-23 14:44:55', '0000-00-00 00:00:00'),
(225, 'Holthuijsen', 'Leo H. ', '2019-07-23 14:44:55', '0000-00-00 00:00:00'),
(226, 'Liao ', 'Shijun ', '2019-07-23 14:44:55', '0000-00-00 00:00:00'),
(227, 'Sarra', 'Scott A. ', '2019-07-23 14:44:55', '0000-00-00 00:00:00'),
(228, 'Sauer', 'Timothy ', '2019-07-23 14:44:55', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `pklkkm`
--

CREATE TABLE `pklkkm` (
  `id` int(11) NOT NULL,
  `Judul` varchar(255) NOT NULL,
  `Tahun` int(11) NOT NULL,
  `File` varchar(250) DEFAULT NULL,
  `KodeDosen` int(11) DEFAULT NULL,
  `IDMitra` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pklkkm`
--

INSERT INTO `pklkkm` (`id`, `Judul`, `Tahun`, `File`, `KodeDosen`, `IDMitra`, `created_at`, `updated_at`) VALUES
(1, '(Kelompok KKM 2)', 2017, NULL, 25, 1, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(2, '(Kelompok KKM 3)', 2017, NULL, 25, 2, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(3, '(Kelompok KKM 5)', 2017, NULL, 25, 3, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(4, '(Kelompok KKM 7)', 2017, NULL, 25, 4, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(5, '(Kelompok KKM 16)', 2017, NULL, 26, 5, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(6, '(Kelompok KKM 19)', 2017, NULL, 27, 6, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(7, '(Kelompok KKM 22)', 2017, NULL, 27, 7, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(8, '(Kelompok KKM 24)', 2017, NULL, 27, 8, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(9, '(Kelompok KKM 25)', 2017, NULL, 27, 9, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(10, '(Kelompok KKM 27)`', 2017, NULL, 28, 10, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(11, '(Kelompok KKM 31)', 2017, NULL, 28, 11, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(12, '(Kelompok KKM 38)', 2017, NULL, 28, 12, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(13, '(Kelompok KKM 39)', 2017, NULL, 28, 13, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(14, '(Kelompok KKM 41)', 2017, NULL, 28, 14, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(15, '(Kelompok KKM 42)', 2017, NULL, 28, 15, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(16, '(Kelompok KKM 43)', 2017, NULL, 28, 16, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(17, '(Kelompok KKM 44)', 2017, NULL, 29, 17, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(18, '(Kelompok KKM 45)', 2017, NULL, 29, 18, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(19, '(Kelompok KKM 46)', 2017, NULL, 29, 19, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(20, '(Kelompok KKM 47)', 2017, NULL, 29, 20, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(21, '(Kelompok KKM 48)', 2017, NULL, 29, 21, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(22, '(Kelompok KKM 49)', 2017, NULL, 29, 22, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(23, '(Kelompok KKM 52)', 2017, NULL, 29, 23, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(24, '(Kelompok KKM 59)', 2017, NULL, 30, 24, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(25, '(Kelompok KKM 60)', 2017, NULL, 30, 25, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(26, '(Kelompok KKM 61)', 2017, NULL, 30, 26, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(27, '(Kelompok KKM 62)', 2017, NULL, 30, 27, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(28, '(Kelompok KKM 63)', 2017, NULL, 31, 28, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(29, '(Kelompok KKM 67)', 2017, NULL, 31, 29, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(30, '(Kelompok KKM 69)', 2017, NULL, 31, 30, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(31, '(Kelompok KKM 70)', 2017, NULL, 31, 31, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(32, '(Kelompok KKM 71)', 2017, NULL, 31, 32, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(33, '(Kelompok KKM 72)', 2017, NULL, 31, 33, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(34, '(Kelompok KKM 74)', 2017, NULL, 31, 34, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(35, '(Kelompok KKM 75)', 2017, NULL, 31, 35, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(36, '(Kelompok KKM 76)', 2017, NULL, 32, 36, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(37, '(Kelompok KKM 77)', 2017, NULL, 32, 37, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(38, '(Kelompok KKM 78)', 2017, NULL, 32, 38, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(39, '(Kelompok KKM 81)', 2017, NULL, 32, 39, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(40, '(Kelompok KKM 83)', 2017, NULL, 32, 40, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(41, '(Kelompok KKM 84)', 2017, NULL, 32, 41, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(42, '(Kelompok KKM 86)', 2017, NULL, 33, 42, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(43, '(Kelompok KKM 89)', 2017, NULL, 33, 43, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(44, '(Kelompok KKM 90)', 2017, NULL, 33, 44, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(45, '(Kelompok KKM 92)', 2017, NULL, 33, 45, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(46, '(Kelompok KKM 94)', 2017, NULL, 33, 46, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(47, '(Kelompok KKM 95)', 2017, NULL, 33, 47, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(48, '(Kelompok KKM 96)', 2017, NULL, 34, 48, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(49, '(Kelompok KKM 97)', 2017, NULL, 34, 49, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(50, '(Kelompok KKM 99)', 2017, NULL, 34, 50, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(51, '(Kelompok KKM 104)', 2017, NULL, 34, 51, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(52, '(Kelompok KKM 105)', 2017, NULL, 34, 52, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(53, '(Kelompok KKM 106)', 2017, NULL, 34, 53, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(54, '(Kelompok KKM 107)', 2017, NULL, 34, 54, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(55, '(Kelompok KKM 109)', 2017, NULL, 34, 55, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(56, '(Kelompok KKM 115)', 2017, NULL, 35, 56, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(57, '(Kelompok KKM 116)', 2017, NULL, 35, 57, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(58, '(Kelompok KKM 117)', 2017, NULL, 35, 58, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(59, '(Kelompok KKM 120)', 2017, NULL, 35, 59, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(60, '(Kelompok KKM 128)', 2017, NULL, 36, 60, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(61, '(Kelompok KKM 129)', 2017, NULL, 36, 61, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(62, '(Kelompok KKM 131)', 2017, NULL, 36, 62, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(63, '(Kelompok KKM 139)', 2017, NULL, 37, 63, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(64, '(Kelompok KKM 145)', 2017, NULL, 37, 64, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(65, '(Kelompok KKM 146)', 2017, NULL, 37, 65, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(66, '(Kelompok KKM 151)', 2017, NULL, 38, 67, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(67, '(Kelompok KKM 155)', 2017, NULL, 38, 69, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(68, '(Kelompok KKM 157)', 2017, NULL, 38, 70, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(69, '(Kelompok KKM 161)', 2017, NULL, 38, 68, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(70, '(Kelompok KKM 168)', 2017, NULL, 4, 66, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(71, '(Kelompok KKM 169)', 2017, NULL, 4, 72, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(72, '(Kelompok KKM 170)', 2017, NULL, 4, 73, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(73, '(Kelompok KKM 172)', 2017, NULL, 4, 74, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(74, '(Kelompok KKM 177)', 2017, NULL, 39, 75, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(75, '(Kelompok KKM 179)', 2017, NULL, 39, 76, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(76, '(Kelompok KKM 185)', 2017, NULL, 39, 77, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(77, '(Kelompok KKM 187)', 2017, NULL, 39, 78, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(78, '(Kelompok KKM 190)', 2017, NULL, 40, 79, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(79, '(Kelompok KKM 191)', 2017, NULL, 40, 80, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(80, '(Kelompok KKM 195)', 2017, NULL, 40, 81, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(81, '(Kelompok KKM 196)', 2017, NULL, 3, 82, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(82, '(Kelompok KKM 197)', 2017, NULL, 3, 83, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(83, '(Kelompok KKM 199)', 2017, NULL, 3, 84, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(84, '(Kelompok KKM 200)', 2017, NULL, 3, 85, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(85, '(Kelompok KKM 201)', 2017, NULL, 3, 86, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(86, '(Kelompok KKM 202)', 2017, NULL, 3, 87, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(87, '(Kelompok KKM 203)', 2017, NULL, 3, 88, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(88, '(Kelompok KKM 204)', 2017, NULL, 3, 89, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(89, '(Kelompok KKM 206)', 2017, NULL, 41, 90, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(90, '(Kelompok KKM 207)', 2017, NULL, 41, 91, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(91, '(Kelompok KKM 212)', 2017, NULL, 41, 92, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(92, '(Kelompok KKM 213)', 2017, NULL, 41, 93, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(93, '(Kelompok KKM 215)', 2017, NULL, 41, 94, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(94, '(Kelompok KKM 223)', 2017, NULL, 42, 95, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(95, '(Kelompok KKM 224)', 2017, NULL, 42, 96, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(96, '(Kelompok KKM 226)', 2017, NULL, 43, 97, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(97, '(Kelompok KKM 227)', 2017, NULL, 43, 98, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(98, '(Kelompok KKM 234)', 2017, NULL, 44, 99, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(99, '(Kelompok KKM 237)', 2017, NULL, 44, 100, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(100, '(Kelompok KKM 239)', 2017, NULL, 45, 101, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(101, '(Kelompok KKM 243)', 2017, NULL, 45, 102, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(102, '(Kelompok KKM 251)', 2017, NULL, 46, 103, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(103, '(Kelompok KKM 254)', 2017, NULL, 46, 104, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(104, '(Kelompok KKM 255)', 2017, NULL, 46, 105, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(105, '(Kelompok KKM 257)', 2017, NULL, 47, 106, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(106, '(Kelompok KKM 258)', 2017, NULL, 47, 107, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(107, '(Kelompok KKM 262)', 2017, NULL, 47, 108, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(108, '(Kelompok KKM 263)', 2017, NULL, 47, 109, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(109, '(Kelompok KKM 272)', 2017, NULL, 47, 110, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(110, 'PENERAPAN ANALISIS CLUSTERING MENGGUNAKAN METODE K-MEANS UNTUK DATA ANGKA GARIS KEMISKINAN DAN PENDUDUK MISKIN DI KABUPATEN PASURUAN', 2017, NULL, NULL, 71, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(111, 'ANALISIS KERAGAMAN PERTUMBUHAN SEPULUH VARIETAS TANAMAN CABAI (CAPSICUM ANNUM L)BADAN PUSAT STATISTIK KABUPATEN PASURUAN JAWA TIMUR', 2017, NULL, NULL, 71, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(112, 'ANALISIS FUNGSI PRODUKSI PADI SAWAH MENGGUNAKAN METODE INTERPOLASI LAGRANGE DIKANTOR BADAN PUSAT STATISTIK (BPS) KABUPATEN PASURUAN ', 2017, NULL, NULL, 71, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(113, 'ANALISIS KORELASI UANG PINJAMAN TERHADAP JUMLAH TAKSIRAN PT.PEGADAIAN CABANG SINGOSARI MALANG TAHUN 2007-2016', 2017, NULL, 17, 111, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(114, 'ANALISIS MODEL ARIMA BOX-JENKINS PADA DATA FLUKTUASI HARGA EMAS PT.PEGADAIAN CABANG SINGOSARI MALANG ', 2017, NULL, 17, 111, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(115, 'APLIKASI LOGIKA MATEMATIKA DALAM OPTIMALISASI PELAYANAN PT.PEGADAIAN SINGOSARI', 2017, NULL, 17, 111, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(116, 'ANALISIS PENGARUH JUMLAH SUKU BUNGA PEGADAIAN DAN BANK TERHADAP PERMINTAAN GADAI PT.PEGADAIAN CABANG SINGOSARI MALANG', 2017, NULL, 17, 111, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(117, 'MODEL EPIDEMI SIR PADA PENYAKIT CACAR AIR', 2017, NULL, 3, 112, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(118, 'ANALISIS MODEL EPIDEMI SIR PADA PENYEBARAN PENYAKIT HIV/AIDS', 2017, NULL, 3, 112, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(119, 'ANALISIS MODEL EPIDEMI SIR PADA PENYEBARAN PENYAKIT TUBERCULOSIS', 2017, NULL, 3, 112, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(120, 'KORELASI CURAH HUJAN TERHADAP BANYAKNYA SAMBARAN PETIR DI TRETES KABUPATEN PASURUAN', 2017, NULL, 15, 113, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(121, 'PERIODE ULANG GEMPA BUMI MERUSAK DI DAERAH JAWA TIMUR DAN SEKITARNYA ', 2017, NULL, 15, 113, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(122, 'IMPLEMENTASI METODE ENTROPY-ORESTE DALAM MENENTUKAN SUSUNAN RANGKING POTENSI SENTRA INDUSTRI KECIL DAN MENENGAH KABUPATEN MALANG', 2017, NULL, 5, 114, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(123, 'MAKSIMASI KAPASITAS PRODUKSI KERIPIK DI INDUSTRI KABUPATEN MALANG BERBASIS PROGRAM LINIER METODE GRAFIK', 2017, NULL, 5, 114, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(124, 'ANALISIS DALAM PENENTUAN KESTABILAN BREAK EVEN POINT (BEP) PENJUALAN SEMBILAN BAHAN POKOK PEDAGANG LOS DI PASAR KABUPATEN MALANG DENGAN PENERAPAN APLIKASI DIFERENSIAL ', 2017, NULL, 5, 114, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(125, 'PERAMALAN NILAI PENDAPATAN BIDANG PASAR DI KABUPATEN MALANG DENGAN METODE ARIMA', 2017, NULL, 5, 114, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(126, 'ANALISIS HUBUNGAN DAN PENGARUH NILAI BAHAN BAKU,JUMLAH TENAGA KERJA DAN NILAI INVESTASI TERHADAP NILAI PRODUKSI INDUSTRI KECIL MENENGAH DI KABUPATEN MALANG DENGAN METODE REGRESI LINIER BERGANDA', 2017, NULL, 5, 114, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(127, 'PERAMALAN INFLASI MAKANAN JADI,MINUMAN,ROKOK DAN TEMBAKAU KOTA MALANG MENGGUNAKAN MODEL ARIMA', 2017, NULL, 11, 115, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(128, 'PROYEKSI PENDUDUK KOTA MALANG DENGAN MODEL PERTUMBUHAN LOGISTIK DI BARENLITBANG KOTA MALANG', 2017, NULL, 11, 115, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(129, 'PERAMALAN JUMLAH PEMOHON BARU SURAT IZIN USAHA PERDAGANGAN (SIUP) KOTA MALANG TAHUN 2015-2016 DENGAN METODE TREND LINIER', 2017, NULL, 11, 115, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(130, 'ANALISIS PENGARUH INDEKS PEMBANGUNAN MANUSIA TERHADAP ANGKA KEMISKINAN DI KOTA MALANG TAHUN 2010-1016 DENGAN METODE REGRESI LINIER SEDERHANA', 2017, NULL, 11, 115, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(131, 'PERAMALAN LAJU INFLASI BIDANG TRANSPORTASI,KOMUNIKASI DAN JASA KEUANGAN KOTA MALANG TAHUN 2017 DENGAN METODE PEMULUSAN EKSPONENSIAL GANDA', 2017, NULL, 11, 115, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(132, 'ANALISIS PENGARUH IZIN MENDIRIKAN BANGUNAN TERHADAP IZIN GANGGUAN DI DPMPTSP KOTA MALANG TAHUN 2016 DENGAN METODE REGRESI LINIER SEDERHANA', 2017, NULL, 16, 116, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(133, 'ANALISIS KORELASI IZIN TRAYEK DAN IZIN USAHA ANGKUTAN DI DPMPTSP KOTA MALANG TAHUN 2016', 2017, NULL, 16, 116, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(134, 'ANALISIS PENENTUAN PERBEDAAN NILAI RATA RATA BESARNYA RETRIBUSI IZIN GANGGUAN PADA TAHUN 2015-2016 DENGAN METODE UJI HIPOTESA', 2017, NULL, 16, 116, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(135, 'ANALISIS JUMLAH PEMOHON IZIN DI LIMA JENIS PERIZINAN DI DPMPTSP TAHUN 2016 DENGAN METODE ANALISIS VARIAN', 2017, NULL, 16, 116, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(136, 'PERAMALAN PENERIMAAN RETRIBUSI IZIN TRAYEK DI DPMPTSP KOTA MALANG MENGGUNAKAN METODE TREND LINIER PERIODE 2015 SAMPAI 2016', 2017, NULL, 16, 116, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(137, 'ANALISIS CLUSTER JUMLAH PENDUDUK MENURUT KELOMPOK UMUR DAN JENIS KELAMIN DIKOTA BATU TAHUN 2016', 2017, NULL, 7, 117, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(138, 'PERAMALAN JUMLAH PENDAPATAN ASLI DAERAH (PAD) KOTA BATU DENGAN DOUBLE EXPONTEANSIAL SMOOTHING ', 2017, NULL, 7, 117, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(139, 'DETEKSI MULTIKOLINEARITAS TERHADAP FAKTOR FAKTOR YANG MEMPENGARUHI NILAI PENDAPATAN PT.PLN DI KOTA BATU DENGAN ANALISIS KOMPONEN UTAMA ', 2017, NULL, 7, 117, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(140, 'PERAMALAN PERTUMBUHAN PENDUDUK KOTA BATU MENGGUNAKAN METODE DOUBLE EXPONENTIAL SMOOTHING', 2017, NULL, 7, 117, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(141, 'ANALISIS REGRESI UNTUK NILAI PRODUKSI (DALAM Rp) TERHADAP JUMLAH PELANGGAN DAN BANYAKNYA LISTRIK YANG DISALURKAN (kWh)TAHUN 2014', 2017, NULL, 2, 118, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(142, 'METODE REGRESI LINIER BERGANDA UNTUK MENGANALISA PENGARUH LUAS TANAM DAN PANEN TERHADAP JUMLAH PRODUKSI PADI KABUPATEN MOJOKERTO PADA TAHUN 2014', 2017, NULL, 2, 118, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(143, 'ANALISIS PENGARUH STATUS GIZI BURUK DAN JUMLAH PERUSAHAAN INDUSTRI TERHADAP PENYEBARAN PNEUMONIA PADA BALITA DI KABUPATEN MOJOKERTO TAHUN 2015', 2017, NULL, 2, 118, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(144, '', 2018, NULL, NULL, 117, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(145, '', 2018, NULL, NULL, 117, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(146, '', 2018, NULL, NULL, 117, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(147, '', 2018, NULL, NULL, 117, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(148, '', 2018, NULL, NULL, 117, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(149, '', 2018, NULL, NULL, 119, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(150, '', 2018, NULL, NULL, 119, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(151, '', 2018, NULL, NULL, 119, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(152, '', 2018, NULL, NULL, 119, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(153, '', 2018, NULL, NULL, 119, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(154, '', 2018, NULL, NULL, 120, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(155, '', 2018, NULL, NULL, 120, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(156, '', 2018, NULL, NULL, 120, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(157, '', 2018, NULL, NULL, 120, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(158, '', 2018, NULL, NULL, 121, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(159, '', 2018, NULL, NULL, 121, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(160, '', 2018, NULL, NULL, 121, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(161, '', 2018, NULL, NULL, 122, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(162, '', 2018, NULL, NULL, 122, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(163, '', 2018, NULL, NULL, 122, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(164, '', 2018, NULL, NULL, 122, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(165, '', 2018, NULL, NULL, 122, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(166, '', 2018, NULL, NULL, 123, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(167, '', 2018, NULL, NULL, 123, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(168, '', 2018, NULL, NULL, 123, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(169, '', 2018, NULL, NULL, 124, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(170, '', 2018, NULL, NULL, 124, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(171, '', 2018, NULL, NULL, 124, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(172, '', 2018, NULL, NULL, 118, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(173, '', 2018, NULL, NULL, 118, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(174, '', 2018, NULL, NULL, 118, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(175, '', 2018, NULL, NULL, 114, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(176, '', 2018, NULL, NULL, 114, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(177, '', 2018, NULL, NULL, 114, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(178, '', 2018, NULL, NULL, 114, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(179, '', 2018, NULL, NULL, 114, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(180, '', 2018, NULL, NULL, 125, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(181, '', 2018, NULL, NULL, 125, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(182, '', 2018, NULL, NULL, 125, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(183, '', 2018, NULL, NULL, 125, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(184, '', 2018, NULL, NULL, 126, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(185, '', 2018, NULL, NULL, 126, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(186, '', 2018, NULL, NULL, 126, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(187, '', 2018, NULL, NULL, 126, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(188, '', 2018, NULL, NULL, 127, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(189, '', 2018, NULL, NULL, 127, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(190, '', 2018, NULL, NULL, 127, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(191, '', 2018, NULL, NULL, 127, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(192, '', 2018, NULL, NULL, 127, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(193, '', 2018, NULL, NULL, 128, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(194, '', 2018, NULL, NULL, 128, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(195, '', 2018, NULL, NULL, 128, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(196, '', 2018, NULL, NULL, 128, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(197, '', 2018, NULL, NULL, 71, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(198, '', 2018, NULL, NULL, 71, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(199, '', 2018, NULL, NULL, 71, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(200, '', 2018, NULL, NULL, 71, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(201, '', 2018, NULL, NULL, 71, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(202, '', 2018, NULL, NULL, 129, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(203, '', 2018, NULL, NULL, 129, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(204, '', 2018, NULL, NULL, 129, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(205, '', 2018, NULL, NULL, 129, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(206, '', 2018, NULL, NULL, 129, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(207, '', 2018, NULL, NULL, 130, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(208, '', 2018, NULL, NULL, 130, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(209, '', 2018, NULL, NULL, 130, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(210, '', 2018, NULL, NULL, 131, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(211, '', 2018, NULL, NULL, 131, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(212, '', 2018, NULL, NULL, 131, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(213, '', 2018, NULL, NULL, 131, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(214, '', 2018, NULL, NULL, 131, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(215, '', 2018, NULL, NULL, 132, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(216, '', 2018, NULL, NULL, 132, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(217, '', 2018, NULL, NULL, 132, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(218, '', 2018, NULL, NULL, 132, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(219, '', 2018, NULL, NULL, 132, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(220, '', 2018, NULL, NULL, 133, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(221, '', 2018, NULL, NULL, 133, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(222, '', 2018, NULL, NULL, 134, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(223, '', 2018, NULL, NULL, 134, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(224, '', 2018, NULL, NULL, 135, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(225, '', 2018, NULL, NULL, 135, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(226, '', 2018, NULL, NULL, 135, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(227, '', 2018, NULL, NULL, 135, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(228, '', 2018, NULL, NULL, 136, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(229, '', 2018, NULL, NULL, 136, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(230, '', 2018, NULL, NULL, 136, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(231, '', 2018, NULL, NULL, 136, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(232, '', 2018, NULL, NULL, 136, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(233, '', 2018, NULL, NULL, 137, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(234, '', 2018, NULL, NULL, 137, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(235, '', 2018, NULL, NULL, 137, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(236, '', 2018, NULL, NULL, 137, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(237, '', 2018, NULL, NULL, 138, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(238, '', 2018, NULL, NULL, 138, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(239, '', 2018, NULL, NULL, 139, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(240, '', 2018, NULL, NULL, 139, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(241, '', 2018, NULL, NULL, 139, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(242, '', 2018, NULL, NULL, 139, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(243, '', 2018, NULL, NULL, 140, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(244, '', 2018, NULL, NULL, 140, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(245, '', 2018, NULL, NULL, 141, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(246, '', 2018, NULL, NULL, 141, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(247, '', 2018, NULL, NULL, 141, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(248, '', 2018, NULL, NULL, 141, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(249, '', 2018, NULL, NULL, 142, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(250, '', 2018, NULL, NULL, 142, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(251, '', 2018, NULL, NULL, 142, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(252, '', 2018, NULL, NULL, 142, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(253, '', 2018, NULL, NULL, 143, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(254, '', 2018, NULL, NULL, 143, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(255, '', 2018, NULL, NULL, 143, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(256, '', 2018, NULL, NULL, 144, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(257, '', 2018, NULL, NULL, 144, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(258, '', 2018, NULL, NULL, 144, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(259, '', 2018, NULL, NULL, 145, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(260, '', 2018, NULL, NULL, 145, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(261, '', 2018, NULL, NULL, 145, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(262, '', 2018, NULL, NULL, 146, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(263, '', 2018, NULL, NULL, 146, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(264, '', 2018, NULL, NULL, 146, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(265, '', 2018, NULL, NULL, 147, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(266, '', 2018, NULL, NULL, 147, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(267, '', 2018, NULL, NULL, 148, '2019-07-18 02:37:38', '0000-00-00 00:00:00'),
(268, '', 2019, NULL, 1, 221, '2019-07-31 14:48:45', '0000-00-00 00:00:00'),
(269, '', 2019, NULL, 11, 147, '2019-07-31 14:48:45', '0000-00-00 00:00:00'),
(270, '', 2019, NULL, 10, 220, '2019-07-31 14:48:45', '0000-00-00 00:00:00'),
(271, '', 2019, NULL, 14, 113, '2019-07-31 14:48:45', '0000-00-00 00:00:00'),
(272, '', 2019, NULL, 16, 222, '2019-07-31 14:48:45', '0000-00-00 00:00:00'),
(273, '', 2019, NULL, 10, 223, '2019-07-31 14:48:45', '0000-00-00 00:00:00'),
(274, '', 2019, NULL, 5, 118, '2019-07-31 14:48:45', '0000-00-00 00:00:00'),
(275, '', 2019, NULL, 21, 225, '2019-07-31 14:48:45', '0000-00-00 00:00:00'),
(276, '', 2019, NULL, 3, 226, '2019-07-31 14:48:45', '0000-00-00 00:00:00'),
(277, '', 2019, NULL, 5, 227, '2019-07-31 14:48:45', '0000-00-00 00:00:00'),
(278, '', 2019, NULL, 8, 228, '2019-07-31 14:48:45', '0000-00-00 00:00:00'),
(279, '', 2019, NULL, 19, 229, '2019-07-31 14:48:45', '0000-00-00 00:00:00'),
(280, '', 2019, NULL, 12, 231, '2019-07-31 14:48:45', '0000-00-00 00:00:00'),
(281, '', 2019, NULL, 116, 230, '2019-07-31 14:48:45', '0000-00-00 00:00:00'),
(282, '', 2019, NULL, 23, 232, '2019-07-31 14:48:45', '0000-00-00 00:00:00'),
(283, '', 2019, NULL, 12, 233, '2019-07-31 14:48:45', '0000-00-00 00:00:00'),
(284, '', 2019, NULL, 15, 234, '2019-07-31 14:48:45', '0000-00-00 00:00:00'),
(285, '', 2019, NULL, 7, 117, '2019-07-31 14:48:45', '0000-00-00 00:00:00'),
(286, '', 2019, NULL, 1, 120, '2019-07-31 14:48:45', '0000-00-00 00:00:00'),
(287, '', 2019, NULL, 20, 237, '2019-07-31 14:48:45', '0000-00-00 00:00:00'),
(288, '', 2019, NULL, 18, 238, '2019-07-31 14:48:45', '0000-00-00 00:00:00'),
(289, '', 2019, NULL, 6, 239, '2019-07-31 14:48:45', '0000-00-00 00:00:00'),
(290, '', 2019, NULL, 11, 147, '2019-07-31 14:48:45', '0000-00-00 00:00:00'),
(291, '', 2019, NULL, 22, 240, '2019-07-31 14:48:45', '0000-00-00 00:00:00'),
(292, '', 2019, NULL, 18, 241, '2019-07-31 14:48:45', '0000-00-00 00:00:00'),
(293, '', 2019, NULL, 16, 224, '2019-07-31 14:48:45', '0000-00-00 00:00:00'),
(294, '', 2019, NULL, 19, 235, '2019-07-31 14:48:45', '0000-00-00 00:00:00'),
(295, '', 2019, NULL, 2, 236, '2019-07-31 14:48:45', '0000-00-00 00:00:00'),
(296, '', 2019, NULL, 17, 240, '2019-07-31 14:48:45', '0000-00-00 00:00:00'),
(297, '(Kelompok KKM 1)', 2018, NULL, 100, 149, '2019-07-31 14:48:45', '0000-00-00 00:00:00'),
(298, '(Kelompok KKM 2)', 2018, NULL, 60, 150, '2019-07-31 14:48:45', '0000-00-00 00:00:00'),
(299, '(Kelompok KKM 3)', 2018, NULL, 61, 151, '2019-07-31 14:48:45', '0000-00-00 00:00:00'),
(300, '(Kelompok KKM 4)', 2018, NULL, 62, 152, '2019-07-31 14:48:45', '0000-00-00 00:00:00'),
(301, '(Kelompok KKM 5)', 2018, NULL, 112, 153, '2019-07-31 14:48:45', '0000-00-00 00:00:00'),
(302, '(Kelompok KKM 6)', 2018, NULL, 112, 154, '2019-07-31 14:48:45', '0000-00-00 00:00:00'),
(303, '(Kelompok KKM 7)', 2018, NULL, 63, 155, '2019-07-31 14:48:45', '0000-00-00 00:00:00'),
(304, '(Kelompok KKM 8)', 2018, NULL, 64, 156, '2019-07-31 14:48:45', '0000-00-00 00:00:00'),
(305, '(Kelompok KKM 9)', 2018, NULL, 65, 157, '2019-07-31 14:48:45', '0000-00-00 00:00:00'),
(306, '(Kelompok KKM 10)', 2018, NULL, 66, 158, '2019-07-31 14:48:45', '0000-00-00 00:00:00'),
(307, '(Kelompok KKM 12)', 2018, NULL, 67, 159, '2019-07-31 14:48:45', '0000-00-00 00:00:00'),
(308, '(Kelompok KKM 13)', 2018, NULL, 68, 160, '2019-07-31 14:48:45', '0000-00-00 00:00:00'),
(309, '(Kelompok KKM 15)', 2018, NULL, 69, 161, '2019-07-31 14:48:45', '0000-00-00 00:00:00'),
(310, '(Kelompok KKM 16)', 2018, NULL, 70, 162, '2019-07-31 14:48:45', '0000-00-00 00:00:00'),
(311, '(Kelompok KKM 18)', 2018, NULL, 71, 163, '2019-07-31 14:48:45', '0000-00-00 00:00:00'),
(312, '(Kelompok KKM 20)', 2018, NULL, 72, 164, '2019-07-31 14:48:45', '0000-00-00 00:00:00'),
(313, '(Kelompok KKM 21)', 2018, NULL, 73, 165, '2019-07-31 14:48:45', '0000-00-00 00:00:00'),
(314, '(Kelompok KKM 22)', 2018, NULL, 74, 166, '2019-07-31 14:48:45', '0000-00-00 00:00:00'),
(315, '(Kelompok KKM 23)', 2018, NULL, 113, 167, '2019-07-31 14:48:45', '0000-00-00 00:00:00'),
(316, '(Kelompok KKM 26)', 2018, NULL, 31, 219, '2019-07-31 14:48:45', '0000-00-00 00:00:00'),
(317, '(Kelompok KKM 27)', 2018, NULL, 75, 168, '2019-07-31 14:48:45', '0000-00-00 00:00:00'),
(318, '(Kelompok KKM 28)', 2018, NULL, 114, 169, '2019-07-31 14:48:45', '0000-00-00 00:00:00'),
(319, '(Kelompok KKM 29)', 2018, NULL, 3, 170, '2019-07-31 14:48:45', '0000-00-00 00:00:00'),
(320, '(Kelompok KKM 33)', 2018, NULL, 76, 171, '2019-07-31 14:48:45', '0000-00-00 00:00:00'),
(321, '(Kelompok KKM 34)', 2018, NULL, 77, 172, '2019-07-31 14:48:45', '0000-00-00 00:00:00'),
(322, '(Kelompok KKM 35)', 2018, NULL, 114, 173, '2019-07-31 14:48:45', '0000-00-00 00:00:00'),
(323, '(Kelompok KKM 38)', 2018, NULL, 78, 174, '2019-07-31 14:48:45', '0000-00-00 00:00:00'),
(324, '(Kelompok KKM 39)', 2018, NULL, 79, 175, '2019-07-31 14:48:45', '0000-00-00 00:00:00'),
(325, '(Kelompok KKM 40)', 2018, NULL, 114, 176, '2019-07-31 14:48:45', '0000-00-00 00:00:00'),
(326, '(Kelompok KKM 41)', 2018, NULL, 80, 177, '2019-07-31 14:48:45', '0000-00-00 00:00:00'),
(327, '(Kelompok KKM 44)', 2018, NULL, 81, 178, '2019-07-31 14:48:45', '0000-00-00 00:00:00'),
(328, '(Kelompok KKM 47)', 2018, NULL, 82, 179, '2019-07-31 14:48:45', '0000-00-00 00:00:00'),
(329, '(Kelompok KKM 48)', 2018, NULL, 83, 180, '2019-07-31 14:48:45', '0000-00-00 00:00:00'),
(330, '(Kelompok KKM 49)', 2018, NULL, 59, 181, '2019-07-31 14:48:45', '0000-00-00 00:00:00'),
(331, '(Kelompok KKM 50)', 2018, NULL, 44, 182, '2019-07-31 14:48:45', '0000-00-00 00:00:00'),
(332, '(Kelompok KKM 52)', 2018, NULL, 41, 183, '2019-07-31 14:48:45', '0000-00-00 00:00:00'),
(333, '(Kelompok KKM 53', 2018, NULL, 84, 184, '2019-07-31 14:48:45', '0000-00-00 00:00:00'),
(334, '(Kelompok KKM 55)', 2018, NULL, 85, 185, '2019-07-31 14:48:45', '0000-00-00 00:00:00'),
(335, '(Kelompok KKM 67)', 2018, NULL, 86, 186, '2019-07-31 14:48:45', '0000-00-00 00:00:00'),
(336, '(Kelompok KKM 71)', 2018, NULL, 87, 187, '2019-07-31 14:48:45', '0000-00-00 00:00:00'),
(337, '(Kelompok KKM 73)', 2018, NULL, 88, 188, '2019-07-31 14:48:45', '0000-00-00 00:00:00'),
(338, '(Kelompok KKM 74)', 2018, NULL, 89, 189, '2019-07-31 14:48:45', '0000-00-00 00:00:00'),
(339, '(Kelompok KKM 76)', 2018, NULL, 5, 190, '2019-07-31 14:48:45', '0000-00-00 00:00:00'),
(340, '(Kelompok KKM 79)', 2018, NULL, 90, 191, '2019-07-31 14:48:45', '0000-00-00 00:00:00'),
(341, '(Kelompok KKM 83)', 2018, NULL, 91, 192, '2019-07-31 14:48:45', '0000-00-00 00:00:00'),
(342, '(Kelompok KKM 86)', 2018, NULL, 92, 193, '2019-07-31 14:48:45', '0000-00-00 00:00:00'),
(343, '(Kelompok KKM 91)', 2018, NULL, 115, 194, '2019-07-31 14:48:45', '0000-00-00 00:00:00'),
(344, '(Kelompok KKM 98)', 2018, NULL, 51, 195, '2019-07-31 14:48:45', '0000-00-00 00:00:00'),
(345, '(Kelompok KKM 104)', 2018, NULL, 51, 196, '2019-07-31 14:48:45', '0000-00-00 00:00:00'),
(346, '(Kelompok KKM 113)', 2018, NULL, 93, 197, '2019-07-31 14:48:45', '0000-00-00 00:00:00'),
(347, '(Kelompok KKM 116)', 2018, NULL, 8, 198, '2019-07-31 14:48:45', '0000-00-00 00:00:00'),
(348, '(Kelompok KKM 118)', 2018, NULL, 94, 199, '2019-07-31 14:48:45', '0000-00-00 00:00:00'),
(349, '(Kelompok KKM 119)', 2018, NULL, 38, 200, '2019-07-31 14:48:45', '0000-00-00 00:00:00'),
(350, '(Kelompok KKM 120)', 2018, NULL, 95, 201, '2019-07-31 14:48:45', '0000-00-00 00:00:00'),
(351, '(Kelompok KKM 121)', 2018, NULL, 96, 202, '2019-07-31 14:48:45', '0000-00-00 00:00:00'),
(352, '(Kelompok KKM 123)', 2018, NULL, 97, 203, '2019-07-31 14:48:45', '0000-00-00 00:00:00'),
(353, '(Kelompok KKM 126)', 2018, NULL, 98, 204, '2019-07-31 14:48:45', '0000-00-00 00:00:00'),
(354, '(Kelompok KKM 135)', 2018, NULL, 99, 205, '2019-07-31 14:48:45', '0000-00-00 00:00:00'),
(355, '(Kelompok KKM 136)', 2018, NULL, 100, 149, '2019-07-31 14:48:45', '0000-00-00 00:00:00'),
(356, '(Kelompok KKM 138)', 2018, NULL, 61, 151, '2019-07-31 14:48:45', '0000-00-00 00:00:00'),
(357, '(Kelompok KKM 140)', 2018, NULL, 112, 153, '2019-07-31 14:48:45', '0000-00-00 00:00:00'),
(358, '(Kelompok KKM 141)', 2018, NULL, 112, 154, '2019-07-31 14:48:45', '0000-00-00 00:00:00'),
(359, '(Kelompok KKM 146)', 2018, NULL, 28, 210, '2019-07-31 14:48:45', '0000-00-00 00:00:00'),
(360, '(Kelompok KKM 147)', 2018, NULL, 67, 159, '2019-07-31 14:48:45', '0000-00-00 00:00:00'),
(361, '(Kelompok KKM 148)', 2018, NULL, 68, 160, '2019-07-31 14:48:45', '0000-00-00 00:00:00'),
(362, '(Kelompok KKM 155)', 2018, NULL, 101, 213, '2019-07-31 14:48:45', '0000-00-00 00:00:00'),
(363, '(Kelompok KKM 157)', 2018, NULL, 73, 165, '2019-07-31 14:48:45', '0000-00-00 00:00:00'),
(364, '(Kelompok KKM 158)', 2018, NULL, 74, 166, '2019-07-31 14:48:45', '0000-00-00 00:00:00'),
(365, '(Kelompok KKM 159)', 2018, NULL, 13, 167, '2019-07-31 14:48:45', '0000-00-00 00:00:00'),
(366, '(Kelompok KKM 163)', 2018, NULL, 75, 168, '2019-07-31 14:48:45', '0000-00-00 00:00:00'),
(367, '(Kelompok KKM 167)', 2018, NULL, 102, 211, '2019-07-31 14:48:45', '0000-00-00 00:00:00'),
(368, '(Kelompok KKM 168)', 2018, NULL, 103, 212, '2019-07-31 14:48:45', '0000-00-00 00:00:00'),
(369, '(Kelompok KKM 169)', 2018, NULL, 77, 172, '2019-07-31 14:48:45', '0000-00-00 00:00:00'),
(370, '(Kelompok KKM 171)', 2018, NULL, 104, 214, '2019-07-31 14:48:45', '0000-00-00 00:00:00'),
(371, '(Kelompok KKM 174)', 2018, NULL, 114, 176, '2019-07-31 14:48:45', '0000-00-00 00:00:00'),
(372, '(Kelompok KKM 178)', 2018, NULL, 81, 178, '2019-07-31 14:48:45', '0000-00-00 00:00:00'),
(373, '(Kelompok KKM 179)', 2018, NULL, 41, 215, '2019-07-31 14:48:45', '0000-00-00 00:00:00'),
(374, '(Kelompok KKM 183)', 2018, NULL, 83, 180, '2019-07-31 14:48:45', '0000-00-00 00:00:00'),
(375, '(Kelompok KKM 184)', 2018, NULL, 59, 181, '2019-07-31 14:48:45', '0000-00-00 00:00:00'),
(376, '(Kelompok KKM 186)', 2018, NULL, 105, 206, '2019-07-31 14:48:45', '0000-00-00 00:00:00'),
(377, '(Kelompok KKM 190)', 2018, NULL, 85, 185, '2019-07-31 14:48:45', '0000-00-00 00:00:00'),
(378, '(Kelompok KKM 192)', 2018, NULL, 106, 207, '2019-07-31 14:48:45', '0000-00-00 00:00:00'),
(379, '(Kelompok KKM 195)', 2018, NULL, 107, 208, '2019-07-31 14:48:45', '0000-00-00 00:00:00'),
(380, '(Kelompok KKM 196)', 2018, NULL, 108, 209, '2019-07-31 14:48:45', '0000-00-00 00:00:00'),
(381, '(Kelompok KKM 205)', 2018, NULL, 109, 216, '2019-07-31 14:48:45', '0000-00-00 00:00:00'),
(382, '(Kelompok KKM 208)', 2018, NULL, 87, 187, '2019-07-31 14:48:45', '0000-00-00 00:00:00'),
(383, '(Kelompok KKM 216)', 2018, NULL, 90, 191, '2019-07-31 14:48:45', '0000-00-00 00:00:00'),
(384, '(Kelompok KKM 218)', 2018, NULL, 110, 218, '2019-07-31 14:48:45', '0000-00-00 00:00:00'),
(385, '(Kelompok KKM 222)', 2018, NULL, 111, 217, '2019-07-31 14:48:45', '0000-00-00 00:00:00'),
(386, '(Kelompok KKM 224)', 2018, NULL, 92, 193, '2019-07-31 14:48:45', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `publikasi`
--

CREATE TABLE `publikasi` (
  `id` int(11) NOT NULL,
  `Tahun_Terbit` int(11) NOT NULL,
  `Judul` varchar(250) NOT NULL,
  `Deskripsi` varchar(250) NOT NULL,
  `IDPenelitian` int(11) DEFAULT NULL,
  `IDPengabdian` int(11) DEFAULT NULL,
  `IDJenisPublikasi` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `publikasi`
--

INSERT INTO `publikasi` (`id`, `Tahun_Terbit`, `Judul`, `Deskripsi`, `IDPenelitian`, `IDPengabdian`, `IDJenisPublikasi`, `created_at`, `updated_at`) VALUES
(1, 2017, 'Modifikasi Bentuk Kurva dan Permukaan Putar Poligon Bezier pada Rancang Bangun Benda Industri Kerajinan Marmer', '', 1, 1, 11, '2019-07-17 07:21:58', '0000-00-00 00:00:00'),
(2, 2017, 'Karakterisasi Modul Tidak Terdekomposisi Atas Daerah Dedekind', '', 2, NULL, 11, '2019-07-17 07:21:58', '0000-00-00 00:00:00'),
(3, 2017, 'Aplikasi Quasigroup Encryption untuk Mengamankan Soal Ujian', '', 3, NULL, 11, '2019-07-17 07:21:58', '0000-00-00 00:00:00'),
(4, 2017, 'Analisis Dinamik Model Fitzhugh-Nagumo pada Penjalaran Impuls Sel Saraf Menggunakan Transformasi Lienard', '', 4, NULL, 11, '2019-07-17 07:21:58', '0000-00-00 00:00:00'),
(5, 2017, 'Pengaruh Beban Kinerja Dosen Terhadap Indeks Kepuasan Mahasiswa di UIN Maulana Malik Ibrahim Malang Menggunakan Structural Equation Modeling', '', 5, NULL, 11, '2019-07-17 07:21:58', '0000-00-00 00:00:00'),
(6, 2018, 'Pengembangan Seni dan Teknik Desain Relief Industri Kreatif Berbantu Komputer', '', 6, NULL, 11, '2019-07-17 07:21:58', '0000-00-00 00:00:00'),
(7, 2018, 'ANALISIS DINAMIK SISTEM DUA DIMENSI MODEL HODGKIN-HUXLEY PADA PROPAGASI IMPULS SEL SARAF', '', 7, NULL, 11, '2019-07-17 07:21:58', '0000-00-00 00:00:00'),
(8, 2018, 'Model Gelombang Dawai untuk Penentukan Nada Do-Re-Mi Tanpa Noise', '', 8, NULL, 11, '2019-07-17 07:21:58', '0000-00-00 00:00:00'),
(9, 2019, 'Studi Desain Geometri Fraktal Pada Motif Batik Dan Anyam Khas Indonesia', '', 9, NULL, 11, '2019-07-17 07:21:58', '0000-00-00 00:00:00'),
(10, 2019, 'Mapping Dan Prediksi Daerah Rawan Gempa di Indonesia Dengan Algoritma Clustering', '', 10, NULL, 11, '2019-07-17 07:21:58', '0000-00-00 00:00:00'),
(11, 2017, 'ANALISIS STABILITAS PENYEBARAN VIRUS EBOLA PADA MANUSIA\r\n', '', 11, NULL, 11, '2019-07-17 07:21:58', '0000-00-00 00:00:00'),
(12, 2017, 'PENYELESAIAN PERSAMAAN DIFFERENSIAL PARTIAL NON LINIEAR DENGAN METODE BARU YANG LEBIH EFISIEN\r\n', '', 12, NULL, 11, '2019-07-17 07:21:58', '0000-00-00 00:00:00'),
(13, 2017, 'Hybrid Algorithm with Super Encryption of Medical Record Image Data\r\n', '', 13, NULL, 11, '2019-07-17 07:21:58', '0000-00-00 00:00:00'),
(14, 2017, 'DETOUR ENERGY OF COMPLEMENT OF SUBGROUP GRAPH OF DIHEDRAL GROUP\r\n', '', 14, NULL, 11, '2019-07-17 07:21:58', '0000-00-00 00:00:00'),
(15, 2017, 'Radius, Diameter, Multiplisitas Sikel, dan Dimensi Metrik Graf Komuting dari Grup Dihedral\r\n', '', 15, NULL, 11, '2019-07-17 07:21:58', '0000-00-00 00:00:00'),
(16, 2017, 'Spektrum Graf Konjugasi dan Komplemen Graf Konjugasi dari Grup Dihedral\r\n', '', 16, NULL, 11, '2019-07-17 07:21:58', '0000-00-00 00:00:00'),
(17, 2017, 'Internalisasi nilai-nilai Islami dalam pembelajaran matematika dengan strategi analogi', '', 17, NULL, 11, '2019-07-17 07:21:58', '0000-00-00 00:00:00'),
(18, 2018, 'Cognitif Prosess Students of Mathematical Problem Solving in Productive Connectivity Thinking', '', 18, NULL, 11, '2019-07-17 07:21:58', '0000-00-00 00:00:00'),
(19, 2018, 'The effect of organizational learning on market orientation moderated by job satisfaction\r\n', '', 19, NULL, 11, '2019-07-17 07:21:58', '0000-00-00 00:00:00'),
(20, 2018, 'Full automorphism group of commuting and non-commuting graph of dihedral and symmetric groups\r\n', '', 20, NULL, 11, '2019-07-17 07:21:58', '0000-00-00 00:00:00'),
(21, 2018, 'Detour spectrum and detour energy of conjugate graph complement of dihedral group\r\n', '', 21, NULL, 11, '2019-07-17 07:21:58', '0000-00-00 00:00:00'),
(22, 2018, 'Contribution of Organizational Learning and Market Orientation on Business Unit Performance Mediated by Job Satisfaction at Dairy Cattle Milk Cooperatives in East...\r\n', '', 22, NULL, 11, '2019-07-17 07:21:58', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `skripsi`
--

CREATE TABLE `skripsi` (
  `Judul` varchar(250) NOT NULL,
  `Tahun` int(11) NOT NULL,
  `File` varchar(250) DEFAULT NULL,
  `id` int(11) NOT NULL,
  `bidang_id` int(11) NOT NULL,
  `mahasiswa_id` int(11) NOT NULL,
  `pembimbing1_id` int(11) NOT NULL,
  `pembimbing2_id` int(11) DEFAULT NULL,
  `verifikasi_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `skripsi`
--

INSERT INTO `skripsi` (`Judul`, `Tahun`, `File`, `id`, `bidang_id`, `mahasiswa_id`, `pembimbing1_id`, `pembimbing2_id`, `verifikasi_id`, `created_at`, `updated_at`) VALUES
('KONSTRUKSI MODEL MATEMATIKA VIBRASI DAWAI FLYING FOX \r\n', 2017, NULL, 2, 6, 13610111, 11, 2, 0, '2019-07-16 19:53:32', '0000-00-00 00:00:00'),
('ANALISIS KESTABILAN MODEL MATEMATIKA PADA PENYAKIT DEMAM BERDARAH DENGUE (DBD) DENGAN PENGARUH MUSIM \r\n', 2017, NULL, 3, 6, 10610099, 3, 13, 0, '2019-07-16 19:53:32', '0000-00-00 00:00:00'),
('METODE ENCHANCED KUARTINOMIAL UNTUK APROKSIMASI NUMERIK PADA BARRIER OPTION PRICING TIPE EROPA\r\n', 2017, NULL, 4, 1, 13610074, 10, 2, 0, '2019-07-16 19:53:32', '0000-00-00 00:00:00'),
('DETOUR SPRECTUM OF COMPLEMENT GRAPH OF CONJUGRATION GRAPH OF DIHEDRAL GROUP\r\n', 2017, NULL, 5, 2, 13610077, 9, 2, 0, '2019-07-16 19:53:32', '0000-00-00 00:00:00'),
('PENERAPAN FUZZY CORRELATION DENGAN METODE HAMDANI PADA FAKTOR-FAKTOR YANG MEMPENGARUHI RENTABILITAS PERUSAHAAN PERBANKAN DI INDONESIA\r\n', 2017, NULL, 6, 3, 12610072, 5, 10, 0, '2019-07-16 19:53:32', '0000-00-00 00:00:00'),
('ECCENTRIC-DITANCE SUM PADA KOMPLEMEN GRAF INVER GRUP DIHEDRAL\r\n', 2017, NULL, 7, 2, 13610060, 4, 10, 0, '2019-07-16 19:53:32', '0000-00-00 00:00:00'),
('ESTIMASI PARAMETER MODEL ARIMA MENGGUNAKAN METODE JACKKNIFE\r\n', 2017, NULL, 8, 6, 13610056, 14, 4, 0, '2019-07-16 19:53:32', '0000-00-00 00:00:00'),
('PENENTUAN CADANGAN ZILLMER PADA ASURANSI JIWA DWIGUNA UNTUK STATUS LAT SURVIVOR MENGGUNAKAN ASUMSI BALDUCCI\r\n', 2017, NULL, 9, 1, 12610014, 10, 14, 0, '2019-07-16 19:53:32', '0000-00-00 00:00:00'),
('ESTIMASI PARAMETER MODEL AUTOREGRESSIVE INTEGRATED MOVING AVERAGE DENGAN METODE BOOTSTRAP\r\n', 2017, NULL, 10, 6, 13610035, 14, 5, 0, '2019-07-16 19:53:32', '0000-00-00 00:00:00'),
('ESTIMASI PARAMETER MODEL GEOGRAPHICALLY AND TEMPORALLY WEIGHTED REGRESION (GTWR) UNTUK VARIABEL BINER\r\n', 2017, NULL, 11, 5, 13610088, 7, 14, 0, '2019-07-16 19:53:32', '0000-00-00 00:00:00'),
('TITIK KESETIMBANGAN MODEL MATEMATIKA PADA PENGARUH SEL T TERHADAP INFEKSI MIKOBAKTERIUM TUBERKOLOSIS\r\n', 2017, NULL, 12, 6, 10610051, 3, 4, 0, '2019-07-16 19:53:32', '0000-00-00 00:00:00'),
('SIFAT-SIFAT TURUNAN FRAKSIONAL KIRI DAN KANAN\r\n', 2017, NULL, 13, 3, 13610090, 12, 6, 0, '2019-07-16 19:53:32', '0000-00-00 00:00:00'),
('ANALISIS KONSISTENSI DAN KESETABILAN METODE CRANK NICOLSON PADA PERSAMAAN KORTEWEG DE VRIES\r\n', 2017, NULL, 14, 6, 13610050, 14, 2, 0, '2019-07-16 19:53:32', '0000-00-00 00:00:00'),
('METODE ENCHANCED TRINOMIAL UNTUK APROKSIMAL NUMERIK PADA BARRIER OPTIONS PRICING\r\n', 2017, NULL, 15, 1, 13610024, 10, 5, 0, '2019-07-16 19:53:32', '0000-00-00 00:00:00'),
('PERBANDINGAN GRAFIK PENGENDALIAN T2 HOTELLING PENDEKATAN FUNGSI KERNEL PADA DATA BERDISTRIBUSI NONNORMAL MULTIVARIAT\r\n', 2017, NULL, 16, 5, 12610038, 13, 9, 0, '2019-07-16 19:53:32', '0000-00-00 00:00:00'),
('APLIKASI METODE SIMPLEKS DALAM MAKSIMASI KEUNTUNGAN PADA PEMBANGUNAN PERUMAHAN\r\n', 2017, NULL, 17, 3, 10610089, 5, 11, 0, '2019-07-16 19:53:32', '0000-00-00 00:00:00'),
('PELABELAN L(2,1) PADA GRAF SIEPRINSKI\r\n', 2017, NULL, 18, 2, 10610036, 9, 12, 0, '2019-07-16 19:53:32', '0000-00-00 00:00:00'),
('PELABELAN L(2,1) GRAF DAN DUAL GRAF SEGITIGA SEIRPINSKI\r\n', 2017, NULL, 19, 2, 13610008, 9, 10, 0, '2019-07-16 19:53:32', '0000-00-00 00:00:00'),
('ANALISIS DINAMIK MODEL MATEMATIKA GLUKOSA, KONSENTRASI INSULIN, DAN SIKLUS SEL BETA TERHADAP PENYAKIT DIABETES MELLITUS\r\n', 2017, NULL, 20, 6, 13610073, 3, 5, 0, '2019-07-16 19:53:32', '0000-00-00 00:00:00'),
('PENERAPAN METODE CHANG\'S EXTENT PADA FUZZY ANALYTIC HIERARCHY PROCESS\r\n', 2017, NULL, 21, 3, 12610018, 5, 10, 0, '2019-07-16 19:53:32', '0000-00-00 00:00:00'),
('GRAFKOSET DARI SUBGRUP NORMAL DI GRUP SIMETRI\r\n', 2017, NULL, 22, 2, 13610093, 2, 4, 0, '2019-07-16 19:53:32', '0000-00-00 00:00:00'),
('SOLUSI NUMERIK MODEL MATEMATIKA GLUKOSA, INSULIN, DAN SEL BETA PADA PENYAKIT DIABETES MELLITUS MENGGUNAKAN METODE NEWTON\r\n', 2017, NULL, 23, 6, 13610063, 3, 4, 0, '2019-07-16 19:53:32', '0000-00-00 00:00:00'),
('APLIKASI GRAFIK PENGENDALI MULTIVARIAT IMPROVED GENERALIZED VARIANCE DALAM PENGENDALIAN VARIABILITAS PROSES PRODUKSI GULA\r\n', 2017, NULL, 24, 5, 12610062, 13, 5, 0, '2019-07-16 19:53:32', '0000-00-00 00:00:00'),
('PENERAPAN METODE SUGENO PADA PENGAMBILAN KEPUTUSAN BIAYA PENGIRIMAN BARANG\r\n', 2017, NULL, 25, 2, 12610059, 4, 7, 0, '2019-07-16 19:53:32', '0000-00-00 00:00:00'),
('ANALISIS STABILITAS PENYEBARAN VIRUS EBOLA PADA MANUSIA\r\n', 2017, NULL, 26, 6, 13610094, 11, 4, 0, '2019-07-16 19:53:32', '0000-00-00 00:00:00'),
('TRANSFORMASI KOORDINAT TENSOR STRESS DALAM RUANG KARETSIUS DAN PENERAPANNYA\r\n', 2017, NULL, 27, 2, 12610063, 2, 14, 0, '2019-07-16 19:53:32', '0000-00-00 00:00:00'),
('SIFAT-SIFAT FRAKSIONAL KIRI DAN KANAN \r\n', 2017, NULL, 28, 3, 13610045, 12, 2, 0, '2019-07-16 19:53:32', '0000-00-00 00:00:00'),
('BILANGAN TITIK PENUTUP DAN SISI PENUTUP PADA GRAF KOMPLEMEN DARI GRAF KONJUGASI DARI GRUP DIHEDRAL\r\n', 2017, NULL, 29, 2, 13610108, 4, 6, 0, '2019-07-16 19:53:32', '0000-00-00 00:00:00'),
('PENYELESAIAN NUMERIK PERSAMAAN GELOMBANG DUA DIMENSI DENGAN METODE BEDA HINGGA SKEMA ESKSPLISIT CTS(CENTER TIME CENTER SPACE)\r\n', 2017, NULL, 30, 6, 13610067, 14, 5, 0, '2019-07-16 19:53:32', '0000-00-00 00:00:00'),
('ESTIMASI PARAMETER FUNGSI PERTUMBUHAN MONOMOLEKULER DENGAN ITERASI NONLINEAR LEAST SQUARE\r\n', 2017, NULL, 31, 5, 12610024, 7, 14, 0, '2019-07-16 19:53:32', '0000-00-00 00:00:00'),
('SIFAT-SIFAT PADA ALJABAR BCH SEMU\r\n', 2017, NULL, 32, 2, 10610019, 9, 7, 0, '2019-07-16 19:53:32', '0000-00-00 00:00:00'),
('ANALISIS MODEL HASTING-POWELL\r\n', 2017, NULL, 33, 6, 10610096, 3, 9, 0, '2019-07-16 19:53:32', '0000-00-00 00:00:00'),
('GRUP AUTOMORFISMA PADA DIHEDRAL DAN GRUP SIMETRI\r\n', 2017, NULL, 34, 2, 12610007, 9, 2, 0, '2019-07-16 19:53:32', '0000-00-00 00:00:00'),
('EKSENTRISITAS TITIK GRAF GARIS DARI GRAF BINTANG, GRAF RODA, DAN GRAF HELM\r\n', 2017, NULL, 35, 2, 10610072, 4, 2, 0, '2019-07-16 19:53:32', '0000-00-00 00:00:00'),
('LIFT SIKLIS PADA GRAF SIKEL Cn DAN RODA Wn DENGAN GRUP VOLTASE (Z2,+)\r\n', 2017, NULL, 36, 3, 10610076, 5, 10, 0, '2019-07-16 19:53:32', '0000-00-00 00:00:00'),
('PENYELESAIAN SISTEM PERSAMAAN LINIER FUZZY BILANGAN TRAPESIUM MENGGUNAKAN METODE DEKOMPOSISI DOOLITTLE\r\n', 2017, NULL, 37, 2, 12610097, 1, 2, 0, '2019-07-16 19:53:32', '0000-00-00 00:00:00'),
('ESTIMASI PARAMETER PADA CAPITAL ASSETS PRICING MODEL MENGGUNAKAN METODE GENERALIZED METHOD OF MOMMENTS DALAM PERHITUNGAN VALUE AT RISK\r\n\r\n', 2017, NULL, 38, 1, 12610050, 10, 2, 0, '2019-07-16 19:53:32', '0000-00-00 00:00:00'),
('ESTIMASI PARAMETER MODEL GEOGRAPHICALLY WEIGHTED REGRESSION VARIABEL BINER DENGAN FUNGSI PEMBOBOT LOGISTIK SIGMOID\r\n', 2017, NULL, 39, 5, 13610009, 7, 14, 0, '2019-07-16 19:53:32', '0000-00-00 00:00:00'),
('PENERAPAN EKSTRAPOLASI DALAM MENENTUKAN KONDISI BATAS ARTIFICIAL PADA SOLUSI NUMERIK PERSAMAAN GELOMBANG VIBRASI 1D\r\n', 2017, NULL, 40, 6, 12610102, 14, 9, 0, '2019-07-16 19:53:32', '0000-00-00 00:00:00'),
('PENERAPAN METODE TOPSIS DALAM PENENTUAN GAJI KARYAWAN PT. SHOU FONG LASTINDO\r\n', 2017, NULL, 41, 3, 10610081, 5, 10, 0, '2019-07-16 19:53:32', '0000-00-00 00:00:00'),
('ESTIMASI PARAMETER MODEL GEOGRAPHICALLY TEMPORALLY WEIGHTED REGRESSION (GTWR) DENGAN OUTLIER\r\n', 2017, NULL, 42, 5, 13610003, 7, 14, 0, '2019-07-16 19:53:32', '0000-00-00 00:00:00'),
('IDEAL-IDEAL SEMU PADA ALJABAR-BCI SEMU\r\n', 2017, NULL, 43, 3, 13610018, 5, NULL, 0, '2019-07-16 19:53:32', '0000-00-00 00:00:00'),
('PENENTUAN HASIL BANDWIDTH OPTIMUM MODEL GEOGRAPHICALLY AND TEMPORALLY WEIGHTED REGRESSION (GTWR) DENGAN METODE CROSS VALIDATION\r\n', 2017, NULL, 44, 5, 13610086, 7, 11, 0, '2019-07-16 19:53:32', '0000-00-00 00:00:00'),
('SOLUSI NUMERIK MODEL PREDATOR-PREY MENGGUNAKAN METODE JARINGAN FUNGSI RADIAL BAIS\r\n', 2017, NULL, 45, 6, 12610096, 14, 6, 0, '2019-07-16 19:53:32', '0000-00-00 00:00:00'),
('ANALISIS MODEL DOUBLE PENDULUM TERBAIK\r\n', 2017, NULL, 46, 3, 10610065, 12, 14, 0, '2019-07-16 19:53:32', '0000-00-00 00:00:00'),
('APLIKASI FUZZY REGRESSION DENGAN METODE MAMDANI PADA FAKTOR-FAKTOR YANG MEMPENGARUHI RENTABILITAS PERUSAHAAN PERBANKAN DI INDONESIA\r\n', 2017, NULL, 47, 3, 12610093, 5, 10, 0, '2019-07-16 19:53:32', '0000-00-00 00:00:00'),
('PERBANDINGAN METODE NEW JERSEY DAN METODE FACKLER UNTUK PERHITUNGAN CADANGAN ASURANSI DWIGUNA\r\n', 2017, NULL, 48, 1, 12610076, 10, 11, 0, '2019-07-16 19:53:32', '0000-00-00 00:00:00'),
('SPEKTRUM DETOUR KOMPLEMEN GRAF KONJUGASI DARI GRUP DIHEDRAL\r\n', 2017, NULL, 49, 2, 13610077, 9, 2, 0, '2019-07-16 19:53:32', '0000-00-00 00:00:00'),
('POLA SENTRALISATOR DARI SUBGRUP-SUBGRUP SEJATI PADA GRUP SIMETRI-n\r\n', 2017, NULL, 50, 2, 12610030, 4, 2, 0, '2019-07-16 19:53:32', '0000-00-00 00:00:00'),
('ANALISIS KESTABILAN MODEL PREDATOR-PREY DENGAN PREDATOR MIGRATION DAN WAKTU TUNDA\r\n', 2017, NULL, 51, 6, 13610068, 11, 6, 0, '2019-07-16 19:53:32', '0000-00-00 00:00:00'),
('ANALISIS KONSISTENSI DAN KESETABILAN MODEL DINAMIK DISKRET PADA MASALAH PREDATOR-PREY DENGAN FUNGSI RESPON RATIO DEPENDENT DAN PERMANENAN PADA PREDATOR\r\n', 2017, NULL, 52, 6, 12610074, 11, 4, 0, '2019-07-16 19:53:32', '0000-00-00 00:00:00'),
('APLIKASI ALJABAR MAX-PLUS UNTUK PENJADWALAN TRANSPORTASI\r\n', 2017, NULL, 53, 2, 12610044, 4, 14, 0, '2019-07-16 19:53:32', '0000-00-00 00:00:00'),
('PENYELESAIAN NUMERIK MODEL TUMOR OTAK GLIBLASTOMA MULTIFORME DENGAN PENGARUH PENGOBATAN MENGGUNAKAN METODE RUNGE KUTTA FEHLBERG\r\n', 2017, NULL, 54, 6, 12610041, 3, 5, 0, '2019-07-16 19:53:32', '0000-00-00 00:00:00'),
('BILANGAN DOMINASI GANDA PADA GRAF KABUR DARI GRAF COMMUTING DAN NON COMMUTING DARI GRUP DIHEDRAL\r\n', 2017, NULL, 55, 2, 13610051, 4, 14, 0, '2019-07-16 19:53:32', '0000-00-00 00:00:00'),
('KONSTRUKSI GRAFIK PENGENDALI FUZZY EXPONENTIAL WEIGHTED MOVING AVERAGE (FEWMA) MENGGUNAKAN TEKNIK TRANSFORMASI FUZZY MEDIAN\r\n', 2017, NULL, 56, 1, 13610099, 10, 5, 0, '2019-07-16 19:53:32', '0000-00-00 00:00:00'),
('IMPLEMENTASI SIMULASI MONTE CARLO UNTUK MENDETEKSI PERGERAKAN KURS RUPIAH\r\n', 2017, NULL, 57, 5, 10610034, 7, 6, 0, '2019-07-16 19:53:32', '0000-00-00 00:00:00'),
('PENERAPAN GRAFIK PENGENDALI KOMPONEN UTAMA (PRINCIPAL COMPONENT) UNTUK PENGENDALIAN KUALITAS MULTIVARIAT PADA PROSES PRODUKSI GULA\r\n', 2017, NULL, 58, 5, 12610040, 13, 11, 0, '2019-07-16 19:53:32', '0000-00-00 00:00:00'),
('ESTIMASI PARAMETER MODEL COBB-DOUGLAS SECARA MAXIMUM LIKEIHOOD DENGAN ITERASI MODIFIED BERNDT HALL-HALL HAUSMAN\r\n', 2017, NULL, 59, 1, 13610078, 10, 12, 0, '2019-07-16 19:53:32', '0000-00-00 00:00:00'),
('SIMULASI VARIAN KOVARIAN UNTUK PERHITUNGAN VALUE AT RISK PADA MODEL GENERALIZED AUTOREGRESSIVE CONDITIONAL HETEROSCEDASTIC IN MEAN\r\n', 2017, NULL, 60, 1, 10610009, 10, 6, 0, '2019-07-16 19:53:32', '0000-00-00 00:00:00'),
('SOLUSI NUMERIK PERSAMAAN FORCED KORTEWEG DE VRIES MENGGUNAKAN METODE JARINGAN FUNGSI RADIAL BASIS\r\n', 2017, NULL, 61, 6, 12610075, 14, 5, 0, '2019-07-16 19:53:32', '0000-00-00 00:00:00'),
('GRAFIK PENGENDALIAN KETAKSEUSUAIAN PER UNIT PADA DISTRIBUSI ZERO-INFLATED POISSON MENGGUNAKAN PENDEKATAN DISTRIBUSI GEOMETRIK\r\n', 2017, NULL, 62, 5, 12610045, 13, 4, 0, '2019-07-16 19:53:32', '0000-00-00 00:00:00'),
('PENERAPAN METODE FUZZY MAMDANI SERVQUAL DALAM INDETIFIKASI KUALITAS PELAYANAN\r\n', 2017, NULL, 63, 2, 12610080, 1, 4, 0, '2019-07-16 19:53:32', '0000-00-00 00:00:00'),
('OPTIMALISASI PENJADWALAN PROYEK PEMBANGUNAN PERUMAHAN GRAHA KAYEN ASRI MENGGUNAKAN FUZZY TRAPEZODIAL CRITICAL PATH METHOD\r\n', 2017, NULL, 64, 3, 10610047, 5, 11, 0, '2019-07-16 19:53:32', '0000-00-00 00:00:00'),
('HOMOMORFISME PADA LATIS\r\n', 2017, NULL, 65, 3, 13610113, 5, 10, 0, '2019-07-16 19:53:32', '0000-00-00 00:00:00'),
('SPEKTRUM LAPLACE DARI KOMPLEMEN GRAF INVERS DARI GRUP DIHEDRAL\r\n', 2018, NULL, 66, 2, 12610077, 9, 2, 0, '2019-07-16 19:53:32', '0000-00-00 00:00:00'),
('PENERAPAN METODE PERAMALAN NOVEL BERDASARKAN FUZZY TRANSFORM DAN FUZZY TIME SERIES UNTUK MEMPREDIKSI NILAI TUKAR NELAYAN\r\n', 2018, NULL, 67, 2, 11610013, 4, 5, 0, '2019-07-16 19:53:32', '0000-00-00 00:00:00'),
('PENYELESAIAN PERSAMAAN RELASIONAL FUZZY\r\n', 2018, NULL, 68, 2, 14610054, 1, 12, 0, '2019-07-16 19:53:32', '0000-00-00 00:00:00'),
('FUZZY LINIER PROGRAMMING (FLP) DENGAN MENGGUNAKAN METODE MEHAR DAN APLIKASINYA UNTUK OPTIMASI HASIL PRODUKSI PADA INDUSTRI CAMILAN JENANG MIRAH PONOROGO\r\n', 2019, NULL, 69, 3, 12610070, 5, 2, 0, '2019-07-16 19:53:32', '0000-00-00 00:00:00'),
('ENKRIPSI DAN DEKRIPSI PESAN MENGGUNAKAN ALGORITMA PENGAMANAN DATA TINGKAT LANJUT UNTUK PERLINDUNGAN INFORMASI\r\n', 2018, NULL, 70, 1, 12610037, 4, 10, 0, '2019-07-16 19:53:32', '0000-00-00 00:00:00'),
('PENYELESAIAN PERSAMAAN BENJAMIN BONA MAHONY MENGGUNAKAN METODE DEKOMPOSISI ADOMIAN \r\n', 2018, NULL, 71, 6, 13610055, 14, 5, 0, '2019-07-16 19:53:32', '0000-00-00 00:00:00'),
('PERBANDINGAN METODE ARIMA DENGAN RBFNN DALAM PERAMALAN RATA-RATA BANYAKNYA BILANGAN SUNSPOT\r\n', 2018, NULL, 72, 6, 13610022, 14, 2, 0, '2019-07-16 19:53:32', '0000-00-00 00:00:00'),
('ESTIMASI METODE WEIGHTED LEAST SQUARE PADA PEMODELAN PERSAMAAN STRUKTURAL\r\n', 2018, NULL, 73, 1, 13610081, 10, 14, 0, '2019-07-16 19:53:32', '0000-00-00 00:00:00'),
('SOLUSI NUMERIK PERSAMAAN POISSON 2D MENGGUNAKAN METODE ELEMEN HINGGA\r\n', 2018, NULL, 74, 6, 13610066, 14, 6, 0, '2019-07-16 19:53:32', '0000-00-00 00:00:00'),
('PENGGUNAAN METODE HETEROSCEDASTICITY CONSISTENT COVARIANCE MATRIX ESTIMATOR(HCCME)UNTUK MENGATASI HETEROSKEDASTISITAS PADA REGRESI LINIER\r\n', 2018, NULL, 75, 2, 13610010, 2, 14, 0, '2019-07-16 19:53:32', '0000-00-00 00:00:00'),
('KONSTRUKSI EXTREME POINT DETERMINITIC ALGORITHM MELALUI ALGORITMA KRUSKAL DAN ALGORITMA PRIM PADA MASALAH MULTI-CRITERIA MINIMUM SPANNING TREE\r\n', 2018, NULL, 76, 3, 13610095, 5, 2, 0, '2019-07-16 19:53:32', '0000-00-00 00:00:00'),
('ESTIMASI PARAMETER MODEL MIXED GEOGRAPHICALLY AND TEMPORALLY WEIGHTED REGRESSION(MGTWR)DENGAN FUNGSI PEMBOBOT KERNEL\r\n', 2018, NULL, 77, 5, 13610109, 7, 12, 0, '2019-07-16 19:53:32', '0000-00-00 00:00:00'),
('PERHITUNGAN CADANGAN PREMI TAHUNAN PADA ASURANSI JIWA GABUNGAN MENGGUNAKAN METODE FACKLER\r\n', 2018, NULL, 78, 1, 11610030, 10, 6, 0, '2019-07-16 19:53:32', '0000-00-00 00:00:00'),
('SPEKTRUM GRAF SUBGRUP DAN KOMPLEMENNYA DARI GRUP DIHEDRAL\r\n', 2018, NULL, 79, 2, 14610042, 9, 6, 0, '2019-07-16 19:53:32', '0000-00-00 00:00:00'),
('PENERAPAN FUZZY MODEL TAHANI DALAM PEMILIHAN MESIN CUCI\r\n', 2018, NULL, 80, 3, 11610075, 5, 11, 0, '2019-07-16 19:53:32', '0000-00-00 00:00:00'),
('PENENTUAN JALUR TERPENDEK DENGAN MENGGUNAKAN METODE ANT COLONY OPTIMIZATION\r\n', 2018, NULL, 81, 3, 12610071, 5, 9, 0, '2019-07-16 19:53:32', '0000-00-00 00:00:00'),
('APLIKASI LOGIKA FUZZY DAN HIMPUNAN FUZZY DALAM MENENTUKAN KREDIT SEPEDA MOTOR\r\n', 2018, NULL, 82, 3, 11610004, 5, 3, 0, '2019-07-16 19:53:32', '0000-00-00 00:00:00'),
('SIFAT SIFAT RUANG METRIK QUASI PARSIAL\r\n', 2018, NULL, 83, 3, 11610071, 12, 11, 0, '2019-07-16 19:53:32', '0000-00-00 00:00:00'),
('SPEKTRUM LAPLACE DARI GRAF INVERSE GRUP DIHEDRAL\r\n', 2018, NULL, 84, 2, 11610073, 9, 4, 0, '2019-07-16 19:53:32', '0000-00-00 00:00:00'),
('BILANGAN KROMATIK PADA GRAFNONCOMMUTING GRUP DI HEDRAL\r\n', 2018, NULL, 85, 2, 11610016, 9, 6, 0, '2019-07-16 19:53:32', '0000-00-00 00:00:00'),
('DEKOMPOSISI SIKLIS MODUL YANG DI BANGUN SECARA HINGGA ATAS DAERAH IDEAL UTAMA\r\n', 2018, NULL, 86, 2, 13610027, 4, 10, 0, '2019-07-16 19:53:32', '0000-00-00 00:00:00'),
('ENERGI LAPLACE PADA KOMPLEMEN GRAF INVERS DARI GRUP DIHEDRAL\r\n', 2018, NULL, 87, 2, 13610071, 9, 14, 0, '2019-07-16 19:53:32', '0000-00-00 00:00:00'),
('ECCENTRIC-DISTANCE SUM PADA GRAF DARI LATIS HIMPUNAN KUASA\r\n', 2018, NULL, 88, 2, 13610058, 1, 11, 0, '2019-07-16 19:53:32', '0000-00-00 00:00:00'),
('SOLUSI NUMERIK MODEL GERAK OSILASI VERTIKAL DAN TORSIONAL UNTUK MASALAH JEMBATAN GANTUNG\r\n', 2018, NULL, 89, 6, 12610006, 11, 5, 0, '2019-07-16 19:53:32', '0000-00-00 00:00:00'),
('ESTIMASI PARAMETER GEOGRAPHICALLY WEIGHTED ZERO INFLATED POION REGRESION (GWZIPR) DENGAN PEMBOBOT FIXED BISQUARE KERNEL\r\n', 2018, NULL, 90, 5, 13610049, 7, 14, 0, '2019-07-16 19:53:32', '0000-00-00 00:00:00'),
('APLIKASI INTEGRAL FRAKSIONAL DAN TURUNAN FRAKSIONAL PADA TRANSFORMASI LAPLACE\r\n', 2018, NULL, 91, 3, 13610041, 12, 6, 0, '2019-07-16 19:53:32', '0000-00-00 00:00:00'),
('ENKRIPSI DAN DESKRIPSI PESAN MENGGUNAKAN ALGORITMA RSA DAN AFFINE CIPHER DENGAN METODE MATRIKS\r\n', 2018, NULL, 92, 2, 13610118, 9, 11, 0, '2019-07-16 19:53:32', '0000-00-00 00:00:00'),
('SOLUSI NUMERIK MODEL GERAK DAWAI PADA ALAT MUSIK SASANDO DENGAN METODE CTCS\r\n', 2018, NULL, 93, 6, 11610018, 11, 18, 0, '2019-07-16 19:53:32', '0000-00-00 00:00:00'),
('SOLUSI PERSAMAAN GELOMBANG AKUSTIK 2-DIMENSI MENGGUNAKAN METODE PEMIAHAN VARIABEL\r\n', 2018, NULL, 94, 6, 11610035, 11, 6, 0, '2019-07-16 19:53:32', '0000-00-00 00:00:00'),
('ANALISIS DINAMIK SISTEM PERSAMAAN DIFERENSIAL PREDATOR-PREYTIGA SPESIES\r\n', 2018, NULL, 95, 6, 11610036, 3, 9, 0, '2019-07-16 19:53:32', '0000-00-00 00:00:00'),
('SIMULASI NUMERIK MODEL VIBRASI YANG BERJALAN DI ATAS STRING MENGGUNAKAN METODE CTCS\r\n', 2018, NULL, 96, 6, 11610012, 11, 16, 0, '2019-07-16 19:53:32', '0000-00-00 00:00:00'),
('ANALISIS PERBANDINGAN SURVIVAL FUNCTION DENGAN HUKUM MAKEHAM DAN HUKUM WEIBULL DALAM PENENTUAN PREMI ASURANSI JIWA\r\n', 2018, NULL, 97, 1, 11610054, 10, 11, 0, '2019-07-16 19:53:32', '0000-00-00 00:00:00'),
('TITIK PENUTUP DAN SISI PENUTUP MINIMAL PADA GRAF POHON BINER LENGKAP\r\n', 2018, NULL, 98, 2, 11610074, 5, 2, 0, '2019-07-16 19:53:32', '0000-00-00 00:00:00'),
('SOLUSI NUMERIK PERSAMAAN LINIER KLEIN-GORDON MENGGUNAKAN JARINGAN FUNGSI RADIAL BASIS\r\n', 2018, NULL, 99, 6, 12610021, 14, 6, 0, '2019-07-16 19:53:32', '0000-00-00 00:00:00'),
('GRAF KOSET DARI SUBGRUP NORMAL PADA GRUP DIHEDRAL\r\n', 2018, NULL, 100, 2, 13610013, 4, 11, 0, '2019-07-16 19:53:32', '0000-00-00 00:00:00'),
('PENYELESAIAN SISTEM PERAMAAN LINIER FUZZY BILANGAN TRAPESIUM MENGGUNAKAN SINGULAR VALUE DECOMPOSITION\r\n', 2018, NULL, 101, 2, 12610036, 5, 2, 0, '2019-07-16 19:53:32', '0000-00-00 00:00:00'),
('ESTIMASI PARAMETER MODEL STATISTIK NONLINIER PADA FUNGSI COBB-DOUGLAS SECARA MAXIMUM LIKELIHOOD DENGAN ITERASI METHOD OFF SCORING\r\n', 2018, NULL, 102, 1, 13610030, 10, 5, 0, '2019-07-16 19:53:32', '0000-00-00 00:00:00'),
('ESTIMASI METODE UNWEIGHTED LEAST SQUARE PADA PEMODELAN PERSAMAAN STRUKTURAL\r\n', 2018, NULL, 103, 1, 13610034, 10, 12, 0, '2019-07-16 19:53:32', '0000-00-00 00:00:00'),
('ANALISIS TRANSFORMASI FOURIER DALAM PENYELESAIAN PERSAMAAN PANAS\r\n', 2018, NULL, 104, 6, 13610028, 11, 6, 0, '2019-07-16 19:53:32', '0000-00-00 00:00:00'),
('ANALISIS MODEL HODGKIN-HUXLEY PADA TRANSMISI POTENSIAL AKSI IMPULS SEL SARAF\r\n', 2018, NULL, 105, 6, 13610072, 3, 2, 0, '2019-07-16 19:53:32', '0000-00-00 00:00:00'),
('SIFAT-SIFAT SUBMODUL MAKSIMAL DALAM MODUL PERKALIAN\r\n', 2018, NULL, 106, 2, 12610055, 9, 11, 0, '2019-07-16 19:53:32', '0000-00-00 00:00:00'),
('SPEKTRUM SIGNLESS-LAPLACE DAN DETOUR DRAF KONJUNGSI DARI GRUP DIHEDRAL\r\n', 2018, NULL, 107, 6, 13610021, 11, 7, 0, '2019-07-16 19:53:32', '0000-00-00 00:00:00'),
('PENERAPAN LOGIKA FUZZY DENGAN METODE TSUKAMOTO UNTUK MENGESTIMASI CURAH HUJAN\r\n', 2017, NULL, 108, 3, 10610063, 58, 10, 0, '2019-07-16 19:53:32', '0000-00-00 00:00:00'),
('ESTIMASI PARAMETER MODEL GEOGRAPHICALLY WEIGHTED NEGATIVE BINOMIAL REGRESSION (GWNBR) DENGAN PEMBOBOT ADAPTIVE GAUSSIAN KERNEL \r\n', 2017, NULL, 109, 5, 13610042, 7, 57, 0, '2019-07-16 19:53:32', '0000-00-00 00:00:00'),
('RAINBOW CONNECTION NUMBER DAN STRONG RAINBOW CONNECTION NUMBER PADA GRAF KOMPLEMEN DARI GRAF KONJUNGSI GRUP DIHEDRAL\r\n', 2017, NULL, 110, 2, 13610103, 4, 57, 0, '2019-07-16 19:53:32', '0000-00-00 00:00:00'),
('SIFAT-SIFAT ALJABAR BCC LEMAH SOLID\r\n', 2017, NULL, 111, 2, 13610035, 9, 57, 0, '2019-07-16 19:53:32', '0000-00-00 00:00:00'),
('SIFAT-SIFAT ALJABAR BRK\r\n', 2017, NULL, 112, 2, 13610114, 1, 57, 0, '2019-07-16 19:53:32', '0000-00-00 00:00:00'),
('IDEAL PRIMA DALAM ALJABAR BCI DAN BCK\r\n', 2017, NULL, 113, 2, 10610043, 9, 57, 0, '2019-07-16 19:53:32', '0000-00-00 00:00:00'),
('PENERAPAN EKSTRAPOLASI DALAM MENENTUKAN KONDISI BATAS ARTIFICIAL PADA SOLUSI NUMERIK PERSAMAAN GELOMBANG VIBRASI 1D\r\n', 2017, NULL, 114, 6, 12610102, 14, 9, 0, '2019-07-16 19:53:32', '0000-00-00 00:00:00'),
('APLIKASI FUZZY INFERENCE SYSTEM DENGAN METODE SUGENO UNTUK MENGESTIMASI CURAH HUJAN\r\n', 2017, NULL, 115, 3, 10610078, 58, 5, 0, '2019-07-16 19:53:32', '0000-00-00 00:00:00'),
('ESTIMASI PARAMETER METODE GENERALIZED LEAST SQUARE PADA PEMODELAN PERSAMAAN TRUKTURAL\r\n', 2018, NULL, 116, 1, 13610103, 10, 57, 0, '2019-07-16 19:53:32', '0000-00-00 00:00:00'),
('APLIKASI GENERALIZED RIDGE REGRESSION DALAM MENGATASI AUTO KORELASI DAN MULTIKOLINEARITAS PADA INDEKS HARGA SAHAM GABUNGAN DI BANK INDONESIA\r\n', 2018, NULL, 117, 5, 11610068, 7, 57, 0, '2019-07-16 19:53:32', '0000-00-00 00:00:00'),
('RAINBOW CONNECTION NUMBER GRAF LINTASAN,GRAF TANGGA,DAN HASIL PERKALIANNYA\r\n', 2018, NULL, 118, 2, 11610063, 9, 57, 0, '2019-07-16 19:53:32', '0000-00-00 00:00:00'),
('Penyelesaian Persamaan KdV (Korteweg de Vries) menggunakan Metode Transformasi Diferensial', 2020, '16610038_ SKRIPSI HELLIYA.pdf', 122, 6, 16610038, 14, 12, 4, '2020-05-11 20:27:18', '2020-05-11 20:27:18'),
('Eksentrisitas Total dan Indeks Konektivitas Eksentrik dari Komplemen Graf Konjugasi dari Grup Dihedral', 2020, '15610018-SKRIPSI MUJIONO.pdf', 124, 2, 15610018, 16, 6, 4, '2020-05-11 21:14:31', '2020-05-11 21:14:31'),
('Jumlah Jarak Eksentrik dan Indeks Jumlah Jarak Eksentrik Terhubung Graf Non-Sentralisator dari Grup Dihedral', 2020, '15610048-DWI NOVIANA.pdf', 125, 2, 15610048, 4, 17, 4, '2020-05-19 18:27:46', '2020-05-19 18:27:47'),
('Additively dan Multiplicatively Weighted Harary Index pada Graf Identitas dari Ring Komutatif Kesatuan', 2020, 'Skripsi_Istiqoma_16610054.pdf', 127, 2, 16610054, 2, 6, 4, '2020-05-20 01:43:56', '2020-05-20 01:43:56'),
('Sifat-Sifat Inklusi pada Ruang Morrey Kecil', 2020, 'Skripsi', 129, 3, 16610060, 12, 1, 4, '2020-05-20 22:33:05', '2020-05-20 22:33:05'),
('Implementasi Algoritma Floyd-Warshall Dalam Menentukan Jalur Terpendek Pada Kunjungan Wisata di Kota Batu', 2020, '15610005 - Skripsi Muhammad Zainur Rozikin.pdf', 130, 2, 15610005, 5, 16, 4, '2020-05-21 00:34:38', '2020-05-21 00:34:38'),
('Metode DBSCAN Clustering Untuk Analisis Pola Penyebaran Petir di Pasuruan', 2020, 'Skripsi Final_Misbah Fahamsyah_16610066.pdf', 132, 4, 16610066, 18, 19, 4, '2020-05-28 20:59:53', '2020-05-28 20:59:53'),
('Penyelesaian Persamaan Korteweg de-Vries Menggunakan Reduced Differential Transform Method (RDTM)', 2020, 'Rina-16610090 - File Skripsi.pdf', 133, 6, 16610090, 14, 18, 4, '2020-06-08 02:48:37', '2020-06-08 02:48:37'),
('PENERAPAN METODE GARIS DAN METODE RUNGE KUTTA ORDE 4 PADA PENYELESAIAN PERSAMAAN DIFUSI', 2020, '16610068_SKRIPSI_IQBALIA ILHAM PRADINI PUTRI.pdf', 134, 6, 16610068, 14, 18, 4, '2020-06-08 03:41:51', '2020-06-08 03:41:51'),
('Penerapan Metode Semi Analitik pada Penyelesaian Persamaan Difusi Menggunakan Metode Garis', 2020, 'SELY AYU R_FILE SKRIPSIAN.pdf', 135, 6, 16610062, 14, 18, 4, '2020-06-08 06:11:01', '2020-06-08 06:11:01'),
('Penyelesaian Persamaan Korteweg de-Vries Menggunakan Reduced Differential Transform Method (RDTM)', 2020, 'Rina-16610090 - Fuuuuuuuuull.pdf', 136, 6, 16610090, 14, 18, 4, '2020-06-08 18:51:08', '2020-06-08 18:51:08'),
('Solusi Numerik Persamaan Linier Klein-Gordon Menggunakan Jaringan Fungsi Radial Basis Tidak Langsung', 2020, 'Skripsi_TalithaNariswari_16610067.pdf', 137, 6, 16610067, 14, 16, 4, '2020-06-08 23:35:56', '2020-06-08 23:35:56');

-- --------------------------------------------------------

--
-- Table structure for table `sumberdana`
--

CREATE TABLE `sumberdana` (
  `id` int(11) NOT NULL,
  `Nama` varchar(45) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sumberdana`
--

INSERT INTO `sumberdana` (`id`, `Nama`, `created_at`, `updated_at`) VALUES
(1, 'Perguruan Tinggi', '2019-07-18 09:38:27', '0000-00-00 00:00:00'),
(2, 'Mandiri', '2019-07-18 09:38:27', '0000-00-00 00:00:00'),
(3, 'Lembaga Dalam Negeri (di luar PT)', '2019-07-18 09:38:27', '0000-00-00 00:00:00'),
(4, 'Lembaga Luar Negeri', '2019-07-18 09:38:27', '0000-00-00 00:00:00'),
(5, 'Unknown', '2019-07-18 09:38:27', '0000-00-00 00:00:00'),
(6, 'Fakultas', '2019-08-20 02:30:57', '2019-08-20 09:30:57');

-- --------------------------------------------------------

--
-- Table structure for table `termasuk`
--

CREATE TABLE `termasuk` (
  `IDBuku` int(11) NOT NULL,
  `IDBidang` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `termasuk`
--

INSERT INTO `termasuk` (`IDBuku`, `IDBidang`, `created_at`, `updated_at`) VALUES
(1, 2, '2019-07-23 14:47:40', '0000-00-00 00:00:00'),
(2, 2, '2019-07-23 14:47:40', '0000-00-00 00:00:00'),
(3, 2, '2019-07-23 14:47:40', '0000-00-00 00:00:00'),
(4, 2, '2019-07-23 14:47:40', '0000-00-00 00:00:00'),
(5, 2, '2019-07-23 14:47:40', '0000-00-00 00:00:00'),
(6, 2, '2019-07-23 14:47:40', '0000-00-00 00:00:00'),
(7, 2, '2019-07-23 14:47:40', '0000-00-00 00:00:00'),
(8, 2, '2019-07-23 14:47:40', '0000-00-00 00:00:00'),
(8, 3, '2019-07-23 14:47:40', '0000-00-00 00:00:00'),
(9, 2, '2019-07-23 14:47:40', '0000-00-00 00:00:00'),
(10, 2, '2019-07-23 14:47:40', '0000-00-00 00:00:00'),
(10, 3, '2019-07-23 14:47:40', '0000-00-00 00:00:00'),
(11, 2, '2019-07-23 14:47:40', '0000-00-00 00:00:00'),
(12, 2, '2019-07-23 14:47:40', '0000-00-00 00:00:00'),
(12, 3, '2019-07-23 14:47:40', '0000-00-00 00:00:00'),
(13, 2, '2019-07-23 14:47:40', '0000-00-00 00:00:00'),
(14, 2, '2019-07-23 14:47:40', '0000-00-00 00:00:00'),
(15, 2, '2019-07-23 14:47:40', '0000-00-00 00:00:00'),
(16, 3, '2019-07-23 14:47:40', '0000-00-00 00:00:00'),
(16, 5, '2019-07-23 14:47:40', '0000-00-00 00:00:00'),
(17, 2, '2019-07-23 14:47:40', '0000-00-00 00:00:00'),
(18, 2, '2019-07-23 14:47:40', '0000-00-00 00:00:00'),
(18, 3, '2019-07-23 14:47:40', '0000-00-00 00:00:00'),
(19, 2, '2019-07-23 14:47:40', '0000-00-00 00:00:00'),
(20, 2, '2019-07-23 14:47:40', '0000-00-00 00:00:00'),
(21, 2, '2019-07-23 14:47:40', '0000-00-00 00:00:00'),
(22, 2, '2019-07-23 14:47:40', '0000-00-00 00:00:00'),
(23, 2, '2019-07-23 14:47:40', '0000-00-00 00:00:00'),
(24, 3, '2019-07-23 14:47:40', '0000-00-00 00:00:00'),
(24, 4, '2019-07-23 14:47:40', '0000-00-00 00:00:00'),
(25, 2, '2019-07-23 14:47:40', '0000-00-00 00:00:00'),
(26, 2, '2019-07-23 14:47:40', '0000-00-00 00:00:00'),
(27, 2, '2019-07-23 14:47:40', '0000-00-00 00:00:00'),
(28, 2, '2019-07-23 14:47:40', '0000-00-00 00:00:00'),
(29, 2, '2019-07-23 14:47:40', '0000-00-00 00:00:00'),
(30, 2, '2019-07-23 14:47:40', '0000-00-00 00:00:00'),
(31, 8, '2019-07-23 14:47:40', '0000-00-00 00:00:00'),
(32, 6, '2019-07-23 14:47:40', '0000-00-00 00:00:00'),
(32, 8, '2019-07-23 14:47:40', '0000-00-00 00:00:00'),
(33, 8, '2019-07-23 14:47:40', '0000-00-00 00:00:00'),
(34, 8, '2019-07-23 14:47:40', '0000-00-00 00:00:00'),
(35, 8, '2019-07-23 14:47:40', '0000-00-00 00:00:00'),
(36, 8, '2019-07-23 14:47:40', '0000-00-00 00:00:00'),
(37, 5, '2019-07-23 14:47:40', '0000-00-00 00:00:00'),
(38, 8, '2019-07-23 14:47:40', '0000-00-00 00:00:00'),
(39, 2, '2019-07-23 14:47:40', '0000-00-00 00:00:00'),
(39, 3, '2019-07-23 14:47:40', '0000-00-00 00:00:00'),
(39, 4, '2019-07-23 14:47:40', '0000-00-00 00:00:00'),
(39, 8, '2019-07-23 14:47:40', '0000-00-00 00:00:00'),
(40, 8, '2019-07-23 14:47:40', '0000-00-00 00:00:00'),
(41, 5, '2019-07-23 14:47:40', '0000-00-00 00:00:00'),
(41, 6, '2019-07-23 14:47:40', '0000-00-00 00:00:00'),
(42, 5, '2019-07-23 14:47:40', '0000-00-00 00:00:00'),
(42, 6, '2019-07-23 14:47:40', '0000-00-00 00:00:00'),
(43, 2, '2019-07-23 14:47:40', '0000-00-00 00:00:00'),
(44, 2, '2019-07-23 14:47:40', '0000-00-00 00:00:00'),
(45, 2, '2019-07-23 14:47:40', '0000-00-00 00:00:00'),
(46, 2, '2019-07-23 14:47:40', '0000-00-00 00:00:00'),
(47, 2, '2019-07-23 14:47:40', '0000-00-00 00:00:00'),
(48, 2, '2019-07-23 14:47:40', '0000-00-00 00:00:00'),
(49, 2, '2019-07-23 14:47:40', '0000-00-00 00:00:00'),
(50, 2, '2019-07-23 14:47:40', '0000-00-00 00:00:00'),
(51, 2, '2019-07-23 14:47:40', '0000-00-00 00:00:00'),
(52, 2, '2019-07-23 14:47:40', '0000-00-00 00:00:00'),
(53, 2, '2019-07-23 14:47:40', '0000-00-00 00:00:00'),
(54, 2, '2019-07-23 14:47:40', '0000-00-00 00:00:00'),
(55, 2, '2019-07-23 14:47:40', '0000-00-00 00:00:00'),
(56, 2, '2019-07-23 14:47:40', '0000-00-00 00:00:00'),
(57, 2, '2019-07-23 14:47:40', '0000-00-00 00:00:00'),
(58, 2, '2019-07-23 14:47:40', '0000-00-00 00:00:00'),
(59, 2, '2019-07-23 14:47:40', '0000-00-00 00:00:00'),
(60, 2, '2019-07-23 14:47:40', '0000-00-00 00:00:00'),
(61, 2, '2019-07-23 14:47:40', '0000-00-00 00:00:00'),
(62, 2, '2019-07-23 14:47:40', '0000-00-00 00:00:00'),
(63, 2, '2019-07-23 14:47:40', '0000-00-00 00:00:00'),
(64, 2, '2019-07-23 14:47:40', '0000-00-00 00:00:00'),
(65, 2, '2019-07-23 14:47:40', '0000-00-00 00:00:00'),
(66, 2, '2019-07-23 14:47:40', '0000-00-00 00:00:00'),
(67, 2, '2019-07-23 14:47:40', '0000-00-00 00:00:00'),
(68, 2, '2019-07-23 14:47:40', '0000-00-00 00:00:00'),
(69, 2, '2019-07-23 14:47:40', '0000-00-00 00:00:00'),
(70, 2, '2019-07-23 14:47:40', '0000-00-00 00:00:00'),
(71, 2, '2019-07-23 14:47:40', '0000-00-00 00:00:00'),
(72, 2, '2019-07-23 14:47:40', '0000-00-00 00:00:00'),
(73, 2, '2019-07-23 14:47:40', '0000-00-00 00:00:00'),
(74, 2, '2019-07-23 14:47:40', '0000-00-00 00:00:00'),
(75, 2, '2019-07-23 14:47:40', '0000-00-00 00:00:00'),
(76, 2, '2019-07-23 14:47:40', '0000-00-00 00:00:00'),
(76, 3, '2019-07-23 14:47:40', '0000-00-00 00:00:00'),
(76, 6, '2019-07-23 14:47:40', '0000-00-00 00:00:00'),
(77, 2, '2019-07-23 14:47:40', '0000-00-00 00:00:00'),
(77, 3, '2019-07-23 14:47:40', '0000-00-00 00:00:00'),
(77, 6, '2019-07-23 14:47:40', '0000-00-00 00:00:00'),
(78, 2, '2019-07-23 14:47:40', '0000-00-00 00:00:00'),
(79, 2, '2019-07-23 14:47:40', '0000-00-00 00:00:00'),
(80, 2, '2019-07-23 14:47:40', '0000-00-00 00:00:00'),
(81, 2, '2019-07-23 14:47:40', '0000-00-00 00:00:00'),
(82, 2, '2019-07-23 14:47:40', '0000-00-00 00:00:00'),
(83, 2, '2019-07-23 14:47:40', '0000-00-00 00:00:00'),
(84, 2, '2019-07-23 14:47:40', '0000-00-00 00:00:00'),
(85, 2, '2019-07-23 14:47:40', '0000-00-00 00:00:00'),
(86, 2, '2019-07-23 14:47:40', '0000-00-00 00:00:00'),
(87, 2, '2019-07-23 14:47:40', '0000-00-00 00:00:00'),
(88, 2, '2019-07-23 14:47:40', '0000-00-00 00:00:00'),
(89, 2, '2019-07-23 14:47:40', '0000-00-00 00:00:00'),
(90, 2, '2019-07-23 14:47:40', '0000-00-00 00:00:00'),
(91, 2, '2019-07-23 14:47:40', '0000-00-00 00:00:00'),
(92, 2, '2019-07-23 14:47:40', '0000-00-00 00:00:00'),
(93, 2, '2019-07-23 14:47:40', '0000-00-00 00:00:00'),
(94, 2, '2019-07-23 14:47:40', '0000-00-00 00:00:00'),
(95, 2, '2019-07-23 14:47:40', '0000-00-00 00:00:00'),
(96, 2, '2019-07-23 14:47:40', '0000-00-00 00:00:00'),
(97, 2, '2019-07-23 14:47:40', '0000-00-00 00:00:00'),
(98, 2, '2019-07-23 14:47:40', '0000-00-00 00:00:00'),
(99, 2, '2019-07-23 14:47:40', '0000-00-00 00:00:00'),
(100, 2, '2019-07-23 14:47:40', '0000-00-00 00:00:00'),
(101, 2, '2019-07-23 14:47:40', '0000-00-00 00:00:00'),
(102, 2, '2019-07-23 14:47:40', '0000-00-00 00:00:00'),
(103, 3, '2019-07-23 14:47:40', '0000-00-00 00:00:00'),
(104, 8, '2019-07-23 14:47:40', '0000-00-00 00:00:00'),
(105, 5, '2019-07-23 14:47:40', '0000-00-00 00:00:00'),
(106, 5, '2019-07-23 14:47:40', '0000-00-00 00:00:00'),
(107, 5, '2019-07-23 14:47:40', '0000-00-00 00:00:00'),
(108, 5, '2019-07-23 14:47:40', '0000-00-00 00:00:00'),
(109, 5, '2019-07-23 14:47:40', '0000-00-00 00:00:00'),
(110, 5, '2019-07-23 14:47:40', '0000-00-00 00:00:00'),
(111, 5, '2019-07-23 14:47:40', '0000-00-00 00:00:00'),
(112, 5, '2019-07-23 14:47:40', '0000-00-00 00:00:00'),
(113, 5, '2019-07-23 14:47:40', '0000-00-00 00:00:00'),
(114, 5, '2019-07-23 14:47:40', '0000-00-00 00:00:00'),
(115, 5, '2019-07-23 14:47:40', '0000-00-00 00:00:00'),
(116, 5, '2019-07-23 14:47:40', '0000-00-00 00:00:00'),
(117, 5, '2019-07-23 14:47:40', '0000-00-00 00:00:00'),
(118, 5, '2019-07-23 14:47:40', '0000-00-00 00:00:00'),
(119, 5, '2019-07-23 14:47:40', '0000-00-00 00:00:00'),
(120, 5, '2019-07-23 14:47:40', '0000-00-00 00:00:00'),
(121, 5, '2019-07-23 14:47:40', '0000-00-00 00:00:00'),
(122, 5, '2019-07-23 14:47:40', '0000-00-00 00:00:00'),
(123, 5, '2019-07-23 14:47:40', '0000-00-00 00:00:00'),
(124, 5, '2019-07-23 14:47:40', '0000-00-00 00:00:00'),
(125, 5, '2019-07-23 14:47:40', '0000-00-00 00:00:00'),
(126, 5, '2019-07-23 14:47:40', '0000-00-00 00:00:00'),
(127, 2, '2019-07-23 14:47:40', '0000-00-00 00:00:00'),
(128, 5, '2019-07-23 14:47:40', '0000-00-00 00:00:00'),
(129, 1, '2019-07-23 14:47:40', '0000-00-00 00:00:00'),
(129, 5, '2019-07-23 14:47:40', '0000-00-00 00:00:00'),
(130, 5, '2019-07-23 14:47:40', '0000-00-00 00:00:00'),
(131, 5, '2019-07-23 14:47:40', '0000-00-00 00:00:00'),
(132, 5, '2019-07-23 14:47:40', '0000-00-00 00:00:00'),
(133, 1, '2019-07-23 14:47:40', '0000-00-00 00:00:00'),
(133, 5, '2019-07-23 14:47:40', '0000-00-00 00:00:00'),
(134, 1, '2019-07-23 14:47:40', '0000-00-00 00:00:00'),
(134, 5, '2019-07-23 14:47:40', '0000-00-00 00:00:00'),
(135, 1, '2019-07-23 14:47:40', '0000-00-00 00:00:00'),
(135, 5, '2019-07-23 14:47:40', '0000-00-00 00:00:00'),
(136, 1, '2019-07-23 14:47:40', '0000-00-00 00:00:00'),
(136, 5, '2019-07-23 14:47:40', '0000-00-00 00:00:00'),
(137, 1, '2019-07-23 14:47:40', '0000-00-00 00:00:00'),
(137, 5, '2019-07-23 14:47:40', '0000-00-00 00:00:00'),
(138, 1, '2019-07-23 14:47:40', '0000-00-00 00:00:00'),
(138, 5, '2019-07-23 14:47:40', '0000-00-00 00:00:00'),
(139, 1, '2019-07-23 14:47:40', '0000-00-00 00:00:00'),
(139, 5, '2019-07-23 14:47:40', '0000-00-00 00:00:00'),
(140, 1, '2019-07-23 14:47:40', '0000-00-00 00:00:00'),
(140, 5, '2019-07-23 14:47:40', '0000-00-00 00:00:00'),
(141, 5, '2019-07-23 14:47:40', '0000-00-00 00:00:00'),
(142, 1, '2019-07-23 14:47:40', '0000-00-00 00:00:00'),
(143, 1, '2019-07-23 14:47:40', '0000-00-00 00:00:00'),
(144, 5, '2019-07-23 14:47:40', '0000-00-00 00:00:00'),
(145, 1, '2019-07-23 14:47:40', '0000-00-00 00:00:00'),
(146, 4, '2019-07-23 14:47:40', '0000-00-00 00:00:00'),
(146, 5, '2019-07-23 14:47:40', '0000-00-00 00:00:00'),
(147, 5, '2019-07-23 14:47:40', '0000-00-00 00:00:00'),
(148, 1, '2019-07-23 14:47:40', '0000-00-00 00:00:00'),
(148, 5, '2019-07-23 14:47:40', '0000-00-00 00:00:00'),
(149, 1, '2019-07-23 14:47:40', '0000-00-00 00:00:00'),
(149, 5, '2019-07-23 14:47:40', '0000-00-00 00:00:00'),
(150, 2, '2019-07-23 14:47:40', '0000-00-00 00:00:00'),
(150, 3, '2019-07-23 14:47:40', '0000-00-00 00:00:00'),
(150, 4, '2019-07-23 14:47:40', '0000-00-00 00:00:00'),
(151, 1, '2019-07-23 14:47:40', '0000-00-00 00:00:00'),
(151, 5, '2019-07-23 14:47:40', '0000-00-00 00:00:00'),
(152, 3, '2019-07-23 14:47:40', '0000-00-00 00:00:00'),
(152, 5, '2019-07-23 14:47:40', '0000-00-00 00:00:00'),
(153, 1, '2019-07-23 14:47:40', '0000-00-00 00:00:00'),
(154, 1, '2019-07-23 14:47:40', '0000-00-00 00:00:00'),
(155, 1, '2019-07-23 14:47:40', '0000-00-00 00:00:00'),
(155, 5, '2019-07-23 14:47:40', '0000-00-00 00:00:00'),
(156, 1, '2019-07-23 14:47:40', '0000-00-00 00:00:00'),
(156, 4, '2019-07-23 14:47:40', '0000-00-00 00:00:00'),
(157, 8, '2019-07-23 14:47:40', '0000-00-00 00:00:00'),
(158, 2, '2019-07-23 14:47:40', '0000-00-00 00:00:00'),
(158, 3, '2019-07-23 14:47:40', '0000-00-00 00:00:00'),
(159, 1, '2019-07-23 14:47:40', '0000-00-00 00:00:00'),
(159, 5, '2019-07-23 14:47:40', '0000-00-00 00:00:00'),
(160, 1, '2019-07-23 14:47:40', '0000-00-00 00:00:00'),
(161, 1, '2019-07-23 14:47:40', '0000-00-00 00:00:00'),
(161, 5, '2019-07-23 14:47:40', '0000-00-00 00:00:00'),
(162, 1, '2019-07-23 14:47:40', '0000-00-00 00:00:00'),
(163, 1, '2019-07-23 14:47:40', '0000-00-00 00:00:00'),
(163, 3, '2019-07-23 14:47:40', '0000-00-00 00:00:00'),
(163, 4, '2019-07-23 14:47:40', '0000-00-00 00:00:00'),
(163, 5, '2019-07-23 14:47:40', '0000-00-00 00:00:00'),
(164, 1, '2019-07-23 14:47:40', '0000-00-00 00:00:00'),
(164, 5, '2019-07-23 14:47:40', '0000-00-00 00:00:00'),
(165, 5, '2019-07-23 14:47:40', '0000-00-00 00:00:00'),
(166, 8, '2019-07-23 14:47:40', '0000-00-00 00:00:00'),
(167, 1, '2019-07-23 14:47:40', '0000-00-00 00:00:00'),
(168, 1, '2019-07-23 14:47:40', '0000-00-00 00:00:00'),
(169, 1, '2019-07-23 14:47:40', '0000-00-00 00:00:00'),
(170, 1, '2019-07-23 14:47:40', '0000-00-00 00:00:00'),
(170, 5, '2019-07-23 14:47:40', '0000-00-00 00:00:00'),
(171, 3, '2019-07-23 14:47:40', '0000-00-00 00:00:00'),
(172, 3, '2019-07-23 14:47:40', '0000-00-00 00:00:00'),
(173, 3, '2019-07-23 14:47:40', '0000-00-00 00:00:00'),
(174, 3, '2019-07-23 14:47:40', '0000-00-00 00:00:00'),
(175, 3, '2019-07-23 14:47:40', '0000-00-00 00:00:00'),
(176, 3, '2019-07-23 14:47:40', '0000-00-00 00:00:00'),
(177, 3, '2019-07-23 14:47:40', '0000-00-00 00:00:00'),
(178, 3, '2019-07-23 14:47:40', '0000-00-00 00:00:00'),
(179, 3, '2019-07-23 14:47:40', '0000-00-00 00:00:00'),
(180, 3, '2019-07-23 14:47:40', '0000-00-00 00:00:00'),
(181, 3, '2019-07-23 14:47:40', '0000-00-00 00:00:00'),
(182, 2, '2019-07-23 14:47:40', '0000-00-00 00:00:00'),
(182, 3, '2019-07-23 14:47:40', '0000-00-00 00:00:00'),
(183, 8, '2019-07-23 14:47:40', '0000-00-00 00:00:00'),
(184, 3, '2019-07-23 14:47:40', '0000-00-00 00:00:00'),
(185, 3, '2019-07-23 14:47:40', '0000-00-00 00:00:00'),
(186, 2, '2019-07-23 14:47:40', '0000-00-00 00:00:00'),
(187, 7, '2019-07-23 14:47:40', '0000-00-00 00:00:00'),
(188, 2, '2019-07-23 14:47:40', '0000-00-00 00:00:00'),
(188, 3, '2019-07-23 14:47:40', '0000-00-00 00:00:00'),
(189, 7, '2019-07-23 14:47:40', '0000-00-00 00:00:00'),
(190, 2, '2019-07-23 14:47:40', '0000-00-00 00:00:00'),
(190, 3, '2019-07-23 14:47:40', '0000-00-00 00:00:00'),
(191, 2, '2019-07-23 14:47:40', '0000-00-00 00:00:00'),
(191, 3, '2019-07-23 14:47:40', '0000-00-00 00:00:00'),
(191, 4, '2019-07-23 14:47:40', '0000-00-00 00:00:00'),
(192, 8, '2019-07-23 14:47:40', '0000-00-00 00:00:00'),
(193, 3, '2019-07-23 14:47:40', '0000-00-00 00:00:00'),
(194, 8, '2019-07-23 14:47:40', '0000-00-00 00:00:00'),
(195, 2, '2019-07-23 14:47:40', '0000-00-00 00:00:00'),
(196, 7, '2019-07-23 14:47:40', '0000-00-00 00:00:00'),
(197, 8, '2019-07-23 14:47:40', '0000-00-00 00:00:00'),
(198, 2, '2019-07-23 14:47:40', '0000-00-00 00:00:00'),
(198, 3, '2019-07-23 14:47:40', '0000-00-00 00:00:00'),
(199, 2, '2019-07-23 14:47:40', '0000-00-00 00:00:00'),
(199, 3, '2019-07-23 14:47:40', '0000-00-00 00:00:00'),
(200, 2, '2019-07-23 14:47:40', '0000-00-00 00:00:00'),
(200, 3, '2019-07-23 14:47:40', '0000-00-00 00:00:00'),
(201, 3, '2019-07-23 14:47:40', '0000-00-00 00:00:00'),
(202, 2, '2019-07-23 14:47:40', '0000-00-00 00:00:00'),
(202, 3, '2019-07-23 14:47:40', '0000-00-00 00:00:00'),
(203, 1, '2019-07-23 09:35:56', '2019-07-23 16:35:56'),
(203, 2, '2019-07-23 09:35:56', '2019-07-23 16:35:56'),
(204, 1, '2019-07-23 09:36:31', '2019-07-23 16:36:31'),
(204, 2, '2019-07-23 09:36:31', '2019-07-23 16:36:31'),
(205, 1, '2019-07-23 09:13:18', '2019-07-23 16:13:18'),
(205, 2, '2019-07-23 09:13:18', '2019-07-23 16:13:18'),
(205, 3, '2019-07-23 09:13:18', '2019-07-23 16:13:18'),
(206, 1, '2019-07-23 09:14:13', '2019-07-23 16:14:13'),
(206, 2, '2019-07-23 09:14:13', '2019-07-23 16:14:13'),
(207, 1, '2019-07-23 10:20:36', '2019-07-23 17:20:36'),
(207, 2, '2019-07-23 10:20:36', '2019-07-23 17:20:36'),
(208, 1, '2019-07-23 09:26:55', '2019-07-23 16:26:55'),
(208, 2, '2019-07-23 09:26:55', '2019-07-23 16:26:55'),
(209, 1, '2019-07-25 22:43:15', '2019-07-26 05:43:15'),
(209, 2, '2019-07-25 22:43:15', '2019-07-26 05:43:15'),
(210, 1, '2019-08-01 15:30:05', '2019-08-01 22:30:05'),
(210, 2, '2019-08-01 15:30:05', '2019-08-01 22:30:05'),
(211, 1, '2019-07-25 22:48:00', '2019-07-26 05:48:00'),
(211, 2, '2019-07-25 22:48:00', '2019-07-26 05:48:00'),
(212, 1, '2019-07-25 23:34:19', '2019-07-26 06:34:19'),
(212, 2, '2019-07-25 23:34:19', '2019-07-26 06:34:19'),
(213, 1, '2019-07-27 00:38:34', '2019-07-27 07:38:34'),
(213, 2, '2019-07-27 00:38:34', '2019-07-27 07:38:34'),
(213, 3, '2019-07-30 22:38:02', '2019-07-31 05:38:02'),
(214, 1, '2019-07-31 03:56:13', '2019-07-31 10:56:13'),
(214, 2, '2019-07-31 03:56:13', '2019-07-31 10:56:13'),
(214, 3, '2019-07-31 03:56:13', '2019-07-31 10:56:13'),
(215, 4, '2019-07-31 03:59:22', '2019-07-31 10:59:22'),
(216, 1, '2019-08-01 00:43:24', '2019-08-01 07:43:24'),
(216, 2, '2019-08-01 00:43:24', '2019-08-01 07:43:24'),
(216, 3, '2019-08-01 00:43:24', '2019-08-01 07:43:24'),
(217, 1, '2019-08-01 00:44:11', '2019-08-01 07:44:11'),
(218, 1, '2019-08-01 00:54:10', '2019-08-01 07:54:10'),
(218, 2, '2019-08-01 00:54:10', '2019-08-01 07:54:10'),
(219, 1, '2019-08-01 00:55:33', '2019-08-01 07:55:33'),
(219, 2, '2019-08-01 00:55:33', '2019-08-01 07:55:33'),
(220, 1, '2019-08-05 06:13:45', '2019-08-05 13:13:45'),
(221, 1, '2019-08-05 06:14:17', '2019-08-05 13:14:17'),
(221, 2, '2019-08-05 06:14:17', '2019-08-05 13:14:17'),
(221, 3, '2019-08-05 06:14:17', '2019-08-05 13:14:17'),
(222, 1, '2019-08-06 02:28:24', '2019-08-06 09:28:24'),
(222, 2, '2019-08-06 02:28:24', '2019-08-06 09:28:24'),
(223, 1, '2019-08-07 04:08:36', '2019-08-07 11:08:36'),
(223, 2, '2019-08-07 04:08:36', '2019-08-07 11:08:36'),
(224, 1, '2019-08-07 17:21:37', '2019-08-08 00:21:37'),
(224, 2, '2019-08-07 17:21:37', '2019-08-08 00:21:37'),
(225, 7, '2019-08-07 20:17:19', '2019-08-08 03:17:19');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mahasiswa_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role`, `mahasiswa_id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(14, 'admin', NULL, 'Admin', 'admin@m', NULL, '$2y$12$63ffs3WoMv14nKq4bT6r8u8LKeMl7wUvuJQcZLlqM34vbBILUo4mO', NULL, '2019-09-26 01:36:00', '2019-09-26 01:36:00'),
(15, 'mahasiswa', 1, 'Mahasiswa', 'mahasiswa@mat.uin-malang.ac.id', NULL, '$2y$10$qCxrTrl0WPBLHSWr/M5jRuyEbXMVXxokYGB80/gD2jQmXwhM1Og8W', NULL, '2020-05-07 08:11:31', '2020-05-07 08:11:31');

-- --------------------------------------------------------

--
-- Table structure for table `verifikasi`
--

CREATE TABLE `verifikasi` (
  `id` int(11) NOT NULL,
  `Nama` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `verifikasi`
--

INSERT INTO `verifikasi` (`id`, `Nama`) VALUES
(0, ' Tuntas'),
(1, 'Ditolak'),
(2, 'Diterima'),
(3, 'Revisi'),
(4, 'Proses');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bidang`
--
ALTER TABLE `bidang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`id`),
  ADD KEY `buku_ibfk_1` (`lokasi_id`);

--
-- Indexes for table `didanai`
--
ALTER TABLE `didanai`
  ADD PRIMARY KEY (`IDDana`,`IDKategori`),
  ADD KEY `mengkategori_ibfk_2` (`IDKategori`);

--
-- Indexes for table `dosen`
--
ALTER TABLE `dosen`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dsnmeneliti`
--
ALTER TABLE `dsnmeneliti`
  ADD PRIMARY KEY (`KodeDosen`,`IDPenelitian`),
  ADD KEY `dsnmeneliti_ibfk_2` (`IDPenelitian`);

--
-- Indexes for table `dsnmengabdi`
--
ALTER TABLE `dsnmengabdi`
  ADD PRIMARY KEY (`KodeDosen`,`IDPengabdian`),
  ADD KEY `dsnmengabdi_ibfk_2` (`IDPengabdian`);

--
-- Indexes for table `jenispublikasi`
--
ALTER TABLE `jenispublikasi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lokasi`
--
ALTER TABLE `lokasi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `melaksanakan`
--
ALTER TABLE `melaksanakan`
  ADD PRIMARY KEY (`mahasiswa_id`,`pklkkm_id`),
  ADD KEY `IDpklkkm` (`pklkkm_id`);

--
-- Indexes for table `membimbing`
--
ALTER TABLE `membimbing`
  ADD PRIMARY KEY (`KodeDosen`,`ID`),
  ADD KEY `membimbing_ibfk_2` (`ID`);

--
-- Indexes for table `mengarang`
--
ALTER TABLE `mengarang`
  ADD PRIMARY KEY (`IDPenulis`,`IDBuku`),
  ADD KEY `buku_penulis_ibfk_2` (`IDBuku`);

--
-- Indexes for table `menulis`
--
ALTER TABLE `menulis`
  ADD PRIMARY KEY (`IDPenulis`,`IDPublikasi`),
  ADD KEY `menulis_ibfk_2` (`IDPublikasi`);

--
-- Indexes for table `mhsmeneliti`
--
ALTER TABLE `mhsmeneliti`
  ADD PRIMARY KEY (`NIM`,`IDPenelitian`),
  ADD KEY `mhsmeneliti_ibfk_2` (`IDPenelitian`);

--
-- Indexes for table `mhsmengabdi`
--
ALTER TABLE `mhsmengabdi`
  ADD PRIMARY KEY (`NIM`,`IDPengabdian`),
  ADD KEY `mhsmengabdi_ibfk_2` (`IDPengabdian`);

--
-- Indexes for table `mitra`
--
ALTER TABLE `mitra`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `penelitian`
--
ALTER TABLE `penelitian`
  ADD PRIMARY KEY (`id`),
  ADD KEY `penelitian_ibfk_1` (`bidang_id`),
  ADD KEY `penelitian_ibfk_2` (`dosene_id`),
  ADD KEY `penelitian_ibfk_3` (`kategori_id`);

--
-- Indexes for table `pengabdian`
--
ALTER TABLE `pengabdian`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDBidang` (`bidang_id`),
  ADD KEY `pengabdian_ibfk_1` (`ketua_id`),
  ADD KEY `pengabdian_ibfk_3` (`kategori_id`);

--
-- Indexes for table `penulis`
--
ALTER TABLE `penulis`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pklkkm`
--
ALTER TABLE `pklkkm`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pklkkm_ibfk_1` (`KodeDosen`),
  ADD KEY `pklkkm_ibfk_2` (`IDMitra`);

--
-- Indexes for table `publikasi`
--
ALTER TABLE `publikasi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDJenisPublikasi` (`IDJenisPublikasi`),
  ADD KEY `publikasi_ibfk_1` (`IDPenelitian`),
  ADD KEY `publikasi_ibfk_2` (`IDPengabdian`);

--
-- Indexes for table `skripsi`
--
ALTER TABLE `skripsi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `skripsi_ibfk_2` (`mahasiswa_id`),
  ADD KEY `skripsi_ibfk_3` (`pembimbing1_id`),
  ADD KEY `skripsi_ibfk_4` (`pembimbing2_id`),
  ADD KEY `skripsi_ibfk_1` (`bidang_id`),
  ADD KEY `skripsi_ibfk_5` (`verifikasi_id`);

--
-- Indexes for table `sumberdana`
--
ALTER TABLE `sumberdana`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `termasuk`
--
ALTER TABLE `termasuk`
  ADD PRIMARY KEY (`IDBuku`,`IDBidang`),
  ADD KEY `termasuk_ibfk_1` (`IDBidang`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `users_ibfk_1` (`mahasiswa_id`);

--
-- Indexes for table `verifikasi`
--
ALTER TABLE `verifikasi`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `buku`
--
ALTER TABLE `buku`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=203;

--
-- AUTO_INCREMENT for table `dosen`
--
ALTER TABLE `dosen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=117;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `mitra`
--
ALTER TABLE `mitra`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=247;

--
-- AUTO_INCREMENT for table `penelitian`
--
ALTER TABLE `penelitian`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `pengabdian`
--
ALTER TABLE `pengabdian`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `penulis`
--
ALTER TABLE `penulis`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=229;

--
-- AUTO_INCREMENT for table `pklkkm`
--
ALTER TABLE `pklkkm`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=387;

--
-- AUTO_INCREMENT for table `publikasi`
--
ALTER TABLE `publikasi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `skripsi`
--
ALTER TABLE `skripsi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=138;

--
-- AUTO_INCREMENT for table `sumberdana`
--
ALTER TABLE `sumberdana`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `verifikasi`
--
ALTER TABLE `verifikasi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `buku`
--
ALTER TABLE `buku`
  ADD CONSTRAINT `buku_ibfk_1` FOREIGN KEY (`lokasi_id`) REFERENCES `lokasi` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `didanai`
--
ALTER TABLE `didanai`
  ADD CONSTRAINT `didanai_ibfk_1` FOREIGN KEY (`IDDana`) REFERENCES `sumberdana` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `didanai_ibfk_2` FOREIGN KEY (`IDKategori`) REFERENCES `kategori` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `dsnmeneliti`
--
ALTER TABLE `dsnmeneliti`
  ADD CONSTRAINT `dsnmeneliti_ibfk_1` FOREIGN KEY (`KodeDosen`) REFERENCES `dosen` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `dsnmeneliti_ibfk_2` FOREIGN KEY (`IDPenelitian`) REFERENCES `penelitian` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `dsnmengabdi`
--
ALTER TABLE `dsnmengabdi`
  ADD CONSTRAINT `dsnmengabdi_ibfk_1` FOREIGN KEY (`KodeDosen`) REFERENCES `dosen` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `dsnmengabdi_ibfk_2` FOREIGN KEY (`IDPengabdian`) REFERENCES `pengabdian` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `melaksanakan`
--
ALTER TABLE `melaksanakan`
  ADD CONSTRAINT `melaksanakan_ibfk_1` FOREIGN KEY (`mahasiswa_id`) REFERENCES `mahasiswa` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `melaksanakan_ibfk_2` FOREIGN KEY (`pklkkm_id`) REFERENCES `pklkkm` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `membimbing`
--
ALTER TABLE `membimbing`
  ADD CONSTRAINT `membimbing_ibfk_1` FOREIGN KEY (`KodeDosen`) REFERENCES `dosen` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `membimbing_ibfk_2` FOREIGN KEY (`ID`) REFERENCES `pklkkm` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `mengarang`
--
ALTER TABLE `mengarang`
  ADD CONSTRAINT `mengarang_ibfk_1` FOREIGN KEY (`IDPenulis`) REFERENCES `penulis` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `mengarang_ibfk_2` FOREIGN KEY (`IDBuku`) REFERENCES `buku` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `menulis`
--
ALTER TABLE `menulis`
  ADD CONSTRAINT `menulis_ibfk_1` FOREIGN KEY (`IDPenulis`) REFERENCES `penulis` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `menulis_ibfk_2` FOREIGN KEY (`IDPublikasi`) REFERENCES `publikasi` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `mhsmeneliti`
--
ALTER TABLE `mhsmeneliti`
  ADD CONSTRAINT `mhsmeneliti_ibfk_1` FOREIGN KEY (`NIM`) REFERENCES `mahasiswa` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `mhsmeneliti_ibfk_2` FOREIGN KEY (`IDPenelitian`) REFERENCES `penelitian` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mhsmengabdi`
--
ALTER TABLE `mhsmengabdi`
  ADD CONSTRAINT `mhsmengabdi_ibfk_1` FOREIGN KEY (`NIM`) REFERENCES `mahasiswa` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `mhsmengabdi_ibfk_2` FOREIGN KEY (`IDPengabdian`) REFERENCES `pengabdian` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `penelitian`
--
ALTER TABLE `penelitian`
  ADD CONSTRAINT `penelitian_ibfk_1` FOREIGN KEY (`bidang_id`) REFERENCES `bidang` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `penelitian_ibfk_2` FOREIGN KEY (`dosene_id`) REFERENCES `dosen` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `penelitian_ibfk_3` FOREIGN KEY (`kategori_id`) REFERENCES `kategori` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pengabdian`
--
ALTER TABLE `pengabdian`
  ADD CONSTRAINT `pengabdian_ibfk_1` FOREIGN KEY (`ketua_id`) REFERENCES `dosen` (`id`),
  ADD CONSTRAINT `pengabdian_ibfk_2` FOREIGN KEY (`bidang_id`) REFERENCES `bidang` (`id`),
  ADD CONSTRAINT `pengabdian_ibfk_3` FOREIGN KEY (`kategori_id`) REFERENCES `kategori` (`id`);

--
-- Constraints for table `pklkkm`
--
ALTER TABLE `pklkkm`
  ADD CONSTRAINT `pklkkm_ibfk_1` FOREIGN KEY (`KodeDosen`) REFERENCES `dosen` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pklkkm_ibfk_2` FOREIGN KEY (`IDMitra`) REFERENCES `mitra` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `publikasi`
--
ALTER TABLE `publikasi`
  ADD CONSTRAINT `publikasi_ibfk_1` FOREIGN KEY (`IDPenelitian`) REFERENCES `penelitian` (`id`),
  ADD CONSTRAINT `publikasi_ibfk_2` FOREIGN KEY (`IDPengabdian`) REFERENCES `pengabdian` (`id`),
  ADD CONSTRAINT `publikasi_ibfk_3` FOREIGN KEY (`IDJenisPublikasi`) REFERENCES `jenispublikasi` (`id`);

--
-- Constraints for table `skripsi`
--
ALTER TABLE `skripsi`
  ADD CONSTRAINT `skripsi_ibfk_1` FOREIGN KEY (`bidang_id`) REFERENCES `bidang` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `skripsi_ibfk_2` FOREIGN KEY (`mahasiswa_id`) REFERENCES `mahasiswa` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `skripsi_ibfk_3` FOREIGN KEY (`pembimbing1_id`) REFERENCES `dosen` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `skripsi_ibfk_4` FOREIGN KEY (`pembimbing2_id`) REFERENCES `dosen` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `skripsi_ibfk_5` FOREIGN KEY (`verifikasi_id`) REFERENCES `verifikasi` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `termasuk`
--
ALTER TABLE `termasuk`
  ADD CONSTRAINT `termasuk_ibfk_1` FOREIGN KEY (`IDBidang`) REFERENCES `buku` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `termasuk_ibfk_2` FOREIGN KEY (`IDBidang`) REFERENCES `bidang` (`id`) ON UPDATE NO ACTION;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`mahasiswa_id`) REFERENCES `mahasiswa` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
