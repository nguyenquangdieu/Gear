-- phpMyAdmin SQL Dump
-- version 4.5.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 24, 2016 at 12:05 PM
-- Server version: 5.7.11
-- PHP Version: 5.6.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `myshop`
--

-- --------------------------------------------------------

--
-- Table structure for table `accountadmin`
--

CREATE TABLE `accountadmin` (
  `nameadmin` varchar(32) NOT NULL,
  `password` varchar(32) NOT NULL,
  `role` int(11) NOT NULL,
  `createdate` date NOT NULL,
  `fullname` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `gender` varchar(3) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `phonenumber` varchar(11) NOT NULL,
  `CMND` varchar(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `accountadmin`
--

INSERT INTO `accountadmin` (`nameadmin`, `password`, `role`, `createdate`, `fullname`, `gender`, `phonenumber`, `CMND`, `status`) VALUES
('admin', 'Passadmin123', 2, '2016-08-23', 'Pham Van A', 'Nam', '01669200800', '0123456789', 1),
('admin2', '123456', 2, '2016-08-30', 'Nguyễn Văn B', 'Nữ', '0166698465', '0123456789', 1),
('admin3', '987654321', 2, '2016-09-03', 'Pham Văn C', 'Nữ', '01669200800', '123456798', 1),
('admin4', '258963', 2, '2016-09-02', 'poipoill', 'Nữ', '0987654368', '0457896218', 0),
('demoadmin', 'Demoadmin123', 2, '2016-09-15', 'Lê Thị C', 'Nữ', '01669215389', '0123456987', 1),
('helloworld', 'matkhau', 3, '2016-09-03', 'Nguyễn Văn D', 'Nam', '01698745656', '987654321', 1);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `categoryname` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `categoryname`) VALUES
(2, 'Chuột'),
(3, 'Bàn phím');

-- --------------------------------------------------------

--
-- Table structure for table `classify`
--

CREATE TABLE `classify` (
  `id` int(11) NOT NULL,
  `nameclass` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `idcategory` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `classify`
--

INSERT INTO `classify` (`id`, `nameclass`, `idcategory`) VALUES
(2, 'Có dây', 2),
(3, 'không dây', 2),
(4, 'bàn phím cơ', 3),
(5, 'bàn phím không dây', 3),
(6, 'bàn phím thường', 3);

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` int(11) NOT NULL,
  `url` text NOT NULL,
  `idproduct` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `url`, `idproduct`) VALUES
(2, 'images/imgsp/imgsp1.jpg', 2),
(3, 'images/imgsp/imgsp2.jpg', 2),
(4, 'images/imgsp/imgsp3.jpg', 2),
(5, 'images/imgsp/imgsp4.jpg', 2),
(6, 'images/imgsp/imgsp5.jpg', 3),
(7, 'images/imgsp/imgsp6.jpg', 3),
(8, 'images/imgsp/imgsp7.jpg', 3),
(9, 'images/imgsp/imgsp8.jpg', 3),
(10, 'images/imgsp/imgsp9.jpg', 4),
(11, 'images/imgsp/imgsp10.jpg', 4),
(12, 'images/imgsp/imgsp11.jpg', 4),
(13, 'images/imgsp/imgsp12.jpg', 4),
(14, 'images/imgsp/imgsp13.jpg', 5),
(15, 'images/imgsp/imgsp14.jpg', 5),
(16, 'images/imgsp/imgsp15.jpg', 5),
(17, 'images/imgsp/imgsp16.jpg', 5),
(18, 'images/imgsp/imgsp17.jpg', 6),
(19, 'images/imgsp/imgsp18.jpg', 6),
(20, 'images/imgsp/imgsp19.jpg', 6),
(21, 'images/imgsp/imgsp20.jpg', 6),
(27, 'images/imgsp/imgsp26.jpg', 8),
(28, 'images/imgsp/imgsp27.jpg', 8),
(29, 'images/imgsp/imgsp28.jpg', 8),
(30, 'images/imgsp/imgsp29.jpg', 9),
(31, 'images/imgsp/imgsp30.jpg', 9),
(32, 'images/imgsp/imgsp31.jpg', 9),
(33, 'images/imgsp/imgsp32.jpg', 9),
(34, 'images/imgsp/imgsp33.jpg', 10),
(35, 'images/imgsp/imgsp34.jpg', 10),
(36, 'images/imgsp/imgsp35.jpg', 10),
(37, 'images/imgsp/imgsp36.jpg', 10),
(38, 'images/imgsp/imgsp37.jpg', 11),
(39, 'images/imgsp/imgsp38.jpg', 11),
(40, 'images/imgsp/imgsp39.jpg', 11),
(41, 'images/imgsp/imgsp40.jpg', 11),
(94, 'images/imgsp/33_445_1365109146_1.jpg', 33),
(95, 'images/imgsp/33_445_1365109146_2.jpg', 33),
(96, 'images/imgsp/33_445_1365109146_3.jpg', 33),
(97, 'images/imgsp/33_445_1365109146_4.jpg', 33),
(98, 'images/imgsp/34_542_1467451606_1.jpg', 34),
(99, 'images/imgsp/34_542_1467451606_2.jpg', 34),
(100, 'images/imgsp/34_542_1467451606_3.jpg', 34),
(101, 'images/imgsp/34_542_1467451606_4.jpg', 34),
(102, 'images/imgsp/35_542_1467449409_1.jpg', 35),
(103, 'images/imgsp/35_542_1467449409_2.jpg', 35),
(104, 'images/imgsp/35_542_1467449409_3.jpg', 35),
(105, 'images/imgsp/35_542_1467449409_4.jpg', 35),
(106, 'images/imgsp/36_GtpQRn5.jpg', 36),
(107, 'images/imgsp/36_hYVmEzq.jpg', 36),
(108, 'images/imgsp/36_RIYh2qE.jpg', 36),
(109, 'images/imgsp/36_soODGkm.jpg', 36),
(110, 'images/imgsp/37_EvFj8cl.jpg', 37),
(111, 'images/imgsp/37_sSEfTW3.jpg', 37),
(112, 'images/imgsp/37_UccuEZd.jpg', 37),
(113, 'images/imgsp/37_YH9c1lv.jpg', 37),
(114, 'images/imgsp/38_139_1436529045_2.jpg', 38),
(115, 'images/imgsp/38_139_1436529045_3.jpg', 38),
(116, 'images/imgsp/38_139_1436529045_5.jpg', 38),
(117, 'images/imgsp/38_139_1436529045_6.jpg', 38),
(122, 'images/imgsp/imgsp21.jpg', 7),
(123, 'images/imgsp/imgsp22.jpg', 7),
(124, 'images/imgsp/imgsp23.jpg', 7),
(125, 'images/imgsp/imgsp24.jpg', 7),
(126, 'images/imgsp/imgsp25.jpg', 8);

-- --------------------------------------------------------

--
-- Table structure for table `manufacturer`
--

CREATE TABLE `manufacturer` (
  `id` int(11) NOT NULL,
  `namemanua` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `manufacturer`
--

INSERT INTO `manufacturer` (`id`, `namemanua`) VALUES
(1, 'G.Skill'),
(2, 'Zowie'),
(3, 'Roccat'),
(4, 'Zalman'),
(5, 'Sharkoon'),
(6, 'Corsair'),
(7, 'CM Storm'),
(8, 'Cherry'),
(9, 'FoxXray'),
(10, 'Intopic'),
(11, 'Corsair'),
(12, 'Logitech'),
(13, 'SteelSeries'),
(14, 'infinity'),
(15, 'Asus');

-- --------------------------------------------------------

--
-- Table structure for table `orderdetail`
--

CREATE TABLE `orderdetail` (
  `id` int(11) NOT NULL,
  `idproduct` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `priceperproduct` double NOT NULL,
  `idorder` int(11) NOT NULL,
  `sale` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orderdetail`
--

INSERT INTO `orderdetail` (`id`, `idproduct`, `quantity`, `priceperproduct`, `idorder`, `sale`) VALUES
(1, 2, 1, 3600, 1, 0),
(2, 3, 2, 1700, 1, 0),
(3, 6, 1, 900, 2, 0),
(4, 3, 1, 1700, 3, 0),
(5, 8, 1, 600, 3, 0),
(6, 11, 1, 4500, 3, 0),
(7, 2, 8, 3600, 4, 0),
(8, 4, 2, 700, 5, 0),
(9, 5, 1, 300, 5, 0),
(10, 6, 1, 900, 5, 0),
(11, 7, 1, 2100, 5, 0),
(12, 8, 3, 600, 5, 0),
(60, 2, 5, 3600, 31, 0),
(61, 2, 10, 3600, 32, 0),
(62, 7, 49, 2100, 33, 0);

-- --------------------------------------------------------

--
-- Table structure for table `orderitem`
--

CREATE TABLE `orderitem` (
  `id` int(11) NOT NULL,
  `iduser` int(11) NOT NULL,
  `createdate` datetime NOT NULL,
  `idpay` int(11) DEFAULT NULL,
  `address` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `phonenumber` varchar(11) DEFAULT NULL,
  `mail` varchar(254) DEFAULT NULL,
  `price` double NOT NULL,
  `status` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orderitem`
--

INSERT INTO `orderitem` (`id`, `iduser`, `createdate`, `idpay`, `address`, `phonenumber`, `mail`, `price`, `status`) VALUES
(1, 1, '2016-08-20 00:00:00', 1, 'Dia chi 1', '01669200801', 'usermail@gmail.com', 7000, NULL),
(2, 2, '2016-08-21 00:00:00', 2, 'Địa chỉ user2', '01669200802', 'user2mail@gmail.com', 900, NULL),
(3, 3, '2016-08-22 00:00:00', 1, 'Địa chỉ user3', '01669200803', 'user3mail@gmail.com', 6800, NULL),
(4, 4, '2016-08-23 00:00:00', 2, 'Địa chỉ user4', '01669200804', 'user4mail@gmail.com', 3600, NULL),
(5, 5, '2016-08-24 00:00:00', 1, 'Địa chỉ user5', '01669200805', 'user5mail@gmail.com', 6501, NULL),
(31, 2, '2016-09-10 00:00:00', 2, 'Địa chỉ user2', '01669200802', 'user2mail@gmail.com', 18000, NULL),
(32, 2, '2016-09-10 00:00:00', 2, 'Địa chỉ user2', '01669200802', 'user2mail@gmail.com', 36000, NULL),
(33, 1, '2016-09-20 12:45:06', 2, 'abccc', '123456789', 'proshadowckp@gmail.com', 102900, 0);

-- --------------------------------------------------------

--
-- Table structure for table `pay`
--

CREATE TABLE `pay` (
  `id` int(11) NOT NULL,
  `paytype` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pay`
--

INSERT INTO `pay` (`id`, `paytype`) VALUES
(1, 'thanh toán trước'),
(2, 'thanh toán sau');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `productname` varchar(100) NOT NULL,
  `idmanufacturer` int(11) NOT NULL,
  `price` double NOT NULL,
  `quantity` int(11) NOT NULL,
  `purchases` int(11) NOT NULL DEFAULT '0',
  `description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `categoryid` int(11) NOT NULL,
  `size` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `weight` decimal(6,2) NOT NULL,
  `portconnect` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `idclassify` int(11) NOT NULL,
  `sale` int(2) NOT NULL DEFAULT '0',
  `status` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `productname`, `idmanufacturer`, `price`, `quantity`, `purchases`, `description`, `categoryid`, `size`, `weight`, `portconnect`, `idclassify`, `sale`, `status`) VALUES
(2, 'Gskill Ripjaws MX780', 1, 3600, 0, 24, 'Ambidextrous design, interchangeable side grips, height-adjustable palm rest, on-board profile storage, adjustable weights, Avago laser sensor, Omron micro-switch, 8 fully programmable buttons and customizable 4-zone RGB backlighting.\r\n\r\nThe RIPJAWS MX780 laser gaming mouse is designed and built with durability and practicality in mind for the ultimate gaming experience in glorious RGB lighting.', 2, '110x54', '90.00', 'usb', 2, 0, 1),
(3, 'Zowie FK1 Avago 3310', 2, 1700, 13, 3, 'ZOWIE GEAR upholds the spirit of endless pursuit of product quality and continuous understanding of a player\'s needs. Developing a stable product improves the performance of competitive players, fulfilling ZOWIE’s commitment to eSports and players. Under this philosophy players are able to choose different mouse shapes, sizes and surface coating with the same performance.', 2, '130x67', '100.00', 'usb', 2, 15, 1),
(4, 'Roccat Kova[+]', 3, 700, 25, 2, 'TỪ VĂN PHÒNG ĐẾN GAME .\r\nTrong nhiều năm, mouse vi tính được phát triển phụ thuộc vào nhu cầu sử dụng. Mouse chỉ được thiết kế vớ 3 nút cho dù là game hay sử dụng bình thường. Thế nhưng với công  nghệ phát triển vượt bậc, nhu cầu đáp ứng sử dụng mouse cùng với các thiết lập riêng. Kova+ đã cho ra đời sản phẩm Mouse Roccat Kova + với khả năng lập trình.', 2, '120x65', '90.00', 'usb', 2, 0, 1),
(5, 'Zalman M401R', 4, 300, 21, 3, 'Chuột chơi game tầm trung của Zalman. Giá tốt , thiết kế đẹp , hiệu năng cao.\r\nThiết kế công thái học giúp giảm thiểu sự mệt mỏi khi sử dụng.\r\nSử dụng switch của Omrom siêu bền . Cho phép sử dụng đến hơn 5.000.000 lần nhấn chuột.\r\nBề mặt phủ lớp cao su mịn chống trơn trượt khi sử dụng.', 2, '118x65', '112.00', 'usb', 2, 10, 1),
(6, 'Sharkoon Sjhark Zone M51+ - Mouse + Bungee Gaming Bundle', 5, 900, 10, 2, 'Familiar high Sharkoon quality with well-known attractive price-performance ratio. The black and yellow SHARK ZONE design enhances your gaming skills and sends a visual warning to your gaming rivals. Use at your own risk!\r\n \r\nThe perfect combination for gamers: SHARK ZONE M51 LASER MOUSE combined with the SHARK ZONE MB10 GAMING BUNGEE HUB in a bundle.\r\n\r\nThe SHARK ZONE M51 LASER MOUSE is specifically designed for gamers with its Avago ADNS-9800 laser sensor and stylish SHARK ZONE design. The rubber surface ensures maximum grip, even with ambitious use. The mouse also has LED DPI indicators, 11 programmable buttons, 4-way scroll wheel, weight tuning system as well as onboard memory for game profiles.\r\n\r\nIndividual adjustments can easily be made using the included gaming software. The M51 connects via a sleeved cable with gold-plated USB plug.', 2, '126x88', '150.00', 'usb', 2, 0, 1),
(7, 'Gskill Ripjaws KM570', 1, 2100, 1, 50, 'RIPJAWS KM570 MX returns to the humble roots of mechanical keyboards with a simplistic design meant for enduring functionality, all while packed with major key gaming and media entertainment features, and storing the settings for a complete profile onto the onboard storage.', 3, '447x159', '1250.00', 'usb', 4, 0, 1),
(8, 'Sharkoon Shark Zone K30', 5, 600, 45, 4, 'The SHARK ZONE K30 Illuminated Gaming Keyboard offers all gamers a modern input device with advantageous features. The keyboard impresses with its striking SHARK ZONE design and significantly upgrades the look of any gaming system. The white LED illumination is of course customizable and can be easily adjusted on the keyboard without installed gaming software. To run macros more comfortably and/or start profiles, the K30 provides five practical macros as well as three profile keys.', 3, '485x208', '1210.00', 'usb', 6, 40, 1),
(9, 'Corsair Strafe', 6, 2700, 12, 0, 'Game better with the Corsair Gaming STRAFE Mechanical Gaming Keyboard. It boasts a good list of features – including Cherry MX Brown key switches, full programmability, anti-ghosting function, easy-to-access multimedia controls, brilliant RED per key backlighting, and more, giving gamers the competitive edge. Moreover, the textured and contoured keycaps enable maximum grip and enhanced feel. The built-in USB pass-through port gives your PC more available USB ports.', 3, '500x300', '1200.00', 'usb', 4, 0, 1),
(10, 'CM Storm QuickFire Rapid I', 7, 2600, 34, 0, 'QuickFire Rapid-i is the successor to Cooler Master\'s popular QuickFire Rapid mechanical gaming keyboard. Evolving from its predecessor, QuickFire Rapid-i features complete LED backlighting, powered by a 32-bit ARM processor that allows unique lighting effects such as responsive lighting upon keypresses (instant response and trailing effect) as well as the ability to light up individual keys and save them across four (4) different profiles. The built-in processor allows all profiles to be easily set and activated directly from the keyboard without the use of any software.', 3, '540x142', '1324.00', 'usb', 4, 0, 1),
(11, 'Cherry MX 6.0 Red Switch', 8, 4500, 11, 1, 'Sản phẩm sử dụng switch cơ học của Cherry. Điểm đặc biệt ở phiên bản này là các giao điểm tiếp xúc sử dụng 100% vàng nguyên chất cho chất lượng hoàn hảo. 100% switch cơ học được sản xuất tại Đức - Made in Germany.', 3, '578x179', '1523.00', 'usb', 4, 0, 1),
(33, 'Zalman M250', 4, 250, 100, 0, '- Chuột chơi game tầm trung của Zalman . Giá tốt , thiết kế đẹp , hiệu năng cao . \r\n\r\n- Thiết kế Ergonomi giúp cho tay không bị mỏi trong quá trình sử dụng .', 2, '119x64', '81.00', 'usb', 2, 10, 1),
(34, 'Asus ROG Gladius', 15, 1550, 49, 1, 'Gladius được thiết kế đặc biệt cho game thủ thuận tay phải với độ chính xác cao, cấu trúc ôm tay và tích hợp những tính năng độc quyền cho các game thủ FPS. Gladius có những tính năng dành cho game thủ như bộ switch chuột có thể thay thế được, gạc 2 nấc chuyển đổi DPI cho chuột, 2 nút phụ cạnh bên và bộ cảm biến quang 6400 DPI cho khả năng tracking đến 200 inch/s và gia tốc 50g.\r\n\r\nVới vẻ ngoài khá ngầu theo phong cách game thủ cùng kích cỡ 126x67x45mm và nặn chỉ 116g, Gladius có lớp vỏ được thiết kế ergonomic (tạm dịch là ôm tay) rất phù hợp với các game thủ có thói quen cầm chuột theo kiểu truyền thống (lòng bàn tay ôm vào thân chuột), kiểu claw (dùng móng tay để click chuột) hay fingertips (dùng ngón tay click chuột gần giống với kiểu claw); trong khi đó ở 2 cạnh bên Gladius được phủ lớp cao su có rằn ri theo phong cách Maya cổ nhằm tăng tính ma sát chống trơn trượt khi chơi game. Ở phần trên của chuột được phủ lớp sơn chống bám mồ hôi màu thép xám nhằm ngăn ngừa tình trạng khó chịu khi chơi game lâu dài.\r\n\r\nGladius được trang bị bộ cảm biến quang 6400 DPI cho khả năng tracking lên đến 200 inch/s và gia tốc lên đến 50g cùng khoảng cách nhận tín hiệu chuột từ thảm chỉ 1.5mm. Nút chuyển DPI có 2 mức - mức mặc định là 1600 DPI dành cho chơi game hằng ngày, còn mức cực chậm 400 DPI dành cho các game thủ camping với súng tỉa cần độ chính xác cao.', 2, '126x67', '116.00', 'usb,wired', 2, 25, 1),
(35, 'Asus Strix Claw', 15, 1400, 32, 0, 'Strix Claw is the ultimate gaming mouse for first-person shooters, crafted for those who demand unrivaled precision, comfort and the competitive advantage. Right-handed ergonomics, Japanese-made Omron switches, gaming-grade 5000DPI optical sensor, angle-snap-free movement and flexible DPI controls ensure your every movement is tracked accurately and reflected instantly.', 2, '119x64', '81.00', 'usb,wired', 2, 25, 1),
(36, 'FoxXray Photon FX', 9, 500, 31, 0, '- FoxXray là một thương hiệu con của Intopic nhắm đến người dùng chơi game chuyên nghiệp . Thiết kế đậm chất game thủ , chất lượng cao cùng giá thành rất tốt hứa hẹn sẽ đem đến sự trải nghiệm tốt nhất cho game thủ với chi phí đầu tư hợp lý .\r\n\r\n- Lắng nghe những ý kiến đóng góp từ khách hàng về màu led xanh dương đơn điệu . Chúng tôi đã mạnh dạn ra mắt phiên bản Photon FX mới nhất được chúng tôi đặt riêng cho thị trường Việt Nam với khả năng chuyển đổi 3 màu LED rất thông dụng đảm bảo phù hợp với tất cả các hệ thống và gaming gear khác như : chuột , phím , tai nghe ...  Đã ngon , nay còn thêm phần rực rỡ . \r\n\r\n- Về phần đế kim loại bên dưới , chúng tôi đã đề nghị hãng phủ 1 lớp sơn mỏng để chống ẩm và rỉ sét khi sản phẩm sử dụng trong thời gian dài . Thêm tính năng , giá không đổi .', 3, '624x124', '744.00', 'usb', 6, 20, 1),
(37, 'infinity Side 108 Black', 14, 2000, 65, 0, '- infinity là thương hiệu được chúng tôi hình thành và phát triển riêng tại thị trường Việt Nam . Chất lượng tốt - giá thành hợp lý và dịch vụ hậu mãi tốt nhất là tiêu chí xây dựng thương hiệu của chúng tôi.\r\n\r\n- Phím cơ hiện nay có rất nhiều nhà sản xuất đa số đến từ Trung Quốc . Với nguồn cung hiếm hoi từ Cherry , infinity được sử 100% công tắc cơ học của hãng Kailh - thương hiệu nổi tiếng nhất Trung Quốc đảm bảo chất lượng tốt nhất và độ bền ổn định theo thời gian . Kailh gần như đạt được sự tin tưởng tuyệt đối từ các đối tác là các thương hiệu game nổi tiếng như : Razer , TTesport và gần đây nhất là Steelseries .\r\n\r\n- Với đối tác Royal Kludge - một thương hiệu đã được chứng nhận về chất lượng trên toàn thế giới , chúng tôi hoàn toàn tự tin đem đến sản phẩm phím cơ tốt nhất đến tay người dùng với giá thành rất Việt Nam .', 3, '441x182', '1000.00', 'usb', 4, 0, 1),
(38, 'Roccat Isku FX', 3, 1750, 43, 0, 'Chiếc Isku FX là chiếc bàn phím duy nhất trên thế giới được trang bị tính năng đột phát của Roccat,  Easy-Shift[+]™, cho phép bạn dễ dàng tùy chỉnh 36 marcro chiến thuật ở 3 vị trí dễ dàng tìm kiếm trong khu vực WASD. Có nghĩa là  bạn có thể ra lệnh mà không cần di rời tay sang vị trí khác trên bàn phím, vì thế bạn sẽ tập trung vào màn hình hơn là các phím. Đơn giản mà hiệu quả.\r\n\r\nVà bởi vì Easy-Shift[+]™ hoạt động như là phím shift bình thường, nên nó sẽ kích hoạt các macro đơn giản như là viết hoa một chữ cái.\r\n\r\nKhu vực Easy-Shift[+]™ mang lại cho bạn 28 phím macro ấn tượng, bao gồm 8 phím chuyên dụng có thể được lập trình chức năng đúp. Thêm vào đó, với khả năng ngay lập tức chuyển đổi giữa 5 cấu hình, cho phép bạn thiết lập và thưởng thức lên đến 180 macro, một con số khổng lồ, đủ để bạn sẵn sàng với bất kỳ cuộc chiến nào.\r\n', 3, '434x134', '1002.00', 'usb', 4, 15, 1);

-- --------------------------------------------------------

--
-- Table structure for table `roleadmin`
--

CREATE TABLE `roleadmin` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `roleadmin`
--

INSERT INTO `roleadmin` (`id`, `name`) VALUES
(1, 'user'),
(2, 'admin'),
(3, 'shiper');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(32) NOT NULL,
  `idrole` int(11) NOT NULL,
  `mail` varchar(254) NOT NULL,
  `phonenumber` varchar(11) NOT NULL,
  `address` varchar(300) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `salepromotion` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `idrole`, `mail`, `phonenumber`, `address`, `salepromotion`) VALUES
(1, 'guest', '', 1, '', '', '', 0),
(2, 'user2', 'Passuser2', 1, 'user22mail@gmail.com', '01669200803', 'Địa chỉ user22', 0),
(3, 'user3', 'qwer1234', 1, 'user3mail@gmail.com', '01669200803', 'Địa chỉ user3', 0),
(4, 'user4', 'qwer1234', 1, 'user4mail@gmail.com', '01669200804', 'Địa chỉ user4', 0),
(5, 'user5', 'asdf1234', 1, 'user5mail@gmail.com', '01669200805', 'Địa chỉ user5', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accountadmin`
--
ALTER TABLE `accountadmin`
  ADD PRIMARY KEY (`nameadmin`),
  ADD KEY `role` (`role`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`,`categoryname`);

--
-- Indexes for table `classify`
--
ALTER TABLE `classify`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idcategory` (`idcategory`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idproduct` (`idproduct`);

--
-- Indexes for table `manufacturer`
--
ALTER TABLE `manufacturer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orderdetail`
--
ALTER TABLE `orderdetail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idproduct` (`idproduct`),
  ADD KEY `idorder` (`idorder`);

--
-- Indexes for table `orderitem`
--
ALTER TABLE `orderitem`
  ADD PRIMARY KEY (`id`),
  ADD KEY `iduser` (`iduser`),
  ADD KEY `idpay` (`idpay`);

--
-- Indexes for table `pay`
--
ALTER TABLE `pay`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categoryid` (`categoryid`),
  ADD KEY `idmanufacturer` (`idmanufacturer`),
  ADD KEY `idclassify` (`idclassify`);

--
-- Indexes for table `roleadmin`
--
ALTER TABLE `roleadmin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`,`username`),
  ADD KEY `idrole` (`idrole`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `classify`
--
ALTER TABLE `classify`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=127;
--
-- AUTO_INCREMENT for table `manufacturer`
--
ALTER TABLE `manufacturer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `orderdetail`
--
ALTER TABLE `orderdetail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;
--
-- AUTO_INCREMENT for table `orderitem`
--
ALTER TABLE `orderitem`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
--
-- AUTO_INCREMENT for table `pay`
--
ALTER TABLE `pay`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
--
-- AUTO_INCREMENT for table `roleadmin`
--
ALTER TABLE `roleadmin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `accountadmin`
--
ALTER TABLE `accountadmin`
  ADD CONSTRAINT `accountadmin_ibfk_1` FOREIGN KEY (`role`) REFERENCES `roleadmin` (`id`);

--
-- Constraints for table `classify`
--
ALTER TABLE `classify`
  ADD CONSTRAINT `classify_ibfk_1` FOREIGN KEY (`idcategory`) REFERENCES `category` (`id`);

--
-- Constraints for table `images`
--
ALTER TABLE `images`
  ADD CONSTRAINT `images_ibfk_1` FOREIGN KEY (`idproduct`) REFERENCES `product` (`id`);

--
-- Constraints for table `orderdetail`
--
ALTER TABLE `orderdetail`
  ADD CONSTRAINT `orderdetail_ibfk_1` FOREIGN KEY (`idproduct`) REFERENCES `product` (`id`),
  ADD CONSTRAINT `orderdetail_ibfk_2` FOREIGN KEY (`idorder`) REFERENCES `orderitem` (`id`);

--
-- Constraints for table `orderitem`
--
ALTER TABLE `orderitem`
  ADD CONSTRAINT `orderitem_ibfk_1` FOREIGN KEY (`iduser`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `orderitem_ibfk_2` FOREIGN KEY (`idpay`) REFERENCES `pay` (`id`);

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_2` FOREIGN KEY (`idmanufacturer`) REFERENCES `manufacturer` (`id`),
  ADD CONSTRAINT `product_ibfk_4` FOREIGN KEY (`categoryid`) REFERENCES `category` (`id`),
  ADD CONSTRAINT `product_ibfk_5` FOREIGN KEY (`idclassify`) REFERENCES `classify` (`id`);

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`idrole`) REFERENCES `roleadmin` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
