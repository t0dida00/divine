-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th5 02, 2021 lúc 09:54 PM
-- Phiên bản máy phục vụ: 10.4.18-MariaDB
-- Phiên bản PHP: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `auto_sell`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `customer_information`
--

CREATE TABLE `customer_information` (
  `id` int(11) NOT NULL,
  `first_name` varchar(254) NOT NULL,
  `last_name` varchar(254) NOT NULL,
  `email` varchar(254) NOT NULL,
  `phone` varchar(254) NOT NULL,
  `address1` varchar(254) NOT NULL,
  `address2` varchar(254) NOT NULL,
  `code` varchar(254) NOT NULL,
  `country` varchar(254) NOT NULL,
  `nameCar` varchar(254) NOT NULL,
  `priceCar` varchar(254) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `customer_information`
--

INSERT INTO `customer_information` (`id`, `first_name`, `last_name`, `email`, `phone`, `address1`, `address2`, `code`, `country`, `nameCar`, `priceCar`) VALUES
(1, 'khoa', 'dinh', 'oulu', '123456', '12345', 'oulu', '', '', '', ''),
(2, '123', '123', '123', '123', '213', 'Oulu', '90570', 'Bangladesh', 'Suzuki-grand-vitara', '12000'),
(3, 'Khoa', 'Dinh', 'Khoadinh@gmail.com', '123456', 'Kalervontine', 'Oulu', '90570', 'Finland', 'Toyota-Yaris', '10000'),
(4, 'DIVINE', 'EBECHUE', 'divine@gmail.com', '8562541', 'Tellervontie', 'Oulu', '90570', 'Finland', 'Suzuki-grand-vitara', '12000'),
(5, 'DIVINE', 'EBECHUE', 'divine@gmail.com', '8562541', 'Tellervontie', 'Oulu', '90570', 'Finland', 'Suzuki-grand-vitara', '12000'),
(6, 'DIVINE', 'EBECHUE', 'divine@gmail.com', '8562541', 'Tellervontie', 'Oulu', '90570', 'Finland', 'Suzuki-grand-vitara', '12000');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `customer_information`
--
ALTER TABLE `customer_information`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `customer_information`
--
ALTER TABLE `customer_information`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
