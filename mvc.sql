-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 13, 2024 at 06:27 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mvc`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `tentaikhoan` varchar(100) NOT NULL,
  `matkhau` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cauhoi`
--

CREATE TABLE `cauhoi` (
  `id` int(11) NOT NULL,
  `title` varchar(1000) NOT NULL,
  `cau_a` varchar(1000) NOT NULL,
  `cau_b` varchar(1000) NOT NULL,
  `cau_c` varchar(1000) NOT NULL,
  `cau_d` varchar(1000) NOT NULL,
  `cau_dung` varchar(1000) NOT NULL,
  `id_danhmuc` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cauhoi`
--

INSERT INTO `cauhoi` (`id`, `title`, `cau_a`, `cau_b`, `cau_c`, `cau_d`, `cau_dung`, `id_danhmuc`) VALUES
(1, 'Quốc gia nào có quốc kì hình ngôi sao vàng ở giữa nền đỏ thẫm', 'Việt Nam', 'Tàu', 'Nhật Bản', 'Hàn Quốc', 'cau_a', 1),
(2, 'Có bao nhiêu quốc gia được công nhận trên thế giới', '198 ', '194', '193', '196', 'cau_c', 1),
(6, 'Con nào sau đây đi bằng 2 chân', 'con chó', 'con lợn', 'con trâu', 'con gà', 'cau_d', 3),
(7, 'Con nào sau đây đi bằng 4 chân', 'con chó', 'con vịt', 'con người', 'con vượn', 'cau_a', 3),
(9, 'Việt Nam có bao nhiêu dân tộc anh em', '56 dân tộc', '54 dân tộc', '55 dân tộc', '52 dân tộc', 'cau_b', 2),
(10, 'Tác phẩm “Hịch tướng sĩ” của tác giả', 'Nguyễn Trãi', 'Ngô Quyền ', 'Trần Hưng Đạo', 'Đinh Bộ Lĩnh', 'cau_c', 2),
(11, 'Người đàn ông duy nhất trên thế giới có…sữa là ai?', 'Ông thọ', 'Ông nội', 'Ông Cao Thắng', 'Ông già Noel', 'cau_a', 3),
(12, 'Có ba quả táo trên bàn và bạn lấy đi hai quả. Hỏi bạn còn bao nhiêu quả táo?', '1 quả', '2 quả', 'Không có quả nào', '3 quả', 'cau_b', 3),
(13, 'Đâu là quốc gia có diện tích lớn nhất thế giới?', 'Trung Quốc', 'Việt Nam', 'Mỹ', 'Nga', 'cau_d', 2),
(14, 'Câu ca dao nào nói về tình cảm anh em?', '\"Anh em như thể tay chân\r\nRách lành đùm bọc, dở hay đỡ đần.\"', '\"Nhiễu điều phủ lấy giá gương\r\nNgười trong một nước phải thương nhau cùng.\"', '\"Cây có cội, nước có nguồn\r\nChữ tâm kia mới bằng non nước.\"', '\"Ăn quả nhớ kẻ trồng cây\r\nCó lòng xin tạc đá vàng.\"', 'cau_a', 2),
(16, 'Thủ đô của Việt Nam là gì?', 'Ninh Bình', 'Đà Nẵng', 'Hà Nội', 'TP Hồ Chí Minh', 'cau_c', 1);

-- --------------------------------------------------------

--
-- Table structure for table `cauhoi_dalay`
--

CREATE TABLE `cauhoi_dalay` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `danhmuc`
--

CREATE TABLE `danhmuc` (
  `id` int(11) NOT NULL,
  `tendanhmuc` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `danhmuc`
--

INSERT INTO `danhmuc` (`id`, `tendanhmuc`) VALUES
(1, 'Địa lí'),
(2, 'Xã hội'),
(3, 'Đố vui');

-- --------------------------------------------------------

--
-- Table structure for table `taikhoan`
--

CREATE TABLE `taikhoan` (
  `id` int(11) NOT NULL,
  `tentaikhoan` varchar(100) NOT NULL,
  `matkhau` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `taikhoan`
--

INSERT INTO `taikhoan` (`id`, `tentaikhoan`, `matkhau`, `email`) VALUES
(1, '1', '1', 'vanhpham3009@gmail.com'),
(2, 'asd', 'asd', 'vanhpham3009@gmail.com'),
(4, '123', '123', 'vanhpham3009@gmail.com'),
(5, 'abc', 'abc', 'vanhpham3009@gmail.com'),
(7, '1234', 'asdads', 'vanhpham3009@gmail.com'),
(8, 'qwe', '132', 'vanhpham3009@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cauhoi`
--
ALTER TABLE `cauhoi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `danhmuc`
--
ALTER TABLE `danhmuc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `taikhoan`
--
ALTER TABLE `taikhoan`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tentaikhoan` (`tentaikhoan`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cauhoi`
--
ALTER TABLE `cauhoi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `danhmuc`
--
ALTER TABLE `danhmuc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `taikhoan`
--
ALTER TABLE `taikhoan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
