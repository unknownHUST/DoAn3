-- MySQL dump 10.13  Distrib 5.7.26, for Linux (x86_64)
--
-- Host: localhost    Database: MiniProject
-- ------------------------------------------------------
-- Server version	5.7.26-0ubuntu0.18.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `CHITIETHOADON`
--

DROP TABLE IF EXISTS `CHITIETHOADON`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CHITIETHOADON` (
  `idHoaDon` int(11) NOT NULL,
  `idChiTietSanPham` int(11) NOT NULL,
  `soluongmua` int(11) NOT NULL,
  PRIMARY KEY (`idHoaDon`,`idChiTietSanPham`),
  KEY `fk_CHITIETHOADON_idCTSP_idx` (`idChiTietSanPham`),
  CONSTRAINT `fk_CHITIETHOADON_1_idHoaDon` FOREIGN KEY (`idHoaDon`) REFERENCES `HOADON` (`idHoaDon`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_CHITIETHOADON_idCTSP` FOREIGN KEY (`idChiTietSanPham`) REFERENCES `CHITIETSANPHAM` (`idChiTietSanPham`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CHITIETHOADON`
--

LOCK TABLES `CHITIETHOADON` WRITE;
/*!40000 ALTER TABLE `CHITIETHOADON` DISABLE KEYS */;
INSERT INTO `CHITIETHOADON` VALUES (23,1,2),(23,86,1),(24,52,1),(24,70,2),(25,70,1),(25,71,2),(25,72,3),(25,73,2),(26,91,1),(26,104,2),(27,47,2),(28,1,2);
/*!40000 ALTER TABLE `CHITIETHOADON` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CHITIETKHUYENMAI`
--

DROP TABLE IF EXISTS `CHITIETKHUYENMAI`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CHITIETKHUYENMAI` (
  `idKhuyenMai` int(11) NOT NULL,
  `idSanPham` int(11) NOT NULL,
  PRIMARY KEY (`idKhuyenMai`,`idSanPham`),
  KEY `fk_CHITIETKHUYENMAI_1_idSP_idx` (`idSanPham`),
  CONSTRAINT `fk_CHITIETKHUYENMAI_1_idKM` FOREIGN KEY (`idKhuyenMai`) REFERENCES `KHUYENMAI` (`idKhuyenMai`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_CHITIETKHUYENMAI_1_idSP` FOREIGN KEY (`idSanPham`) REFERENCES `SANPHAM` (`idSanPham`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CHITIETKHUYENMAI`
--

LOCK TABLES `CHITIETKHUYENMAI` WRITE;
/*!40000 ALTER TABLE `CHITIETKHUYENMAI` DISABLE KEYS */;
/*!40000 ALTER TABLE `CHITIETKHUYENMAI` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CHITIETSANPHAM`
--

DROP TABLE IF EXISTS `CHITIETSANPHAM`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CHITIETSANPHAM` (
  `idChiTietSanPham` int(11) NOT NULL AUTO_INCREMENT,
  `idSanPham` int(11) NOT NULL,
  `idSizeSanPham` int(11) NOT NULL,
  `soluong` int(11) DEFAULT NULL,
  PRIMARY KEY (`idChiTietSanPham`),
  KEY `fk_CHITIETSANPHAM_idSP_idx` (`idSanPham`),
  KEY `fk_CHITIETSANPHAM_idSize_idx` (`idSizeSanPham`),
  CONSTRAINT `fk_CHITIETSANPHAM_idSP` FOREIGN KEY (`idSanPham`) REFERENCES `SANPHAM` (`idSanPham`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_CHITIETSANPHAM_idSize` FOREIGN KEY (`idSizeSanPham`) REFERENCES `SIZESANPHAM` (`idSizeSanPham`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=109 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CHITIETSANPHAM`
--

LOCK TABLES `CHITIETSANPHAM` WRITE;
/*!40000 ALTER TABLE `CHITIETSANPHAM` DISABLE KEYS */;
INSERT INTO `CHITIETSANPHAM` VALUES (1,2,1,10),(3,2,3,10),(4,2,4,10),(5,2,5,10),(6,2,6,10),(7,3,1,10),(8,3,2,10),(9,3,3,10),(10,3,4,10),(11,3,5,10),(12,3,6,10),(13,4,1,10),(14,4,2,10),(15,4,3,10),(16,4,4,10),(17,4,5,10),(18,4,6,10),(19,5,1,10),(20,5,2,10),(21,5,3,10),(22,5,4,10),(23,5,5,10),(24,5,6,10),(25,6,1,10),(26,6,2,10),(27,6,3,10),(28,6,4,10),(29,6,5,10),(30,6,6,10),(31,7,1,10),(32,7,2,10),(33,7,3,10),(34,7,4,10),(35,7,5,10),(36,7,6,10),(37,8,1,10),(38,8,2,10),(39,8,3,10),(40,8,4,10),(41,8,5,10),(42,8,6,10),(43,9,2,7),(44,9,3,12),(45,9,5,11),(46,9,4,15),(47,10,2,7),(48,10,3,8),(49,10,4,9),(50,10,5,14),(51,10,6,18),(52,11,1,12),(53,11,5,13),(54,11,6,14),(55,12,2,7),(56,12,1,20),(57,12,4,8),(58,12,5,7),(59,13,1,7),(60,13,2,16),(61,13,3,21),(62,13,6,18),(63,14,2,3),(64,14,2,5),(65,14,2,2),(66,14,2,10),(67,15,1,7),(68,15,4,7),(69,15,3,7),(70,16,1,12),(71,16,3,12),(72,16,5,12),(73,16,6,12),(74,17,2,12),(75,17,4,7),(76,17,6,5),(77,17,1,12),(78,18,1,12),(79,18,2,17),(80,18,3,7),(81,18,4,22),(82,19,3,11),(83,19,4,12),(84,19,5,13),(85,19,6,14),(86,20,1,11),(87,20,4,12),(88,20,3,12),(89,20,5,12),(90,20,6,12),(91,21,2,12),(92,21,3,7),(93,21,6,5),(94,21,5,12),(95,22,1,12),(96,22,2,17),(97,22,3,7),(98,22,4,22),(99,23,3,11),(100,23,4,12),(101,23,5,13),(102,23,6,14),(103,24,3,11),(104,24,1,12),(105,24,2,13),(106,24,6,14),(107,37,1,12),(108,37,2,14);
/*!40000 ALTER TABLE `CHITIETSANPHAM` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CHUCVU`
--

DROP TABLE IF EXISTS `CHUCVU`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CHUCVU` (
  `idChucVu` int(11) NOT NULL,
  `tenChucVu` varchar(20) NOT NULL,
  PRIMARY KEY (`idChucVu`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CHUCVU`
--

LOCK TABLES `CHUCVU` WRITE;
/*!40000 ALTER TABLE `CHUCVU` DISABLE KEYS */;
/*!40000 ALTER TABLE `CHUCVU` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DANGNHAP`
--

DROP TABLE IF EXISTS `DANGNHAP`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DANGNHAP` (
  `idDangNhap` int(11) NOT NULL,
  `tenDangNhap` varchar(30) CHARACTER SET latin1 NOT NULL,
  `matkhau` varchar(30) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`idDangNhap`),
  CONSTRAINT `fk_DANGNHAP_1_idUser` FOREIGN KEY (`idDangNhap`) REFERENCES `USER` (`idUser`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DANGNHAP`
--

LOCK TABLES `DANGNHAP` WRITE;
/*!40000 ALTER TABLE `DANGNHAP` DISABLE KEYS */;
/*!40000 ALTER TABLE `DANGNHAP` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DANHMUCSANPHAM`
--

DROP TABLE IF EXISTS `DANHMUCSANPHAM`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DANHMUCSANPHAM` (
  `idDanhMucSanPham` int(11) NOT NULL AUTO_INCREMENT,
  `tenDanhMuc` varchar(20) NOT NULL,
  PRIMARY KEY (`idDanhMucSanPham`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DANHMUCSANPHAM`
--

LOCK TABLES `DANHMUCSANPHAM` WRITE;
/*!40000 ALTER TABLE `DANHMUCSANPHAM` DISABLE KEYS */;
INSERT INTO `DANHMUCSANPHAM` VALUES (1,'Vans'),(2,'Nike'),(3,'Adidas'),(4,'Puma'),(6,'Converse'),(8,'Balenciaga'),(9,'New Balance'),(10,'Biti\'s'),(11,'Juno'),(12,'Vascara');
/*!40000 ALTER TABLE `DANHMUCSANPHAM` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `HOADON`
--

DROP TABLE IF EXISTS `HOADON`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `HOADON` (
  `idHoaDon` int(11) NOT NULL AUTO_INCREMENT,
  `tenKhachHang` varchar(30) NOT NULL,
  `sdtKhachHang` varchar(10) CHARACTER SET latin1 NOT NULL,
  `diachigiaohang` text NOT NULL,
  `tinhtrang` varchar(10) CHARACTER SET latin1 NOT NULL,
  `timeOrder` datetime NOT NULL,
  `hinhthucthanhtoan` varchar(20) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`idHoaDon`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `HOADON`
--

LOCK TABLES `HOADON` WRITE;
/*!40000 ALTER TABLE `HOADON` DISABLE KEYS */;
INSERT INTO `HOADON` VALUES (23,'Le Anh Tuan','0325293636','Ha Noi','Processed','2019-06-05 23:18:54','Direct payment'),(24,'Barack Obama','0324121190','USA','Processed','2019-06-08 15:06:28','Direct payment'),(25,'Tim Cook','0977921857','USA','Denied','2019-06-08 15:36:10','Direct payment'),(26,'Cao Hoàng Nam','0899232184','Dong Da, Ha Noi','Denied','2019-06-09 08:18:18','Direct payment'),(27,'Tim Cook','0977872155','USA','Processed','2019-06-09 08:25:14','Direct payment'),(28,'ahahah','0213213111','usa','Denied','2019-06-09 16:15:01','Direct payment');
/*!40000 ALTER TABLE `HOADON` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KHUYENMAI`
--

DROP TABLE IF EXISTS `KHUYENMAI`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KHUYENMAI` (
  `idKhuyenMai` int(11) NOT NULL AUTO_INCREMENT,
  `tenKhuyenMai` varchar(100) NOT NULL,
  `timeBatDau` datetime NOT NULL,
  `timeKetThuc` datetime NOT NULL,
  `motaKhuyenMai` text CHARACTER SET latin1,
  `imageKhuyenMai` text CHARACTER SET latin1,
  `giamtheophantram` int(11) NOT NULL,
  `giamgiacuthe` float NOT NULL,
  PRIMARY KEY (`idKhuyenMai`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KHUYENMAI`
--

LOCK TABLES `KHUYENMAI` WRITE;
/*!40000 ALTER TABLE `KHUYENMAI` DISABLE KEYS */;
/*!40000 ALTER TABLE `KHUYENMAI` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SANPHAM`
--

DROP TABLE IF EXISTS `SANPHAM`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SANPHAM` (
  `idSanPham` int(11) NOT NULL AUTO_INCREMENT,
  `idDanhMucSanPham` int(11) NOT NULL,
  `tenSanPham` varchar(100) NOT NULL,
  `giatien` float NOT NULL,
  `gioitinh` varchar(10) CHARACTER SET latin1 NOT NULL,
  `motaSP` longtext,
  `imageSanPham` text CHARACTER SET latin1,
  PRIMARY KEY (`idSanPham`),
  KEY `fk_SANPHAM_1_idDanhMucSP_idx` (`idDanhMucSanPham`),
  CONSTRAINT `fk_SANPHAM_1_idDanhMucSP` FOREIGN KEY (`idDanhMucSanPham`) REFERENCES `DANHMUCSANPHAM` (`idDanhMucSanPham`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SANPHAM`
--

LOCK TABLES `SANPHAM` WRITE;
/*!40000 ALTER TABLE `SANPHAM` DISABLE KEYS */;
INSERT INTO `SANPHAM` VALUES (2,1,'XSPORT Vans Old Skool Mũi Da Lộn',500000,'male','Chất liệu cao cấp , bền đẹp, thiết kế thời trang, dễ phối đồ.','id2.jpg'),(3,1,'Vans Old Skool Vải',350000,'male','Chất liệu cao cấp , bền đẹp, thiết kế thời trang, dễ phối đồ.','id3.jpg'),(4,1,'Vans Slip On Ca Rô',350000,'male','Chất liệu cao cấp , bền đẹp, thiết kế thời trang, dễ phối đồ.','id4.jpg'),(5,1,'Vans Old Skool SF',350000,'male','Chất liệu cao cấp , bền đẹp, thiết kế thời trang, dễ phối đồ.','id5.jpg'),(6,1,'Vans Old Skool Vải trắng đỏ',350000,'female','Chất liệu cao cấp , bền đẹp, thiết kế thời trang, dễ phối đồ.','id6.jpg'),(7,1,'Vans Old Skool Cổ Cao',350000,'female','Chất liệu cao cấp , bền đẹp, thiết kế thời trang, dễ phối đồ.','id7.jpg'),(8,1,'Vans Old Skool Vải XD Mũi Nỉ SF',350000,'female','Chất liệu cao cấp , bền đẹp, thiết kế thời trang, dễ phối đồ.','id8.jpg'),(9,1,'Vans Old Skool Cá Mập',350000,'male','Chất liệu cao cấp , bền đẹp, thiết kế thời trang, dễ phối đồ.','id9.jpg'),(10,2,'Nike Air Jordan 1 F1',1000000,'all','Chất liệu cao cấp , bền đẹp, thiết kế thời trang, dễ phối đồ.','MG_5438.jpg'),(11,2,'Nike Air',300000,'female','Chất liệu cao cấp , bền đẹp, thiết kế thời trang, dễ phối đồ.','MG_5406.jpg'),(12,2,'Nike Air Black',300000,'male','Chất liệu cao cấp , bền đẹp, thiết kế thời trang, dễ phối đồ.','MG_5286.jpg'),(13,2,'Nike Air Force 1 Full Trắng SF',749000,'female','Chất liệu cao cấp , bền đẹp, thiết kế thời trang, dễ phối đồ.','MG_5045.jpg'),(14,2,'Nike Air Max 97',595000,'male','Chất liệu cao cấp , bền đẹp, thiết kế thời trang, dễ phối đồ.','MG_5864.jpg'),(15,2,'Nike Air Max 97 Pink',595000,'female','Chất liệu cao cấp , bền đẹp, thiết kế thời trang, dễ phối đồ.','MG_4973.jpg'),(16,2,'Nike Air Max 97 While',595000,'all','Chất liệu cao cấp , bền đẹp, thiết kế thời trang, dễ phối đồ.','MG_5857.jpg'),(17,2,'Nike Air Jordan 1 F1 Black',300000,'all','Chất liệu cao cấp , bền đẹp, thiết kế thời trang, dễ phối đồ.','MG_5432.jpg'),(18,3,'Adidas Yeezy 700 V2 F1',385000,'all','Chất liệu cao cấp , bền đẹp, thiết kế thời trang, dễ phối đồ.','MG_6457.jpg'),(19,3,'Adidas EQT Bask Adv REP',595000,'male','Chất liệu cao cấp , bền đẹp, thiết kế thời trang, dễ phối đồ.','MG_6037.jpg'),(20,3,'Adidas EQT Bask Adv REP While',595000,'all','Chất liệu cao cấp , bền đẹp, thiết kế thời trang, dễ phối đồ.','MG_6030.jpg'),(21,3,'Adidas Yeezy 700 V2 Static F1',385000,'female','Chất liệu cao cấp , bền đẹp, thiết kế thời trang, dễ phối đồ.','MG_5955.jpg'),(22,3,'Adidas Yeezy 700 V2 Static REP',699000,'all','Chất liệu cao cấp , bền đẹp, thiết kế thời trang, dễ phối đồ.','MG_5961.jpg'),(23,3,'Adidas Trắng Kẻ Đen Mũi Trơn F1',285000,'all','Chất liệu cao cấp , bền đẹp, thiết kế thời trang, dễ phối đồ.','MG_5418.jpg'),(24,3,'Adidas Yeezy boost sesame REP',595000,'all','Chất liệu cao cấp , bền đẹp, thiết kế thời trang, dễ phối đồ.','MG_4530.jpg'),(28,4,'puma 1',500000,'male','abcabcabc','MG_6723.jpg'),(29,4,'puma 2',500000,'male','abcbabababab','MG_6723.jpg'),(30,4,'puma 3',329292,'all','abababababa','MG_6723.jpg'),(31,4,'puma 4',23000,'all','abababab','MG_6723.jpg'),(32,4,'puma 5',1111110,'male','aaaaa','MG_6723.jpg'),(33,4,'puma 5',1111110,'male','aaaaa','MG_6723.jpg'),(34,4,'puma 6',329292,'all','ababababa','MG_6723.jpg'),(35,4,'puma 7',1000000,'all','aaaaaa','P_20190305_122042_SRES.jpg'),(36,4,'abc',10000,'all','abc','MG_6723.jpg'),(37,6,'Converse demo 1',100000,'all','abcbcb','MG_6723.jpg');
/*!40000 ALTER TABLE `SANPHAM` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SIZESANPHAM`
--

DROP TABLE IF EXISTS `SIZESANPHAM`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SIZESANPHAM` (
  `idSizeSanPham` int(11) NOT NULL AUTO_INCREMENT,
  `tenSize` int(11) NOT NULL,
  PRIMARY KEY (`idSizeSanPham`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SIZESANPHAM`
--

LOCK TABLES `SIZESANPHAM` WRITE;
/*!40000 ALTER TABLE `SIZESANPHAM` DISABLE KEYS */;
INSERT INTO `SIZESANPHAM` VALUES (1,38),(2,39),(3,40),(4,41),(5,42),(6,43);
/*!40000 ALTER TABLE `SIZESANPHAM` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `USER`
--

DROP TABLE IF EXISTS `USER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `USER` (
  `idUser` int(11) NOT NULL AUTO_INCREMENT,
  `idChucVu` int(11) NOT NULL,
  `hoten` varchar(20) NOT NULL,
  `CMND` varchar(20) CHARACTER SET latin1 NOT NULL,
  `email` varchar(45) CHARACTER SET latin1 DEFAULT NULL,
  `sdt` varchar(10) CHARACTER SET latin1 DEFAULT NULL,
  PRIMARY KEY (`idUser`),
  KEY `fk_USER_1_idChucVu_idx` (`idChucVu`),
  CONSTRAINT `fk_USER_1_idChucVu` FOREIGN KEY (`idChucVu`) REFERENCES `CHUCVU` (`idChucVu`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `USER`
--

LOCK TABLES `USER` WRITE;
/*!40000 ALTER TABLE `USER` DISABLE KEYS */;
/*!40000 ALTER TABLE `USER` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-06-13 10:46:42
