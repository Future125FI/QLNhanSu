-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th4 01, 2024 lúc 09:53 AM
-- Phiên bản máy phục vụ: 10.1.38-MariaDB
-- Phiên bản PHP: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `qlnhansu`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chucvu`
--

CREATE TABLE `chucvu` (
  `MaNV` char(5) COLLATE utf8_unicode_ci NOT NULL,
  `MaPB` char(5) COLLATE utf8_unicode_ci NOT NULL,
  `TenPB` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `MaCV` char(5) COLLATE utf8_unicode_ci NOT NULL,
  `TenCV` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `chucvu`
--

INSERT INTO `chucvu` (`MaNV`, `MaPB`, `TenPB`, `MaCV`, `TenCV`) VALUES
('nv01', 'GD', 'Phòng giám đốc', '1', 'Giám đốc'),
('nv02', 'GD', 'Phòng giám đốc', '2', 'Phó giám đốc'),
('nv03', 'HC', 'Phòng hành chính', '3', 'Trưởng phòng'),
('nv04', 'HC', 'Phòng hành chính', '4', 'Phó phòng'),
('nv05', 'HC', 'Phòng hành chính', '5', 'Nhân viên'),
('nv06', 'KD', 'Phòng kinh doanh', '3', 'Trưởng phòng'),
('nv07', 'KD', 'Phòng kinh doanh', '4', 'Phó phòng'),
('nv08', 'KD', 'Phòng kinh doanh', '5', 'Nhân viên'),
('nv09', 'KT', 'Phòng kế toán', '3', 'Trưởng phòng'),
('nv10', 'KT', 'Phòng kế toán', '4', 'Phó phòng'),
('nv10', 'KT', 'Phòng kế toán', '5', 'Nhân viên'),
('nv11', 'PX', 'Phân xưởng', '6', 'Tổ trưởng'),
('nv12', 'PX', 'Phân xưởng', '7', 'Tổ phó'),
('nv13', 'PX', 'Phân xưởng', '8', 'Công nhân'),
('nv14', 'PX', 'Phân xưởng', '8', 'Công nhân'),
('nv15', 'PX', 'Phân xưởng', '8', 'Công nhân'),
('nv16', 'PX', 'Phân xưởng', '8', 'Công nhân'),
('nv17', 'PX', 'Phân xưởng', '8', 'Công nhân'),
('nv18', 'PX', 'Phân xưởng', '8', 'Công nhân'),
('nv19', 'BV', 'Phòng bảo vệ', '9', 'Bảo vệ'),
('nv20', 'BV', 'Phòng bảo vệ', '9', 'Bảo vệ'),
('nv21', 'NS', 'Nhân sự', '3', 'Trưởng phòng'),
('nv22', 'NS', 'Nhân sự', '4', 'Phó phòng'),
('nv23', 'NS', 'Nhân sự', '4', 'Phó phòng');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dangky`
--

CREATE TABLE `dangky` (
  `id` int(11) NOT NULL,
  `HoTen` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `NgayDangKy` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `gioithieu`
--

CREATE TABLE `gioithieu` (
  `id` int(11) NOT NULL,
  `Tencoquan` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Mota` longtext COLLATE utf8_unicode_ci NOT NULL,
  `Ghichu` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `gioithieu`
--

INSERT INTO `gioithieu` (`id`, `Tencoquan`, `Mota`, `Ghichu`) VALUES
(1, 'Hội đồng nhân dân huyện Long Phú', '<p>Hội đồng nhân dân huyện Long Phú là cơ quan quản lý nhà nước ở cấp huyện của tỉnh Sóc Trăng, Việt Nam. Hội đồng nhân dân huyện Long Phú có vai trò quan trọng trong việc thực hiện chức năng, nhiệm vụ của nhà nước ở cấp huyện, đảm bảo quyền lợi và nguyên tắc dân chủ của người dân trong khu vực. Hội đồng nhân dân huyện Long Phú là cơ quan quản lý nhà nước ở cấp huyện của tỉnh Sóc Trăng, Việt Nam. Hội đồng nhân dân huyện Long Phú có vai trò quan trọng trong việc thực hiện chức năng, nhiệm vụ của nhà nước ở cấp huyện, đảm bảo quyền lợi và nguyên tắc dân chủ của người dân trong khu vực. Hội đồng nhân dân huyện Long Phú là cơ quan quản lý nhà nước ở cấp huyện của tỉnh Sóc Trăng, Việt Nam. Hội đồng nhân dân huyện Long Phú có vai trò quan trọng trong việc thực hiện chức năng, nhiệm vụ của nhà nước ở cấp huyện, đảm bảo quyền lợi và nguyên tắc dân chủ của người dân trong khu vực.</p>', ''),
(2, 'Phòng Nội vụ huyện Long Phú', '<p>Phòng Nội vụ Huyện Long Phú là một trong những cơ quan quản lý nhà nước trọng điểm tại huyện Long Phú, tỉnh Sóc Trăng. Với vị trí địa lý chiến lược và chức năng quan trọng, Phòng Nội vụ Huyện Long Phú chịu trách nhiệm đảm bảo an ninh, trật tự, và nội vụ trên địa bàn huyện.</p>Nhiệm vụ chính của Phòng Nội vụ Huyện Long Phú là thực hiện công tác quản lý nhà nước trong lĩnh vực an ninh, trật tự, và nội vụ địa phương. Đồng thời, phòng cũng có trách nhiệm thực hiện các chính sách, quy định của Đảng và Nhà nước, phát triển cơ sở hạ tầng, quản lý dân cư, cung cấp dịch vụ công dân, và duy trì an ninh chính trị - xã hội.<p>Phòng Nội vụ Huyện Long Phú không chỉ tham gia vào việc duy trì an ninh, trật tự, mà còn chú trọng vào việc thúc đẩy sự phát triển kinh tế - xã hội trên địa bàn. Bằng cách tạo điều kiện thuận lợi cho doanh nghiệp, khuyến khích đầu tư, và phát triển cộng đồng, phòng đóng góp tích cực vào việc xây dựng một huyện Long Phú giàu mạnh, văn minh, và phồn thịnh. Đồng thời, sứ mạng cơ bản của Phòng Nội vụ là bảo vệ lợi ích cơ bản của người dân, đảm bảo an sinh xã hội và tạo môi trường sống lý tưởng.', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `huyen`
--

CREATE TABLE `huyen` (
  `MaDV` char(5) COLLATE utf8_unicode_ci NOT NULL,
  `Tendonvi` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Thaotac` text COLLATE utf8_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `huyen`
--

INSERT INTO `huyen` (`MaDV`, `Tendonvi`, `Thaotac`) VALUES
('HP001', 'Huyện Long Phú', 'Thao tác 1');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhansuhuyenlongphu`
--

CREATE TABLE `nhansuhuyenlongphu` (
  `MaCB` int(11) NOT NULL,
  `Hoten` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `Ngaysinh` date NOT NULL,
  `Gioitinh` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `Quoctich` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Dantoc` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `Tongiao` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `Quequan` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Giaoducphothong` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `Chuyenmonnghiepvu` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Tuoi` int(11) NOT NULL,
  `Lyluanchinhtri` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `Ngoaingu` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `Nghenghiepchucvu` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `Noicongtac` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Ngayvaodang` date NOT NULL,
  `Tinhtrang` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Ghichu` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `Thaotac` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nhansuhuyenlongphu`
--

INSERT INTO `nhansuhuyenlongphu` (`MaCB`, `Hoten`, `Ngaysinh`, `Gioitinh`, `Quoctich`, `Dantoc`, `Tongiao`, `Quequan`, `Giaoducphothong`, `Chuyenmonnghiepvu`, `Tuoi`, `Lyluanchinhtri`, `Ngoaingu`, `Nghenghiepchucvu`, `Noicongtac`, `Ngayvaodang`, `Tinhtrang`, `Ghichu`, `Thaotac`) VALUES
(1, 'Dương Thanh Bằng', '1980-09-09', 'Nam', 'Việt Nam', 'Kinh', 'Không', 'Sóc Trăng', '12/12', 'Đại học Xây dựng công trình và Đại học Luật', 44, 'Cao cấp', 'AV-B', 'Phó Trưởng ban, Ban Pháp chế, Hội đồng nhân dân huyện', 'Hội đồng nhân dân huyện', '2007-04-13', 'Đang hoạt động', '', ''),
(2, 'Nguyễn Công Bằng', '1977-12-22', 'Nam', 'Việt Nam', 'Kinh', 'Không ', 'Sóc Trăng', '12/12', 'Đại học Luật', 47, 'Cao cấp', 'AV-B1', 'Uỷ viên Ban thường vụ huyện ủy, Chủ nhiệm Uỷ ban Kiểm tra Huyện ủy', 'Uỷ ban kiểm tra huyện ủy', '1999-09-01', 'Đang hoạt động', '', ''),
(3, 'Nguyễn Văn Biết', '1968-05-15', 'Nam', 'Việt Nam', 'Kinh', 'Không', 'Sóc Trăng', '12/12', 'Đại học Quản lý Kinh tế', 56, 'Cao cấp', 'AV-B', 'Huyện ủy viên, Trưởng phòng Văn hóa và Thông tin kiêm Giám đóc Trung tâm Thể dục thể thao huyện', 'Phòng văn hóa và thông tin', '1988-12-16', 'Đang hoạt động', '', ''),
(4, 'Nguyễn An Bình', '1975-04-19', 'Nam', 'Việt Nam', 'Kinh', 'Không', 'Sóc Trăng', '12/12', 'Đại học An ninh', 49, 'Cao cấp', 'AV-B1', 'Huyện ủy viên, Phó bí thư Đảng ủy Công an huyện, Phó Trưởng Công an huyện', 'Công an huyện', '1998-09-17', 'Đang hoạt động', '', ''),
(5, 'Phan Lê Diễm', '1984-05-19', 'Nữ', 'Việt Nam', 'Kinh', 'Không', 'Thị trấn Đại Ngãi, huyện Long Phú, tỉnh Sóc Trăng', '12/12', 'Đại học Luật', 40, 'Cao cấp', 'AV-B1', 'Huyện ủy viên, Trưởng phòng Tư pháp', 'Phòng Tư Pháp', '2005-09-25', 'Đang hoạt động', '', ''),
(6, 'Kha Quốc Dũng', '1984-06-05', 'Nam', 'Việt Nam', 'Kinh', 'Không', 'Thị trấn Long Phú, huyện Long Phú, tỉnh Sóc Trăng', '12/12', 'Đại học Quản trị Kinh doanh', 40, 'Trung cấp', 'AV-B', 'Bí thư Chi bộ Phòng Nội vụ - Dân tộc, Trưởng phòng Nội vụ', 'Phòng Nội vụ', '2009-06-25', 'Đang hoạt động', '', ''),
(7, 'Huỳnh Đức', '1967-03-09', 'Nam', 'Việt Nam', 'Kinh', 'Không', 'Thị trấn Long Phú, huyện Long Phú, tỉnh Sóc Trăng', '12/12', 'Đại học Luật', 57, 'Cao cấp', 'AV-B1', 'Phó Bí thư Huyện ủy, Chủ tịch Ủy ban nhân dân huyện', 'Ủy ban nhân dân huyện', '1988-04-19', 'Đang hoạt động', '', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhansuthitrandaingai`
--

CREATE TABLE `nhansuthitrandaingai` (
  `MaCB` int(11) NOT NULL,
  `Hoten` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `Ngaysinh` date NOT NULL,
  `Gioitinh` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `Quoctich` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Dantoc` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `Tongiao` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `Quequan` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Giaoducphothong` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `Chuyenmonnghiepvu` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Tuoi` int(11) NOT NULL,
  `Lyluanchinhtri` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `Ngoaingu` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `Nghenghiepchucvu` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `Noicongtac` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Ngayvaodang` date NOT NULL,
  `Tinhtrang` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Ghichu` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `Thaotac` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nhansuthitrandaingai`
--

INSERT INTO `nhansuthitrandaingai` (`MaCB`, `Hoten`, `Ngaysinh`, `Gioitinh`, `Quoctich`, `Dantoc`, `Tongiao`, `Quequan`, `Giaoducphothong`, `Chuyenmonnghiepvu`, `Tuoi`, `Lyluanchinhtri`, `Ngoaingu`, `Nghenghiepchucvu`, `Noicongtac`, `Ngayvaodang`, `Tinhtrang`, `Ghichu`, `Thaotac`) VALUES
(1, 'Trần Thị Thanh Diễm', '1986-08-05', 'Nữ', 'Việt Nam', 'Kinh', 'Không ', 'Thị trấn Đại Ngãi, huyện Long Phú, tỉnh Sóc Trăng', '12/12', 'Đại học Luật', 38, 'Trung cấp', 'AV-B', 'Trưởng phòng Tư pháp', 'Phòng Tư pháp', '2007-05-19', 'Đang hoạt động', '', ''),
(2, 'La Văn Đỉnh', '1986-03-17', 'Nam', 'Việt Nam', 'Kinh', 'Không ', 'Thị trấn Đại Ngãi, huyện Long Phú, tỉnh Sóc Trăng', '12/12', 'Đại học Quản lý Kinh tế', 38, 'Trung cấp', 'AV-B1', 'Trưởng phòng Văn hóa - Xã hội', 'Phòng Văn hóa - Xã hội', '2006-08-20', 'Đang hoạt động', '', ''),
(3, 'Mã Thành Trai', '1975-04-20', 'Nam', 'Việt Nam', 'Kinh', 'Không', 'Thị trấn Đại Ngãi, huyện Long Phú, tỉnh Sóc Trăng', '12/12', 'Đại học Luật', 49, 'Cao cấp', 'AV-B', 'Phó Chủ tịch Ủy ban nhân dân thị trấn Đại Ngãi', 'Ủy ban nhân dân thị trấn Đại Ngãi', '1996-02-18', 'Đang hoạt động', '', ''),
(4, 'Nguyễn Ngọc Huyền Trang', '1990-09-04', 'Nữ', 'Việt Nam', 'Kinh', 'Không', 'Xã Long Đức, huyện Long Phú, tỉnh Sóc Trăng', '12/12', 'Đại học Luật', 34, 'Cao cấp', 'AV-B1', 'Phó Chủ tịch Ủy ban nhân dân thị trấn Đại Ngãi', 'Ủy ban nhân dân thị trấn Đại Ngãi', '2010-06-08', 'Đang hoạt động', '', ''),
(5, 'Trần Thị Nhật Linh', '1988-05-12', 'Nữ', 'Việt Nam', 'Kinh', 'Không', 'Thị trấn Đại Ngãi, huyện Long Phú, tỉnh Sóc Trăng', '12/12', 'Đại học Quản trị Kinh doanh', 36, 'Trung cấp', 'AV-B1', 'Chuyên viên thống kê', 'Ủy ban nhân dân thị trấn Đại Ngãi', '2008-08-30', 'Đang hoạt động', '', ''),
(6, 'Trần Hiệp Liệt', '1987-08-18', 'Nam', 'Việt Nam', 'Kinh', 'Không', 'Thị trấn Đại Ngãi, huyện Long Phú, tỉnh Sóc Trăng', '12/12', 'Đại học Tài chính - Kế toán', 37, 'Trung cấp', 'AV-B', 'Kế toán viên', 'Phòng Tài chính - Kế toán', '2008-11-12', 'Đang hoạt động', '', ''),
(7, 'Trương Văn Cường', '1975-09-07', 'Nam', 'Việt Nam', 'Kinh', 'Không', 'Thị trấn Long Phú, huyện Long Phú, tỉnh Sóc Trăng', '12/12', 'Đại học Cảnh sát Nhân dân', 49, 'Cao cấp', 'AV-B1', 'Trưởng Công an thị trấn Đại ngãi', 'Công an thị trấn Đại Ngãi', '1995-07-25', 'Đang hoạt động', '', ''),
(8, 'Nguyễn Hoài Phong', '1975-10-08', 'Nam', 'Việt Nam', 'Kinh', 'Không', 'Thị trấn Đại Ngãi, huyện Long Phú, tỉnh Sóc Trăng', '12/12', 'Đại học Luật', 49, 'Cao cấp', 'AV-B1', 'Chủ tịch Ủy ban nhân dân thị trấn Đại ngãi', 'Ủy ban nhân dân thị trấn Đại ngãi', '1995-12-05', 'Đang hoạt động', '', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhansuthitranlongphu`
--

CREATE TABLE `nhansuthitranlongphu` (
  `MaCB` int(11) NOT NULL,
  `Hoten` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `Ngaysinh` date NOT NULL,
  `Gioitinh` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `Quoctich` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Dantoc` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `Tongiao` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `Quequan` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Giaoducphothong` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `Chuyenmonnghiepvu` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Tuoi` int(11) NOT NULL,
  `Lyluanchinhtri` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `Ngoaingu` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `Nghenghiepchucvu` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `Noicongtac` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Ngayvaodang` date NOT NULL,
  `Tinhtrang` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Ghichu` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `Thaotac` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nhansuthitranlongphu`
--

INSERT INTO `nhansuthitranlongphu` (`MaCB`, `Hoten`, `Ngaysinh`, `Gioitinh`, `Quoctich`, `Dantoc`, `Tongiao`, `Quequan`, `Giaoducphothong`, `Chuyenmonnghiepvu`, `Tuoi`, `Lyluanchinhtri`, `Ngoaingu`, `Nghenghiepchucvu`, `Noicongtac`, `Ngayvaodang`, `Tinhtrang`, `Ghichu`, `Thaotac`) VALUES
(1, 'Sơn Thị Thanh Trà', '1989-08-05', 'Nữ', 'Việt Nam', 'Kinh', 'Không ', 'Thị trấn Long Phú, huyện Long Phú, tỉnh Sóc Trăng', '12/12', 'Đại học Luật', 35, 'Trung cấp', 'AV-B', 'Trưởng phòng Tư pháp', 'Phòng Tư pháp', '2007-05-12', 'Đang hoạt động', '', ''),
(2, 'Thạch Tiến', '1985-03-17', 'Nam', 'Việt Nam', 'Kinh', 'Không ', 'Thị trấn Long Phú, huyện Long Phú, tỉnh Sóc Trăng', '12/12', 'Đại học Quản lý Kinh tế', 39, 'Trung cấp', 'AV-B1', 'Trưởng phòng Văn hóa - Xã hội', 'Phòng Văn hóa - Xã hội', '2006-08-20', 'Đang hoạt động', '', ''),
(3, 'Nguyễn Khánh Kiết', '1978-04-20', 'Nam', 'Việt Nam', 'Kinh', 'Không', 'Thị trấn Long Phú, huyện Long Phú, tỉnh Sóc Trăng', '12/12', 'Đại học Luật', 46, 'Cao cấp', 'AV-B', 'Phó Chủ tịch Ủy ban nhân dân thị trấn Đại Ngãi', 'Ủy ban nhân dân thị trấn Long Phú', '1999-02-18', 'Đang hoạt động', '', ''),
(4, 'Huỳnh Thị Ngọc Huyền', '1992-09-01', 'Nữ', 'Việt Nam', 'Kinh', 'Không', 'Thị trấn Long Phú, huyện Long Phú, tỉnh Sóc Trăng', '12/12', 'Đại học Luật', 32, 'Cao cấp', 'AV-B1', 'Phó Chủ tịch Ủy ban nhân dân thị trấn Long Phú', 'Ủy ban nhân dân thị trấn Long Phú', '2012-06-08', 'Đang hoạt động', '', ''),
(5, 'Trần Thị Kim Ngọc', '1988-05-12', 'Nữ', 'Việt Nam', 'Kinh', 'Không', 'Thị trấn Long Phú, huyện Long Phú, tỉnh Sóc Trăng', '12/12', 'Đại học Quản trị Kinh doanh', 36, 'Trung cấp', 'AV-B1', 'Chuyên viên thống kê', 'Ủy ban nhân dân thị trấn Long Phú', '2009-08-12', 'Đang hoạt động', '', ''),
(6, 'Sơn Thạch ', '1988-08-18', 'Nam', 'Việt Nam', 'Kinh', 'Không', 'Thị trấn Long Phú, huyện Long Phú, tỉnh Sóc Trăng', '12/12', 'Đại học Tài chính - Kế toán', 36, 'Trung cấp', 'AV-B', 'Kế toán viên', 'Phòng Tài chính - Kế toán', '2009-11-12', 'Đang hoạt động', '', ''),
(7, 'Trương Văn Xuân', '1979-09-07', 'Nam', 'Việt Nam', 'Kinh', 'Không', 'Thị trấn Long Phú, huyện Long Phú, tỉnh Sóc Trăng', '12/12', 'Đại học Cảnh sát Nhân dân', 45, 'Cao cấp', 'AV-B1', 'Trưởng Công an thị trấn Long Phú', 'Công an thị trấn Long Phú', '2000-07-25', 'Đang hoạt động', '', ''),
(8, 'Nguyễn Công Trí', '1974-10-09', 'Nam', 'Việt Nam', 'Kinh', 'Không', 'Thị trấn Long Phú, huyện Long Phú, tỉnh Sóc Trăng', '12/12', 'Đại học Luật', 50, 'Cao cấp', 'AV-B1', 'Chủ tịch Ủy ban nhân dân thị trấn Long Phú', 'Ủy ban nhân dân thị trấn Long Phú', '1994-12-05', 'Đang hoạt động', '', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhansuxachaukhanh`
--

CREATE TABLE `nhansuxachaukhanh` (
  `MaCB` int(11) NOT NULL,
  `Hoten` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `Ngaysinh` date NOT NULL,
  `Gioitinh` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `Quoctich` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Dantoc` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `Tongiao` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `Quequan` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Giaoducphothong` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `Chuyenmonnghiepvu` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Tuoi` int(11) NOT NULL,
  `Lyluanchinhtri` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `Ngoaingu` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `Nghenghiepchucvu` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `Noicongtac` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Ngayvaodang` date NOT NULL,
  `Tinhtrang` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Ghichu` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `Thaotac` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nhansuxachaukhanh`
--

INSERT INTO `nhansuxachaukhanh` (`MaCB`, `Hoten`, `Ngaysinh`, `Gioitinh`, `Quoctich`, `Dantoc`, `Tongiao`, `Quequan`, `Giaoducphothong`, `Chuyenmonnghiepvu`, `Tuoi`, `Lyluanchinhtri`, `Ngoaingu`, `Nghenghiepchucvu`, `Noicongtac`, `Ngayvaodang`, `Tinhtrang`, `Ghichu`, `Thaotac`) VALUES
(1, 'Trần Thị Diệu ', '1989-08-05', 'Nữ', 'Việt Nam', 'Kinh', 'Không ', 'Xã Châu Khánh, huyện Long Phú, tỉnh Sóc Trăng', '12/12', 'Đại học Luật', 35, 'Trung cấp', 'AV-B', 'Trưởng phòng Tư pháp', 'Phòng Tư pháp', '2010-05-19', 'Đang hoạt động', '', ''),
(2, 'Trịnh Phong Thanh', '1986-03-17', 'Nam', 'Việt Nam', 'Kinh', 'Không ', 'Xã Châu Khánh, huyện Long Phú, tỉnh Sóc Trăng', '12/12', 'Đại học Quản lý Kinh tế', 38, 'Trung cấp', 'AV-B1', 'Trưởng phòng Văn hóa - Xã hội', 'Phòng Văn hóa - Xã hội', '2006-08-20', 'Đang hoạt động', '', ''),
(3, 'Triệu Thanh Tâm', '1971-04-20', 'Nam', 'Việt Nam', 'Kinh', 'Không', 'Xã Châu Khánh, huyện Long Phú, tỉnh Sóc Trăng', '12/12', 'Đại học Luật', 53, 'Cao cấp', 'AV-B', 'Phó Chủ tịch Ủy ban nhân dân xã Châu Khánh', 'Ủy ban nhân dân xã Châu Khánh', '1992-02-18', 'Đang hoạt động', '', ''),
(4, 'Trần Thị Loan', '1990-09-04', 'Nữ', 'Việt Nam', 'Kinh', 'Không', 'Xã Châu Khánh, huyện Long Phú, tỉnh Sóc Trăng', '12/12', 'Đại học Luật', 34, 'Cao cấp', 'AV-B1', 'Phó Chủ tịch Ủy ban nhân dân xã Châu Khánh', 'Ủy ban nhân dân xã Châu Khánh', '2010-06-08', 'Đang hoạt động', '', ''),
(5, 'Trần Thị Trúc Anh', '1987-05-12', 'Nữ', 'Việt Nam', 'Kinh', 'Không', 'Xã Châu Khánh, huyện Long Phú, tỉnh Sóc Trăng', '12/12', 'Đại học Quản trị Kinh doanh', 37, 'Trung cấp', 'AV-B1', 'Chuyên viên thống kê', 'Ủy ban nhân dân xã Châu Khánh', '2007-08-30', 'Đang hoạt động', '', ''),
(6, 'Trần Chính Minh', '1988-08-27', 'Nam', 'Việt Nam', 'Kinh', 'Không', 'Xã Châu Khánh, huyện Long Phú, tỉnh Sóc Trăng', '12/12', 'Đại học Tài chính - Kế toán', 36, 'Trung cấp', 'AV-B', 'Kế toán viên', 'Phòng Tài chính - Kế toán', '2008-11-12', 'Đang hoạt động', '', ''),
(7, 'Phan Văn Chiến', '1977-09-07', 'Nam', 'Việt Nam', 'Kinh', 'Không', 'Xã Châu Khánh, huyện Long Phú, tỉnh Sóc Trăng', '12/12', 'Đại học Cảnh sát Nhân dân', 47, 'Cao cấp', 'AV-B1', 'Trưởng Công an xã Châu Khánh', 'Công an xã Châu Khánh', '1997-07-25', 'Đang hoạt động', '', ''),
(8, 'Nguyễn Tuấn Hồng', '1975-10-08', 'Nam', 'Việt Nam', 'Kinh', 'Không', 'Thị trấn Đại Ngãi, huyện Long Phú, tỉnh Sóc Trăng', '12/12', 'Đại học Luật', 49, 'Cao cấp', 'AV-B1', 'Chủ tịch Ủy ban nhân dân xã Châu Khánh', 'Ủy ban nhân dân xã Châu Khánh', '1995-12-05', 'Đang hoạt động', '', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhansuxahauthanh`
--

CREATE TABLE `nhansuxahauthanh` (
  `MaCB` int(11) NOT NULL,
  `Hoten` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `Ngaysinh` date NOT NULL,
  `Gioitinh` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `Quoctich` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Dantoc` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `Tongiao` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `Quequan` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Giaoducphothong` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `Chuyenmonnghiepvu` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Tuoi` int(11) NOT NULL,
  `Lyluanchinhtri` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `Ngoaingu` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `Nghenghiepchucvu` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `Noicongtac` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Ngayvaodang` date NOT NULL,
  `Tinhtrang` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Ghichu` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `Thaotac` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nhansuxahauthanh`
--

INSERT INTO `nhansuxahauthanh` (`MaCB`, `Hoten`, `Ngaysinh`, `Gioitinh`, `Quoctich`, `Dantoc`, `Tongiao`, `Quequan`, `Giaoducphothong`, `Chuyenmonnghiepvu`, `Tuoi`, `Lyluanchinhtri`, `Ngoaingu`, `Nghenghiepchucvu`, `Noicongtac`, `Ngayvaodang`, `Tinhtrang`, `Ghichu`, `Thaotac`) VALUES
(1, 'Lý Thị Hồng Anh', '1990-08-05', 'Nữ', 'Việt Nam', 'Kinh', 'Không ', 'Xã Hậu Thạnh, huyện Long Phú, tỉnh Sóc Trăng', '12/12', 'Đại học Luật', 34, 'Trung cấp', 'AV-B', 'Trưởng phòng Tư pháp', 'Phòng Tư pháp', '2010-05-19', 'Đang hoạt động', '', ''),
(2, 'Mã Trần Tính', '1991-03-17', 'Nam', 'Việt Nam', 'Kinh', 'Không ', 'Xã Hậu Thạnh, huyện Long Phú, tỉnh Sóc Trăng', '12/12', 'Đại học Quản lý Kinh tế', 33, 'Trung cấp', 'AV-B1', 'Trưởng phòng Văn hóa - Xã hội', 'Phòng Văn hóa - Xã hội', '2011-08-20', 'Đang hoạt động', '', ''),
(3, 'Triệu Thanh Sang', '1977-04-20', 'Nam', 'Việt Nam', 'Kinh', 'Không', 'Xã Hậu Thạnh, huyện Long Phú, tỉnh Sóc Trăng', '12/12', 'Đại học Luật', 47, 'Cao cấp', 'AV-B', 'Phó Chủ tịch Ủy ban nhân dân xã Hậu Thạnh', 'Ủy ban nhân dân xã Hậu Thạnh', '1997-02-18', 'Đang hoạt động', '', ''),
(4, 'Lâm Thị Kiều Oanh', '1989-02-12', 'Nữ', 'Việt Nam', 'Kinh', 'Không', 'Xã Long Đức, huyện Long Phú, tỉnh Sóc Trăng', '12/12', 'Đại học Luật', 35, 'Cao cấp', 'AV-B1', 'Phó Chủ tịch Ủy ban nhân dân xã Hậu Thạnh', 'Ủy ban nhân dân xã Hậu Thạnh', '2009-06-08', 'Đang hoạt động', '', ''),
(5, 'Trần Thị Nhật Linh', '1988-05-12', 'Nữ', 'Việt Nam', 'Kinh', 'Không', 'Xã Hậu Thạnh, huyện Long Phú, tỉnh Sóc Trăng', '12/12', 'Đại học Quản trị Kinh doanh', 36, 'Trung cấp', 'AV-B1', 'Chuyên viên thống kê', 'Ủy ban nhân dân xã Hậu Thạnh', '2008-08-30', 'Đang hoạt động', '', ''),
(6, 'Trần Anh Khoa', '1988-08-18', 'Nam', 'Việt Nam', 'Kinh', 'Không', 'Xã Hậu Thạnh, huyện Long Phú, tỉnh Sóc Trăng', '12/12', 'Đại học Tài chính - Kế toán', 36, 'Trung cấp', 'AV-B', 'Kế toán viên', 'Phòng Tài chính - Kế toán', '2009-11-12', 'Đang hoạt động', '', ''),
(7, 'Trương Chí Tâm', '1974-09-07', 'Nam', 'Việt Nam', 'Kinh', 'Không', 'Thị trấn Long Phú, huyện Long Phú, tỉnh Sóc Trăng', '12/12', 'Đại học Cảnh sát Nhân dân', 50, 'Cao cấp', 'AV-B1', 'Trưởng Công an xã Hậu Thạnh', 'Công an xã Hậu Thạnh', '1994-07-25', 'Đang hoạt động', '', ''),
(8, 'Nguyễn Đức Vinh', '1980-10-10', 'Nam', 'Việt Nam', 'Kinh', 'Không', 'Xã Hậu Thạnh, huyện Long Phú, tỉnh Sóc Trăng', '12/12', 'Đại học Luật', 44, 'Cao cấp', 'AV-B1', 'Chủ tịch Ủy ban nhân dân xã Hậu Thạnh', 'Ủy ban nhân dân xã Hậu Thạnh', '2000-12-05', 'Đang hoạt động', '', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhansuxalongduc`
--

CREATE TABLE `nhansuxalongduc` (
  `MaCB` int(11) NOT NULL,
  `Hoten` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `Ngaysinh` date NOT NULL,
  `Gioitinh` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `Quoctich` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Dantoc` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `Tongiao` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `Quequan` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Giaoducphothong` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `Chuyenmonnghiepvu` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Tuoi` int(11) NOT NULL,
  `Lyluanchinhtri` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `Ngoaingu` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `Nghenghiepchucvu` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `Noicongtac` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Ngayvaodang` date NOT NULL,
  `Tinhtrang` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Ghichu` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `Thaotac` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nhansuxalongduc`
--

INSERT INTO `nhansuxalongduc` (`MaCB`, `Hoten`, `Ngaysinh`, `Gioitinh`, `Quoctich`, `Dantoc`, `Tongiao`, `Quequan`, `Giaoducphothong`, `Chuyenmonnghiepvu`, `Tuoi`, `Lyluanchinhtri`, `Ngoaingu`, `Nghenghiepchucvu`, `Noicongtac`, `Ngayvaodang`, `Tinhtrang`, `Ghichu`, `Thaotac`) VALUES
(1, 'Trần Thị Yến Nhi', '1993-08-05', 'Nữ', 'Việt Nam', 'Kinh', 'Không ', 'Xã Long Đức, huyện Long Phú, tỉnh Sóc Trăng', '12/12', 'Đại học Luật', 31, 'Trung cấp', 'AV-B', 'Trưởng phòng Tư pháp', 'Phòng Tư pháp', '2003-05-19', 'Đang hoạt động', '', ''),
(2, 'Phạm Thanh Thảo', '1986-03-17', 'Nam', 'Việt Nam', 'Kinh', 'Không ', 'Xã Long Đức, huyện Long Phú, tỉnh Sóc Trăng', '12/12', 'Đại học Quản lý Kinh tế', 38, 'Trung cấp', 'AV-B1', 'Trưởng phòng Văn hóa - Xã hội', 'Phòng Văn hóa - Xã hội', '2006-08-20', 'Đang hoạt động', '', ''),
(3, 'Nguyễn Viết Thành', '1975-04-20', 'Nam', 'Việt Nam', 'Kinh', 'Không', 'Xã Long Đức, huyện Long Phú, tỉnh Sóc Trăng', '12/12', 'Đại học Luật', 49, 'Cao cấp', 'AV-B', 'Phó Chủ tịch Ủy ban nhân dân xã Long Đức', 'Ủy ban nhân dân xã Long Đức', '1996-02-18', 'Đang hoạt động', '', ''),
(4, 'Dương Thị Kim Tuyền', '1990-09-04', 'Nữ', 'Việt Nam', 'Kinh', 'Không', 'Xã Long Đức, huyện Long Phú, tỉnh Sóc Trăng', '12/12', 'Đại học Luật', 34, 'Cao cấp', 'AV-B1', 'Phó Chủ tịch Ủy ban nhân dân xã Long Đức', 'Ủy ban nhân dân xã Long Đức', '2010-06-08', 'Đang hoạt động', '', ''),
(5, 'Đoàn Quốc Xuân', '1990-05-12', 'Nữ', 'Việt Nam', 'Kinh', 'Không', 'Xã Long Đức, huyện Long Phú, tỉnh Sóc Trăng', '12/12', 'Đại học Quản trị Kinh doanh', 34, 'Trung cấp', 'AV-B1', 'Chuyên viên thống kê', 'Ủy ban nhân dân Xã Long Đức', '2010-08-30', 'Đang hoạt động', '', ''),
(6, 'Mã Thành Khang', '1985-08-18', 'Nam', 'Việt Nam', 'Kinh', 'Không', 'Xã Long Đức, huyện Long Phú, tỉnh Sóc Trăng', '12/12', 'Đại học Tài chính - Kế toán', 39, 'Trung cấp', 'AV-B', 'Kế toán viên', 'Phòng Tài chính - Kế toán', '2005-11-12', 'Đang hoạt động', '', ''),
(7, 'Lưu Hoàng Minh', '1975-09-07', 'Nam', 'Việt Nam', 'Kinh', 'Không', 'Xã Long Đức, huyện Long Phú, tỉnh Sóc Trăng', '12/12', 'Đại học Cảnh sát Nhân dân', 49, 'Cao cấp', 'AV-B1', 'Trưởng Công an thị trấn Đại ngãi', 'Công an thị trấn Đại Ngãi', '1995-07-25', 'Đang hoạt động', '', ''),
(8, 'Nguyễn Đức Hoài', '1975-10-08', 'Nam', 'Việt Nam', 'Kinh', 'Không', 'Xã Long Đức, huyện Long Phú, tỉnh Sóc Trăng', '12/12', 'Đại học Luật', 49, 'Cao cấp', 'AV-B1', 'Chủ tịch Ủy ban nhân dân thị trấn Đại ngãi', 'Ủy ban nhân dân thị trấn Đại ngãi', '1995-12-05', 'Đang hoạt động', '', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhansuxalongphu`
--

CREATE TABLE `nhansuxalongphu` (
  `MaCB` int(11) NOT NULL,
  `Hoten` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `Ngaysinh` date NOT NULL,
  `Gioitinh` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `Quoctich` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Dantoc` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `Tongiao` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `Quequan` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Giaoducphothong` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `Chuyenmonnghiepvu` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Tuoi` int(11) NOT NULL,
  `Lyluanchinhtri` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `Ngoaingu` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `Nghenghiepchucvu` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `Noicongtac` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Ngayvaodang` date NOT NULL,
  `Tinhtrang` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Ghichu` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `Thaotac` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nhansuxalongphu`
--

INSERT INTO `nhansuxalongphu` (`MaCB`, `Hoten`, `Ngaysinh`, `Gioitinh`, `Quoctich`, `Dantoc`, `Tongiao`, `Quequan`, `Giaoducphothong`, `Chuyenmonnghiepvu`, `Tuoi`, `Lyluanchinhtri`, `Ngoaingu`, `Nghenghiepchucvu`, `Noicongtac`, `Ngayvaodang`, `Tinhtrang`, `Ghichu`, `Thaotac`) VALUES
(1, 'Mai Thị Yến Xuân', '1987-08-05', 'Nữ', 'Việt Nam', 'Kinh', 'Không ', 'Xã Long Phú, huyện Long Phú, tỉnh Sóc Trăng', '12/12', 'Đại học Luật', 37, 'Trung cấp', 'AV-B', 'Trưởng phòng Tư pháp', 'Phòng Tư pháp', '2007-05-19', 'Đang hoạt động', '', ''),
(2, 'Kha Quốc Khanh', '1986-03-17', 'Nam', 'Việt Nam', 'Kinh', 'Không ', 'Xã Long Phú, huyện Long Phú, tỉnh Sóc Trăng', '12/12', 'Đại học Quản lý Kinh tế', 38, 'Trung cấp', 'AV-B1', 'Trưởng phòng Văn hóa - Xã hội', 'Phòng Văn hóa - Xã hội', '2006-08-20', 'Đang hoạt động', '', ''),
(3, 'Triệu Anh Minh', '1975-04-28', 'Nam', 'Việt Nam', 'Kinh', 'Không', 'Xã Long Phú, huyện Long Phú, tỉnh Sóc Trăng', '12/12', 'Đại học Luật', 49, 'Cao cấp', 'AV-B', 'Phó Chủ tịch Ủy ban nhân dân xã Long Phú', 'Ủy ban nhân dân xã Long Phú', '1996-02-18', 'Đang hoạt động', '', ''),
(4, 'Trần Thị Ngọc Loan', '1990-09-04', 'Nữ', 'Việt Nam', 'Kinh', 'Không', 'Xã Long Phú, huyện Long Phú, tỉnh Sóc Trăng', '12/12', 'Đại học Luật', 34, 'Cao cấp', 'AV-B1', 'Phó Chủ tịch Ủy ban nhân dân xã Long Phú', 'Ủy ban nhân dân xã Long Phú', '2010-06-08', 'Đang hoạt động', '', ''),
(5, 'Dương Tiến Dũng', '1986-05-12', 'Nữ', 'Việt Nam', 'Kinh', 'Không', 'Xã Long Phú, huyện Long Phú, tỉnh Sóc Trăng', '12/12', 'Đại học Quản trị Kinh doanh', 38, 'Trung cấp', 'AV-B1', 'Chuyên viên thống kê', 'Ủy ban nhân dân Xã Long Phú', '2006-08-30', 'Đang hoạt động', '', ''),
(6, 'Trần Bảo Anh', '1987-08-18', 'Nam', 'Việt Nam', 'Kinh', 'Không', 'Xã Long Phú, huyện Long Phú, tỉnh Sóc Trăng', '12/12', 'Đại học Tài chính - Kế toán', 37, 'Trung cấp', 'AV-B', 'Kế toán viên', 'Phòng Tài chính - Kế toán', '2008-11-12', 'Đang hoạt động', '', ''),
(7, 'Trương Kiến Thành', '1977-09-07', 'Nam', 'Việt Nam', 'Kinh', 'Không', 'Xã Long Phú, huyện Long Phú, tỉnh Sóc Trăng', '12/12', 'Đại học Cảnh sát Nhân dân', 47, 'Cao cấp', 'AV-B1', 'Trưởng Công an xã Long Phú', 'Công an xã Long Phú', '1997-07-25', 'Đang hoạt động', '', ''),
(8, 'Nguyễn Thanh Hưng', '1975-10-08', 'Nam', 'Việt Nam', 'Kinh', 'Không', 'Xã Long Phú, huyện Long Phú, tỉnh Sóc Trăng', '12/12', 'Đại học Luật', 49, 'Cao cấp', 'AV-B1', 'Chủ tịch Ủy ban nhân dân xã Long Phú', 'Ủy ban nhân dân xã Long Phú', '1995-12-05', 'Đang hoạt động', '', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhansuxaphuhuu`
--

CREATE TABLE `nhansuxaphuhuu` (
  `MaCB` int(11) NOT NULL,
  `Hoten` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `Ngaysinh` date NOT NULL,
  `Gioitinh` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `Quoctich` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Dantoc` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `Tongiao` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `Quequan` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Giaoducphothong` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `Chuyenmonnghiepvu` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Tuoi` int(11) NOT NULL,
  `Lyluanchinhtri` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `Ngoaingu` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `Nghenghiepchucvu` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `Noicongtac` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Ngayvaodang` date NOT NULL,
  `Tinhtrang` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Ghichu` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `Thaotac` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nhansuxaphuhuu`
--

INSERT INTO `nhansuxaphuhuu` (`MaCB`, `Hoten`, `Ngaysinh`, `Gioitinh`, `Quoctich`, `Dantoc`, `Tongiao`, `Quequan`, `Giaoducphothong`, `Chuyenmonnghiepvu`, `Tuoi`, `Lyluanchinhtri`, `Ngoaingu`, `Nghenghiepchucvu`, `Noicongtac`, `Ngayvaodang`, `Tinhtrang`, `Ghichu`, `Thaotac`) VALUES
(1, 'Trần Thị Cẩm Tú', '1986-08-05', 'Nữ', 'Việt Nam', 'Kinh', 'Không ', 'Xã Phú Hữu, huyện Long Phú, tỉnh Sóc Trăng', '12/12', 'Đại học Luật', 38, 'Trung cấp', 'AV-B', 'Trưởng phòng Tư pháp', 'Phòng Tư pháp', '2007-05-19', 'Đang hoạt động', '', ''),
(2, 'Phan Văn Tính', '1986-03-17', 'Nam', 'Việt Nam', 'Kinh', 'Không ', 'Xã Phú Hữu, huyện Long Phú, tỉnh Sóc Trăng', '12/12', 'Đại học Quản lý Kinh tế', 38, 'Trung cấp', 'AV-B1', 'Trưởng phòng Văn hóa - Xã hội', 'Phòng Văn hóa - Xã hội', '2006-08-20', 'Đang hoạt động', '', ''),
(3, 'Trịnh Hoài Bảo', '1975-04-20', 'Nam', 'Việt Nam', 'Kinh', 'Không', 'Xã Phú Hữu, huyện Long Phú, tỉnh Sóc Trăng', '12/12', 'Đại học Luật', 49, 'Cao cấp', 'AV-B', 'Phó Chủ tịch Ủy ban nhân dân xã Phú Hữu', 'Ủy ban nhân dân xã Phú Hữu', '1996-02-18', 'Đang hoạt động', '', ''),
(4, 'Đỗ Thị Thanh Nga', '1990-09-04', 'Nữ', 'Việt Nam', 'Kinh', 'Không', 'Xã Phú Hữu, huyện Long Phú, tỉnh Sóc Trăng', '12/12', 'Đại học Luật', 34, 'Cao cấp', 'AV-B1', 'Phó Chủ tịch Ủy ban nhân dân xã Phú Hữu', 'Ủy ban nhân dân xã Phú Hữu', '2010-06-08', 'Đang hoạt động', '', ''),
(5, 'Trần Thị Kiều Anh', '1988-05-12', 'Nữ', 'Việt Nam', 'Kinh', 'Không', 'Xã Phú Hữu, huyện Long Phú, tỉnh Sóc Trăng', '12/12', 'Đại học Quản trị Kinh doanh', 36, 'Trung cấp', 'AV-B1', 'Chuyên viên thống kê', 'Ủy ban nhân dân xã Phú Hữu', '2008-08-30', 'Đang hoạt động', '', ''),
(6, 'Trần Anh Khoa', '1987-08-18', 'Nam', 'Việt Nam', 'Kinh', 'Không', 'Xã Phú Hữu, huyện Long Phú, tỉnh Sóc Trăng', '12/12', 'Đại học Tài chính - Kế toán', 37, 'Trung cấp', 'AV-B', 'Kế toán viên', 'Phòng Tài chính - Kế toán', '2008-11-12', 'Đang hoạt động', '', ''),
(7, 'Trương Thành Đạt', '1975-09-07', 'Nam', 'Việt Nam', 'Kinh', 'Không', 'Xã Phú Hữu, huyện Long Phú, tỉnh Sóc Trăng', '12/12', 'Đại học Cảnh sát Nhân dân', 49, 'Cao cấp', 'AV-B1', 'Trưởng Công an xã Phú Hữu', 'Công an xã Phú Hữu', '1995-07-25', 'Đang hoạt động', '', ''),
(8, 'Nguyễn Hoài Minh', '1984-10-08', 'Nam', 'Việt Nam', 'Kinh', 'Không', 'Xã Phú Hữu, huyện Long Phú, tỉnh Sóc Trăng', '12/12', 'Đại học Luật', 40, 'Cao cấp', 'AV-B1', 'Chủ tịch Ủy ban nhân dân xã Phú Hữu', 'Ủy ban nhân dân xã Phú Hữu', '2004-12-05', 'Đang hoạt động', '', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhansuxasongphung`
--

CREATE TABLE `nhansuxasongphung` (
  `MaCB` int(11) NOT NULL,
  `Hoten` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `Ngaysinh` date NOT NULL,
  `Gioitinh` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `Quoctich` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Dantoc` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `Tongiao` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `Quequan` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Giaoducphothong` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `Chuyenmonnghiepvu` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Tuoi` int(11) NOT NULL,
  `Lyluanchinhtri` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `Ngoaingu` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `Nghenghiepchucvu` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `Noicongtac` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Ngayvaodang` date NOT NULL,
  `Tinhtrang` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Ghichu` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `Thaotac` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nhansuxasongphung`
--

INSERT INTO `nhansuxasongphung` (`MaCB`, `Hoten`, `Ngaysinh`, `Gioitinh`, `Quoctich`, `Dantoc`, `Tongiao`, `Quequan`, `Giaoducphothong`, `Chuyenmonnghiepvu`, `Tuoi`, `Lyluanchinhtri`, `Ngoaingu`, `Nghenghiepchucvu`, `Noicongtac`, `Ngayvaodang`, `Tinhtrang`, `Ghichu`, `Thaotac`) VALUES
(1, 'Tôn Trần Minh Tiến', '1986-08-05', 'Nữ', 'Việt Nam', 'Kinh', 'Không ', 'Xã Song Phụng, huyện Long Phú, tỉnh Sóc Trăng', '12/12', 'Đại học Luật', 38, 'Trung cấp', 'AV-B', 'Trưởng phòng Tư pháp', 'Phòng Tư pháp', '2007-05-19', 'Đang hoạt động', '', ''),
(2, 'Châu Minh Tâm', '1986-03-17', 'Nam', 'Việt Nam', 'Kinh', 'Không ', 'Xã Song Phụng, huyện Long Phú, tỉnh Sóc Trăng', '12/12', 'Đại học Quản lý Kinh tế', 38, 'Trung cấp', 'AV-B1', 'Trưởng phòng Văn hóa - Xã hội', 'Phòng Văn hóa - Xã hội', '2006-08-20', 'Đang hoạt động', '', ''),
(3, 'Dương Thanh Mạnh', '1975-04-20', 'Nam', 'Việt Nam', 'Kinh', 'Không', 'Xã Song Phụng, huyện Long Phú, tỉnh Sóc Trăng', '12/12', 'Đại học Luật', 49, 'Cao cấp', 'AV-B', 'Phó Chủ tịch Ủy ban nhân dân xã Song Phụng', 'Ủy ban nhân dân xã Song Phụng', '1996-02-18', 'Đang hoạt động', '', ''),
(4, 'Nguyễn Thị Ngọc Mai', '1990-09-04', 'Nữ', 'Việt Nam', 'Kinh', 'Không', 'Xã Song Phụng, huyện Long Phú, tỉnh Sóc Trăng', '12/12', 'Đại học Luật', 34, 'Cao cấp', 'AV-B1', 'Phó Chủ tịch Ủy ban nhân dân xã Song Phụng', 'Ủy ban nhân dân xã Song Phụng', '2010-06-08', 'Đang hoạt động', '', ''),
(5, 'Trần Thị Thu Hà', '1988-05-12', 'Nữ', 'Việt Nam', 'Kinh', 'Không', 'Xã Song Phụng, huyện Long Phú, tỉnh Sóc Trăng', '12/12', 'Đại học Quản trị Kinh doanh', 36, 'Trung cấp', 'AV-B1', 'Chuyên viên thống kê', 'Ủy ban nhân dân xã Song Phụng', '2008-08-30', 'Đang hoạt động', '', ''),
(6, 'Trần Văn Khánh', '1986-08-18', 'Nam', 'Việt Nam', 'Kinh', 'Không', 'Xã Song Phụng, huyện Long Phú, tỉnh Sóc Trăng', '12/12', 'Đại học Tài chính - Kế toán', 38, 'Trung cấp', 'AV-B', 'Kế toán viên', 'Phòng Tài chính - Kế toán', '2007-11-12', 'Đang hoạt động', '', ''),
(7, 'Trương Chí Tâm', '1975-09-07', 'Nam', 'Việt Nam', 'Kinh', 'Không', 'Xã Song Phụng, huyện Long Phú, tỉnh Sóc Trăng', '12/12', 'Đại học Cảnh sát Nhân dân', 49, 'Cao cấp', 'AV-B1', 'Trưởng Công an xã Song Phụng', 'Công an xã Song Phụng', '1995-07-25', 'Đang hoạt động', '', ''),
(8, 'Nguyễn Đức Tiến', '1973-10-08', 'Nam', 'Việt Nam', 'Kinh', 'Không', 'Xã Song Phụng, huyện Long Phú, tỉnh Sóc Trăng', '12/12', 'Đại học Luật', 51, 'Cao cấp', 'AV-B1', 'Chủ tịch Ủy ban nhân dân xã Song Phụng', 'Ủy ban nhân dân xã Song Phụng', '1993-12-05', 'Đang hoạt động', '', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhansuxatanhung`
--

CREATE TABLE `nhansuxatanhung` (
  `MaCB` int(11) NOT NULL,
  `Hoten` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `Ngaysinh` date NOT NULL,
  `Gioitinh` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `Quoctich` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Dantoc` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `Tongiao` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `Quequan` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Giaoducphothong` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `Chuyenmonnghiepvu` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Tuoi` int(11) NOT NULL,
  `Lyluanchinhtri` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `Ngoaingu` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `Nghenghiepchucvu` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `Noicongtac` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Ngayvaodang` date NOT NULL,
  `Tinhtrang` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Ghichu` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `Thaotac` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nhansuxatanhung`
--

INSERT INTO `nhansuxatanhung` (`MaCB`, `Hoten`, `Ngaysinh`, `Gioitinh`, `Quoctich`, `Dantoc`, `Tongiao`, `Quequan`, `Giaoducphothong`, `Chuyenmonnghiepvu`, `Tuoi`, `Lyluanchinhtri`, `Ngoaingu`, `Nghenghiepchucvu`, `Noicongtac`, `Ngayvaodang`, `Tinhtrang`, `Ghichu`, `Thaotac`) VALUES
(1, 'Trần Thị Thanh Ngân', '1986-08-05', 'Nữ', 'Việt Nam', 'Kinh', 'Không ', 'Xã Tân Hưng, huyện Long Phú, tỉnh Sóc Trăng', '12/12', 'Đại học Luật', 38, 'Trung cấp', 'AV-B', 'Trưởng phòng Tư pháp', 'Phòng Tư pháp', '2007-05-19', 'Đang hoạt động', '', ''),
(2, 'Phạm Nhật Minh', '1986-03-17', 'Nam', 'Việt Nam', 'Kinh', 'Không ', 'Xã Tân Hưng, huyện Long Phú, tỉnh Sóc Trăng', '12/12', 'Đại học Quản lý Kinh tế', 38, 'Trung cấp', 'AV-B1', 'Trưởng phòng Văn hóa - Xã hội', 'Phòng Văn hóa - Xã hội', '2006-08-20', 'Đang hoạt động', '', ''),
(3, 'Mã Thành Phong', '1975-04-20', 'Nam', 'Việt Nam', 'Kinh', 'Không', 'Xã Tân Hưng, huyện Long Phú, tỉnh Sóc Trăng', '12/12', 'Đại học Luật', 49, 'Cao cấp', 'AV-B', 'Phó Chủ tịch Ủy ban nhân dân xã Tân Hưng', 'Ủy ban nhân dân xã Tân Hưng', '1996-02-18', 'Đang hoạt động', '', ''),
(4, 'Triệu Thị Diễm My', '1990-09-04', 'Nữ', 'Việt Nam', 'Kinh', 'Không', 'Xã Tân Hưng, huyện Long Phú, tỉnh Sóc Trăng', '12/12', 'Đại học Luật', 34, 'Cao cấp', 'AV-B1', 'Phó Chủ tịch Ủy ban nhân dân xã Tân Hưng', 'Ủy ban nhân dân xã Tân Hưng', '2010-06-08', 'Đang hoạt động', '', ''),
(5, 'Nguyễn Thị Kiều My', '1988-05-12', 'Nữ', 'Việt Nam', 'Kinh', 'Không', 'Xã Tân Hưng, huyện Long Phú, tỉnh Sóc Trăng', '12/12', 'Đại học Quản trị Kinh doanh', 36, 'Trung cấp', 'AV-B1', 'Chuyên viên thống kê', 'Ủy ban nhân dân xã Tân Hưng', '2008-08-30', 'Đang hoạt động', '', ''),
(6, 'Trần Kiến Thạch', '1987-08-18', 'Nam', 'Việt Nam', 'Kinh', 'Không', 'Xã Tân Hưng, huyện Long Phú, tỉnh Sóc Trăng', '12/12', 'Đại học Tài chính - Kế toán', 37, 'Trung cấp', 'AV-B', 'Kế toán viên', 'Phòng Tài chính - Kế toán', '2008-11-12', 'Đang hoạt động', '', ''),
(7, 'Lý Thành Long', '1975-09-07', 'Nam', 'Việt Nam', 'Kinh', 'Không', 'Xã Tân Hưng, huyện Long Phú, tỉnh Sóc Trăng', '12/12', 'Đại học Cảnh sát Nhân dân', 49, 'Cao cấp', 'AV-B1', 'Trưởng Công an xã Tân Hưng', 'Công an xã Tân Hưng', '1995-07-25', 'Đang hoạt động', '', ''),
(8, 'Mai Văn Mến', '1975-10-08', 'Nam', 'Việt Nam', 'Kinh', 'Không', 'Xã Tân Hưng, huyện Long Phú, tỉnh Sóc Trăng', '12/12', 'Đại học Luật', 49, 'Cao cấp', 'AV-B1', 'Chủ tịch Ủy ban nhân dân xã Tân Hưng', 'Ủy ban nhân dân xã Tân Hưng', '1995-12-05', 'Đang hoạt động', '', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhansuxatanthanh`
--

CREATE TABLE `nhansuxatanthanh` (
  `MaCB` int(11) NOT NULL,
  `Hoten` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `Ngaysinh` date NOT NULL,
  `Gioitinh` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `Quoctich` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Dantoc` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `Tongiao` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `Quequan` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Giaoducphothong` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `Chuyenmonnghiepvu` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Tuoi` int(11) NOT NULL,
  `Lyluanchinhtri` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `Ngoaingu` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `Nghenghiepchucvu` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `Noicongtac` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Ngayvaodang` date NOT NULL,
  `Tinhtrang` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Ghichu` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `Thaotac` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nhansuxatanthanh`
--

INSERT INTO `nhansuxatanthanh` (`MaCB`, `Hoten`, `Ngaysinh`, `Gioitinh`, `Quoctich`, `Dantoc`, `Tongiao`, `Quequan`, `Giaoducphothong`, `Chuyenmonnghiepvu`, `Tuoi`, `Lyluanchinhtri`, `Ngoaingu`, `Nghenghiepchucvu`, `Noicongtac`, `Ngayvaodang`, `Tinhtrang`, `Ghichu`, `Thaotac`) VALUES
(1, 'Nguyễn Thị Diệu', '1986-08-05', 'Nữ', 'Việt Nam', 'Kinh', 'Không ', 'Xã Tân Thạnh, huyện Long Phú, tỉnh Sóc Trăng', '12/12', 'Đại học Luật', 38, 'Trung cấp', 'AV-B', 'Trưởng phòng Tư pháp', 'Phòng Tư pháp', '2007-05-19', 'Đang hoạt động', '', ''),
(2, 'Trịnh Thành Hơn', '1986-03-17', 'Nam', 'Việt Nam', 'Kinh', 'Không ', 'Xã Tân Thạnh, huyện Long Phú, tỉnh Sóc Trăng', '12/12', 'Đại học Quản lý Kinh tế', 38, 'Trung cấp', 'AV-B1', 'Trưởng phòng Văn hóa - Xã hội', 'Phòng Văn hóa - Xã hội', '2006-08-20', 'Đang hoạt động', '', ''),
(3, 'Mã Tuấn Hồng', '1975-04-20', 'Nam', 'Việt Nam', 'Kinh', 'Không', 'Xã Tân Thạnh, huyện Long Phú, tỉnh Sóc Trăng', '12/12', 'Đại học Luật', 49, 'Cao cấp', 'AV-B', 'Phó Chủ tịch Ủy ban nhân dân xã Tân Thạnh', 'Ủy ban nhân dân xã Tân Thạnh', '1996-02-18', 'Đang hoạt động', '', ''),
(4, 'Nguyễn Ngọc Anh Thư', '1990-09-04', 'Nữ', 'Việt Nam', 'Kinh', 'Không', 'Xã Tân Thạnh, huyện Long Phú, tỉnh Sóc Trăng', '12/12', 'Đại học Luật', 34, 'Cao cấp', 'AV-B1', 'Phó Chủ tịch Ủy ban nhân dân xã Tân Thạnh', 'Ủy ban nhân dân xã Tân Thạnh', '2010-06-08', 'Đang hoạt động', '', ''),
(5, 'Trần Thị Yến Như', '1988-05-12', 'Nữ', 'Việt Nam', 'Kinh', 'Không', 'Xã Tân Thạnh, huyện Long Phú, tỉnh Sóc Trăng', '12/12', 'Đại học Quản trị Kinh doanh', 36, 'Trung cấp', 'AV-B1', 'Chuyên viên thống kê', 'Ủy ban nhân dân xã Tân Thạnh', '2008-08-30', 'Đang hoạt động', '', ''),
(6, 'Trần Khoa Nam', '1987-08-18', 'Nam', 'Việt Nam', 'Kinh', 'Không', 'Xã Tân Thạnh, huyện Long Phú, tỉnh Sóc Trăng', '12/12', 'Đại học Tài chính - Kế toán', 37, 'Trung cấp', 'AV-B', 'Kế toán viên', 'Phòng Tài chính - Kế toán', '2008-11-12', 'Đang hoạt động', '', ''),
(7, 'Trương Chí Tiền', '1975-09-07', 'Nam', 'Việt Nam', 'Kinh', 'Không', 'Xã Tân Thạnh, huyện Long Phú, tỉnh Sóc Trăng', '12/12', 'Đại học Cảnh sát Nhân dân', 49, 'Cao cấp', 'AV-B1', 'Trưởng Công an xã Tân Thạnh', 'Công an xã Tân Thạnh', '1995-07-25', 'Đang hoạt động', '', ''),
(8, 'Nguyễn Hoài Khang', '1975-10-08', 'Nam', 'Việt Nam', 'Kinh', 'Không', 'Xã Tân Thạnh, huyện Long Phú, tỉnh Sóc Trăng', '12/12', 'Đại học Luật', 49, 'Cao cấp', 'AV-B1', 'Chủ tịch Ủy ban nhân dân xã Tân Thạnh', 'Ủy ban nhân dân xã Tân Thạnh', '1995-12-05', 'Đang hoạt động', '', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhansuxathitran`
--

CREATE TABLE `nhansuxathitran` (
  `MaNV` char(5) COLLATE utf8_unicode_ci NOT NULL,
  `Hoten` text COLLATE utf8_unicode_ci NOT NULL,
  `Ngaysinh` date DEFAULT NULL,
  `Gioitinh` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Quoctich` text COLLATE utf8_unicode_ci,
  `Dantoc` text COLLATE utf8_unicode_ci,
  `Tongiao` text COLLATE utf8_unicode_ci,
  `Quequan` text COLLATE utf8_unicode_ci,
  `Giaoducphothong` text COLLATE utf8_unicode_ci,
  `Chuyenmonnghiepvu` text COLLATE utf8_unicode_ci,
  `Tuoi` int(11) DEFAULT NULL,
  `Lyluanchinhtri` text COLLATE utf8_unicode_ci,
  `Ngoaingu` text COLLATE utf8_unicode_ci,
  `Nghenghiepchucvu` text COLLATE utf8_unicode_ci,
  `Noicongtac` text COLLATE utf8_unicode_ci,
  `Ngayvaodang` date DEFAULT NULL,
  `Tinhtrang` text COLLATE utf8_unicode_ci,
  `Ghichu` text COLLATE utf8_unicode_ci,
  `Thaotac` text COLLATE utf8_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nhansuxathitran`
--

INSERT INTO `nhansuxathitran` (`MaNV`, `Hoten`, `Ngaysinh`, `Gioitinh`, `Quoctich`, `Dantoc`, `Tongiao`, `Quequan`, `Giaoducphothong`, `Chuyenmonnghiepvu`, `Tuoi`, `Lyluanchinhtri`, `Ngoaingu`, `Nghenghiepchucvu`, `Noicongtac`, `Ngayvaodang`, `Tinhtrang`, `Ghichu`, `Thaotac`) VALUES
('NSX00', 'Nguyễn Thị M', '1990-04-05', 'Nữ', 'Việt Nam', 'Kinh', 'Phật giáo', 'Sóc Trăng', '12/12', 'Đại học', 31, 'Cao cấp', 'Tiếng Anh', 'Nhân viên', 'Sóc Trăng', '2015-01-01', 'Đang hoạt động', 'Ghi chú 15', NULL),
('NSX00', 'Lê Văn N', '1989-08-22', 'Nam', 'Việt Nam', 'Kinh', 'Không tôn giáo', 'Vĩnh Long', '12/12', 'Đại học', 32, 'Cao cấp', 'Tiếng Pháp', 'Phó phòng', 'Vĩnh Long', '2016-01-01', 'Đang hoạt động', 'Ghi chú 16', NULL),
('NSX00', 'Trần Thị P', '1992-11-15', 'Nữ', 'Việt Nam', 'Kinh', 'Hồi giáo', 'Bạc Liêu', '12/12', 'Đại học', 29, 'Cao cấp', 'Tiếng Nhật', 'Trưởng phòng', 'Bạc Liêu', '2018-01-01', 'Đang hoạt động', 'Ghi chú 17', NULL),
('NSX00', 'Phạm Văn Q', '1993-03-20', 'Nam', 'Việt Nam', 'Kinh', 'Phật giáo', 'Hậu Giang', '12/12', 'Đại học', 28, 'Cao cấp', 'Tiếng Trung', 'Phó phòng', 'Hậu Giang', '2017-01-01', 'Đang hoạt động', 'Ghi chú 18', NULL),
('NSX00', 'Trương Thị R', '1991-05-01', 'Nữ', 'Việt Nam', 'Kinh', 'Không tôn giáo', 'Cà Mau', '12/12', 'Đại học', 30, 'Cao cấp', 'Tiếng Pháp', 'Nhân viên', 'Cà Mau', '2019-01-01', 'Đang hoạt động', 'Ghi chú 19', NULL),
('NSX00', 'Nguyễn Văn S', '1988-07-25', 'Nam', 'Việt Nam', 'Kinh', 'Hồi giáo', 'Kiên Giang', '12/12', 'Đại học', 33, 'Cao cấp', 'Tiếng Anh', 'Phó phòng', 'Kiên Giang', '2014-01-01', 'Đang hoạt động', 'Ghi chú 20', NULL),
('NSX00', 'Hoàng Thị T', '1987-10-07', 'Nữ', 'Việt Nam', 'Kinh', 'Phật giáo', 'Tiền Giang', '12/12', 'Đại học', 34, 'Cao cấp', 'Tiếng Nhật', 'Trưởng phòng', 'Tiền Giang', '2013-01-01', 'Đang hoạt động', 'Ghi chú 21', NULL),
('NSX00', 'Lý Văn U', '1994-01-12', 'Nam', 'Việt Nam', 'Kinh', 'Không tôn giáo', 'An Giang', '12/12', 'Đại học', 27, 'Cao cấp', 'Tiếng Anh', 'Phó phòng', 'An Giang', '2020-01-01', 'Đang hoạt động', 'Ghi chú 22', NULL),
('NSX00', 'Đỗ Thị V', '1995-03-18', 'Nữ', 'Việt Nam', 'Kinh', 'Hồi giáo', 'Long Xuyên', '12/12', 'Đại học', 26, 'Cao cấp', 'Tiếng Pháp', 'Nhân viên', 'Long Xuyên', '2021-01-01', 'Đang hoạt động', 'Ghi chú 23', NULL),
('NSX01', 'Nguyễn Văn X', '1985-05-30', 'Nam', 'Việt Nam', 'Kinh', 'Phật giáo', 'Trà Vinh', '12/12', 'Đại học', 36, 'Cao cấp', 'Tiếng Nhật', 'Trưởng phòng', 'Trà Vinh', '2012-01-01', 'Đang hoạt động', 'Ghi chú 24', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhansuxatruongkhanh`
--

CREATE TABLE `nhansuxatruongkhanh` (
  `MaCB` int(11) NOT NULL,
  `Hoten` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `Ngaysinh` date NOT NULL,
  `Gioitinh` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `Quoctich` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Dantoc` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `Tongiao` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `Quequan` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Giaoducphothong` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `Chuyenmonnghiepvu` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Tuoi` int(11) NOT NULL,
  `Lyluanchinhtri` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `Ngoaingu` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `Nghenghiepchucvu` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `Noicongtac` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Ngayvaodang` date NOT NULL,
  `Tinhtrang` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Ghichu` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `Thaotac` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nhansuxatruongkhanh`
--

INSERT INTO `nhansuxatruongkhanh` (`MaCB`, `Hoten`, `Ngaysinh`, `Gioitinh`, `Quoctich`, `Dantoc`, `Tongiao`, `Quequan`, `Giaoducphothong`, `Chuyenmonnghiepvu`, `Tuoi`, `Lyluanchinhtri`, `Ngoaingu`, `Nghenghiepchucvu`, `Noicongtac`, `Ngayvaodang`, `Tinhtrang`, `Ghichu`, `Thaotac`) VALUES
(1, 'Trần Thị Ngọc Tú', '1986-08-05', 'Nữ', 'Việt Nam', 'Kinh', 'Không ', 'Xã Trường Khánh, huyện Long Phú, tỉnh Sóc Trăng', '12/12', 'Đại học Luật', 38, 'Trung cấp', 'AV-B', 'Trưởng phòng Tư pháp', 'Phòng Tư pháp', '2007-05-19', 'Đang hoạt động', '', ''),
(2, 'Danh Phong', '1986-03-17', 'Nam', 'Việt Nam', 'Kinh', 'Không ', 'Xã Trường Khánh, huyện Long Phú, tỉnh Sóc Trăng', '12/12', 'Đại học Quản lý Kinh tế', 38, 'Trung cấp', 'AV-B1', 'Trưởng phòng Văn hóa - Xã hội', 'Phòng Văn hóa - Xã hội', '2006-08-20', 'Đang hoạt động', '', ''),
(3, 'Phan Văn Lộc', '1975-04-20', 'Nam', 'Việt Nam', 'Kinh', 'Không', 'Xã Trường Khánh, huyện Long Phú, tỉnh Sóc Trăng', '12/12', 'Đại học Luật', 49, 'Cao cấp', 'AV-B', 'Phó Chủ tịch Ủy ban nhân dân xã Trường Khánh', 'Ủy ban nhân dân xã Trường Khánh', '1996-02-18', 'Đang hoạt động', '', ''),
(4, 'Triệu Thị Kim Xuân', '1990-09-04', 'Nữ', 'Việt Nam', 'Kinh', 'Không', 'Xã Trường Khánh, huyện Long Phú, tỉnh Sóc Trăng', '12/12', 'Đại học Luật', 34, 'Cao cấp', 'AV-B1', 'Phó Chủ tịch Ủy ban nhân dân xã Trường Khánh', 'Ủy ban nhân dân xã Trường Khánh', '2010-06-08', 'Đang hoạt động', '', ''),
(5, 'Trần Thị Minh Ngọc', '1988-05-12', 'Nữ', 'Việt Nam', 'Kinh', 'Không', 'Xã Trường Khánh, huyện Long Phú, tỉnh Sóc Trăng', '12/12', 'Đại học Quản trị Kinh doanh', 36, 'Trung cấp', 'AV-B1', 'Chuyên viên thống kê', 'Ủy ban nhân dân xã Trường Khánh', '2008-08-30', 'Đang hoạt động', '', ''),
(6, 'Trần Thanh Sang', '1987-08-18', 'Nam', 'Việt Nam', 'Kinh', 'Không', 'Xã Trường Khánh, huyện Long Phú, tỉnh Sóc Trăng', '12/12', 'Đại học Tài chính - Kế toán', 37, 'Trung cấp', 'AV-B', 'Kế toán viên', 'Phòng Tài chính - Kế toán', '2008-11-12', 'Đang hoạt động', '', ''),
(7, 'Trương Chiến Cao', '1975-09-07', 'Nam', 'Việt Nam', 'Kinh', 'Không', 'Xã Trường Khánh, huyện Long Phú, tỉnh Sóc Trăng', '12/12', 'Đại học Cảnh sát Nhân dân', 49, 'Cao cấp', 'AV-B1', 'Trưởng Công an xã Trường Khánh', 'Công an xã Trường Khánh', '1995-07-25', 'Đang hoạt động', '', ''),
(8, 'Nguyễn Văn Tuấn', '1975-10-08', 'Nam', 'Việt Nam', 'Kinh', 'Không', 'Xã Trường Khánh, huyện Long Phú, tỉnh Sóc Trăng', '12/12', 'Đại học Luật', 49, 'Cao cấp', 'AV-B1', 'Chủ tịch Ủy ban nhân dân xã Trường Khánh', 'Ủy ban nhân dân xã Trường Khánh', '2005-12-05', 'Đang hoạt động', '', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `quenmatkhau`
--

CREATE TABLE `quenmatkhau` (
  `id` int(11) NOT NULL,
  `Email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ThoiGianTao` datetime DEFAULT NULL,
  `ThoiGianHetHan` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thongtinnhanvien`
--

CREATE TABLE `thongtinnhanvien` (
  `MaNV` char(5) COLLATE utf8_unicode_ci NOT NULL,
  `Hoten` text COLLATE utf8_unicode_ci NOT NULL,
  `Ngaysinh` date DEFAULT NULL,
  `Noisinh` text COLLATE utf8_unicode_ci,
  `Nguyenquan` text COLLATE utf8_unicode_ci,
  `Quoctich` text COLLATE utf8_unicode_ci,
  `Dantoc` text COLLATE utf8_unicode_ci,
  `Tongiao` text COLLATE utf8_unicode_ci,
  `Tinhtranghonnhan` text COLLATE utf8_unicode_ci,
  `Tinhtrangsuckhoe` text COLLATE utf8_unicode_ci,
  `Anh` char(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `thongtinnhanvien`
--

INSERT INTO `thongtinnhanvien` (`MaNV`, `Hoten`, `Ngaysinh`, `Noisinh`, `Nguyenquan`, `Quoctich`, `Dantoc`, `Tongiao`, `Tinhtranghonnhan`, `Tinhtrangsuckhoe`, `Anh`) VALUES
('nv01', 'Phạm Tuấn Anh (B)', '1987-11-23', 'Hà Nội', 'Hà Nội', 'Việt Nam', 'Kinh', 'phật giáo', 'Chưa', 'Tốt', 'anh/1.jpg'),
('nv02', 'Trần Thị Thu Hằng', '1988-03-06', 'Ninh Bình', 'Ninh Bình', 'Việt Nam', 'Miền núi', 'Không', 'Chưa', 'Tốt', NULL),
('nv03', 'Lê Hồng Phúc', '1988-06-21', 'Hà Nội', 'Hà Nội', 'Việt Nam', 'Kinh', 'Không', 'Chưa', 'Tốt', NULL),
('nv04', 'Nguyễn Thu Huyền', '1989-12-07', 'Quản Ninh', 'Quảng Ninh', 'Việt Nam', 'Kinh', 'Không', 'Chưa', 'Tốt', NULL),
('nv05', 'Nguyễn Hòa Bình', '1986-04-09', 'Thái Bình', 'Thái Bình', 'Việt Nam', 'Kinh', 'Không', 'Chưa', 'Tốt', NULL),
('nv06', 'Đào Văn Ánh', '1987-06-21', 'Thanh Hóa', 'Thanh Hóa', 'Việt Nam', 'Kinh', 'Không', 'Chưa', 'Tốt', NULL),
('nv07', 'Chu Anh Tiến', '1988-06-17', 'Hà Nội', 'Hà Nội', 'Việt Nam', 'Kinh', 'Không', 'Chưa', 'Tốt', NULL),
('nv08', 'Hoàng Thị Nguyệt', '1988-07-22', 'Hưng Yên', 'Hưng Yên', 'Việt Nam', 'Kinh', 'Không', 'Chưa', 'Tốt', NULL),
('nv09', 'Bùi Trọng Đạt', '1988-10-18', 'Hà Nội', 'Hà Nội', 'Việt Nam', 'Kinh', 'Không', 'Chưa', 'Tốt', NULL),
('nv10', 'Ninh Thị Huyền Trang', '1987-10-01', 'Hải Dương', 'Hải Dương', 'Việt Nam', 'Kinh', 'Không', 'Chưa', 'Tốt', NULL),
('nv11', 'Vũ Quốc Huy', '1988-08-26', 'Hưng Yên', 'Hưng Yên', 'Việt Nam', 'Kinh', 'Không', 'Chưa', 'Tốt', NULL),
('nv12', 'Lưu Tuấn Anh', '1986-06-09', 'Hà Nội', 'Hà Nội', 'Việt Nam', 'Kinh', 'Không', 'Chưa', 'Tốt', NULL),
('nv13', 'Trần Ngọc Anh', '1987-04-20', 'Hà Nội', 'Hà Nội', 'Việt Nam', 'Kinh', 'Không', 'Chưa', 'Tốt', NULL),
('nv14', 'Nguyễn Diệu Hương', '1988-10-15', 'Hà Nội', 'Hà Nội', 'Việt Nam', 'Kinh', 'Không', 'Chưa', 'Tốt', NULL),
('nv15', 'Hoàng Thị Thương', '1988-03-03', 'Hưng Yên', 'Hưng Yên', 'Việt Nam', 'Kinh', 'Không', 'Chưa', 'Tốt', NULL),
('nv16', 'Lê Thùy Dung', '1988-11-15', 'Bắc Ninh', 'Bắc Ninh', 'Việt Nam', 'Kinh', 'Không', 'Chưa', 'Tốt', NULL),
('nv17', 'Nguyễn Ngọc Linh', '1987-07-16', 'Bắc Ninh', 'Bắc Ninh', 'Việt Nam', 'Kinh', 'Không', 'Chưa', 'Tốt', NULL),
('nv18', 'Nguyễn Nhật Thành', '1988-08-24', 'Điện Biên Phủ', 'Điện Biên Phủ', 'Việt Nam', 'Kinh', 'Không', 'Chưa', 'Tốt', NULL),
('nv19', 'Lê Việt Anh', '1987-04-13', 'Hà Nội', 'Hà Nội', 'Việt Nam', 'Kinh', 'Không', 'Chưa', 'Tốt', NULL),
('nv20', 'Hà Viết Khương', '1988-12-29', 'Hà Nội', 'Hà Nội', 'Việt Nam', 'Kinh', 'Không', 'Chưa', 'Tốt', NULL),
('nv21', 'Đỗ Tiến Thắng', '1988-08-02', 'Hà Nội', 'Hà Nội', 'Việt Nam', 'Kinh', 'Không', 'Chưa', 'Tốt', NULL),
('nv22', 'Vũ Quang Thắng', '1988-01-18', 'Hà Nội', 'Hà Nội', 'Việt Nam', 'Kinh', 'ko', 'Chưa', '', NULL),
('nv24', 'pta', '1987-11-24', 'hn', '', '', '', '', '', '', ''),
('nv25', 'pta', '0000-00-00', '', '', '', '', '', '', '', ''),
('nv30', 'minh', '0000-00-00', 'st', '', '', '', '', '', '', ''),
('002', 'minh', '0000-00-00', '', '', '', '', '', '', '', ''),
('1111', 'minh', '0000-00-00', '', '', '', '', '', '', '', ''),
('1', 'mminh', '0000-00-00', '', '', '', '', '', '', '', ''),
('11111', 'minh', '0000-00-00', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tintuc`
--

CREATE TABLE `tintuc` (
  `id` int(11) NOT NULL,
  `TieuDe` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `NoiDung` longtext COLLATE utf8_unicode_ci NOT NULL,
  `NgayDang` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tintuc`
--

INSERT INTO `tintuc` (`id`, `TieuDe`, `NoiDung`, `NgayDang`) VALUES
(1, 'Hội đồng nhân dân huyện Long Phú thông qua kế hoạch phát triển kinh tế - xã hội', '<p>Hội đồng nhân dân huyện Long Phú đã tiến hành phiên họp quan trọng để thảo luận và đưa ra quyết định về kế hoạch phát triển kinh tế - xã hội trong huyện. Quyết định này được coi là một bước quan trọng trong việc định hướng và phân bổ nguồn lực cho các lĩnh vực quan trọng như giáo dục, y tế, nông nghiệp, công nghiệp và du lịch, nhằm nâng cao chất lượng cuộc sống và phát triển bền vững của người dân trong khu vực.</p>Kế hoạch phát triển kinh tế - xã hội của Hội đồng nhân dân huyện Long Phú được xây dựng với các mục tiêu cụ thể và chiến lược, nhằm đáp ứng nhu cầu và yêu cầu của cộng đồng địa phương. Trong đó, các lĩnh vực như giáo dục, y tế, nông nghiệp, công nghiệp và du lịch được xác định là ưu tiên hàng đầu, nhằm tạo ra sự phát triển toàn diện và cân đối trong cộng đồng.<p>Sau khi được thông qua, kế hoạch phát triển kinh tế - xã hội sẽ được triển khai và thực hiện một cách có hệ thống và khoa học. Hội đồng nhân dân sẽ tiến hành theo dõi, đánh giá và điều chỉnh kế hoạch này để đảm bảo hiệu quả cao nhất, phản ánh sự quan tâm và sự chăm sóc của cơ quan quản lý đối với phát triển bền vững của huyện Long Phú.', '2024-03-07'),
(2, 'Tổ chức phiên họp thường kỳ của Hội đồng nhân dân huyện Long Phú', '<p>Phiên họp thường kỳ của Hội đồng nhân dân huyện Long Phú là một hoạt động quan trọng nhằm đánh giá và xem xét tình hình thực hiện các chính sách, pháp luật của Nhà nước trong huyện. Mục tiêu chính của phiên họp là đảm bảo rằng các chính sách và quy định được thực hiện một cách hiệu quả và đúng đắn, từ đó tạo ra sự phát triển ổn định và bền vững cho cộng đồng.</p>Trong quá trình phiên họp, các thành viên của Hội đồng nhân dân sẽ cùng nhau đánh giá và phân tích tình hình thực hiện các chính sách và pháp luật đã được thông qua. Bằng cách này, họ có thể xác định được những điểm mạnh và điểm yếu trong quá trình thực hiện, từ đó đề xuất các biện pháp cần thiết để giải quyết các vấn đề khó khăn và thách thức mà huyện Long Phú đang phải đối mặt.<p>Giải quyết sau khi đã đánh giá và phân tích kỹ lưỡng, Hội đồng nhân dân sẽ đề xuất và thảo luận về các biện pháp cần thiết để giải quyết các vấn đề đã được xác định. Điều này có thể bao gồm việc đề xuất sửa đổi, bổ sung các chính sách hiện hành, cải thiện cơ sở hạ tầng, tăng cường quản lý và giám sát, hoặc triển khai các chương trình và dự án mới nhằm phát triển kinh tế - xã hội trong huyện Long Phú.', '2024-03-06'),
(3, 'Hội đồng nhân dân huyện Long Phú xác định ưu tiên trong quản lý môi trường', '<p>Trong thời đại hiện nay, vấn đề bảo vệ môi trường và tài nguyên thiên nhiên trở thành một trong những ưu tiên hàng đầu của nhiều cộng đồng và tổ chức quản lý. Hội đồng nhân dân huyện Long Phú đã nhận thức sâu sắc về tầm quan trọng của việc bảo vệ môi trường và tài nguyên, đặc biệt là trong bối cảnh biến đổi khí hậu và ô nhiễm môi trường đang diễn ra toàn cầu. Với sứ mệnh đảm bảo sự bền vững cho cộng đồng, Hội đồng nhân dân đã quyết định tăng cường công tác quản lý môi trường và bảo vệ tài nguyên thiên nhiên như một phần quan trọng của chiến lược phát triển.</p>Đối với Hội đồng nhân dân huyện Long Phú, việc bảo vệ môi trường không chỉ đơn thuần là nhiệm vụ của các cơ quan quản lý mà còn là trách nhiệm của toàn bộ cộng đồng. Với mục tiêu tạo ra một môi trường sống trong lành và bền vững, Hội đồng nhân dân đã thúc đẩy các hoạt động tái tạo và bảo vệ tài nguyên, bằng cách khuyến khích người dân tham gia vào các chiến dịch làm sạch môi trường, phát triển nông nghiệp hữu cơ, sử dụng và phát triển nguồn năng lượng tái tạo, cùng với việc thiết lập các khu vườn cây xanh và các khu bảo tồn thiên nhiên để bảo vệ và duy trì hệ sinh thái địa phương. Điều này không chỉ góp phần giảm thiểu ô nhiễm môi trường mà còn tạo ra một môi trường sống tốt đẹp hơn cho tương lai của cộng đồng.', '2024-03-05'),
(4, 'Triển khai các chương trình xã hội của Hội đồng nhân dân huyện Long Phú', '<p>Hội đồng nhân dân huyện Long Phú đã chủ động trong việc triển khai các chương trình xã hội nhằm nâng cao chất lượng cuộc sống và phát triển cộng đồng. Đặc biệt, các chương trình này tập trung vào việc cải thiện đời sống văn hóa - xã hội của các tầng lớp dân cư, đặc biệt là những người có hoàn cảnh khó khăn như người nghèo, học sinh nghèo, người cao tuổi và người khuyết tật. Việc triển khai chương trình này không chỉ giúp cải thiện điều kiện sống mà còn thể hiện sự quan tâm và chăm sóc từ phía cơ quan quản lý đối với những nhóm dân cần được ưu tiên.</p>Các chính sách xã hội được triển khai bởi Hội đồng nhân dân huyện Long Phú thường bao gồm các biện pháp hỗ trợ như cung cấp gạo, quần áo, sách vở cho người nghèo, học sinh nghèo; phân phối quỹ học bổng cho các em học sinh có hoàn cảnh khó khăn; cung cấp dịch vụ y tế, chăm sóc sức khỏe cho người cao tuổi và người khuyết tật. Những biện pháp này không chỉ giúp giảm bớt gánh nặng cho những người có hoàn cảnh khó khăn mà còn tạo ra sự công bằng và công bằng xã hội, đồng thời thúc đẩy sự phát triển toàn diện của cộng đồng trong tương lai. Đánh giá sự hiệu quả của các chương trình xã hội cũng là một phần quan trọng, giúp điều chỉnh và cải tiến các biện pháp để đảm bảo rằng chúng thực sự mang lại lợi ích và giá trị cho người dân địa phương.', '2024-03-04'),
(5, 'Hội đồng nhân dân huyện Long Phú tăng cường công tác tuyên truyền, phổ biến pháp luật', '<p>Trong một xã hội phát triển, việc nắm vững và tuân thủ pháp luật đóng vai trò vô cùng quan trọng trong việc duy trì trật tự, công bằng và an ninh. Tuy nhiên, không phải lúc nào mọi người cũng có nhận thức đầy đủ về quy định pháp luật và ý thức tuân thủ. Vì vậy, Hội đồng nhân dân huyện Long Phú đã nhận ra sự cần thiết phải tăng cường công tác tuyên truyền và phổ biến pháp luật để nâng cao nhận thức và tinh thần tuân thủ của người dân địa phương.</p>Để thực hiện mục tiêu trên, Hội đồng nhân dân huyện Long Phú đã tổ chức một loạt các hoạt động tuyên truyền và phổ biến pháp luật. Các hoạt động này có thể bao gồm tổ chức giao lưu văn hóa, tổ chức hội thảo với sự tham gia của các chuyên gia pháp luật, và phát sóng các chương trình tuyên truyền trên các phương tiện truyền thông địa phương như radio, truyền hình và báo chí.<p>Mục tiêu của các hoạt động này không chỉ là giúp người dân hiểu rõ hơn về các quy định pháp luật mà còn là tạo ra một tinh thần tuân thủ và tôn trọng đối với pháp luật. Bằng cách này, họ có thể tham gia vào xã hội một cách tự do và trách nhiệm, đồng thời đóng góp vào việc duy trì trật tự và an ninh xã hội. Đồng thời, việc nâng cao nhận thức pháp luật cũng là một phần quan trọng trong việc xây dựng một cộng đồng văn minh, phát triển bền vững trong tương lai.', '2024-03-03'),
(6, 'Bổ nhiệm cán bộ mới tại Phòng Nội vụ Huyện Long Phú', 'Phòng Nội vụ Huyện Long Phú vừa tiến hành bổ nhiệm một cán bộ mới vào vị trí quan trọng. Có thể đề cập đến tên cán bộ mới, cùng với tóm tắt về hồ sơ năng lực và kinh nghiệm của họ. Nội dung cũng có thể bao gồm các kế hoạch hoặc mục tiêu mà cán bộ mới sẽ thực hiện trong vai trò mới của họ, cũng như nhận định của cấp quản lý về sự chấp nhận và hy vọng vào công việc của họ.', '2024-03-20'),
(7, 'Phát động chương trình đào tạo nâng cao năng lực cho cán bộ Phòng Nội vụ', 'Phòng Nội vụ Huyện Long Phú tổ chức một chương trình đào tạo nhằm nâng cao năng lực cho cán bộ của họ. Nội dung chương trình có thể liên quan đến cải cách hành chính, kỹ năng quản lý, pháp luật, hoặc bất kỳ lĩnh vực nào khác liên quan đến công việc của họ. Bài viết có thể bao gồm thông tin về nội dung cụ thể của chương trình, lịch trình, và mong muốn của Phòng Nội vụ trong việc cải thiện năng lực và hiệu suất làm việc của cán bộ.', '2024-03-20');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `MaNV` char(5) COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `quyen` int(2) NOT NULL,
  `ghichu` text COLLATE utf8_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`MaNV`, `username`, `password`, `quyen`, `ghichu`) VALUES
('nv03', 'hongphuc', '827ccb0eea8a706c4c34', 0, NULL),
('nv04', 'thuhuyen', '12345', 0, NULL),
('nv05', 'hoabinh', '$2y$10$OB0fE5CWEbAcR', 0, NULL),
('nv06', 'vananh', '12345', 0, NULL),
('nv07', 'anhtien', '12345', 0, NULL),
('nv08', 'thinguyet', '12345', 0, NULL),
('nv09', 'trongdat', '12345', 0, NULL),
('nv10', 'huyentrang', '12345', 0, NULL),
('nv11', 'quochuy', '12345', 0, NULL),
('nv12', 'ltuananh', '12345', 0, NULL),
('nv13', 'ngocanh', '12345', 0, NULL),
('nv14', 'dieuhuong', '12345', 0, NULL),
('nv15', 'thithuong', '12345', 0, NULL),
('nv16', 'thuydung', '12345', 0, NULL),
('nv17', 'ngoclinh', '12345', 0, NULL),
('nv18', 'nhatthanh', '12345', 0, NULL),
('nv19', 'vietanh', '12345', 0, NULL),
('nv20', 'vietkhuong', '12345', 0, NULL),
('nv23', 'ngocthuy', '12345', 0, NULL),
('', 'f', '$2y$10$A7lJ4t4DKPrmx', 0, NULL),
('nv24', 'admin9999', '12345', 0, NULL),
('', 'g', '$2y$10$4CqqxBf65FcdX', 0, NULL),
('', 'j', '363b122c528f54df4a04', 0, NULL),
('', 'minh12', '$2y$10$hTgNVT.SJgpkl', 0, NULL),
('', 's', '03c7c0ace395d80182db', 0, NULL),
('', 'a', '$2y$10$l8z8aRMK/5E/C', 0, NULL),
('nv30', '1', '$2y$10$H8bN/Rk6hKhjE', 0, '1'),
('nv31', 'nhi', '$2y$10$GJZt453mP4cmp', 0, ''),
('nv30', '0', '$2y$10$GnzgSw6yr5hAY', 0, ''),
('22', '22', '$2y$10$uwma/La5gq5uc', 0, ''),
('nv33', 'vanminh', '$2y$10$idMuB1P5dQoX2', 0, ''),
('nv39', 'longnguyen', '$2y$10$LyQiPlrqe84NV', 0, ''),
('nv30', 'mmmmmmm', '$2y$10$m7CatFP2DX3hw', 1, ''),
('nv40', 'minh', 'minh123', 1, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `xa`
--

CREATE TABLE `xa` (
  `MaDV` char(5) COLLATE utf8_unicode_ci NOT NULL,
  `Tendonvi` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Thaotac` text COLLATE utf8_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `xa`
--

INSERT INTO `xa` (`MaDV`, `Tendonvi`, `Thaotac`) VALUES
('X001', 'Xã A', 'Thao tác 1'),
('X002', 'Xã B', 'Thao tác 2'),
('X003', 'Xã C', 'Thao tác 3'),
('X004', 'Xã D', 'Thao tác 4'),
('X005', 'Xã E', 'Thao tác 5'),
('X006', 'Xã F', 'Thao tác 6'),
('X007', 'Xã G', 'Thao tác 7'),
('X008', 'Xã H', 'Thao tác 8'),
('X009', 'Xã I', 'Thao tác 9'),
('X010', 'Xã K', 'Thao tác 10'),
('X011', 'Xã L', 'Thao tác 11');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `xathitran`
--

CREATE TABLE `xathitran` (
  `MaDV` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `Tendonvi` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `Thaotac` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `xathitran`
--

INSERT INTO `xathitran` (`MaDV`, `Tendonvi`, `Thaotac`) VALUES
('T001', 'Thị trấn Long Phú', ''),
('T002', 'Thị trấn Đại Ngãi', ''),
('T003', 'Xã Long Phú', ''),
('T004', 'Xã Tân Hưng', ''),
('T005', 'Xã Tân Thạnh', ''),
('T006', 'Xã Long Đức', ''),
('T007', 'Xã Châu Khánh', ''),
('T008', 'Xã Phú Hữu', ''),
('T009', 'Xã Song Phụng', ''),
('T010', 'Xã Hậu Thạnh', ''),
('T011', 'Xã Trường Khánh', '');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `chucvu`
--
ALTER TABLE `chucvu`
  ADD PRIMARY KEY (`MaNV`,`MaPB`,`MaCV`);

--
-- Chỉ mục cho bảng `dangky`
--
ALTER TABLE `dangky`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `gioithieu`
--
ALTER TABLE `gioithieu`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `nhansuhuyenlongphu`
--
ALTER TABLE `nhansuhuyenlongphu`
  ADD PRIMARY KEY (`MaCB`);

--
-- Chỉ mục cho bảng `nhansuthitrandaingai`
--
ALTER TABLE `nhansuthitrandaingai`
  ADD PRIMARY KEY (`MaCB`);

--
-- Chỉ mục cho bảng `nhansuthitranlongphu`
--
ALTER TABLE `nhansuthitranlongphu`
  ADD PRIMARY KEY (`MaCB`);

--
-- Chỉ mục cho bảng `nhansuxachaukhanh`
--
ALTER TABLE `nhansuxachaukhanh`
  ADD PRIMARY KEY (`MaCB`);

--
-- Chỉ mục cho bảng `nhansuxahauthanh`
--
ALTER TABLE `nhansuxahauthanh`
  ADD PRIMARY KEY (`MaCB`);

--
-- Chỉ mục cho bảng `nhansuxalongduc`
--
ALTER TABLE `nhansuxalongduc`
  ADD PRIMARY KEY (`MaCB`);

--
-- Chỉ mục cho bảng `nhansuxalongphu`
--
ALTER TABLE `nhansuxalongphu`
  ADD PRIMARY KEY (`MaCB`);

--
-- Chỉ mục cho bảng `nhansuxaphuhuu`
--
ALTER TABLE `nhansuxaphuhuu`
  ADD PRIMARY KEY (`MaCB`);

--
-- Chỉ mục cho bảng `nhansuxasongphung`
--
ALTER TABLE `nhansuxasongphung`
  ADD PRIMARY KEY (`MaCB`);

--
-- Chỉ mục cho bảng `nhansuxatanhung`
--
ALTER TABLE `nhansuxatanhung`
  ADD PRIMARY KEY (`MaCB`);

--
-- Chỉ mục cho bảng `nhansuxatanthanh`
--
ALTER TABLE `nhansuxatanthanh`
  ADD PRIMARY KEY (`MaCB`);

--
-- Chỉ mục cho bảng `nhansuxatruongkhanh`
--
ALTER TABLE `nhansuxatruongkhanh`
  ADD PRIMARY KEY (`MaCB`);

--
-- Chỉ mục cho bảng `quenmatkhau`
--
ALTER TABLE `quenmatkhau`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `thongtinnhanvien`
--
ALTER TABLE `thongtinnhanvien`
  ADD PRIMARY KEY (`MaNV`);

--
-- Chỉ mục cho bảng `tintuc`
--
ALTER TABLE `tintuc`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`MaNV`,`username`);

--
-- Chỉ mục cho bảng `xathitran`
--
ALTER TABLE `xathitran`
  ADD PRIMARY KEY (`MaDV`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `dangky`
--
ALTER TABLE `dangky`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `nhansuhuyenlongphu`
--
ALTER TABLE `nhansuhuyenlongphu`
  MODIFY `MaCB` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT cho bảng `nhansuthitrandaingai`
--
ALTER TABLE `nhansuthitrandaingai`
  MODIFY `MaCB` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2147483647;

--
-- AUTO_INCREMENT cho bảng `nhansuthitranlongphu`
--
ALTER TABLE `nhansuthitranlongphu`
  MODIFY `MaCB` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11111112;

--
-- AUTO_INCREMENT cho bảng `nhansuxachaukhanh`
--
ALTER TABLE `nhansuxachaukhanh`
  MODIFY `MaCB` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT cho bảng `nhansuxahauthanh`
--
ALTER TABLE `nhansuxahauthanh`
  MODIFY `MaCB` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT cho bảng `nhansuxalongduc`
--
ALTER TABLE `nhansuxalongduc`
  MODIFY `MaCB` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT cho bảng `nhansuxalongphu`
--
ALTER TABLE `nhansuxalongphu`
  MODIFY `MaCB` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110001;

--
-- AUTO_INCREMENT cho bảng `nhansuxaphuhuu`
--
ALTER TABLE `nhansuxaphuhuu`
  MODIFY `MaCB` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT cho bảng `nhansuxasongphung`
--
ALTER TABLE `nhansuxasongphung`
  MODIFY `MaCB` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT cho bảng `nhansuxatanhung`
--
ALTER TABLE `nhansuxatanhung`
  MODIFY `MaCB` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT cho bảng `nhansuxatanthanh`
--
ALTER TABLE `nhansuxatanthanh`
  MODIFY `MaCB` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT cho bảng `nhansuxatruongkhanh`
--
ALTER TABLE `nhansuxatruongkhanh`
  MODIFY `MaCB` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT cho bảng `quenmatkhau`
--
ALTER TABLE `quenmatkhau`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `tintuc`
--
ALTER TABLE `tintuc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
