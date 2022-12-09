-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 09, 2022 lúc 03:46 AM
-- Phiên bản máy phục vụ: 10.4.24-MariaDB
-- Phiên bản PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `racoonmarket`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `account`
--

CREATE TABLE `account` (
  `Username` varchar(50) NOT NULL,
  `Password` varchar(50) NOT NULL,
  `IDNhanVien` varchar(10) NOT NULL,
  `TrangThai` smallint(1) NOT NULL DEFAULT 1,
  `BanHang` smallint(1) NOT NULL DEFAULT 1,
  `NhapHang` smallint(1) NOT NULL DEFAULT 1,
  `TaiKhoan` smallint(1) NOT NULL DEFAULT 1,
  `HangHoa` smallint(1) NOT NULL DEFAULT 1,
  `NhanVien` smallint(1) NOT NULL DEFAULT 1,
  `KhachHang` smallint(1) NOT NULL DEFAULT 1,
  `NhaCungCap` smallint(1) NOT NULL DEFAULT 1,
  `BaoCao` smallint(1) NOT NULL DEFAULT 1,
  `PhieuChi` smallint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `account`
--

INSERT INTO `account` (`Username`, `Password`, `IDNhanVien`, `TrangThai`, `BanHang`, `NhapHang`, `TaiKhoan`, `HangHoa`, `NhanVien`, `KhachHang`, `NhaCungCap`, `BaoCao`, `PhieuChi`) VALUES
('admin', '123', 'admin', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
('Khai01', '01', 'NV09', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
('Venus19032001', 'Venus19032001@', 'NV06', 1, 1, 1, 0, 1, 0, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitiethoadon`
--

CREATE TABLE `chitiethoadon` (
  `idhoadon` varchar(10) DEFAULT NULL,
  `idsanpham` varchar(10) DEFAULT NULL,
  `soluong` int(11) DEFAULT NULL,
  `giaBan` decimal(10,0) NOT NULL DEFAULT 0,
  `trangThai` smallint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `chitiethoadon`
--

INSERT INTO `chitiethoadon` (`idhoadon`, `idsanpham`, `soluong`, `giaBan`, `trangThai`) VALUES
('HD07129220', 'SP05', 1, '45000000', 1),
('HD07129220', 'SP06', 1, '50000000', 1),
('HD07129220', 'SP07', 2, '120000000', 1),
('HD09123934', 'SP05', 2, '45000000', 1),
('HD09123934', 'SP06', 2, '50000000', 1),
('HD09123934', 'SP07', 2, '120000000', 1),
('HD09124249', 'SP05', 1, '45000000', 1),
('HD09124249', 'SP06', 1, '50000000', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `config`
--

CREATE TABLE `config` (
  `username` varchar(20) DEFAULT NULL,
  `pass` varchar(30) DEFAULT NULL,
  `theme` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `config`
--

INSERT INTO `config` (`username`, `pass`, `theme`) VALUES
('admin', '123', 5);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `donvitinh`
--

CREATE TABLE `donvitinh` (
  `ID` varchar(10) NOT NULL,
  `Name` varchar(30) DEFAULT NULL,
  `GhiChu` varchar(250) DEFAULT NULL,
  `TrangThai` smallint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `donvitinh`
--

INSERT INTO `donvitinh` (`ID`, `Name`, `GhiChu`, `TrangThai`) VALUES
('DVT03', 'bịch', 'bịch', 1),
('DVT04', 'cái', 'cái', 1),
('DVT05', 'Chai', 'chai', 1),
('MN01', 'lon', '', 0),
('MN02', 'gói', 'gói', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoadon`
--

CREATE TABLE `hoadon` (
  `ID` varchar(10) NOT NULL,
  `IDnhanvien` varchar(10) DEFAULT NULL,
  `IDkhachHang` varchar(10) DEFAULT NULL,
  `ThoiGian` datetime DEFAULT NULL,
  `HinhThucThanhToan` int(1) DEFAULT 1,
  `GiamGia` decimal(10,0) DEFAULT NULL,
  `TongTienThanhToan` decimal(10,0) DEFAULT NULL,
  `soTienNhanDuoc` decimal(10,0) NOT NULL,
  `loaiGia` smallint(1) DEFAULT 0,
  `GhiChu` varchar(250) DEFAULT NULL,
  `trangThai` smallint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `hoadon`
--

INSERT INTO `hoadon` (`ID`, `IDnhanvien`, `IDkhachHang`, `ThoiGian`, `HinhThucThanhToan`, `GiamGia`, `TongTienThanhToan`, `soTienNhanDuoc`, `loaiGia`, `GhiChu`, `trangThai`) VALUES
('HD07129220', 'NV09', 'KH002', '2022-12-07 17:39:52', 1, '0', '335000000', '335000000', 0, 'First Bill in da day for ma brother in da hood', 1),
('HD09123934', 'admin', 'KH01', '2022-12-09 09:34:07', 1, '0', '430000000', '430000000', 0, '', 1),
('HD09124249', 'admin', 'KH01', '2022-12-09 09:34:11', 1, '0', '95000000', '95000000', 0, '', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khachhang`
--

CREATE TABLE `khachhang` (
  `ID` varchar(10) NOT NULL,
  `Name` varchar(50) DEFAULT NULL,
  `SoDienThoai` varchar(10) DEFAULT NULL,
  `DiaChi` varchar(250) DEFAULT NULL,
  `GhiChu` varchar(250) DEFAULT NULL,
  `congno` decimal(10,0) DEFAULT 0,
  `TrangThai` smallint(1) DEFAULT 1,
  `ThoiGian` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `khachhang`
--

INSERT INTO `khachhang` (`ID`, `Name`, `SoDienThoai`, `DiaChi`, `GhiChu`, `congno`, `TrangThai`, `ThoiGian`) VALUES
('KH002', 'Nguyễn Phước Cường', '0975345345', '124 Yersin Quận 1 TP Hồ Chí Minh', 'VIP Guest', '10000000', 1, '2020-09-15 16:49:18'),
('KH003', 'Đỗ Thị Bích Vân', '0947188182', '240 Điện Biên Phủ TP BMT', 'VIP Guest', '50000000', 1, '2020-09-15 16:49:18'),
('KH004', 'Tống Quang Nam', '0975305305', '35/2 Ama Khê TP BMT', 'VIP Guest', '0', 1, '2020-09-15 16:49:18'),
('KH005', 'Lê Hồng Sơn', '0845456789', '29 Hoàng Hoa Thám Q.Thanh Xuân Hà Nội', 'Platinum Guest', '0', 1, '2020-09-15 16:49:18'),
('KH006', 'Trần Quang Sang', '0947888999', '12 Đường Cỏ Ống Côn Đảo', 'Regular Guest', '0', 1, '2020-09-15 16:49:18'),
('KH01', 'Khách Mới', '', '', '', '0', 1, '2020-09-15 16:49:18');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loaisanpham`
--

CREATE TABLE `loaisanpham` (
  `ID` varchar(10) NOT NULL,
  `Name` varchar(30) DEFAULT NULL,
  `GhiChu` varchar(250) DEFAULT NULL,
  `TrangThai` smallint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `loaisanpham`
--

INSERT INTO `loaisanpham` (`ID`, `Name`, `GhiChu`, `TrangThai`) VALUES
('LSP01', 'Đồ Uống', 'KO', 1),
('LSP02', 'Đồ Ăn ', 'ko', 1),
('LSP03', 'Đồ Ăn Nhanh', 'KO', 1),
('LSP04', 'Đồ Gia Dụng', 'KO', 1),
('LSP05', 'bim sữa', '', 0),
('LSP06', 'Đồ ăn vặt', '', 1),
('LSP07', 'dụng cụ', 'hello', 0),
('LSP12', 'Mechanical body parts', 'Made in 2077 by Arasaka Corporation', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhacungcap`
--

CREATE TABLE `nhacungcap` (
  `ID` varchar(10) NOT NULL,
  `Name` varchar(50) DEFAULT NULL,
  `SoDienThoai` varchar(10) DEFAULT NULL,
  `DiaChi` varchar(150) DEFAULT NULL,
  `GhiChu` varchar(150) DEFAULT NULL,
  `congno` decimal(10,0) DEFAULT 0,
  `TrangThai` smallint(1) DEFAULT 1,
  `ThoiGian` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `nhacungcap`
--

INSERT INTO `nhacungcap` (`ID`, `Name`, `SoDienThoai`, `DiaChi`, `GhiChu`, `congno`, `TrangThai`, `ThoiGian`) VALUES
('NCC01', 'Logitech Company', '0888123456', '59 Tô Hiến Thành Q1 TP Hồ Chí Minh', NULL, '0', 1, '2022-12-07 17:03:46'),
('NCC03', 'The Coca-Cola Company', '0888123456', 'Atlanta Georgia USA', NULL, '0', 1, '2022-12-07 17:03:46'),
('NCC04', 'PepsiCo Inc', '0888123457', 'ấp Purchase Harrison, New York', NULL, '0', 1, '2022-12-07 17:03:46'),
('NCC05', 'Arasaka Corporation', '0888123458', 'Arasaka Tower, Night City', NULL, '0', 1, '2022-12-07 17:03:46'),
('NCC06', 'CTY Thực Phẩm Massan Việt Nam', '0888123459', 'Sở Giao dịch Chứng khoán Thành phố Hồ Chí Minh', NULL, '0', 1, '2022-12-07 17:03:46'),
('NCC07', 'CTY Nhựa Long Thành', '0888123450', 'Khu công nghiệp Sóng Thần Bình Dương', NULL, '0', 1, '2022-12-07 17:03:46');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhanvien`
--

CREATE TABLE `nhanvien` (
  `id` varchar(10) NOT NULL,
  `Name` varchar(30) DEFAULT NULL,
  `SoDienThoai` varchar(10) DEFAULT NULL,
  `DiaChi` varchar(150) DEFAULT NULL,
  `NgaySinh` datetime DEFAULT NULL,
  `Luong` decimal(10,0) DEFAULT NULL,
  `GioiTinh` smallint(1) DEFAULT 1,
  `NgayVaoLam` datetime DEFAULT NULL,
  `GhiChu` varchar(150) DEFAULT NULL,
  `TrangThai` smallint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `nhanvien`
--

INSERT INTO `nhanvien` (`id`, `Name`, `SoDienThoai`, `DiaChi`, `NgaySinh`, `Luong`, `GioiTinh`, `NgayVaoLam`, `GhiChu`, `TrangThai`) VALUES
('admin', 'admin', '0935818820', 'BMT,DAK LAK', '2001-12-30 00:00:00', '100000000', 1, '2001-12-30 00:00:00', 'KO', 1),
('NV06', 'Châu Văn Hiệu', '0352461759', '209/12 Nguyễn Văn Cừ', '2000-12-31 00:00:00', '7500000', 1, '2021-12-26 00:00:00', 'hiệu', 1),
('NV09', 'lê hoàng khải', '123456789', '123asdasd', '2022-09-15 00:00:00', '5000000', 1, '2022-09-15 00:00:00', '', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhatkynhaphang`
--

CREATE TABLE `nhatkynhaphang` (
  `ID` varchar(10) NOT NULL,
  `ThoiGian` datetime DEFAULT NULL,
  `IDnhanvien` varchar(10) DEFAULT NULL,
  `IDNhaCungCap` varchar(10) DEFAULT NULL,
  `TongTien` decimal(10,0) DEFAULT NULL,
  `ThanhToan` decimal(10,0) DEFAULT NULL,
  `GhiChu` varchar(150) DEFAULT NULL,
  `TrangThai` smallint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhatkytrahangncc`
--

CREATE TABLE `nhatkytrahangncc` (
  `ID` varchar(10) NOT NULL,
  `ThoiGian` datetime DEFAULT NULL,
  `IDnhanvien` varchar(10) DEFAULT NULL,
  `IDncc` varchar(10) DEFAULT NULL,
  `TongTien` decimal(10,0) DEFAULT NULL,
  `hinhthuc` smallint(1) NOT NULL,
  `GhiChu` varchar(150) DEFAULT NULL,
  `TrangThai` smallint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phieuchi`
--

CREATE TABLE `phieuchi` (
  `ID` int(10) NOT NULL,
  `ThoiGian` datetime DEFAULT NULL,
  `IDnhanvien` varchar(10) DEFAULT NULL,
  `TienChi` decimal(10,0) DEFAULT NULL,
  `GhiChu` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phieutranoncc`
--

CREATE TABLE `phieutranoncc` (
  `ID` int(11) NOT NULL,
  `IDNcc` varchar(10) DEFAULT NULL,
  `IDNhanVien` varchar(10) DEFAULT NULL,
  `SoTienTra` decimal(10,0) DEFAULT NULL,
  `ThoiGian` datetime DEFAULT NULL,
  `GhiChu` varchar(150) DEFAULT NULL,
  `TrangThai` smallint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `ID` varchar(10) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Barcode` varchar(30) DEFAULT NULL,
  `hinhAnh` varchar(200) NOT NULL DEFAULT 'empty.png',
  `GiaNhap` decimal(10,0) DEFAULT 0,
  `GiaBan` decimal(10,0) DEFAULT 0,
  `giaSi` decimal(10,0) NOT NULL DEFAULT 999999,
  `SoLuong` int(11) DEFAULT 0,
  `SoLuongToiThieu` int(11) DEFAULT 0,
  `IDNhaCungCap` varchar(10) NOT NULL,
  `IDDonViTinh` varchar(10) NOT NULL,
  `idLoaiSanPham` varchar(10) NOT NULL,
  `GhiChu` varchar(150) DEFAULT NULL,
  `TrangThai` smallint(1) NOT NULL DEFAULT 1,
  `ThoiGian` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`ID`, `Name`, `Barcode`, `hinhAnh`, `GiaNhap`, `GiaBan`, `giaSi`, `SoLuong`, `SoLuongToiThieu`, `IDNhaCungCap`, `IDDonViTinh`, `idLoaiSanPham`, `GhiChu`, `TrangThai`, `ThoiGian`) VALUES
('SP05', 'Robotic Arm', NULL, '', '9000000', '45000000', '30000000', 496, 20, 'NCC05', 'DVT04', 'LSP12', 'Hỗ trợ thay thế, nâng cấp, cải tiến cơ thể (Tay)', 1, '2022-12-07 17:21:04'),
('SP06', 'Robotic Leg', NULL, '', '9000000', '50000000', '35000000', 496, 20, 'NCC05', 'DVT04', 'LSP12', 'Hỗ trợ thay thế, nâng cấp, cải tiến cơ thể (Chân) ', 1, '2022-12-07 17:21:04'),
('SP07', 'Laser Eyes', NULL, '', '80000000', '120000000', '100000000', 496, 20, 'NCC05', 'DVT04', 'LSP12', 'Hỗ trợ thay thế, nâng cấp, cải tiến cơ thể (Mắt) ', 1, '2022-12-07 17:21:04');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thongtincuahang`
--

CREATE TABLE `thongtincuahang` (
  `tencuahang` varchar(100) NOT NULL,
  `diachi` varchar(50) DEFAULT NULL,
  `sodienthoai` varchar(10) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `footercontent` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `thongtincuahang`
--

INSERT INTO `thongtincuahang` (`tencuahang`, `diachi`, `sodienthoai`, `email`, `footercontent`) VALUES
('Cao đẳng thực hành FPT Polytechnic', 'Hà Huy Tập, TP.BMT, Đăk Lăk', '0909999999', 'venus19032001@gmail.com', 'Xin cảm ơn quý khách !');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thutienkhachhang`
--

CREATE TABLE `thutienkhachhang` (
  `ID` int(20) NOT NULL,
  `ThoiGian` datetime DEFAULT NULL,
  `IDNhanVien` varchar(10) DEFAULT NULL,
  `IDKhachHang` varchar(10) DEFAULT NULL,
  `SoTien` decimal(10,0) DEFAULT NULL,
  `GhiChu` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `trichkho`
--

CREATE TABLE `trichkho` (
  `ID` varchar(10) NOT NULL,
  `IDNhanVien` varchar(10) DEFAULT NULL,
  `ThoiGian` datetime DEFAULT NULL,
  `GhiChu` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`Username`),
  ADD KEY `IDNhanVien` (`IDNhanVien`);

--
-- Chỉ mục cho bảng `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
  ADD KEY `idsanpham` (`idsanpham`);

--
-- Chỉ mục cho bảng `donvitinh`
--
ALTER TABLE `donvitinh`
  ADD PRIMARY KEY (`ID`);

--
-- Chỉ mục cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IDnhanvien` (`IDnhanvien`),
  ADD KEY `IDkhachHang` (`IDkhachHang`);

--
-- Chỉ mục cho bảng `khachhang`
--
ALTER TABLE `khachhang`
  ADD PRIMARY KEY (`ID`);

--
-- Chỉ mục cho bảng `loaisanpham`
--
ALTER TABLE `loaisanpham`
  ADD PRIMARY KEY (`ID`);

--
-- Chỉ mục cho bảng `nhacungcap`
--
ALTER TABLE `nhacungcap`
  ADD PRIMARY KEY (`ID`);

--
-- Chỉ mục cho bảng `nhanvien`
--
ALTER TABLE `nhanvien`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `nhatkynhaphang`
--
ALTER TABLE `nhatkynhaphang`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IDnhanvien` (`IDnhanvien`),
  ADD KEY `IDncc` (`IDNhaCungCap`);

--
-- Chỉ mục cho bảng `nhatkytrahangncc`
--
ALTER TABLE `nhatkytrahangncc`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IDnhanvien` (`IDnhanvien`),
  ADD KEY `IDncc` (`IDncc`);

--
-- Chỉ mục cho bảng `phieuchi`
--
ALTER TABLE `phieuchi`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IDnhanvien` (`IDnhanvien`);

--
-- Chỉ mục cho bảng `phieutranoncc`
--
ALTER TABLE `phieutranoncc`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IDNhanVien` (`IDNhanVien`),
  ADD KEY `IDNcc` (`IDNcc`);

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IDDonViTinh` (`IDDonViTinh`),
  ADD KEY `idLoaiSanPham` (`idLoaiSanPham`),
  ADD KEY `IDNhaCungCap` (`IDNhaCungCap`);

--
-- Chỉ mục cho bảng `thongtincuahang`
--
ALTER TABLE `thongtincuahang`
  ADD PRIMARY KEY (`tencuahang`);

--
-- Chỉ mục cho bảng `thutienkhachhang`
--
ALTER TABLE `thutienkhachhang`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IDNhanVien` (`IDNhanVien`),
  ADD KEY `IDKhachHang` (`IDKhachHang`);

--
-- Chỉ mục cho bảng `trichkho`
--
ALTER TABLE `trichkho`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IDNhanVien` (`IDNhanVien`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `phieuchi`
--
ALTER TABLE `phieuchi`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `phieutranoncc`
--
ALTER TABLE `phieutranoncc`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `thutienkhachhang`
--
ALTER TABLE `thutienkhachhang`
  MODIFY `ID` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `account`
--
ALTER TABLE `account`
  ADD CONSTRAINT `account_ibfk_1` FOREIGN KEY (`IDNhanVien`) REFERENCES `nhanvien` (`id`);

--
-- Các ràng buộc cho bảng `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
  ADD CONSTRAINT `chitiethoadon_ibfk_2` FOREIGN KEY (`idsanpham`) REFERENCES `sanpham` (`ID`);

--
-- Các ràng buộc cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  ADD CONSTRAINT `hoadon_ibfk_1` FOREIGN KEY (`IDnhanvien`) REFERENCES `nhanvien` (`id`),
  ADD CONSTRAINT `hoadon_ibfk_2` FOREIGN KEY (`IDkhachHang`) REFERENCES `khachhang` (`ID`);

--
-- Các ràng buộc cho bảng `nhatkynhaphang`
--
ALTER TABLE `nhatkynhaphang`
  ADD CONSTRAINT `nhatkynhaphang_ibfk_1` FOREIGN KEY (`IDnhanvien`) REFERENCES `nhanvien` (`id`),
  ADD CONSTRAINT `nhatkynhaphang_ibfk_2` FOREIGN KEY (`IDNhaCungCap`) REFERENCES `nhacungcap` (`ID`);

--
-- Các ràng buộc cho bảng `nhatkytrahangncc`
--
ALTER TABLE `nhatkytrahangncc`
  ADD CONSTRAINT `nhatkytrahangncc_ibfk_1` FOREIGN KEY (`IDnhanvien`) REFERENCES `nhanvien` (`id`),
  ADD CONSTRAINT `nhatkytrahangncc_ibfk_2` FOREIGN KEY (`IDncc`) REFERENCES `nhacungcap` (`ID`);

--
-- Các ràng buộc cho bảng `phieuchi`
--
ALTER TABLE `phieuchi`
  ADD CONSTRAINT `phieuchi_ibfk_1` FOREIGN KEY (`IDnhanvien`) REFERENCES `nhanvien` (`id`);

--
-- Các ràng buộc cho bảng `phieutranoncc`
--
ALTER TABLE `phieutranoncc`
  ADD CONSTRAINT `phieutranoncc_ibfk_1` FOREIGN KEY (`IDNhanVien`) REFERENCES `nhanvien` (`id`),
  ADD CONSTRAINT `phieutranoncc_ibfk_2` FOREIGN KEY (`IDNcc`) REFERENCES `nhacungcap` (`ID`);

--
-- Các ràng buộc cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `sanpham_ibfk_1` FOREIGN KEY (`IDDonViTinh`) REFERENCES `donvitinh` (`ID`),
  ADD CONSTRAINT `sanpham_ibfk_2` FOREIGN KEY (`idLoaiSanPham`) REFERENCES `loaisanpham` (`ID`),
  ADD CONSTRAINT `sanpham_ibfk_3` FOREIGN KEY (`IDNhaCungCap`) REFERENCES `nhacungcap` (`ID`);

--
-- Các ràng buộc cho bảng `thutienkhachhang`
--
ALTER TABLE `thutienkhachhang`
  ADD CONSTRAINT `thutienkhachhang_ibfk_1` FOREIGN KEY (`IDNhanVien`) REFERENCES `nhanvien` (`id`),
  ADD CONSTRAINT `thutienkhachhang_ibfk_2` FOREIGN KEY (`IDKhachHang`) REFERENCES `khachhang` (`ID`);

--
-- Các ràng buộc cho bảng `trichkho`
--
ALTER TABLE `trichkho`
  ADD CONSTRAINT `trichkho_ibfk_1` FOREIGN KEY (`IDNhanVien`) REFERENCES `nhanvien` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
