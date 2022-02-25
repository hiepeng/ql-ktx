-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th2 25, 2022 lúc 03:36 PM
-- Phiên bản máy phục vụ: 10.4.22-MariaDB
-- Phiên bản PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `ktx`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nguoithue`
--

CREATE TABLE `nguoithue` (
  `ID` int(10) NOT NULL,
  `UserId` int(10) NOT NULL,
  `NgayThue` date DEFAULT NULL,
  `Name` varchar(30) DEFAULT NULL,
  `Phone` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `nguoithue`
--

INSERT INTO `nguoithue` (`ID`, `UserId`, `NgayThue`, `Name`, `Phone`) VALUES
(5, 14, '4422-02-21', 'nguyễn văn C', '0333334344'),
(6, 13, '2020-03-03', 'nguyen vthi a', '0333088333'),
(7, 16, '1212-02-12', '2121', '0825504523'),
(8, 16, '2022-02-28', 'Nguyễn Thị A', '0987878744'),
(9, 16, '2222-02-22', '22fwdf', '21121');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbluser`
--

CREATE TABLE `tbluser` (
  `ID` int(10) NOT NULL,
  `FullName` varchar(150) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Password` varchar(200) DEFAULT NULL,
  `RegDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `role` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tbluser`
--

INSERT INTO `tbluser` (`ID`, `FullName`, `Email`, `MobileNumber`, `Password`, `RegDate`, `role`) VALUES
(13, 'một', 'a@gmail.com', 111111111, 'bd9c0dd8620f6a49ebd7f2176552d141', '2022-01-02 09:07:50', 0),
(14, 'Nguyễn Thị C', '333@gmail.com', 333333332, '3ee50503b2cd6e8ac0ebfc486054f8ee', '2022-01-02 10:08:16', 0),
(15, 'Nguyễn Văn Hiệp', 'fafjkf@gmail.com', 333033033, 'b59c67bf196a4758191e42f76670ceba', '2022-02-25 13:57:43', NULL),
(16, 'nguyen thi a', '1@gmail.com', 333333111, 'c4ca4238a0b923820dcc509a6f75849b', '2022-02-25 14:10:03', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thuephong`
--

CREATE TABLE `thuephong` (
  `ID` int(10) NOT NULL,
  `UserId` int(10) NOT NULL,
  `NgayThue` date DEFAULT NULL,
  `PhongThue` varchar(200) DEFAULT NULL,
  `GiaThue` varchar(200) DEFAULT NULL,
  `Name` varchar(200) DEFAULT NULL,
  `Phone` varchar(200) DEFAULT NULL,
  `NoteDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `thuephong`
--

INSERT INTO `thuephong` (`ID`, `UserId`, `NgayThue`, `PhongThue`, `GiaThue`, `Name`, `Phone`, `NoteDate`) VALUES
(38, 14, '2021-02-10', '301', '1000000', 'Nguyên văn hiệp', '0333222333', '2022-01-02 09:41:01'),
(48, 14, '2022-01-02', 'Phòng 501', '2000000', 'Nguyễn Thị B', '0333087444', '2022-01-02 10:12:12'),
(54, 14, '2021-12-15', '301', '500000', 'nguyen thi cc', '0333084333', '2022-01-02 10:55:15'),
(56, 13, '2021-12-12', 'phong gagaga', '2tr', 'Nguyen Quynh Anh', '0825504523', '2022-02-25 13:56:04'),
(57, 16, '2222-12-21', 'sff', '2tr', 'ffsd', '0825504523', '2022-02-25 14:21:41'),
(58, 16, '2022-02-25', 'Phòng 301', '1000000', 'Trịnh Ngọc Chi', '0333099888', '2022-02-25 14:24:36'),
(59, 16, '2022-02-20', 'Phòng 201', '1500000', 'Nguyễn Văn A', '0333888999', '2022-02-25 14:25:14'),
(60, 16, '2022-02-20', 'Phòng 201', '1500000', 'Nguyễn Văn A', '0333888999', '2022-02-25 14:25:41');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `nguoithue`
--
ALTER TABLE `nguoithue`
  ADD PRIMARY KEY (`ID`);

--
-- Chỉ mục cho bảng `tbluser`
--
ALTER TABLE `tbluser`
  ADD PRIMARY KEY (`ID`);

--
-- Chỉ mục cho bảng `thuephong`
--
ALTER TABLE `thuephong`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `nguoithue`
--
ALTER TABLE `nguoithue`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `tbluser`
--
ALTER TABLE `tbluser`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT cho bảng `thuephong`
--
ALTER TABLE `thuephong`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
