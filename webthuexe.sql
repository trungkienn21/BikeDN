-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost:3306
-- Thời gian đã tạo: Th12 21, 2025 lúc 03:18 PM
-- Phiên bản máy phục vụ: 8.4.3
-- Phiên bản PHP: 8.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `webthuexe`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `don_thue_xe`
--

CREATE TABLE `don_thue_xe` (
  `id` int NOT NULL,
  `id_xe` int NOT NULL,
  `ma_xe` varchar(20) DEFAULT NULL,
  `ho_ten` varchar(255) NOT NULL,
  `ngay_thue` date NOT NULL,
  `ngay_tra` date NOT NULL,
  `tong_tien` double NOT NULL,
  `trang_thai_don` varchar(50) DEFAULT 'Thành công',
  `ngay_tao` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `id_nguoi_dung` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Đang đổ dữ liệu cho bảng `don_thue_xe`
--

INSERT INTO `don_thue_xe` (`id`, `id_xe`, `ma_xe`, `ho_ten`, `ngay_thue`, `ngay_tra`, `tong_tien`, `trang_thai_don`, `ngay_tao`, `id_nguoi_dung`) VALUES
(14, 1, 'MX01', 'Chang Hồng Sú', '2025-12-20', '2025-12-22', 300000, 'Hoàn tất', '2025-12-20 04:51:42', 5),
(15, 3, 'MX03', 'Chang Hồng Sú', '2025-12-20', '2025-12-20', 100000, 'Hoàn tất', '2025-12-20 04:52:49', 5),
(17, 7, 'MX07', 'Trần Công Nghĩa', '2025-12-20', '2025-12-20', 150000, 'Hoàn tất', '2025-12-20 16:02:23', 3),
(18, 1, 'MX01', 'Trần Công Nghĩa', '2025-12-20', '2025-12-20', 150000, 'Hoàn tất', '2025-12-20 16:19:02', 3),
(19, 7, 'MX07', 'Trần Công Nghĩa', '2025-12-20', '2025-12-21', 150000, 'Hoàn tất', '2025-12-20 16:21:49', 3),
(20, 6, 'MX06', 'Nguyễn Minh', '2025-12-20', '2025-12-22', 260000, 'Thành công', '2025-12-20 16:44:49', 4),
(21, 5, 'MX05', 'Nguyễn Thu Cuối', '2025-12-21', '2025-12-21', 150000, 'Hoàn tất', '2025-12-21 12:23:33', 8),
(22, 3, 'MX03', 'Chang Hồng Sú', '2025-12-21', '2025-12-21', 100000, 'Đã hủy', '2025-12-21 13:20:29', 5),
(23, 2, 'MX02', 'Chang Hồng Sú', '2025-12-21', '2025-12-22', 100000, 'Thành công', '2025-12-21 13:22:53', 5),
(24, 1, 'MX01', 'Nguyễn Thu Cuối', '2025-12-21', '2025-12-21', 150000, 'Thành công', '2025-12-21 13:34:13', 8),
(26, 11, 'MX11', 'Chang Hồng Sú', '2025-12-21', '2025-12-21', 200000, 'Thành công', '2025-12-21 14:27:30', 5),
(27, 3, 'MX03', 'Chang Hồng Sú', '2025-12-21', '2025-12-22', 100000, 'Đã hủy', '2025-12-21 14:27:42', 5),
(30, 7, 'MX07', 'Sáng Tổng', '2025-12-21', '2025-12-22', 150000, 'Đã hủy', '2025-12-21 14:45:24', 10),
(31, 8, 'MX08', 'Sáng Tổng', '2025-12-21', '2025-12-23', 320000, 'Thành công', '2025-12-21 14:46:07', 10);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nguoi_dung`
--

CREATE TABLE `nguoi_dung` (
  `id` int NOT NULL,
  `ten_dang_nhap` varchar(50) NOT NULL,
  `mat_khau` varchar(255) NOT NULL,
  `ho_ten` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `vai_tro` int DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Đang đổ dữ liệu cho bảng `nguoi_dung`
--

INSERT INTO `nguoi_dung` (`id`, `ten_dang_nhap`, `mat_khau`, `ho_ten`, `email`, `vai_tro`) VALUES
(3, 'abcd', 'abcd', 'Trần Công Nghĩa', 'tcn@gaming.com', 0),
(4, 'hellomafo', 'abcd', 'Nguyễn Minh', 'hehe@gmail.com', 0),
(5, 'sangne', '123456', 'Chang Hồng Sú', 'sangne@gmail.com', 0),
(6, 'admin', 'admin123', 'Sáng Tổng', 'admin@gmail.com', 1),
(7, 'hehe', '1', 'Mai Hà Thi', 'thi@gmail.com', 0),
(8, 'hihi', '1', 'Nguyễn Thu Cuối', 'thu@gmail.com', 0),
(9, 'huhu', '1', 'Nguyễn Thu Thương', 'thuong@gmail.com', 0),
(10, 's', '1', 'Sáng Tổng', 'admin@dogomynghe.com', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `xe_may`
--

CREATE TABLE `xe_may` (
  `id` int NOT NULL,
  `ma_xe` varchar(20) NOT NULL,
  `ten_xe` varchar(255) NOT NULL,
  `loai_xe` varchar(100) DEFAULT NULL,
  `gia_thue` double DEFAULT NULL,
  `hinh_anh` varchar(255) DEFAULT NULL,
  `trang_thai` int DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Đang đổ dữ liệu cho bảng `xe_may`
--

INSERT INTO `xe_may` (`id`, `ma_xe`, `ten_xe`, `loai_xe`, `gia_thue`, `hinh_anh`, `trang_thai`) VALUES
(1, 'MX01', 'Honda Air Blade', 'xe ga', 150000, 'ab.png', 1),
(2, 'MX02', 'Yamaha Sirius', 'xe số', 100000, 'sirius.png', 1),
(3, 'MX03', 'Honda Wave', 'xe số', 100000, 'wave.png', 0),
(4, 'MX04', 'SH 150i', 'xe ga', 200000, 'SH150i.png', 0),
(5, 'MX05', 'Xe điện Vinfast', 'xe điện', 150000, 'vinfast.png', 0),
(6, 'MX06', 'Honda Vision', 'xe ga', 130000, 'vision.png', 1),
(7, 'MX07', 'Honda Winner X', 'xe côn', 150000, 'winnerx.png', 0),
(8, 'MX08', 'Yamaha Exciter 2024', 'xe côn', 160000, 'exciter.png', 1),
(9, 'MX09', 'SH Mode', 'xe ga', 200000, 'SHmode.png', 0),
(10, 'MX10', 'Vespa', 'xe ga', 210000, 'vespa.png', 0),
(11, 'MX11', 'SH 2', 'xe ga', 200000, 'xe_sh.png', 1);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `don_thue_xe`
--
ALTER TABLE `don_thue_xe`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_xe_don` (`id_xe`),
  ADD KEY `fk_don_thue_nguoi_dung` (`id_nguoi_dung`);

--
-- Chỉ mục cho bảng `nguoi_dung`
--
ALTER TABLE `nguoi_dung`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ten_dang_nhap` (`ten_dang_nhap`);

--
-- Chỉ mục cho bảng `xe_may`
--
ALTER TABLE `xe_may`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `don_thue_xe`
--
ALTER TABLE `don_thue_xe`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT cho bảng `nguoi_dung`
--
ALTER TABLE `nguoi_dung`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `xe_may`
--
ALTER TABLE `xe_may`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- Ràng buộc đối với các bảng kết xuất
--

--
-- Ràng buộc cho bảng `don_thue_xe`
--
ALTER TABLE `don_thue_xe`
  ADD CONSTRAINT `fk_don_thue_nguoi_dung` FOREIGN KEY (`id_nguoi_dung`) REFERENCES `nguoi_dung` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_xe_don` FOREIGN KEY (`id_xe`) REFERENCES `xe_may` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
