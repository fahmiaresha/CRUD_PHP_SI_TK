/*
SQLyog Ultimate v10.42 
MySQL - 5.5.5-10.1.34-MariaDB : Database - akademiktk
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`akademiktk` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `revisi_si_tk`;

/*Table structure for table `absensi` */

DROP TABLE IF EXISTS `absensi`;

CREATE TABLE `absensi` (
  `ID_ABSEN` CHAR(6) NOT NULL,
  `NIP` CHAR(5) NOT NULL,
  `KODE_MAPEL` CHAR(3) NOT NULL,
  `TANGGAL_ABSEN` DATE DEFAULT NULL,
  PRIMARY KEY (`ID_ABSEN`),
  UNIQUE KEY `ABSENSI_PK` (`ID_ABSEN`),
  KEY `MEMILIKI4_FK` (`NIP`,`KODE_MAPEL`),
  CONSTRAINT `FK_ABSENSI_MEMILIKI4_JADWAL` FOREIGN KEY (`NIP`, `KODE_MAPEL`) REFERENCES `jadwal` (`NIP`, `KODE_MAPEL`)
) ENGINE=INNODB DEFAULT CHARSET=latin1;

/*Data for the table `absensi` */

INSERT  INTO `absensi`(`ID_ABSEN`,`NIP`,`KODE_MAPEL`,`TANGGAL_ABSEN`) VALUES ('AB0001','98005','1','2012-07-01'),('AB0002','99006','2','2012-07-01'),('AB0003','97007','3','2012-07-03'),('AB0004','98009','4','2012-07-04'),('AB0005','98008','5','2012-07-05'),('AB0006','98012','6','2012-07-06'),('AB0007','98057','7','2012-07-07'),('AB0008','88038','8','2012-07-08'),('AB0009','93438','1','2012-07-09'),('AB0010','98423','2','2012-07-10'),('AB0011','54412','3','2012-07-11'),('AB0012','79367','4','2012-07-12'),('AB0013','58387','5','2012-07-13'),('AB0014','53373','6','2012-07-14'),('AB0015','86477','7','2012-07-15'),('AB0016','98005','8','2012-07-16'),('AB0017','99006','1','2012-07-17'),('AB0018','97007','2','2012-07-18'),('AB0019','98009','3','2012-07-19'),('AB0020','98008','4','2012-07-20'),('AB0021','98012','5','2012-07-21'),('AB0022','98057','6','2012-07-22'),('AB0023','88038','7','2012-07-23'),('AB0024','93438','8','2012-07-24'),('AB0025','98423','1','2012-07-25'),('AB0026','54412','2','2012-07-26'),('AB0027','79367','3','2012-07-27'),('AB0028','58387','4','2012-07-28'),('AB0029','53373','5','2012-07-29'),('AB0030','86477','6','2012-07-30'),('AB0031','98005','7','2012-07-31'),('AB0032','99006','8','2012-08-01'),('AB0033','97007','1','2012-08-02'),('AB0034','98009','2','2012-08-03'),('AB0035','98008','3','2012-08-04'),('AB0036','98012','4','2012-08-05'),('AB0037','98057','5','2012-08-06'),('AB0038','88038','6','2012-08-07'),('AB0039','93438','7','2012-08-08'),('AB0040','98423','8','2012-08-09'),('AB0041','54412','1','2012-08-10'),('AB0042','79367','2','2012-08-11'),('AB0043','58387','3','2012-08-12'),('AB0044','53373','4','2012-08-13'),('AB0045','86477','5','2012-08-14'),('AB0046','98005','6','2012-08-15'),('AB0047','99006','7','2012-08-16'),('AB0048','97007','8','2012-08-17'),('AB0049','98009','1','2012-08-18'),('AB0050','98008','2','2012-08-19'),('AB0051','98012','3','2012-08-20'),('AB0052','98057','4','2012-08-21'),('AB0053','88038','5','2012-08-22'),('AB0054','93438','6','2012-08-23'),('AB0055','98423','7','2012-08-24'),('AB0056','54412','8','2012-08-25'),('AB0057','79367','1','2012-08-26'),('AB0058','58387','2','2012-08-27'),('AB0059','53373','3','2012-08-28'),('AB0060','86477','4','2012-08-29'),('AB0061','98005','5','2012-08-30'),('AB0062','99006','6','2012-08-31'),('AB0063','97007','7','2012-09-01'),('AB0064','98009','8','2012-09-02'),('AB0065','98008','1','2012-09-03'),('AB0066','98012','2','2012-09-04'),('AB0067','98057','3','2012-09-05'),('AB0068','88038','4','2012-09-06'),('AB0069','93438','5','2012-09-07'),('AB0070','98423','6','2012-09-08'),('AB0071','54412','7','2012-09-09'),('AB0072','79367','8','2012-09-10'),('AB0073','58387','1','2012-09-11'),('AB0074','53373','2','2012-09-12'),('AB0075','86477','3','2012-09-13'),('AB0076','98005','4','2012-09-14'),('AB0077','99006','5','2012-09-15'),('AB0078','97007','6','2012-09-16'),('AB0079','98009','7','2012-09-17'),('AB0080','98008','8','2012-09-18'),('AB0081','98012','1','2012-09-19'),('AB0082','98057','2','2012-09-20'),('AB0083','88038','3','2012-09-21'),('AB0084','93438','4','2012-09-22'),('AB0085','98423','5','2012-09-23'),('AB0086','54412','6','2012-09-24'),('AB0087','79367','7','2012-09-25'),('AB0088','58387','8','2012-09-26'),('AB0089','53373','1','2012-09-27'),('AB0090','86477','2','2012-09-28'),('AB0091','98005','3','2012-09-29'),('AB0092','99006','4','2012-09-30'),('AB0093','97007','5','2012-10-01'),('AB0094','98009','6','2012-10-02'),('AB0095','98008','7','2012-10-03'),('AB0096','98012','8','2012-10-04'),('AB0097','98057','1','2012-10-05'),('AB0098','88038','2','2012-10-06'),('AB0099','93438','3','2012-10-07'),('AB0100','98423','4','2012-10-08'),('AB0101','98057','1','2012-10-09'),('AB0102','88038','2','2012-10-10'),('AB0103','93438','3','2012-10-11'),('AB0104','98423','4','2012-10-12');

/*Table structure for table `admin` */

DROP TABLE IF EXISTS `admin`;

CREATE TABLE `admin` (
  `ID_ADMIN` CHAR(4) NOT NULL,
  `NAMA_ADMIN` VARCHAR(25) NOT NULL,
  `ALAMAT_ADMIN` VARCHAR(45) NOT NULL,
  `NO_TELP_ADMIN` CHAR(13) NOT NULL,
  `EMAIL_ADMIN` VARCHAR(25) DEFAULT NULL,
  `JK_ADMIN` SMALLINT(6) NOT NULL,
  `STATUS_ADMIN` SMALLINT(6) DEFAULT NULL,
  PRIMARY KEY (`ID_ADMIN`),
  UNIQUE KEY `ADMIN_PK` (`ID_ADMIN`)
) ENGINE=INNODB DEFAULT CHARSET=latin1;

/*Data for the table `admin` */

INSERT  INTO `admin`(`ID_ADMIN`,`NAMA_ADMIN`,`ALAMAT_ADMIN`,`NO_TELP_ADMIN`,`EMAIL_ADMIN`,`JK_ADMIN`,`STATUS_ADMIN`) VALUES ('A001','INDAH PURWANING','JL. Mawar kamboja a12','82678654278','INDAHPURWANING@gmail.com',0,0),('A002','SETYO MALIK','Jl. Bunga Desa 03','89765896012','SETYOMALIK@gmail.com',1,0),('A003','NUR KHODIJA','Jl. Kenari 48','87854367215','NURKHODIJA@gmail.com',0,0);

/*Table structure for table `angkatan` */

DROP TABLE IF EXISTS `angkatan`;

CREATE TABLE `angkatan` (
  `ID_ANGKATAN` CHAR(5) NOT NULL,
  `TAHUN_ANGKATAN` CHAR(4) NOT NULL,
  PRIMARY KEY (`ID_ANGKATAN`),
  UNIQUE KEY `ANGKATAN_PK` (`ID_ANGKATAN`)
) ENGINE=INNODB DEFAULT CHARSET=latin1;

/*Data for the table `angkatan` */

INSERT  INTO `angkatan`(`ID_ANGKATAN`,`TAHUN_ANGKATAN`) VALUES ('12007','2012'),('12008','2013');

/*Table structure for table `detail_kelas` */

DROP TABLE IF EXISTS `detail_kelas`;

CREATE TABLE `detail_kelas` (
  `ID_ADMIN` CHAR(4) NOT NULL,
  `KODE_KELAS` CHAR(3) NOT NULL,
  `TANGGAL_REGISTRASI` DATE NOT NULL,
  PRIMARY KEY (`ID_ADMIN`,`KODE_KELAS`),
  KEY `MENGINPUTKAN_FK` (`ID_ADMIN`),
  KEY `DIMILIKI1_FK` (`KODE_KELAS`),
  CONSTRAINT `FK_DETAIL_K_DIMILIKI1_KELAS` FOREIGN KEY (`KODE_KELAS`) REFERENCES `kelas` (`KODE_KELAS`),
  CONSTRAINT `FK_DETAIL_K_MENGINPUT_ADMIN` FOREIGN KEY (`ID_ADMIN`) REFERENCES `admin` (`ID_ADMIN`)
) ENGINE=INNODB DEFAULT CHARSET=latin1;

/*Data for the table `detail_kelas` */

INSERT  INTO `detail_kelas`(`ID_ADMIN`,`KODE_KELAS`,`TANGGAL_REGISTRASI`) VALUES ('A001','K03','0000-00-00'),('A001','K04','0000-00-00'),('A002','K01','0000-00-00'),('A003','K02','0000-00-00');

/*Table structure for table `detil_penilaian_bulanan` */

DROP TABLE IF EXISTS `detil_penilaian_bulanan`;

CREATE TABLE `detil_penilaian_bulanan` (
  `ID_PENILAIAN_BULANAN2` CHAR(6) NOT NULL,
  `ID_INDIKATOR_CAPAIAN2` CHAR(4) NOT NULL,
  PRIMARY KEY (`ID_PENILAIAN_BULANAN2`,`ID_INDIKATOR_CAPAIAN2`),
  KEY `MEMUAT3_FK` (`ID_PENILAIAN_BULANAN2`),
  KEY `DIMUAT3_FK` (`ID_INDIKATOR_CAPAIAN2`),
  CONSTRAINT `FK_DETIL_PE_DIMUAT3_INDIKATO` FOREIGN KEY (`ID_INDIKATOR_CAPAIAN2`) REFERENCES `indikator_capaian` (`ID_INDIKATOR_CAPAIAN2`),
  CONSTRAINT `FK_DETIL_PE_MEMUAT3_PANILAIA` FOREIGN KEY (`ID_PENILAIAN_BULANAN2`) REFERENCES `panilaian_bulanan` (`ID_PENILAIAN_BULANAN2`)
) ENGINE=INNODB DEFAULT CHARSET=latin1;

/*Data for the table `detil_penilaian_bulanan` */

INSERT  INTO `detil_penilaian_bulanan`(`ID_PENILAIAN_BULANAN2`,`ID_INDIKATOR_CAPAIAN2`) VALUES ('PB1201','IC01'),('PB1201','IC02'),('PB1202','IC03'),('PB1202','IC04'),('PB1203','IC05'),('PB1203','IC06'),('PB1204','IC07'),('PB1204','IC08'),('PB1205','IC09'),('PB1205','IC10'),('PB1206','IC11'),('PB1206','IC12'),('PB1207','IC13'),('PB1207','IC14'),('PB1208','IC15'),('PB1208','IC16'),('PB1209','IC17'),('PB1209','IC18'),('PB1210','IC19'),('PB1210','IC20'),('PB1211','IC21'),('PB1211','IC22'),('PB1212','IC23'),('PB1212','IC24');

/*Table structure for table `detil_penilaian_semester` */

DROP TABLE IF EXISTS `detil_penilaian_semester`;

CREATE TABLE `detil_penilaian_semester` (
  `ID_PENILAIAN_BULANAN2` CHAR(6) NOT NULL,
  `ID_INDIKATOR_CAPAIAN2` CHAR(4) NOT NULL,
  `ID_PENILAIAN_SEMESTER2` CHAR(5) NOT NULL,
  `NIS` CHAR(5) NOT NULL,
  `ID_TUGAS2` CHAR(5) NOT NULL,
  `ANEKDOT` MEDIUMTEXT,
  PRIMARY KEY (`ID_PENILAIAN_BULANAN2`,`ID_INDIKATOR_CAPAIAN2`,`ID_PENILAIAN_SEMESTER2`),
  KEY `MEMILIKI_BANYAK_DETIL_SEMES_FK` (`ID_PENILAIAN_SEMESTER2`),
  KEY `MEMILIKI_BANYAK_DETIL_SEMES2_FK` (`ID_PENILAIAN_BULANAN2`,`ID_INDIKATOR_CAPAIAN2`),
  KEY `MEMILIKI_DETIL_SEMES_FK` (`NIS`,`ID_TUGAS2`),
  CONSTRAINT `FK_DETIL_PE_MEMILIKI__HISTORI_` FOREIGN KEY (`NIS`, `ID_TUGAS2`) REFERENCES `histori_penugasan_harian` (`NIS`, `ID_TUGAS2`),
  CONSTRAINT `FK_DETIL_PE_MEMILIKI__MEMILIKI` FOREIGN KEY (`ID_PENILAIAN_BULANAN2`, `ID_INDIKATOR_CAPAIAN2`) REFERENCES `memiliki_dtail_bln` (`ID_PENILAIAN_BULANAN2`, `ID_INDIKATOR_CAPAIAN2`),
  CONSTRAINT `FK_DETIL_PE_MEMILIKI__PENILAIA` FOREIGN KEY (`ID_PENILAIAN_SEMESTER2`) REFERENCES `penilaian_semester` (`ID_PENILAIAN_SEMESTER2`)
) ENGINE=INNODB DEFAULT CHARSET=latin1;

/*Data for the table `detil_penilaian_semester` */

INSERT  INTO `detil_penilaian_semester`(`ID_PENILAIAN_BULANAN2`,`ID_INDIKATOR_CAPAIAN2`,`ID_PENILAIAN_SEMESTER2`,`NIS`,`ID_TUGAS2`,`ANEKDOT`) VALUES ('PB1201','IC01','00001','81001','HK01','Senang menggambar dibuku-bukunya'),('PB1201','IC02','00001','81002','HK02','Aktif disetiap kegiatan '),('PB1202','IC03','00001','81003','HK03','Tidak bisa diam saat dikelas'),('PB1202','IC04','00001','81004','HK04','Kreatif saat membuat bentuk dari plastisin'),('PB1203','IC05','00001','81005','HK05','Suka berbagi barang maupun makanan'),('PB1203','IC06','00001','81006','HK06','Bisa membentuk pola yang diinginkan');

/*Table structure for table `file_upload` */

DROP TABLE IF EXISTS `file_upload`;

CREATE TABLE `file_upload` (
  `ID_FILE` INT(11) NOT NULL,
  `NAMA_FILE` VARCHAR(100) NOT NULL,
  `UKURAN_FILE` INT(11) NOT NULL,
  `TIPE_FILE` VARCHAR(20) DEFAULT NULL,
  `STATUS_FILE` SMALLINT(6) DEFAULT NULL,
  PRIMARY KEY (`ID_FILE`),
  UNIQUE KEY `FILE_UPLOAD_PK` (`ID_FILE`)
) ENGINE=INNODB DEFAULT CHARSET=latin1;

/*Data for the table `file_upload` */

INSERT  INTO `file_upload`(`ID_FILE`,`NAMA_FILE`,`UKURAN_FILE`,`TIPE_FILE`,`STATUS_FILE`) VALUES (1,'Tugas1',50,'Png',0),(2,'Tugas2',20,'Jpeg',0),(3,'Tugas3',30,'Pptx',0),(4,'Tugas4',40,'Docx',0);

/*Table structure for table `guru` */

DROP TABLE IF EXISTS `guru`;

CREATE TABLE `guru` (
  `NIP` CHAR(5) NOT NULL,
  `NAMA_GURU` VARCHAR(25) NOT NULL,
  `ALAMAT_GURU` VARCHAR(35) NOT NULL,
  `JK_GURU` SMALLINT(6) NOT NULL,
  `TEMPAT_LAHIR_GURU` VARCHAR(20) NOT NULL,
  `AGAMA` VARCHAR(20) DEFAULT NULL,
  `TANGGAL_LAHIR_GURU` DATE NOT NULL,
  `STATUS_GURU` SMALLINT(6) DEFAULT NULL,
  `PENDIDIKAN_TERAKHIR` CHAR(2) NOT NULL,
  `NO_TELPN` CHAR(13) NOT NULL,
  `EMAIL` VARCHAR(25) NOT NULL,
  PRIMARY KEY (`NIP`),
  UNIQUE KEY `GURU_PK` (`NIP`)
) ENGINE=INNODB DEFAULT CHARSET=latin1;

/*Data for the table `guru` */

INSERT  INTO `guru`(`NIP`,`NAMA_GURU`,`ALAMAT_GURU`,`JK_GURU`,`TEMPAT_LAHIR_GURU`,`AGAMA`,`TANGGAL_LAHIR_GURU`,`STATUS_GURU`,`PENDIDIKAN_TERAKHIR`,`NO_TELPN`,`EMAIL`) VALUES ('53373','Novi Islamiyah','Jl. Durian Raya 122',0,'Surabaya','Islam','1990-09-06',0,'SM','8.24675E+11','novieislami@yahoo.com'),('54412','Drs. Suhariyanto, M.Pd','Jl. Kenangan 78',1,'Purwakarta','Islam','1979-10-07',0,'S2','8.24675E+11','suhariyanto121@yahoo.com'),('58387','Iskandar','Jl. Candi 65',1,'Surabaya','Islam','1967-04-09',0,'SM','82467482528','iskandarjull@gmail.com'),('79367','H. Achmad Jazuli, MA','Jl. Graha 08',1,'Tanggerang','Islam','1971-01-31',0,'S1','8.24675E+11','jazuliii67@gmail.com'),('86477','Tri Endah , S.Pd','Jl. Anggur 5 ',0,'Surabaya','Katholik','1980-04-18',0,'S1','8.24675E+11','triendah@gmail.com'),('88038','Dwi Isnaini','Jl. Rindu 45',0,'Jakarta','Islam','1967-04-04',0,'SM','82467482518','dwiis1415@gmail.com'),('93438','Eka Putri ','Jl. Sirsak 34',0,'Cirebon','Islam','1970-05-05',0,'SM','82467482539','ekaput234@gmail.com'),('97007','Venny Tauresia','Jl. Anggur 15',0,'Sidoarjo','Hindu','1971-09-11',0,'D3','82467482554','vennytauresia@gmail.com'),('98005','Melia Kusumawati, S.Pd','Jl. Kenanga 50',0,'Mojokerto','Katholik','1973-11-05',0,'S1','82467482524','meliakusuma@ymail.com'),('98008',' Hj. Sunawah','Jl. Durian 123',0,'Gresik','Islam','1965-07-04',0,'D3','82467482541','sunawah001@gmail.com'),('98009','Ahmad Hudori, S. Pd I','Jl. Melati 166',1,'Pasuruan','Islam','1968-04-21',0,'S1','82467482547','ahmadhdori@hotmail.com'),('98012','Dra. Etty Sugiarti','Jl. Algo 776',0,'Jombang','Islam','1959-05-15',0,'S1','82467482528','ettysugiarti@gmail.com'),('98057','Rr. Dwi Sulistiana istiat','Jl. Apel 09',0,'Bandung','Budha','1996-12-12',0,'SM','8.24675E+11','dwisulistianaistiati@gmai'),('98423','Drs. H. Samsul Anam','Jl. Salak 23',1,'Malang','Islam','1994-12-16',0,'S1','82467482524','samsulanam@ymail.com'),('99006','Ali Ahmad Ramdani','Jl. Bunga 12',1,'Surabaya','Islam','1974-02-08',0,'SM','82467482525','ramdaniahmad@gmail.com');

/*Table structure for table `hasil_karya` */

DROP TABLE IF EXISTS `hasil_karya`;

CREATE TABLE `hasil_karya` (
  `ID_TUGAS2` CHAR(5) NOT NULL,
  `ID_SUB_TEMA` CHAR(4) DEFAULT NULL,
  `NAMA_TUGAS` VARCHAR(30) NOT NULL,
  `TIPE_TUGAS` SMALLINT(6) DEFAULT NULL,
  `NAMA_KARYA` VARCHAR(30) NOT NULL,
  PRIMARY KEY (`ID_TUGAS2`),
  UNIQUE KEY `HASIL_KARYA_PK` (`ID_TUGAS2`),
  KEY `MEMILIKI_TEMA_FK` (`ID_SUB_TEMA`),
  CONSTRAINT `FK_HASIL_KA_MEMILIKI__SUB_TEMA` FOREIGN KEY (`ID_SUB_TEMA`) REFERENCES `sub_tema` (`ID_SUB_TEMA`)
) ENGINE=INNODB DEFAULT CHARSET=latin1;

/*Data for the table `hasil_karya` */

INSERT  INTO `hasil_karya`(`ID_TUGAS2`,`ID_SUB_TEMA`,`NAMA_TUGAS`,`TIPE_TUGAS`,`NAMA_KARYA`) VALUES ('HK01','ST14','Membuat Bebagai Kerjinan',0,'Membuat Kerajinan B01'),('HK02','ST14','Membuat Bebagai Kerjinan',0,'Membuat Kerajinan B01'),('HK03','ST14','Membuat Bebagai Kerjinan',0,'Membuat Kerajinan B01'),('HK04','ST14','Membuat Bebagai Kerjinan',0,'Membuat Kerajinan B01'),('HK05','ST14','Membuat Bebagai Kerjinan',0,'Membuat Kerajinan B01'),('HK06','ST14','Membuat Bebagai Kerjinan',0,'Membuat Kerajinan B01'),('HK07','ST14','Membuat Bebagai Kerjinan',0,'Membuat Kerajinan B01'),('HK08','ST14','Membuat Bebagai Kerjinan',0,'Membuat Kerajinan B01'),('HK09','ST14','Membuat Bebagai Kerjinan',0,'Membuat Kerajinan B01'),('HK10','ST14','Membuat Bebagai Kerjinan',0,'Membuat Kerajinan B01'),('HK100','ST12','Melukis Tanaman',0,'Melukis Taman A02'),('HK11','ST14','Membuat Bebagai Kerjinan',0,'Membuat Kerajinan B01'),('HK12','ST14','Membuat Bebagai Kerjinan',0,'Membuat Kerajinan B01'),('HK13','ST14','Membuat Bebagai Kerjinan',0,'Membuat Kerajinan B01'),('HK14','ST14','Membuat Bebagai Kerjinan',0,'Membuat Kerajinan B01'),('HK15','ST14','Membuat Bebagai Kerjinan',0,'Membuat Kerajinan B01'),('HK16','ST14','Membuat Bebagai Kerjinan',0,'Membuat Kerajinan B01'),('HK17','ST14','Membuat Bebagai Kerjinan',0,'Membuat Kerajinan B01'),('HK18','ST14','Membuat Bebagai Kerjinan',0,'Membuat Kerajinan B01'),('HK19','ST14','Membuat Bebagai Kerjinan',0,'Membuat Kerajinan B01'),('HK20','ST14','Membuat Bebagai Kerjinan',0,'Membuat Kerajinan B01'),('HK21','ST14','Membuat Bebagai Kerjinan',0,'Membuat Kerajinan B01'),('HK22','ST14','Membuat Bebagai Kerjinan',0,'Membuat Kerajinan B01'),('HK23','ST14','Membuat Bebagai Kerjinan',0,'Membuat Kerajinan B01'),('HK24','ST14','Membuat Bebagai Kerjinan',0,'Membuat Kerajinan B01'),('HK25','ST14','Membuat Bebagai Kerjinan',0,'Membuat Kerajinan B01'),('HK26','ST14','Membuat Bebagai Kerjinan',0,'Membuat Kerajinan B02'),('HK27','ST14','Membuat Bebagai Kerjinan',0,'Membuat Kerajinan B02'),('HK28','ST14','Membuat Bebagai Kerjinan',0,'Membuat Kerajinan B02'),('HK29','ST14','Membuat Bebagai Kerjinan',0,'Membuat Kerajinan B02'),('HK30','ST14','Membuat Bebagai Kerjinan',0,'Membuat Kerajinan B02'),('HK31','ST14','Membuat Bebagai Kerjinan',0,'Membuat Kerajinan B02'),('HK32','ST14','Membuat Bebagai Kerjinan',0,'Membuat Kerajinan B02'),('HK33','ST14','Membuat Bebagai Kerjinan',0,'Membuat Kerajinan B02'),('HK34','ST14','Membuat Bebagai Kerjinan',0,'Membuat Kerajinan B02'),('HK35','ST14','Membuat Bebagai Kerjinan',0,'Membuat Kerajinan B02'),('HK36','ST14','Membuat Bebagai Kerjinan',0,'Membuat Kerajinan B02'),('HK37','ST14','Membuat Bebagai Kerjinan',0,'Membuat Kerajinan B02'),('HK38','ST14','Membuat Bebagai Kerjinan',0,'Membuat Kerajinan B02'),('HK39','ST14','Membuat Bebagai Kerjinan',0,'Membuat Kerajinan B02'),('HK40','ST14','Membuat Bebagai Kerjinan',0,'Membuat Kerajinan B02'),('HK41','ST14','Membuat Bebagai Kerjinan',0,'Membuat Kerajinan B02'),('HK42','ST14','Membuat Bebagai Kerjinan',0,'Membuat Kerajinan B02'),('HK43','ST14','Membuat Bebagai Kerjinan',0,'Membuat Kerajinan B02'),('HK44','ST14','Membuat Bebagai Kerjinan',0,'Membuat Kerajinan B02'),('HK45','ST14','Membuat Bebagai Kerjinan',0,'Membuat Kerajinan B02'),('HK46','ST14','Membuat Bebagai Kerjinan',0,'Membuat Kerajinan B02'),('HK47','ST14','Membuat Bebagai Kerjinan',0,'Membuat Kerajinan B02'),('HK48','ST14','Membuat Bebagai Kerjinan',0,'Membuat Kerajinan B02'),('HK49','ST14','Membuat Bebagai Kerjinan',0,'Membuat Kerajinan B02'),('HK50','ST14','Membuat Bebagai Kerjinan',0,'Membuat Kerajinan B02'),('HK51','ST11','Melukis Anggota Keluarga',0,'Melukis Keluarga  A01'),('HK52','ST11','Melukis Anggota Keluarga',0,'Melukis Keluarga  A01'),('HK53','ST11','Melukis Anggota Keluarga',0,'Melukis Keluarga  A01'),('HK54','ST11','Melukis Anggota Keluarga',0,'Melukis Keluarga  A01'),('HK55','ST11','Melukis Anggota Keluarga',0,'Melukis Keluarga  A01'),('HK56','ST11','Melukis Anggota Keluarga',0,'Melukis Keluarga  A01'),('HK57','ST11','Melukis Anggota Keluarga',0,'Melukis Keluarga  A01'),('HK58','ST11','Melukis Anggota Keluarga',0,'Melukis Keluarga  A01'),('HK59','ST11','Melukis Anggota Keluarga',0,'Melukis Keluarga  A01'),('HK60','ST11','Melukis Anggota Keluarga',0,'Melukis Keluarga  A01'),('HK61','ST11','Melukis Anggota Keluarga',0,'Melukis Keluarga  A01'),('HK62','ST11','Melukis Anggota Keluarga',0,'Melukis Keluarga  A01'),('HK63','ST11','Melukis Anggota Keluarga',0,'Melukis Keluarga  A01'),('HK64','ST11','Melukis Anggota Keluarga',0,'Melukis Keluarga  A01'),('HK65','ST11','Melukis Anggota Keluarga',0,'Melukis Keluarga  A01'),('HK66','ST11','Melukis Anggota Keluarga',0,'Melukis Keluarga  A01'),('HK67','ST11','Melukis Anggota Keluarga',0,'Melukis Keluarga  A01'),('HK68','ST11','Melukis Anggota Keluarga',0,'Melukis Keluarga  A01'),('HK69','ST11','Melukis Anggota Keluarga',0,'Melukis Keluarga  A01'),('HK70','ST11','Melukis Anggota Keluarga',0,'Melukis Keluarga  A01'),('HK71','ST11','Melukis Anggota Keluarga',0,'Melukis Keluarga  A01'),('HK72','ST11','Melukis Anggota Keluarga',0,'Melukis Keluarga  A01'),('HK73','ST11','Melukis Anggota Keluarga',0,'Melukis Keluarga  A01'),('HK74','ST11','Melukis Anggota Keluarga',0,'Melukis Keluarga  A01'),('HK75','ST11','Melukis Anggota Keluarga',0,'Melukis Keluarga  A01'),('HK76','ST12','Melukis Tanaman',0,'Melukis Taman A02'),('HK77','ST12','Melukis Tanaman',0,'Melukis Taman A02'),('HK78','ST12','Melukis Tanaman',0,'Melukis Taman A02'),('HK79','ST12','Melukis Tanaman',0,'Melukis Taman A02'),('HK80','ST12','Melukis Tanaman',0,'Melukis Taman A02'),('HK81','ST12','Melukis Tanaman',0,'Melukis Taman A02'),('HK82','ST12','Melukis Tanaman',0,'Melukis Taman A02'),('HK83','ST12','Melukis Tanaman',0,'Melukis Taman A02'),('HK84','ST12','Melukis Tanaman',0,'Melukis Taman A02'),('HK85','ST12','Melukis Tanaman',0,'Melukis Taman A02'),('HK86','ST12','Melukis Tanaman',0,'Melukis Taman A02'),('HK87','ST12','Melukis Tanaman',0,'Melukis Taman A02'),('HK88','ST12','Melukis Tanaman',0,'Melukis Taman A02'),('HK89','ST12','Melukis Tanaman',0,'Melukis Taman A02'),('HK90','ST12','Melukis Tanaman',0,'Melukis Taman A02'),('HK91','ST12','Melukis Tanaman',0,'Melukis Taman A02'),('HK92','ST12','Melukis Tanaman',0,'Melukis Taman A02'),('HK93','ST12','Melukis Tanaman',0,'Melukis Taman A02'),('HK94','ST12','Melukis Tanaman',0,'Melukis Taman A02'),('HK95','ST12','Melukis Tanaman',0,'Melukis Taman A02'),('HK96','ST12','Melukis Tanaman',0,'Melukis Taman A02'),('HK97','ST12','Melukis Tanaman',0,'Melukis Taman A02'),('HK98','ST12','Melukis Tanaman',0,'Melukis Taman A02'),('HK99','ST12','Melukis Tanaman',0,'Melukis Taman A02');

/*Table structure for table `histori_penugasan_harian` */

DROP TABLE IF EXISTS `histori_penugasan_harian`;

CREATE TABLE `histori_penugasan_harian` (
  `NIS` CHAR(5) NOT NULL,
  `ID_TUGAS2` CHAR(5) NOT NULL,
  `NIP` CHAR(5) NOT NULL,
  `ID_FILE` INT(11) NOT NULL,
  `TANGGAL_PENUGASAN` DATE DEFAULT NULL,
  PRIMARY KEY (`NIS`,`ID_TUGAS2`),
  KEY `MEMILIKI_HISTORI_MURID_FK` (`NIS`),
  KEY `MEMILIKI_KARYA_FK` (`ID_TUGAS2`),
  KEY `MEMILIKI2_FK` (`ID_FILE`),
  KEY `MEMILIKI_HISTORI_BULANAN_FK` (`NIP`),
  CONSTRAINT `FK_HISTORI__MEMILIKI2_FILE_UPL` FOREIGN KEY (`ID_FILE`) REFERENCES `file_upload` (`ID_FILE`),
  CONSTRAINT `FK_HISTORI__MEMILIKI__GURU` FOREIGN KEY (`NIP`) REFERENCES `guru` (`NIP`),
  CONSTRAINT `FK_HISTORI__MEMILIKI__HASIL_KA` FOREIGN KEY (`ID_TUGAS2`) REFERENCES `hasil_karya` (`ID_TUGAS2`),
  CONSTRAINT `FK_HISTORI__MEMILIKI__MURID` FOREIGN KEY (`NIS`) REFERENCES `murid` (`NIS`)
) ENGINE=INNODB DEFAULT CHARSET=latin1;

/*Data for the table `histori_penugasan_harian` */

INSERT  INTO `histori_penugasan_harian`(`NIS`,`ID_TUGAS2`,`NIP`,`ID_FILE`,`TANGGAL_PENUGASAN`) VALUES ('81001','HK01','58387',1,'2012-09-07'),('81002','HK02','58387',1,'2012-09-07'),('81003','HK03','58387',1,'2012-09-07'),('81004','HK04','58387',1,'2012-09-07'),('81005','HK05','58387',1,'2012-09-07'),('81006','HK06','58387',1,'2012-09-07'),('81007','HK07','58387',1,'2012-09-07'),('81008','HK08','58387',1,'2012-09-07'),('81009','HK09','58387',1,'2012-09-07'),('81010','HK10','58387',1,'2012-09-07'),('81011','HK11','58387',1,'2012-09-07'),('81012','HK12','58387',1,'2012-09-07'),('81013','HK13','58387',1,'2012-09-07'),('81014','HK14','58387',1,'2012-09-07'),('81015','HK15','58387',1,'2012-09-07'),('81016','HK16','58387',1,'2012-09-07'),('81017','HK17','58387',1,'2012-09-07'),('81018','HK18','58387',1,'2012-09-07'),('81019','HK19','58387',1,'2012-09-07'),('81020','HK20','58387',1,'2012-09-07'),('81021','HK21','58387',1,'2012-09-07'),('81022','HK22','58387',1,'2012-09-07'),('81023','HK23','58387',1,'2012-09-07'),('81024','HK24','58387',1,'2012-09-07'),('81025','HK25','58387',1,'2012-09-07'),('81026','HK26','79367',2,'2012-09-08'),('81027','HK27','79367',2,'2012-09-08'),('81028','HK28','79367',2,'2012-09-08'),('81029','HK29','79367',2,'2012-09-08'),('81030','HK30','79367',2,'2012-09-08'),('81031','HK31','79367',2,'2012-09-08'),('81032','HK32','79367',2,'2012-09-08'),('81033','HK33','79367',2,'2012-09-08'),('81034','HK34','79367',2,'2012-09-08'),('81035','HK35','79367',2,'2012-09-08'),('81036','HK36','79367',2,'2012-09-08'),('81037','HK37','79367',2,'2012-09-08'),('81038','HK38','79367',2,'2012-09-08'),('81039','HK39','79367',2,'2012-09-08'),('81040','HK40','79367',2,'2012-09-08'),('81041','HK41','79367',2,'2012-09-08'),('81042','HK42','79367',2,'2012-09-08'),('81043','HK43','79367',2,'2012-09-08'),('81044','HK44','79367',2,'2012-09-08'),('81045','HK45','79367',2,'2012-09-08'),('81046','HK46','79367',2,'2012-09-08'),('81047','HK47','79367',2,'2012-09-08'),('81048','HK48','79367',2,'2012-09-08'),('81049','HK49','79367',2,'2012-09-08'),('81050','HK50','79367',2,'2012-09-08'),('81051','HK51','86477',3,'2012-09-09'),('81052','HK52','86477',3,'2012-09-09'),('81053','HK53','86477',3,'2012-09-09'),('81054','HK54','86477',3,'2012-09-09'),('81055','HK55','86477',3,'2012-09-09'),('81056','HK56','86477',3,'2012-09-09'),('81057','HK57','86477',3,'2012-09-09'),('81058','HK58','86477',3,'2012-09-09'),('81059','HK59','86477',3,'2012-09-09'),('81060','HK60','86477',3,'2012-09-09'),('81061','HK61','86477',3,'2012-09-09'),('81062','HK62','86477',3,'2012-09-09'),('81063','HK63','86477',3,'2012-09-09'),('81064','HK64','86477',3,'2012-09-09'),('81065','HK65','86477',3,'2012-09-09'),('81066','HK66','86477',3,'2012-09-09'),('81067','HK67','86477',3,'2012-09-09'),('81068','HK68','86477',3,'2012-09-09'),('81069','HK69','86477',3,'2012-09-09'),('81070','HK70','86477',3,'2012-09-09'),('81071','HK71','86477',3,'2012-09-09'),('81072','HK72','86477',3,'2012-09-09'),('81073','HK73','86477',3,'2012-09-09'),('81074','HK74','86477',3,'2012-09-09'),('81075','HK75','86477',3,'2012-09-09'),('81076','HK76','53373',4,'2012-09-10'),('81077','HK77','53373',4,'2012-09-10'),('81078','HK78','53373',4,'2012-09-10'),('81079','HK79','53373',4,'2012-09-10'),('81080','HK80','53373',4,'2012-09-10'),('81081','HK81','53373',4,'2012-09-10'),('81082','HK82','53373',4,'2012-09-10'),('81083','HK83','53373',4,'2012-09-10'),('81084','HK84','53373',4,'2012-09-10'),('81085','HK85','53373',4,'2012-09-10'),('81086','HK86','53373',4,'2012-09-10'),('81087','HK87','53373',4,'2012-09-10'),('81088','HK88','53373',4,'2012-09-10'),('81089','HK89','53373',4,'2012-09-10'),('81090','HK90','53373',4,'2012-09-10'),('81091','HK91','53373',4,'2012-09-10'),('81092','HK92','53373',4,'2012-09-10'),('81093','HK93','53373',4,'2012-09-10'),('81094','HK94','53373',4,'2012-09-10'),('81095','HK95','53373',4,'2012-09-10'),('81096','HK96','53373',4,'2012-09-10'),('81097','HK97','53373',4,'2012-09-10'),('81098','HK98','53373',4,'2012-09-10'),('81099','HK99','53373',4,'2012-09-10'),('81100','HK100','53373',4,'2012-09-10');

/*Table structure for table `indeks_nilai` */

DROP TABLE IF EXISTS `indeks_nilai`;

CREATE TABLE `indeks_nilai` (
  `KODE_NILAI2` CHAR(2) NOT NULL,
  `NAMA_NILAI` VARCHAR(25) DEFAULT NULL,
  PRIMARY KEY (`KODE_NILAI2`),
  UNIQUE KEY `INDEKS_NILAI_PK` (`KODE_NILAI2`)
) ENGINE=INNODB DEFAULT CHARSET=latin1;

/*Data for the table `indeks_nilai` */

INSERT  INTO `indeks_nilai`(`KODE_NILAI2`,`NAMA_NILAI`) VALUES ('A','Sangat Baik'),('B','Baik'),('C','Cukup'),('D','Kurang');

/*Table structure for table `indikator_capaian` */

DROP TABLE IF EXISTS `indikator_capaian`;

CREATE TABLE `indikator_capaian` (
  `ID_INDIKATOR_CAPAIAN2` CHAR(4) NOT NULL,
  `ID_INDIKATOR3` CHAR(3) NOT NULL,
  `INDIKATOR_CAPAIAN` VARCHAR(50) DEFAULT NULL,
  PRIMARY KEY (`ID_INDIKATOR_CAPAIAN2`),
  UNIQUE KEY `INDIKATOR_CAPAIAN_PK` (`ID_INDIKATOR_CAPAIAN2`),
  KEY `TERDAPAT6_FK` (`ID_INDIKATOR3`),
  CONSTRAINT `FK_INDIKATO_TERDAPAT6_INDIKATO` FOREIGN KEY (`ID_INDIKATOR3`) REFERENCES `indikator_pengembangan` (`ID_INDIKATOR3`)
) ENGINE=INNODB DEFAULT CHARSET=latin1;

/*Data for the table `indikator_capaian` */

INSERT  INTO `indikator_capaian`(`ID_INDIKATOR_CAPAIAN2`,`ID_INDIKATOR3`,`INDIKATOR_CAPAIAN`) VALUES ('IC01','I01','penerapan sopan santun '),('IC02','I01','menjadi manusia yang bermoral tinggi'),('IC03','I02','Mengenal Tuhan melalui agama yang dianutnya  '),('IC04','I02','Mengenal tempat-tempat ibadah '),('IC05','I03','Berdoa sebelum dan sesudah melaksanakan kegiatan s'),('IC06','I03','baik dalam berteman'),('IC07','I04','dapat membaca'),('IC08','I04','bisa menulis'),('IC09','I05','dapat berhitung '),('IC10','I05','menguasai penjumlahan'),('IC11','I06','paham 4 sehat 5 sempurna'),('IC12','I06','mencuci tangan sebelum makan'),('IC13','I07','mampu berbicara'),('IC14','I07','mampu bersaran'),('IC15','I08','bicara secara baik'),('IC16','I08','menggunakan bahasa baik'),('IC17','I09','dapat menemukan masalah '),('IC18','I09','bisa memberi solusi'),('IC19','I10','fokus ketika belajar mengajar'),('IC20','I10','rajin pengerjaan tugas'),('IC21','I11','dapat berfikir kritis '),('IC22','I11','paham apa yang dilakukan'),('IC23','I12','Berdoa sebelum dan sesudah melaksanakan kegiatan s'),('IC24','I12','baik dalam berteman');

/*Table structure for table `indikator_pengembangan` */

DROP TABLE IF EXISTS `indikator_pengembangan`;

CREATE TABLE `indikator_pengembangan` (
  `ID_INDIKATOR3` CHAR(3) NOT NULL,
  `PROGRAM_PENGEMBANGAN` VARCHAR(40) NOT NULL,
  PRIMARY KEY (`ID_INDIKATOR3`),
  UNIQUE KEY `INDIKATOR_PENGEMBANGAN_PK` (`ID_INDIKATOR3`)
) ENGINE=INNODB DEFAULT CHARSET=latin1;

/*Data for the table `indikator_pengembangan` */

INSERT  INTO `indikator_pengembangan`(`ID_INDIKATOR3`,`PROGRAM_PENGEMBANGAN`) VALUES ('I01','pengembangan nilai moral'),('I02','pengembangan nilai agama'),('I03','pengembangan nilai sikap'),('I04','pengembangan nilai motorik'),('I05','pengembangan nilai numerik'),('I06','pengembangan nilai hidup sehat'),('I07','pengembangan nilai berpikir kritis'),('I08','pengembangan nilai bahasa'),('I09','pengembangan nilai analitis'),('I10','pengembangan nilai agama'),('I11','pengembangan nilai emosional'),('I12','pengembangan nilai keterampilan sosial');

/*Table structure for table `jadwal` */

DROP TABLE IF EXISTS `jadwal`;

CREATE TABLE `jadwal` (
  `NIP` CHAR(5) NOT NULL,
  `KODE_MAPEL` CHAR(3) NOT NULL,
  `HARI` VARCHAR(10) DEFAULT NULL,
  `JAM` TIME DEFAULT NULL,
  `RUANGAN` VARCHAR(4) NOT NULL,
  `KATEGORI` SMALLINT(6) NOT NULL,
  PRIMARY KEY (`NIP`,`KODE_MAPEL`),
  KEY `MEMILIKI7_FK` (`NIP`),
  KEY `DIMILIKI_FK` (`KODE_MAPEL`),
  CONSTRAINT `FK_JADWAL_DIMILIKI_MATA_PEL` FOREIGN KEY (`KODE_MAPEL`) REFERENCES `mata_pelajaran` (`KODE_MAPEL`),
  CONSTRAINT `FK_JADWAL_MEMILIKI7_GURU` FOREIGN KEY (`NIP`) REFERENCES `guru` (`NIP`)
) ENGINE=INNODB DEFAULT CHARSET=latin1;

/*Data for the table `jadwal` */

INSERT  INTO `jadwal`(`NIP`,`KODE_MAPEL`,`HARI`,`JAM`,`RUANGAN`,`KATEGORI`) VALUES ('53373','1','Jumat','08:00:00','101',0),('53373','2','Selasa','09:45:00','102',1),('53373','3','Jumat','08:00:00','103',0),('53373','4','Selasa','09:45:00','104',1),('53373','5','Jumat','08:00:00','101',0),('53373','6','Selasa','09:45:00','102',1),('54412','1','Senin','08:00:00','101',0),('54412','2','Rabu','09:45:00','102',1),('54412','3','Senin','08:00:00','103',0),('54412','6','Rabu','09:45:00','102',1),('54412','7','Senin','08:00:00','103',0),('54412','8','Rabu','09:45:00','104',1),('58387','1','Selasa','08:00:00','101',0),('58387','2','Kamis','09:45:00','102',1),('58387','3','Selasa','08:00:00','103',0),('58387','4','Kamis','09:45:00','104',1),('58387','5','Selasa','08:00:00','101',0),('58387','8','Kamis','09:45:00','104',1),('79367','1','Kamis','08:00:00','101',0),('79367','2','Senin','09:45:00','102',1),('79367','3','Kamis','08:00:00','103',0),('79367','4','Senin','09:45:00','104',1),('79367','7','Kamis','08:00:00','103',0),('79367','8','Senin','09:45:00','104',1),('86477','2','Jumat','09:45:00','102',1),('86477','3','Rabu','08:00:00','103',0),('86477','4','Jumat','09:45:00','104',1),('86477','5','Rabu','08:00:00','101',0),('86477','6','Jumat','09:45:00','102',1),('86477','7','Rabu','08:00:00','103',0),('88038','2','Kamis','09:45:00','102',1),('88038','3','Selasa','08:00:00','103',0),('88038','4','Kamis','09:45:00','104',1),('88038','5','Selasa','08:00:00','101',0),('88038','6','Kamis','09:45:00','102',1),('88038','7','Selasa','08:00:00','103',0),('88038','8','Kamis','09:45:00','104',1),('93438','1','Jumat','08:00:00','101',0),('93438','3','Jumat','08:00:00','103',0),('93438','4','Selasa','09:45:00','104',1),('93438','5','Jumat','08:00:00','101',0),('93438','6','Selasa','09:45:00','102',1),('93438','7','Jumat','08:00:00','103',0),('93438','8','Selasa','09:45:00','104',1),('97007','1','Selasa','08:00:00','101',0),('97007','2','Kamis','09:45:00','102',1),('97007','3','Selasa','08:00:00','103',0),('97007','5','Selasa','08:00:00','101',0),('97007','6','Kamis','09:45:00','102',1),('97007','7','Selasa','08:00:00','103',0),('97007','8','Kamis','09:45:00','104',1),('98005','1','Senin','08:00:00','101',0),('98005','3','Senin','08:00:00','103',0),('98005','4','Rabu','09:45:00','104',1),('98005','5','Senin','08:00:00','101',0),('98005','6','Rabu','09:45:00','102',1),('98005','7','Senin','08:00:00','103',0),('98005','8','Rabu','09:45:00','104',1),('98008','1','Rabu','08:00:00','101',0),('98008','2','Jumat','09:45:00','102',1),('98008','3','Rabu','08:00:00','103',0),('98008','4','Jumat','09:45:00','104',1),('98008','5','Rabu','08:00:00','101',0),('98008','7','Rabu','08:00:00','103',0),('98008','8','Jumat','09:45:00','104',1),('98009','1','Jumat','08:00:00','101',0),('98009','2','Selasa','09:45:00','102',1),('98009','3','Jumat','08:00:00','103',0),('98009','4','Selasa','09:45:00','104',1),('98009','6','Selasa','09:45:00','102',1),('98009','7','Jumat','08:00:00','103',0),('98009','8','Selasa','09:45:00','104',1),('98012','1','Senin','08:00:00','101',0),('98012','2','Rabu','09:45:00','102',1),('98012','3','Senin','08:00:00','103',0),('98012','4','Rabu','09:45:00','104',1),('98012','5','Senin','08:00:00','101',0),('98012','6','Rabu','09:45:00','102',1),('98012','8','Rabu','09:45:00','104',1),('98057','1','Kamis','08:00:00','101',0),('98057','2','Senin','09:45:00','102',1),('98057','3','Kamis','08:00:00','103',0),('98057','4','Senin','09:45:00','104',1),('98057','5','Kamis','08:00:00','101',0),('98057','6','Senin','09:45:00','102',1),('98057','7','Kamis','08:00:00','103',0),('98423','1','Rabu','08:00:00','101',0),('98423','2','Jumat','09:45:00','102',1),('98423','4','Jumat','09:45:00','104',1),('98423','5','Rabu','08:00:00','101',0),('98423','6','Jumat','09:45:00','102',1),('98423','7','Rabu','08:00:00','103',0),('98423','8','Jumat','09:45:00','104',1),('99006','1','Kamis','08:00:00','101',0),('99006','2','Senin','09:45:00','102',1),('99006','4','Senin','09:45:00','104',1),('99006','5','Kamis','08:00:00','101',0),('99006','6','Senin','09:45:00','102',1),('99006','7','Kamis','08:00:00','103',0),('99006','8','Senin','09:45:00','104',1);

/*Table structure for table `kelas` */

DROP TABLE IF EXISTS `kelas`;

CREATE TABLE `kelas` (
  `KODE_KELAS` CHAR(3) NOT NULL,
  `ID_ANGKATAN` CHAR(5) NOT NULL,
  `ID_KURIKULUM` CHAR(5) NOT NULL,
  `NAMA_KELAS` VARCHAR(25) NOT NULL,
  `KAPASITAS` INT(11) NOT NULL,
  PRIMARY KEY (`KODE_KELAS`),
  UNIQUE KEY `KELAS_PK` (`KODE_KELAS`),
  KEY `MEMILIKII_FK` (`ID_KURIKULUM`),
  KEY `MEMILIKI3_FK` (`ID_ANGKATAN`),
  CONSTRAINT `FK_KELAS_MEMILIKI3_ANGKATAN` FOREIGN KEY (`ID_ANGKATAN`) REFERENCES `angkatan` (`ID_ANGKATAN`),
  CONSTRAINT `FK_KELAS_MEMILIKII_KURIKULU` FOREIGN KEY (`ID_KURIKULUM`) REFERENCES `kurikulum` (`ID_KURIKULUM`)
) ENGINE=INNODB DEFAULT CHARSET=latin1;

/*Data for the table `kelas` */

INSERT  INTO `kelas`(`KODE_KELAS`,`ID_ANGKATAN`,`ID_KURIKULUM`,`NAMA_KELAS`,`KAPASITAS`) VALUES ('K01','12008','10200','A1',25),('K02','12008','10200','A2',25),('K03','12007','10201','B1',25),('K04','12007','10201','B2',25);

/*Table structure for table `kurikulum` */

DROP TABLE IF EXISTS `kurikulum`;

CREATE TABLE `kurikulum` (
  `ID_KURIKULUM` CHAR(5) NOT NULL,
  `KURIKULUM` VARCHAR(15) NOT NULL,
  `TAHUN_KURIKULUM` CHAR(4) DEFAULT NULL,
  `KETERANGAN_KURIKULUM` CHAR(200) NOT NULL,
  PRIMARY KEY (`ID_KURIKULUM`),
  UNIQUE KEY `KURIKULUM_PK` (`ID_KURIKULUM`)
) ENGINE=INNODB DEFAULT CHARSET=latin1;

/*Data for the table `kurikulum` */

INSERT  INTO `kurikulum`(`ID_KURIKULUM`,`KURIKULUM`,`TAHUN_KURIKULUM`,`KETERANGAN_KURIKULUM`) VALUES ('10200','KTSP','2006','Kurikulum Yang dikeluarkan Pada tahun 2006'),('10201','K13','2013','Kurikulum Yang dikeluarkan Pada tahun 2013');

/*Table structure for table `mata_pelajaran` */

DROP TABLE IF EXISTS `mata_pelajaran`;

CREATE TABLE `mata_pelajaran` (
  `KODE_MAPEL` CHAR(3) NOT NULL,
  `MATA_PELAJARAN` VARCHAR(10) NOT NULL,
  `DURASI` INT(11) NOT NULL,
  PRIMARY KEY (`KODE_MAPEL`),
  UNIQUE KEY `MATA_PELAJARAN_PK` (`KODE_MAPEL`)
) ENGINE=INNODB DEFAULT CHARSET=latin1;

/*Data for the table `mata_pelajaran` */

INSERT  INTO `mata_pelajaran`(`KODE_MAPEL`,`MATA_PELAJARAN`,`DURASI`) VALUES ('1','menggambar',75),('2','mewarnai',75),('3','berhitung',75),('4','keterampil',75),('5','seni buday',75),('6','olahraga',75),('7','membaca',75),('8','menulis',75),('kod','nama_mapel',0);

/*Table structure for table `memiliki_dtail_bln` */

DROP TABLE IF EXISTS `memiliki_dtail_bln`;

CREATE TABLE `memiliki_dtail_bln` (
  `ID_PENILAIAN_BULANAN2` CHAR(6) NOT NULL,
  `ID_INDIKATOR_CAPAIAN2` CHAR(4) NOT NULL,
  `KODE_NILAI2` CHAR(2) DEFAULT NULL,
  PRIMARY KEY (`ID_PENILAIAN_BULANAN2`,`ID_INDIKATOR_CAPAIAN2`),
  KEY `TERDAPAT4_FK` (`KODE_NILAI2`),
  CONSTRAINT `FK_MEMILIKI_TERDAPAT4_INDEKS_N` FOREIGN KEY (`KODE_NILAI2`) REFERENCES `indeks_nilai` (`KODE_NILAI2`),
  CONSTRAINT `FK_MEMILIKI_TERDAPAT__DETIL_PE` FOREIGN KEY (`ID_PENILAIAN_BULANAN2`, `ID_INDIKATOR_CAPAIAN2`) REFERENCES `detil_penilaian_bulanan` (`ID_PENILAIAN_BULANAN2`, `ID_INDIKATOR_CAPAIAN2`)
) ENGINE=INNODB DEFAULT CHARSET=latin1;

/*Data for the table `memiliki_dtail_bln` */

INSERT  INTO `memiliki_dtail_bln`(`ID_PENILAIAN_BULANAN2`,`ID_INDIKATOR_CAPAIAN2`,`KODE_NILAI2`) VALUES ('PB1201','IC01','A'),('PB1201','IC02','A'),('PB1202','IC03','A'),('PB1202','IC04','A'),('PB1203','IC05','A'),('PB1203','IC06','A'),('PB1204','IC07','A'),('PB1204','IC08','A'),('PB1205','IC09','A'),('PB1205','IC10','A'),('PB1206','IC11','A'),('PB1206','IC12','A'),('PB1207','IC13','A'),('PB1207','IC14','A'),('PB1208','IC15','A'),('PB1208','IC16','A'),('PB1209','IC17','A'),('PB1209','IC18','A'),('PB1210','IC19','A'),('PB1210','IC20','A'),('PB1211','IC21','A'),('PB1211','IC22','A'),('PB1212','IC23','A'),('PB1212','IC24','A');

/*Table structure for table `murid` */

DROP TABLE IF EXISTS `murid`;

CREATE TABLE `murid` (
  `NIS` CHAR(5) NOT NULL,
  `ID_ANGKATAN` CHAR(5) NOT NULL,
  `ID_ORANG_TUA1` CHAR(5) NOT NULL,
  `NIP` CHAR(5) NOT NULL,
  `NAMA_MURID` VARCHAR(25) NOT NULL,
  `ALAMAT` VARCHAR(45) NOT NULL,
  `TEMPAT_LAHIR` VARCHAR(20) NOT NULL,
  `AGAMA_MURID` VARCHAR(20) NOT NULL,
  `JK_MURID` SMALLINT(6) NOT NULL,
  `TANGGAL_LAHIR` DATE NOT NULL,
  `STATUS_MURID` SMALLINT(6) NOT NULL,
  PRIMARY KEY (`NIS`),
  UNIQUE KEY `MURID_PK` (`NIS`),
  KEY `MEMILIKI1_FK` (`ID_ORANG_TUA1`),
  KEY `TERDAPATT_FK` (`ID_ANGKATAN`),
  KEY `GURU_WALI_FK` (`NIP`),
  CONSTRAINT `FK_MURID_GURU_WALI_GURU` FOREIGN KEY (`NIP`) REFERENCES `guru` (`NIP`),
  CONSTRAINT `FK_MURID_MEMILIKI1_ORANG_TU` FOREIGN KEY (`ID_ORANG_TUA1`) REFERENCES `orang_tua_wali` (`ID_ORANG_TUA1`),
  CONSTRAINT `FK_MURID_TERDAPATT_ANGKATAN` FOREIGN KEY (`ID_ANGKATAN`) REFERENCES `angkatan` (`ID_ANGKATAN`)
) ENGINE=INNODB DEFAULT CHARSET=latin1;

/*Data for the table `murid` */

INSERT  INTO `murid`(`NIS`,`ID_ANGKATAN`,`ID_ORANG_TUA1`,`NIP`,`NAMA_MURID`,`ALAMAT`,`TEMPAT_LAHIR`,`AGAMA_MURID`,`JK_MURID`,`TANGGAL_LAHIR`,`STATUS_MURID`) VALUES ('81001','12007','OT001','98005','Nada Savaira Rizqin','jl.mawar bunga 102','Batam','Islam',0,'2008-03-29',0),('81002','12007','OT002','98005','Ahmad Adham Jazlan S','jl.mawar bunga 103','Batam','Islam',1,'2008-05-02',0),('81003','12007','OT003','98005','Fauzi Ahmad Fadhil','jl.mawar bunga 104','Semarang','Islam',0,'2007-10-31',0),('81004','12007','OT004','98005','Rafa Miftahul Aflah','jl.mawar bunga 105','Batam','Islam',1,'2007-08-02',0),('81005','12007','OT005','98005','Jauhar Qolbi','jl.mawar bunga 106','Batam','Islam',1,'2007-08-09',0),('81006','12007','OT006','98005','Izah Ulya Zhafirah Ractma','jl.mawar bunga 107','Batam','Islam',0,'2007-03-10',0),('81007','12007','OT007','98005','Ahmad Muzakky R','jl.mawar bunga 108','Kijang','Islam',1,'2007-10-03',0),('81008','12007','OT008','98005','Khaerunisa','jl.mawar bunga 109','Batam','Islam',0,'2007-10-08',0),('81009','12007','OT009','98005','Salsabila Asyan N','jl.mawar bunga 110','Batam','Islam',0,'2007-08-15',0),('81010','12007','OT010','98005','Muhammad Jibran Al-Farras','jl.mawar bunga 111','Batam','Islam',1,'2008-06-14',0),('81011','12007','OT011','98005','Shafiyah Al Widad Lillah','jl.mawar bunga 112','Batam','Islam',0,'2007-07-20',0),('81012','12007','OT012','98005','Muhammad Faiz Damar Putra','jl.mawar bunga 113','Batam','Islam',1,'2007-07-30',0),('81013','12007','OT013','98005','Aisyah Isra? Mauhibah','jl.mawar bunga 114','Batam','Islam',0,'2007-11-05',0),('81014','12007','OT014','98005','Bintang Tegar Dewangga','jl.mawar bunga 115','Batam','Islam',1,'2007-04-11',0),('81015','12007','OT015','98005','Muhammad Rafi A','jl.mawar bunga 116','Batam','Islam',1,'2008-01-04',0),('81016','12007','OT016','98005','Ikhtiara Saisijada','jl.mawar bunga 117','Batam','Islam',0,'2007-11-22',0),('81017','12007','OT017','98005','Manha Savaira Alma','jl.mawar bunga 118','Batam','Islam',0,'2007-10-22',0),('81018','12007','OT018','98005','Najwa Nadiah Azka','jl.mawar bunga 119','Batam','Islam',0,'2008-03-13',0),('81019','12007','OT019','98005','Hana Wardatatul Jannah','jl.mawar bunga 120','Batam','Islam',0,'2008-02-16',0),('81020','12007','OT020','98005','Nurfaiz Teguh Utama','jl.mawar bunga 121','Batam','Islam',1,'2008-05-02',0),('81021','12007','OT021','98005','Ghifar Abdillah','jl.mawar bunga 122','Batam','Islam',1,'2007-05-13',0),('81022','12007','OT022','98005','Syarif Husni Mubarok','jl.mawar bunga 123','Batam','Islam',1,'2007-05-25',0),('81023','12007','OT023','98005','Nihal Darin Tuada','jl.mawar bunga 124','Batam','Islam',0,'2007-09-23',0),('81024','12007','OT024','98005','Nurfaisah Azahra Sinuling','jl.mawar bunga 125','Batam','Islam',0,'2007-05-11',0),('81025','12007','OT025','98005','Aisyatun Nabilah','jl.mawar bunga 126','Batam','Islam',0,'2007-02-23',0),('81026','12007','OT026','88038','Abdul Hakim','jl.mawar bunga 127','Batam','Islam',1,'2008-02-03',0),('81027','12007','OT027','88038','Irsyad Hanif','jl.mawar bunga 128','Batam','Islam',1,'2008-03-05',0),('81028','12007','OT028','88038','Jauhar Putra Purnama','jl.mawar bunga 129','Batam','Islam',1,'2007-10-19',0),('81029','12007','OT029','88038','Khansa Azalia Nurwakhid','jl.mawar bunga 130','Batam','Islam',0,'2007-10-30',0),('81030','12007','OT030','88038','Amelia Risky Yunisa','jl.mawar bunga 131','Batam','Islam',0,'2008-02-20',0),('81031','12007','OT031','88038','Ade Rizki M','jl.mawar bunga 132','Batam','Islam',0,'2007-06-01',0),('81032','12007','OT032','88038','Muhammad Zaid Al Khoiri','jl.mawar bunga 133','Batam','Islam',1,'2007-03-05',0),('81033','12007','OT033','88038','Talitha Raissa Al Ahza','jl.mawar bunga 134','Batam','Islam',0,'2007-07-09',0),('81034','12007','OT034','88038','Azzura Nadia Shafin','jl.mawar bunga 135','Batam','Islam',0,'2008-06-11',0),('81035','12007','OT035','88038','Aufa Khoirunnisa Surahman','jl.mawar bunga 136','Batam','Islam',0,'2008-01-23',0),('81036','12007','OT036','88038','Mohammad Ismail Alfaiz','jl.mawar bunga 137','Batam','Islam',1,'2007-04-29',0),('81037','12007','OT037','88038','Ahmad Hasan Abdulloh','jl.mawar bunga 138','Batam','Islam',1,'2007-11-22',0),('81038','12007','OT038','88038','Ahmad Husain Abdulloh','jl.mawar bunga 139','Batam','Islam',1,'2007-10-27',0),('81039','12007','OT039','88038','Syirfia Ananda Sabrina','jl.mawar bunga 140','Batam','Islam',0,'2007-01-15',0),('81040','12007','OT040','88038','Nurul Yumna Khaerunnisa','jl.mawar bunga 141','Batam','Islam',0,'2007-02-23',0),('81041','12007','OT041','88038','Khonsa Salsabila Syahla','jl.mawar bunga 142','Batam','Islam',0,'2007-06-08',0),('81042','12007','OT042','88038','Harits Usroh Rafles','jl.mawar bunga 143','Batam','Islam',1,'2007-11-27',0),('81043','12007','OT043','88038','Mutiara Fitri Azzahra','jl.mawar bunga 144','Batam','Islam',0,'2008-09-29',0),('81044','12007','OT044','88038','Ananda Fasha Salsabila','jl.mawar bunga 145','Batam','Islam',0,'2007-05-25',0),('81045','12007','OT045','88038','Filzah Aura Musyah','jl.mawar bunga 146','Batam','Islam',0,'2007-08-18',0),('81046','12007','OT046','88038','Bilal Sulthan Robbani','jl.mawar bunga 147','Batam','Islam',1,'2007-04-21',0),('81047','12007','OT047','88038','Ghaida Tsuraya Aziz','jl.mawar bunga 148','Batam','Islam',0,'2007-06-27',0),('81048','12007','OT048','88038','Ali Hasan Arrobbani','jl.mawar bunga 149','Batam','Islam',1,'2007-04-24',0),('81049','12007','OT049','88038','Nadya Safwa Safina','jl.mawar bunga 150','Batam','Islam',0,'2007-12-18',0),('81050','12007','OT050','88038','Alifah Khoirunnisa','jl.mawar bunga 151','Batam','Islam',0,'2007-03-30',0),('81051','12008','OT051','58387','Abdurrahman Kholis','jl.mawar bunga 152','Batam','Islam',1,'2008-05-21',0),('81052','12008','OT052','58387','Syafafita Akhwat Latifah','jl.mawar bunga 153','Batam','Islam',0,'2008-08-30',0),('81053','12008','OT053','58387','Zahratu Syita','jl.mawar bunga 154','Batam','Islam',0,'2008-08-27',0),('81054','12008','OT054','58387','Yusuf Abdulloh','jl.mawar bunga 155','Batam','Islam',1,'2008-10-20',0),('81055','12008','OT055','58387','Naafiansyah Putra','jl.mawar bunga 156','Ngawi','Islam',1,'2008-09-18',0),('81056','12008','OT056','58387','Muhammad Arya Satya','jl.mawar bunga 157','Batam','Islam',1,'2008-05-17',0),('81057','12008','OT057','58387','Muhammad Zaky Fauzana','jl.mawar bunga 158','Batam','Islam',1,'2008-09-10',0),('81058','12008','OT058','58387','Dwi Rahmadiani','jl.mawar bunga 159','Banyumas','Islam',0,'2008-06-06',0),('81059','12008','OT059','58387','Balqist Rahma Hassan','jl.mawar bunga 160','Batam','Islam',0,'2009-06-18',0),('81060','12008','OT060','58387','Ridho Mizuno','jl.mawar bunga 161','Batam','Islam',1,'2008-12-24',0),('81061','12008','OT061','58387','Muhammad Abrar Al Faras','jl.mawar bunga 162','Batam','Islam',1,'2008-07-23',0),('81062','12008','OT062','58387','Mischa Azahra Ayuningtyas','jl.mawar bunga 163','Sragen','Islam',0,'2008-02-10',0),('81063','12008','OT063','58387','Izzatul Kamilah','jl.mawar bunga 164','Batam','Islam',0,'2008-07-29',0),('81064','12008','OT064','58387','Muhammad Al Rizky','jl.mawar bunga 165','Batam','Islam',1,'2008-03-04',0),('81065','12008','OT065','58387','Aulia Resnanda Aziz','jl.mawar bunga 166','Batam','Islam',0,'2008-02-10',0),('81066','12008','OT066','58387','Faran Raditya Juniardi','jl.mawar bunga 167','Batam','Islam',1,'2008-07-07',0),('81067','12008','OT067','58387','Shafa Az Zahra','jl.mawar bunga 168','Batam','Islam',0,'2008-12-26',0),('81068','12008','OT068','58387','Zerlitha Zalfaa Puspaning','jl.mawar bunga 169','Batam','Islam',0,'2009-03-29',0),('81069','12008','OT069','58387','Iffa Aufia Nugraha','jl.mawar bunga 170','Batam','Islam',0,'2009-07-16',0),('81070','12008','OT070','58387','Hanisah Putri Rasya','jl.mawar bunga 171','Batam','Islam',0,'2008-10-14',0),('81071','12008','OT071','58387','Muhammad Niyaz Naafinda','jl.mawar bunga 172','Batam','Islam',1,'2008-06-25',0),('81072','12008','OT072','58387','Adila Ashimatul Fillah','jl.mawar bunga 173','Batam','Islam',0,'2009-03-11',0),('81073','12008','OT073','58387','Muhammad Luqman Al Fatih','jl.mawar bunga 174','Tanjung Pinang','Islam',1,'2008-09-03',0),('81074','12008','OT074','58387','Muhammad Zaki Ilham Shidd','jl.mawar bunga 175','Batam','Islam',1,'2008-11-12',0),('81075','12008','OT075','58387','Uwais Mubarok Setiadi','jl.mawar bunga 176','Batam','Islam',1,'2008-03-27',0),('81076','12008','OT076','86477','Shifa Amalia','jl.mawar bunga 177','Batam','Islam',0,'2008-07-11',0),('81077','12008','OT077','86477','Muammar Kadafi','jl.mawar bunga 178','Batam','Islam',1,'2008-12-22',0),('81078','12008','OT078','86477','Naufal Abdurrahman Rizqi','jl.mawar bunga 179','Madiun','Islam',1,'2009-04-27',0),('81079','12008','OT079','86477','Raihan As Syifa Hakim','jl.mawar bunga 180','Batam','Islam',1,'2009-06-01',0),('81080','12008','OT080','86477','Arshad Bukhory Romly Asra','jl.mawar bunga 181','Batam','Islam',1,'2006-11-22',0),('81081','12008','OT081','86477','Ridho Rizki Ananda','jl.mawar bunga 182','Batam','Islam',1,'2006-08-11',0),('81082','12008','OT082','86477','Muhammad Aditya Taufik','jl.mawar bunga 183','Batam','Islam',1,'2009-07-22',0),('81083','12008','OT083','86477','Hafizhah As-Sa?diyyah','jl.mawar bunga 184','Langsa','Islam',0,'2008-01-28',0),('81084','12008','OT084','86477','Naila Zakyatussa?adah','jl.mawar bunga 185','Batam','Islam',0,'2008-05-25',0),('81085','12008','OT085','86477','Muhammad Abdul Aziz','jl.mawar bunga 186','Batam','Islam',1,'2007-11-01',0),('81086','12008','OT086','86477','Aghniya Nainawa Az-Zahra','jl.mawar bunga 187','Batam','Islam',0,'2008-06-30',0),('81087','12008','OT087','86477','A Alfagih C Raisyah','jl.mawar bunga 188','Klaten','Islam',1,'2007-08-13',0),('81088','12008','OT088','86477','Putri Nurul Laily','jl.mawar bunga 189','Batam','Islam',0,'2007-08-13',0),('81089','12008','OT089','86477','Vivi Diwanti Rachmasari','jl.mawar bunga 190','Surabaya','Islam',0,'2008-02-21',0),('81090','12008','OT090','86477','Bambang Irawan','jl.mawar bunga 191','Surabaya','Islam',1,'2007-10-23',0),('81091','12008','OT091','86477','Ridwan Abdul aziz','jl.mawar bunga 192','Surabaya','Islam',1,'2007-05-15',0),('81092','12008','OT092','86477','Sindi Fatmawati','jl.mawar bunga 193','Surabaya','Islam',0,'2008-02-12',0),('81093','12008','OT093','86477','Dania Rikha Prasanti','jl.mawar bunga 194','Surabaya','Islam',0,'2007-10-21',0),('81094','12008','OT094','86477','Affan Farih Akmala','jl.mawar bunga 195','Surabaya','Islam',1,'2007-11-05',0),('81095','12008','OT095','86477','Nabila Meidi Sugita','jl.mawar bunga 196','Surabaya','Islam',0,'2007-08-27',0),('81096','12008','OT096','86477','Arya Guntur Syihabudin','jl.mawar bunga 197','Surabaya','Islam',1,'2007-05-13',0),('81097','12008','OT097','86477','Pramita Resky Febrianti','jl.mawar bunga 198','Surabaya','Islam',0,'2007-12-05',0),('81098','12008','OT098','86477','Anisa lutfia Yasmin','jl.mawar bunga 199','Surabaya','Islam',0,'2007-05-26',0),('81099','12008','OT099','86477','Tri Wahyu Permana','jl.mawar bunga 200','Surabaya','Islam',1,'2008-04-09',0),('81100','12008','OT100','86477','Muftia Putri Kencana','jl.mawar bunga 201','Surabaya','Islam',0,'2008-01-17',0);

/*Table structure for table `orang_tua_wali` */

DROP TABLE IF EXISTS `orang_tua_wali`;

CREATE TABLE `orang_tua_wali` (
  `ID_ORANG_TUA1` CHAR(5) NOT NULL,
  `NAMA_AYAH1` VARCHAR(25) NOT NULL,
  `TEMPAT_LAHIR_AYAH` VARCHAR(20) DEFAULT NULL,
  `TANGGAL_LAHIR_AYAH` DATE DEFAULT NULL,
  `AGAMA_AYAH` VARCHAR(20) DEFAULT NULL,
  `PEKERJAAN_AYAH` VARCHAR(30) NOT NULL,
  `TELP_AYAH` VARCHAR(13) NOT NULL,
  `STATUS_AYAH` SMALLINT(6) NOT NULL,
  `NAMA_IBU1` VARCHAR(25) NOT NULL,
  `TEMPAT_LAHIR_IBU` VARCHAR(20) DEFAULT NULL,
  `TANGGAL_LAHIR_IBU` DATE DEFAULT NULL,
  `AGAMA_IBU` VARCHAR(20) DEFAULT NULL,
  `PEKERJAAN_IBU` VARCHAR(30) NOT NULL,
  `TELP_IBU` VARCHAR(13) NOT NULL,
  `STATUS_IBU` SMALLINT(6) NOT NULL,
  `ALAMAT_ORANG_TUA` VARCHAR(35) NOT NULL,
  PRIMARY KEY (`ID_ORANG_TUA1`),
  UNIQUE KEY `ORANG_TUA_WALI_PK` (`ID_ORANG_TUA1`)
) ENGINE=INNODB DEFAULT CHARSET=latin1;

/*Data for the table `orang_tua_wali` */

INSERT  INTO `orang_tua_wali`(`ID_ORANG_TUA1`,`NAMA_AYAH1`,`TEMPAT_LAHIR_AYAH`,`TANGGAL_LAHIR_AYAH`,`AGAMA_AYAH`,`PEKERJAAN_AYAH`,`TELP_AYAH`,`STATUS_AYAH`,`NAMA_IBU1`,`TEMPAT_LAHIR_IBU`,`TANGGAL_LAHIR_IBU`,`AGAMA_IBU`,`PEKERJAAN_IBU`,`TELP_IBU`,`STATUS_IBU`,`ALAMAT_ORANG_TUA`) VALUES ('OT001','Palinem','Mojokerto','1984-04-12','Islam','PNS','83425671231',0,'Mipih Mulyani','Kediri','1986-04-01','Islam','Ibu Rumah Tangga','87543671234',0,'jl.mawar bunga 102'),('OT002','Joko ','Sidoarjo','1984-10-24','Islam','PNS','83425671232',0,'Tri Yulianti','Nganjuk','1986-04-02','Islam','Ibu Rumah Tangga','87543671235',0,'jl.mawar bunga 103'),('OT003','Pidi','Pasuruan','1984-01-01','Islam','PNS','83425671233',0,'Susilowati','Surabaya','1986-04-03','Islam','Ibu Rumah Tangga','87543671236',0,'jl.mawar bunga 104'),('OT004','Suparman','Surabaya','1984-01-02','Islam','Pedagang','83425671234',0,'Sofari Rahmidiah Nensih','Gresik','1986-04-04','Islam','Ibu Rumah Tangga','87543671237',0,'jl.mawar bunga 105'),('OT005','Susilo','Kediri','1984-01-03','Islam','Polisi','83425671235',0,'Syahrani','Mojokerto','1986-04-05','Islam','Ibu Rumah Tangga','87543671238',0,'jl.mawar bunga 106'),('OT006','Bambang','Nganjuk','1984-01-04','Islam','Bidan','83425671236',0,'Lia Utami','Pasuruan','1986-04-06','Islam','Ibu Rumah Tangga','87543671239',0,'jl.mawar bunga 107'),('OT007','Yudhoyono','Mojokerto','1984-01-05','Islam','Dokter','83425671237',0,'Purnamawaty','Sidoarjo','1986-04-07','Islam','Ibu Rumah Tangga','87543671240',0,'jl.mawar bunga 108'),('OT008','Jaka','Sidoarjo','1984-01-06','Islam','Guru','83425671238',0,'Yanti Nuryanti','Madiun','1986-04-08','Islam','Ibu Rumah Tangga','87543671241',0,'jl.mawar bunga 109'),('OT009','Zakar','Pasuruan','1984-01-07','Islam','Karyawan','83425671239',0,'Asih Rihayati','Mojokerto','1986-04-09','Islam','Ibu Rumah Tangga','87543671242',0,'jl.mawar bunga 110'),('OT010','Abdul','Surabaya','1984-01-08','Islam','Wiraswasta','83425671240',0,'Nur Ita Deni Krisnawati','Kediri','1986-04-10','Islam','Ibu Rumah Tangga','87543671243',0,'jl.mawar bunga 111'),('OT011','Widodo','Kediri','1984-01-09','Islam','PNS','83425671241',0,'Nur Zubaidah','Nganjuk','1986-04-11','Islam','Ibu Rumah Tangga','87543671244',0,'jl.mawar bunga 112'),('OT012','Waliyo','Nganjuk','1984-01-10','Islam','Pedagang','83425671242',0,'Rofi Atul Hasna','Surabaya','1986-04-12','Islam','Ibu Rumah Tangga','87543671245',0,'jl.mawar bunga 113'),('OT013','Bayu Putra','Mojokerto','1984-01-11','Islam','Polisi','83425671243',0,'Heni Winarti','Gresik','1986-04-13','Islam','Ibu Rumah Tangga','87543671246',0,'jl.mawar bunga 114'),('OT014','Rahman','Sidoarjo','1984-01-12','Islam','Bidan','83425671244',0,'Wangsit SriSulistyo Dewi','Mojokerto','1986-04-14','Islam','Ibu Rumah Tangga','87543671247',0,'jl.mawar bunga 115'),('OT015','Farid','Pasuruan','1984-01-13','Islam','Dokter','83425671245',0,'Innayah','Pasuruan','1986-04-15','Islam','Ibu Rumah Tangga','87543671248',0,'jl.mawar bunga 116'),('OT016','Bagus','Surabaya','1984-01-14','Islam','Guru','83425671246',0,'Susiana','Sidoarjo','1986-04-16','Islam','Ibu Rumah Tangga','87543671249',0,'jl.mawar bunga 117'),('OT017','Sigit','Kediri','1984-01-15','Islam','Karyawan','83425671247',0,'Riske Wulandari','Madiun','1986-04-17','Islam','Ibu Rumah Tangga','87543671250',0,'jl.mawar bunga 118'),('OT018','Sandy','Nganjuk','1984-01-16','Islam','Wiraswasta','83425671248',0,'Siti Syamsiah','Mojokerto','1986-04-18','Islam','Ibu Rumah Tangga','87543671251',0,'jl.mawar bunga 119'),('OT019','Taufik','Mojokerto','1984-01-17','Islam','PNS','83425671249',0,'Sandinem','Kediri','1986-04-19','Islam','Ibu Rumah Tangga','87543671252',0,'jl.mawar bunga 120'),('OT020','Zulfikar','Sidoarjo','1984-01-18','Islam','Pedagang','83425671250',0,'Retty Insovi','Nganjuk','1986-04-20','Islam','Ibu Rumah Tangga','87543671253',0,'jl.mawar bunga 121'),('OT021','Baharudin','Pasuruan','1984-01-19','Islam','Polisi','83425671251',0,'Yuliana','Surabaya','1986-04-21','Islam','Ibu Rumah Tangga','87543671254',0,'jl.mawar bunga 122'),('OT022','Azis','Surabaya','1984-01-20','Islam','Bidan','83425671252',0,'Lusiyanti','Gresik','1986-04-22','Islam','Ibu Rumah Tangga','87543671255',0,'jl.mawar bunga 123'),('OT023','Yusuf','Kediri','1984-01-21','Islam','Dokter','83425671253',0,'Yayuk Winarsih','Mojokerto','1986-04-23','Islam','Ibu Rumah Tangga','87543671256',0,'jl.mawar bunga 124'),('OT024','Amin','Nganjuk','1984-01-22','Islam','Guru','83425671254',0,'Rizky Amalia Sembiring','Pasuruan','1986-04-24','Islam','Ibu Rumah Tangga','87543671257',0,'jl.mawar bunga 125'),('OT025','Choirul','Mojokerto','1984-01-23','Islam','Karyawan','83425671255',0,'Siswati','Sidoarjo','1986-04-25','Islam','Ibu Rumah Tangga','87543671258',0,'jl.mawar bunga 126'),('OT026','Arman','Sidoarjo','1984-01-24','Islam','Wiraswasta','83425671256',0,'Ratih Rahmi','Madiun','1986-04-26','Islam','Ibu Rumah Tangga','87543671259',0,'jl.mawar bunga 127'),('OT027','Ridwan','Pasuruan','1984-01-25','Islam','PNS','83425671257',0,'Purnomoningsih','Surabaya','1986-04-27','Islam','Ibu Rumah Tangga','87543671260',0,'jl.mawar bunga 128'),('OT028','Malik','Surabaya','1984-01-26','Islam','Pedagang','83425671258',0,'Riau Lina','Kediri','1986-04-28','Islam','Ibu Rumah Tangga','87543671261',0,'jl.mawar bunga 129'),('OT029','Diwan','Kediri','1984-01-27','Islam','Polisi','83425671259',0,'Ernawati','Nganjuk','1986-04-29','Islam','Ibu Rumah Tangga','87543671262',0,'jl.mawar bunga 130'),('OT030','Rizky','Nganjuk','1984-01-28','Islam','Bidan','83425671260',0,'Sri Haryani','Surabaya','1986-04-30','Islam','Ibu Rumah Tangga','87543671263',0,'jl.mawar bunga 131'),('OT031','Wahyu','Mojokerto','1984-01-29','Islam','Dokter','83425671261',0,'Erni','Gresik','1986-05-01','Islam','Ibu Rumah Tangga','87543671264',0,'jl.mawar bunga 132'),('OT032','Purnomo','Sidoarjo','1984-01-30','Islam','Guru','83425671262',0,'Sri Puji Pajriani','Mojokerto','1986-05-02','Islam','Ibu Rumah Tangga','87543671265',0,'jl.mawar bunga 133'),('OT033','Sutisna','Pasuruan','1984-01-31','Islam','Karyawan','83425671263',0,'Susanti Al Nurchayati','Pasuruan','1986-05-03','Islam','Ibu Rumah Tangga','87543671266',0,'jl.mawar bunga 134'),('OT034','Rojak','Surabaya','1984-02-01','Islam','Wiraswasta','83425671264',0,'Purhandayani','Sidoarjo','1986-05-04','Islam','Ibu Rumah Tangga','87543671267',0,'jl.mawar bunga 135'),('OT035','Fahmi','Kediri','1984-02-02','Islam','PNS','83425671265',0,'Yenni Harianti','Madiun','1986-05-05','Islam','Ibu Rumah Tangga','87543671268',0,'jl.mawar bunga 136'),('OT036','Ilyas','Nganjuk','1984-02-03','Islam','Pedagang','83425671266',0,'Siti Rohimi','Surabaya','1986-05-06','Islam','Ibu Rumah Tangga','87543671269',0,'jl.mawar bunga 137'),('OT037','Agus','Mojokerto','1984-02-04','Islam','Polisi','83425671267',0,'Winarsih','Kediri','1986-05-07','Islam','Ibu Rumah Tangga','87543671270',0,'jl.mawar bunga 138'),('OT038','Oki','Sidoarjo','1984-02-05','Islam','Bidan','83425671268',0,'Winarsih','Nganjuk','1986-05-08','Islam','Ibu Rumah Tangga','87543671271',0,'jl.mawar bunga 139'),('OT039','Fahrul','Pasuruan','1984-02-06','Islam','Dokter','83425671269',0,'Nanik Haryani','Surabaya','1986-05-09','Islam','Ibu Rumah Tangga','87543671272',0,'jl.mawar bunga 140'),('OT040','Bani','Surabaya','1984-02-07','Islam','Guru','83425671270',0,'Suci Rahmawati','Gresik','1986-05-10','Islam','Ibu Rumah Tangga','87543671273',0,'jl.mawar bunga 141'),('OT041','Basuki','Kediri','1984-02-08','Islam','Karyawan','83425671271',0,'Dwi Wahyuni','Mojokerto','1986-05-11','Islam','Ibu Rumah Tangga','87543671274',0,'jl.mawar bunga 142'),('OT042','Rahmat','Nganjuk','1984-02-09','Islam','Wiraswasta','83425671272',0,'Shanti Sari Dewi','Pasuruan','1986-05-12','Islam','Ibu Rumah Tangga','87543671275',0,'jl.mawar bunga 143'),('OT043','Ade','Mojokerto','1984-02-10','Islam','PNS','83425671273',0,'Sakinah','Sidoarjo','1986-05-13','Islam','Ibu Rumah Tangga','87543671276',0,'jl.mawar bunga 144'),('OT044','Mansyur','Sidoarjo','1984-02-11','Islam','Pedagang','83425671274',0,'Neliwati','Madiun','1986-05-14','Islam','Ibu Rumah Tangga','87543671277',0,'jl.mawar bunga 145'),('OT045','Syafi\'i','Pasuruan','1984-02-12','Islam','Polisi','83425671275',0,'Kusdik Nur Aisyah','Surabaya','1986-05-15','Islam','Ibu Rumah Tangga','87543671278',0,'jl.mawar bunga 146'),('OT046','Pujianto','Surabaya','1984-02-13','Islam','Bidan','83425671276',0,'Wijiati','Kediri','1986-05-16','Islam','Ibu Rumah Tangga','87543671279',0,'jl.mawar bunga 147'),('OT047','Nugroho','Kediri','1984-02-14','Islam','Dokter','83425671277',0,'Warni','Nganjuk','1986-05-17','Islam','Ibu Rumah Tangga','87543671280',0,'jl.mawar bunga 148'),('OT048','Munanto','Nganjuk','1984-02-15','Islam','Guru','83425671278',0,'Worowati','Surabaya','1986-05-18','Islam','Ibu Rumah Tangga','87543671281',0,'jl.mawar bunga 149'),('OT049','Anto','Mojokerto','1984-02-16','Islam','Karyawan','83425671279',0,'Yeni Prasetya Purwati','Gresik','1986-05-19','Islam','Ibu Rumah Tangga','87543671282',0,'jl.mawar bunga 150'),('OT050','Rahardian','Sidoarjo','1984-02-17','Islam','Wiraswasta','83425671280',0,'Andriani','Mojokerto','1986-05-20','Islam','Ibu Rumah Tangga','87543671283',0,'jl.mawar bunga 151'),('OT051','Sumitro','Pasuruan','1984-02-18','Islam','PNS','83425671281',0,'Isra Mira Wijaya','Pasuruan','1986-05-21','Islam','Ibu Rumah Tangga','87543671284',0,'jl.mawar bunga 152'),('OT052','Deden','Surabaya','1984-02-19','Islam','Pedagang','83425671282',0,'Fitri Yuliyanti','Sidoarjo','1986-05-22','Islam','Ibu Rumah Tangga','87543671285',0,'jl.mawar bunga 153'),('OT053','Hermawan','Kediri','1984-02-20','Islam','Polisi','83425671283',0,'Ica Yani Saragih','Madiun','1986-05-23','Islam','Ibu Rumah Tangga','87543671286',0,'jl.mawar bunga 154'),('OT054','Wisnu','Nganjuk','1984-02-21','Islam','Bidan','83425671284',0,'Sri Purwati','Surabaya','1986-05-24','Islam','Ibu Rumah Tangga','87543671287',0,'jl.mawar bunga 155'),('OT055','Eko','Mojokerto','1984-02-22','Islam','Dokter','83425671285',0,'Tutik Sulastri','Kediri','1986-05-25','Islam','Ibu Rumah Tangga','87543671288',0,'jl.mawar bunga 156'),('OT056','Erwin','Sidoarjo','1984-02-23','Islam','Guru','83425671286',0,'Fitri Tusana','Nganjuk','1986-05-26','Islam','Ibu Rumah Tangga','87543671289',0,'jl.mawar bunga 157'),('OT057','Didit','Pasuruan','1984-02-24','Islam','Karyawan','83425671287',0,'Suyanti','Surabaya','1986-05-27','Islam','Ibu Rumah Tangga','87543671290',0,'jl.mawar bunga 158'),('OT058','Susanto','Surabaya','1984-02-25','Islam','Wiraswasta','83425671288',0,'Sugiarti','Gresik','1986-05-28','Islam','Ibu Rumah Tangga','87543671291',0,'jl.mawar bunga 159'),('OT059','Priyo','Kediri','1984-02-26','Islam','PNS','83425671289',0,'Siti Wahyu','Mojokerto','1986-05-29','Islam','Ibu Rumah Tangga','87543671292',0,'jl.mawar bunga 160'),('OT060','Prambudi','Nganjuk','1984-02-27','Islam','Pedagang','83425671290',0,'Lizanova RiantiS','Pasuruan','1986-05-30','Islam','Ibu Rumah Tangga','87543671293',0,'jl.mawar bunga 161'),('OT061','Suwandi','Mojokerto','1984-02-28','Islam','Polisi','83425671291',0,'Lisna','Sidoarjo','1986-05-31','Islam','Ibu Rumah Tangga','87543671294',0,'jl.mawar bunga 162'),('OT062','Gunomo','Sidoarjo','1984-02-29','Islam','Bidan','83425671292',0,'Mahrani Daulay','Madiun','1986-06-01','Islam','Ibu Rumah Tangga','87543671295',0,'jl.mawar bunga 163'),('OT063','Kiswanto','Pasuruan','1984-03-01','Islam','Dokter','83425671293',0,'Leni Marlina','Surabaya','1986-06-02','Islam','Ibu Rumah Tangga','87543671296',0,'jl.mawar bunga 164'),('OT064','Aris','Surabaya','1984-03-02','Islam','Guru','83425671294',0,'Sri Karomah','Kediri','1986-06-03','Islam','Ibu Rumah Tangga','87543671297',0,'jl.mawar bunga 165'),('OT065','Budianto','Kediri','1984-03-03','Islam','Karyawan','83425671295',0,'Mundorikah','Nganjuk','1986-06-04','Islam','Ibu Rumah Tangga','87543671298',0,'jl.mawar bunga 166'),('OT066','Wibowo','Nganjuk','1984-03-04','Islam','Wiraswasta','83425671296',0,'Farmasia','Surabaya','1986-06-05','Islam','Ibu Rumah Tangga','87543671299',0,'jl.mawar bunga 167'),('OT067','Junaedi','Mojokerto','1984-03-05','Islam','PNS','83425671297',0,'Nurul Siti Rohimin','Gresik','1986-06-06','Islam','Ibu Rumah Tangga','87543671300',0,'jl.mawar bunga 168'),('OT068','Yunarko','Sidoarjo','1984-03-06','Islam','Pedagang','83425671298',0,'Ethik Budiwati','Mojokerto','1986-06-07','Islam','Ibu Rumah Tangga','87543671301',0,'jl.mawar bunga 169'),('OT069','Wiyanto','Pasuruan','1984-03-07','Islam','Polisi','83425671299',0,'Dwi Sulistyowati','Pasuruan','1986-06-08','Islam','Ibu Rumah Tangga','87543671302',0,'jl.mawar bunga 170'),('OT070','Hermanto','Surabaya','1984-03-08','Islam','Bidan','83425671300',0,'Waras Wati','Sidoarjo','1986-06-09','Islam','Ibu Rumah Tangga','87543671303',0,'jl.mawar bunga 171'),('OT071','Subagyo','Kediri','1984-03-09','Islam','Dokter','83425671301',0,'Siti Syamsiyah','Madiun','1986-06-10','Islam','Ibu Rumah Tangga','87543671304',0,'jl.mawar bunga 172'),('OT072','Munawir','Nganjuk','1984-03-10','Islam','Guru','83425671302',0,'Purnomoningsih','Surabaya','1986-06-11','Islam','Ibu Rumah Tangga','87543671305',0,'jl.mawar bunga 173'),('OT073','Rusdi','Mojokerto','1984-03-11','Islam','Karyawan','83425671303',0,'Rany Dwi Haryanti','Kediri','1986-06-12','Islam','Ibu Rumah Tangga','87543671306',0,'jl.mawar bunga 174'),('OT074','Efendi','Sidoarjo','1984-03-12','Islam','Wiraswasta','83425671304',0,'Susanti','Nganjuk','1986-06-13','Islam','Ibu Rumah Tangga','87543671307',0,'jl.mawar bunga 175'),('OT075','Ari','Pasuruan','1984-03-13','Islam','PNS','83425671305',0,'Surati','Surabaya','1986-06-14','Islam','Ibu Rumah Tangga','87543671308',0,'jl.mawar bunga 176'),('OT076','Widananto','Surabaya','1984-03-14','Islam','Pedagang','83425671306',0,'Atmini','Gresik','1986-06-15','Islam','Ibu Rumah Tangga','87543671309',0,'jl.mawar bunga 177'),('OT077','Wawan','Kediri','1984-03-15','Islam','Polisi','83425671307',0,'Suraidah','Mojokerto','1986-06-16','Islam','Ibu Rumah Tangga','87543671310',0,'jl.mawar bunga 178'),('OT078','Abulloh','Nganjuk','1984-03-16','Islam','Bidan','83425671308',0,'Wiwinarsih','Pasuruan','1986-06-17','Islam','Ibu Rumah Tangga','87543671311',0,'jl.mawar bunga 179'),('OT079','Imam','Mojokerto','1984-03-17','Islam','Dokter','83425671309',0,'Afri Netria','Sidoarjo','1986-06-18','Islam','Ibu Rumah Tangga','87543671312',0,'jl.mawar bunga 180'),('OT080','Teguh','Sidoarjo','1984-03-18','Islam','Guru','83425671310',0,'Meliya Sari','Madiun','1986-06-19','Islam','Ibu Rumah Tangga','87543671313',0,'jl.mawar bunga 181'),('OT081','Ahmad','Pasuruan','1984-03-19','Islam','Karyawan','83425671311',0,'Endai Wati','Surabaya','1986-06-20','Islam','Ibu Rumah Tangga','87543671314',0,'jl.mawar bunga 182'),('OT082','Sutisno','Surabaya','1984-03-20','Islam','Wiraswasta','83425671312',0,'Delita Filya','Kediri','1986-06-21','Islam','Ibu Rumah Tangga','87543671315',0,'jl.mawar bunga 183'),('OT083','Sukijan','Kediri','1984-03-21','Islam','PNS','83425671313',0,'Susilawati','Nganjuk','1986-06-22','Islam','Ibu Rumah Tangga','87543671316',0,'jl.mawar bunga 184'),('OT084','Wahyudi','Nganjuk','1984-03-22','Islam','Pedagang','83425671314',0,'Sri Mujeki','Surabaya','1986-06-23','Islam','Ibu Rumah Tangga','87543671317',0,'jl.mawar bunga 185'),('OT085','Satriadi','Mojokerto','1984-03-23','Islam','Polisi','83425671315',0,'Windi Oktafia','Gresik','1986-06-24','Islam','Ibu Rumah Tangga','87543671318',0,'jl.mawar bunga 186'),('OT086','Muttakin','Sidoarjo','1984-03-24','Islam','Bidan','83425671316',0,'Sumaryanti','Mojokerto','1986-06-25','Islam','Ibu Rumah Tangga','87543671319',0,'jl.mawar bunga 187'),('OT087','Muklis','Pasuruan','1984-03-25','Islam','Dokter','83425671317',0,'Warti','Pasuruan','1986-06-26','Islam','Ibu Rumah Tangga','87543671320',0,'jl.mawar bunga 188'),('OT088','Anang','Surabaya','1984-03-26','Islam','Guru','83425671318',0,'Neneng Otovia','Sidoarjo','1986-06-27','Islam','Ibu Rumah Tangga','87543671321',0,'jl.mawar bunga 189'),('OT089','Wibisono','Kediri','1984-03-27','Islam','Karyawan','83425671319',0,'Annisa Putri Karlina','Madiun','1986-06-28','Islam','Ibu Rumah Tangga','87543671322',0,'jl.mawar bunga 190'),('OT090','Gunawan','Nganjuk','1984-03-28','Islam','Wiraswasta','83425671320',0,'Lailatul Dharmahusada','Surabaya','1986-06-29','Islam','Ibu Rumah Tangga','87543671323',0,'jl.mawar bunga 191'),('OT091','Hendra','Mojokerto','1984-03-29','Islam','PNS','83425671321',0,'Nurlaela','Kediri','1986-06-30','Islam','Ibu Rumah Tangga','87543671324',0,'jl.mawar bunga 192'),('OT092','Wijaya','Sidoarjo','1984-03-30','Islam','Pedagang','83425671322',0,'Farida Amalia','Nganjuk','1986-07-01','Islam','Ibu Rumah Tangga','87543671325',0,'jl.mawar bunga 193'),('OT093','Wijayanto','Pasuruan','1984-03-31','Islam','Polisi','83425671323',0,'Mayang  Hartanti','Surabaya','1986-07-02','Islam','Ibu Rumah Tangga','87543671326',0,'jl.mawar bunga 194'),('OT094','Heri','Surabaya','1984-04-01','Islam','Bidan','83425671324',0,'Tatik Mulyanti','Gresik','1986-07-03','Islam','Ibu Rumah Tangga','87543671327',0,'jl.mawar bunga 195'),('OT095','Hidayat','Kediri','1984-04-02','Islam','Dokter','83425671325',0,'Rini Susilowati','Mojokerto','1986-07-04','Islam','Ibu Rumah Tangga','87543671328',0,'jl.mawar bunga 196'),('OT096','Irwan','Nganjuk','1984-04-03','Islam','Guru','83425671326',0,'Endah Purbasari','Pasuruan','1986-07-05','Islam','Ibu Rumah Tangga','87543671329',0,'jl.mawar bunga 197'),('OT097','Nasir','Mojokerto','1984-04-04','Islam','Karyawan','83425671327',0,'Dewita','Sidoarjo','1986-07-06','Islam','Ibu Rumah Tangga','87543671330',0,'jl.mawar bunga 198'),('OT098','Baim','Sidoarjo','1984-04-05','Islam','Wiraswasta','83425671328',0,'Ratih Habsari','Madiun','1986-07-07','Islam','Ibu Rumah Tangga','87543671331',0,'jl.mawar bunga 199'),('OT099','Dewita','Pasuruan','1984-04-06','Islam','PNS','83425671329',0,'Fira Aprilia','Surabaya','1986-07-08','Islam','Ibu Rumah Tangga','87543671332',0,'jl.mawar bunga 200'),('OT100','Ratih Habsari','Surabaya','1984-04-07','Islam','Pedagang','83425671330',0,'Mulyani Dewi','Kediri','1986-07-09','Islam','Ibu Rumah Tangga','87543671333',0,'jl.mawar bunga 201');

/*Table structure for table `panilaian_bulanan` */

DROP TABLE IF EXISTS `panilaian_bulanan`;

CREATE TABLE `panilaian_bulanan` (
  `ID_PENILAIAN_BULANAN2` CHAR(6) NOT NULL,
  `PERIODE_BULAN` VARCHAR(15) DEFAULT NULL,
  PRIMARY KEY (`ID_PENILAIAN_BULANAN2`),
  UNIQUE KEY `PANILAIAN_BULANAN_PK` (`ID_PENILAIAN_BULANAN2`)
) ENGINE=INNODB DEFAULT CHARSET=latin1;

/*Data for the table `panilaian_bulanan` */

INSERT  INTO `panilaian_bulanan`(`ID_PENILAIAN_BULANAN2`,`PERIODE_BULAN`) VALUES ('PB1201','Januari'),('PB1202','Februari'),('PB1203','Maret'),('PB1204','April'),('PB1205','Mei'),('PB1206','Juni'),('PB1207','Juli'),('PB1208','Agustus'),('PB1209','September'),('PB1210','Oktober'),('PB1211','November'),('PB1212','Desember');

/*Table structure for table `pembayaran` */

DROP TABLE IF EXISTS `pembayaran`;

CREATE TABLE `pembayaran` (
  `KODE_PEMBEYARAN` CHAR(6) NOT NULL,
  `ID_ORANG_TUA1` CHAR(5) NOT NULL,
  `ID_ADMIN` CHAR(4) NOT NULL,
  `KODE_TAGIHAN` VARCHAR(5) NOT NULL,
  `TANGGAL_PEMBAYARAN` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `JENIS_PEMBAYARAN` VARCHAR(30) NOT NULL,
  `TOTAL_TAGIHAN` INT(11) DEFAULT NULL,
  `STATUS_PEMBAYARAN` INT(11) DEFAULT NULL,
  PRIMARY KEY (`KODE_PEMBEYARAN`),
  UNIQUE KEY `PEMBAYARAN_PK` (`KODE_PEMBEYARAN`),
  KEY `DITERIMA1_FK` (`ID_ADMIN`),
  KEY `MELAKUKAN_FK` (`ID_ORANG_TUA1`),
  KEY `MELUKAN_FK` (`KODE_TAGIHAN`),
  CONSTRAINT `FK_PEMBAYAR_DITERIMA1_ADMIN` FOREIGN KEY (`ID_ADMIN`) REFERENCES `admin` (`ID_ADMIN`),
  CONSTRAINT `FK_PEMBAYAR_MELAKUKAN_ORANG_TU` FOREIGN KEY (`ID_ORANG_TUA1`) REFERENCES `orang_tua_wali` (`ID_ORANG_TUA1`),
  CONSTRAINT `FK_PEMBAYAR_MELUKAN_TAGIHAN` FOREIGN KEY (`KODE_TAGIHAN`) REFERENCES `tagihan` (`KODE_TAGIHAN`)
) ENGINE=INNODB DEFAULT CHARSET=latin1;

/*Data for the table `pembayaran` */

INSERT  INTO `pembayaran`(`KODE_PEMBEYARAN`,`ID_ORANG_TUA1`,`ID_ADMIN`,`KODE_TAGIHAN`,`TANGGAL_PEMBAYARAN`,`JENIS_PEMBAYARAN`,`TOTAL_TAGIHAN`,`STATUS_PEMBAYARAN`) VALUES ('PBN001','OT001','A001','KD01','2012-07-01 00:00:00','tunai',200000,0),('PBN002','OT002','A001','KD02','2012-07-02 00:00:00','tunai',400000,0),('PBN003','OT003','A001','KD03','2012-07-03 00:00:00','tunai',1000000,0),('PBN004','OT004','A001','KD04','2012-07-04 00:00:00','tunai',200000,0),('PBN005','OT005','A001','KD05','2012-07-05 00:00:00','tunai',200000,0),('PBN006','OT006','A001','KD06','2012-07-06 00:00:00','tunai',400000,0),('PBN007','OT007','A001','KD07','2012-07-07 00:00:00','tunai',1000000,0),('PBN008','OT008','A001','KD08','2012-07-08 00:00:00','tunai',200000,0),('PBN009','OT009','A001','KD09','2012-07-09 00:00:00','tunai',200000,0),('PBN010','OT010','A001','KD10','2012-07-10 00:00:00','non tunai',400000,0),('PBN011','OT011','A001','KD11','2012-07-11 00:00:00','non tunai',1000000,0),('PBN012','OT012','A001','KD12','2012-07-12 00:00:00','non tunai',200000,0),('PBN013','OT013','A001','KD13','2012-07-13 00:00:00','non tunai',200000,0),('PBN014','OT014','A001','KD14','2012-07-14 00:00:00','non tunai',400000,0),('PBN015','OT015','A001','KD15','2012-07-15 00:00:00','non tunai',1000000,0),('PBN016','OT016','A001','KD16','2012-07-16 00:00:00','non tunai',200000,0),('PBN017','OT017','A001','KD17','2012-07-17 00:00:00','non tunai',200000,0),('PBN018','OT018','A001','KD18','2012-07-18 00:00:00','non tunai',400000,0),('PBN019','OT019','A001','KD19','2012-07-19 00:00:00','non tunai',1000000,0),('PBN020','OT020','A001','KD20','2012-07-20 00:00:00','non tunai',200000,0),('PBN021','OT021','A001','KD21','2012-07-21 00:00:00','non tunai',200000,0),('PBN022','OT022','A001','KD22','2012-07-22 00:00:00','non tunai',400000,0),('PBN023','OT023','A001','KD23','2012-07-23 00:00:00','non tunai',1000000,0),('PBN024','OT024','A001','KD24','2012-07-24 00:00:00','tunai',200000,0),('PBN025','OT025','A001','KD25','2012-07-25 00:00:00','tunai',200000,0),('PBN026','OT026','A001','KD26','2012-07-26 00:00:00','tunai',400000,0),('PBN027','OT027','A001','KD27','2012-07-27 00:00:00','tunai',1000000,0),('PBN028','OT028','A001','KD28','2012-07-28 00:00:00','tunai',200000,0),('PBN029','OT029','A001','KD29','2012-07-29 00:00:00','tunai',200000,0),('PBN030','OT030','A001','KD30','2012-07-30 00:00:00','tunai',400000,0),('PBN031','OT031','A001','KD31','2012-07-31 00:00:00','tunai',1000000,0),('PBN032','OT032','A001','KD32','2012-08-01 00:00:00','tunai',200000,0),('PBN033','OT033','A001','KD33','2012-08-02 00:00:00','tunai',200000,0),('PBN034','OT034','A001','KD34','2012-08-03 00:00:00','tunai',400000,0),('PBN035','OT035','A001','KD35','2012-08-04 00:00:00','tunai',1000000,0),('PBN036','OT036','A001','KD36','2012-08-05 00:00:00','tunai',200000,0),('PBN037','OT037','A001','KD37','2012-08-06 00:00:00','tunai',200000,0),('PBN038','OT038','A001','KD38','2012-08-07 00:00:00','tunai',400000,0),('PBN039','OT039','A001','KD39','2012-08-08 00:00:00','tunai',1000000,0),('PBN040','OT040','A001','KD40','2012-08-09 00:00:00','tunai',200000,0),('PBN041','OT041','A001','KD41','2012-08-10 00:00:00','tunai',200000,0),('PBN042','OT042','A001','KD42','2012-08-11 00:00:00','tunai',400000,0),('PBN043','OT043','A001','KD43','2012-08-12 00:00:00','tunai',1000000,0),('PBN044','OT044','A001','KD44','2012-08-13 00:00:00','tunai',200000,0),('PBN045','OT045','A001','KD45','2012-08-14 00:00:00','tunai',200000,0),('PBN046','OT046','A001','KD46','2012-08-15 00:00:00','tunai',400000,0),('PBN047','OT047','A001','KD47','2012-08-16 00:00:00','tunai',1000000,0),('PBN048','OT048','A001','KD48','2012-08-17 00:00:00','tunai',200000,0),('PBN049','OT049','A001','KD49','2012-08-18 00:00:00','tunai',200000,0),('PBN050','OT050','A001','KD50','2012-08-19 00:00:00','tunai',400000,0),('PBN051','OT051','A002','KD51','2013-07-01 00:00:00','tunai',1000000,0),('PBN052','OT052','A002','KD52','2013-07-02 00:00:00','tunai',200000,0),('PBN053','OT053','A002','KD53','2013-07-03 00:00:00','tunai',200000,0),('PBN054','OT054','A002','KD54','2013-07-04 00:00:00','tunai',400000,0),('PBN055','OT055','A002','KD55','2013-07-05 00:00:00','tunai',1000000,0),('PBN056','OT056','A002','KD56','2013-07-06 00:00:00','non tunai',200000,0),('PBN057','OT057','A002','KD57','2013-07-07 00:00:00','non tunai',200000,0),('PBN058','OT058','A002','KD58','2013-07-08 00:00:00','non tunai',400000,0),('PBN059','OT059','A002','KD59','2013-07-09 00:00:00','non tunai',1000000,0),('PBN060','OT060','A002','KD60','2013-07-10 00:00:00','non tunai',200000,0),('PBN061','OT061','A002','KD61','2013-07-11 00:00:00','non tunai',200000,0),('PBN062','OT062','A002','KD62','2013-07-12 00:00:00','non tunai',400000,0),('PBN063','OT063','A002','KD63','2013-07-13 00:00:00','non tunai',1000000,0),('PBN064','OT064','A002','KD64','2013-07-14 00:00:00','non tunai',200000,0),('PBN065','OT065','A002','KD65','2013-07-15 00:00:00','non tunai',200000,0),('PBN066','OT066','A002','KD66','2013-07-16 00:00:00','non tunai',400000,0),('PBN067','OT067','A002','KD67','2013-07-17 00:00:00','non tunai',1000000,0),('PBN068','OT068','A002','KD68','2013-07-18 00:00:00','tunai',200000,0),('PBN069','OT069','A002','KD69','2013-07-19 00:00:00','tunai',200000,0),('PBN070','OT070','A002','KD70','2013-07-20 00:00:00','tunai',400000,0),('PBN071','OT071','A002','KD71','2013-07-21 00:00:00','tunai',1000000,0),('PBN072','OT072','A002','KD72','2013-07-22 00:00:00','tunai',200000,0),('PBN073','OT073','A002','KD73','2013-07-23 00:00:00','tunai',200000,0),('PBN074','OT074','A002','KD74','2013-07-24 00:00:00','tunai',400000,0),('PBN075','OT075','A002','KD75','2013-07-25 00:00:00','tunai',1000000,0),('PBN076','OT076','A002','KD76','2013-07-26 00:00:00','tunai',200000,0),('PBN077','OT077','A002','KD77','2013-07-27 00:00:00','tunai',200000,0),('PBN078','OT078','A002','KD78','2013-07-28 00:00:00','tunai',400000,0),('PBN079','OT079','A002','KD79','2013-07-29 00:00:00','tunai',1000000,0),('PBN080','OT080','A002','KD80','2013-07-30 00:00:00','tunai',200000,0),('PBN081','OT081','A002','KD81','2013-07-31 00:00:00','tunai',200000,0),('PBN082','OT082','A002','KD82','2013-08-01 00:00:00','tunai',400000,0),('PBN083','OT083','A002','KD83','2013-08-02 00:00:00','tunai',1000000,0),('PBN084','OT084','A002','KD84','2013-08-03 00:00:00','tunai',200000,0),('PBN085','OT085','A002','KD85','2013-08-04 00:00:00','tunai',200000,0),('PBN086','OT086','A002','KD86','2013-08-05 00:00:00','tunai',400000,0),('PBN087','OT087','A002','KD87','2013-08-06 00:00:00','tunai',1000000,0),('PBN088','OT088','A002','KD88','2013-08-07 00:00:00','tunai',200000,0),('PBN089','OT089','A002','KD89','2013-08-08 00:00:00','tunai',200000,0),('PBN090','OT090','A002','KD90','2013-08-09 00:00:00','tunai',400000,0),('PBN091','OT091','A002','KD91','2013-08-10 00:00:00','tunai',1000000,0),('PBN092','OT092','A002','KD92','2013-08-11 00:00:00','tunai',200000,0),('PBN093','OT093','A002','KD93','2013-08-12 00:00:00','tunai',200000,0),('PBN094','OT094','A002','KD94','2013-08-13 00:00:00','tunai',400000,0),('PBN095','OT095','A002','KD95','2013-08-14 00:00:00','tunai',1000000,0),('PBN096','OT096','A002','KD96','2013-08-15 00:00:00','non tunai',200000,0),('PBN097','OT097','A002','KD97','2013-08-16 00:00:00','non tunai',200000,0),('PBN098','OT098','A002','KD98','2013-08-17 00:00:00','non tunai',400000,0),('PBN099','OT099','A002','KD99','2013-08-18 00:00:00','non tunai',1000000,0),('PBN100','OT100','A002','KD100','2013-08-19 00:00:00','non tunai',200000,0);

/*Table structure for table `penilaian_semester` */

DROP TABLE IF EXISTS `penilaian_semester`;

CREATE TABLE `penilaian_semester` (
  `ID_PENILAIAN_SEMESTER2` CHAR(5) NOT NULL,
  `SEMESTER` VARCHAR(15) DEFAULT NULL,
  PRIMARY KEY (`ID_PENILAIAN_SEMESTER2`),
  UNIQUE KEY `PENILAIAN_SEMESTER_PK` (`ID_PENILAIAN_SEMESTER2`)
) ENGINE=INNODB DEFAULT CHARSET=latin1;

/*Data for the table `penilaian_semester` */

INSERT  INTO `penilaian_semester`(`ID_PENILAIAN_SEMESTER2`,`SEMESTER`) VALUES ('00001','Gasal'),('00002','Genap');

/*Table structure for table `rekap_absen` */

DROP TABLE IF EXISTS `rekap_absen`;

CREATE TABLE `rekap_absen` (
  `NIS` CHAR(5) NOT NULL,
  `ID_ABSEN` CHAR(6) NOT NULL,
  `IZIN` INT(11) DEFAULT NULL,
  `SAKIT` INT(11) DEFAULT NULL,
  `ALPHA` INT(11) DEFAULT NULL,
  `KETERANGAN` MEDIUMTEXT,
  PRIMARY KEY (`NIS`,`ID_ABSEN`),
  KEY `RELATIONSHIP_32_FK` (`NIS`),
  KEY `RELATIONSHIP_33_FK` (`ID_ABSEN`),
  CONSTRAINT `FK_REKAP_AB_RELATIONS_ABSENSI` FOREIGN KEY (`ID_ABSEN`) REFERENCES `absensi` (`ID_ABSEN`),
  CONSTRAINT `FK_REKAP_AB_RELATIONS_MURID` FOREIGN KEY (`NIS`) REFERENCES `murid` (`NIS`)
) ENGINE=INNODB DEFAULT CHARSET=latin1;

/*Data for the table `rekap_absen` */

INSERT  INTO `rekap_absen`(`NIS`,`ID_ABSEN`,`IZIN`,`SAKIT`,`ALPHA`,`KETERANGAN`) VALUES ('81001','AB0001',1,0,0,'acara keluarga'),('81001','AB0002',0,0,0,''),('81002','AB0001',1,0,0,'acara keluarga'),('81002','AB0002',0,0,0,''),('81003','AB0001',0,0,0,''),('81003','AB0002',0,0,0,''),('81004','AB0001',0,0,0,''),('81004','AB0002',0,0,0,''),('81005','AB0001',0,0,0,''),('81005','AB0002',0,0,0,''),('81006','AB0001',0,0,0,''),('81006','AB0002',0,0,0,''),('81007','AB0001',0,0,0,''),('81007','AB0002',0,0,0,''),('81008','AB0001',0,0,0,''),('81008','AB0002',0,0,0,''),('81009','AB0001',0,0,0,''),('81009','AB0002',0,0,0,''),('81010','AB0001',0,0,0,''),('81010','AB0002',0,0,0,''),('81011','AB0001',0,0,0,''),('81011','AB0002',0,0,0,''),('81012','AB0001',0,0,0,''),('81012','AB0002',0,0,0,''),('81013','AB0001',0,0,0,''),('81013','AB0002',0,0,0,''),('81014','AB0001',0,0,0,''),('81014','AB0002',1,0,0,'acara keluarga'),('81015','AB0001',0,0,0,''),('81015','AB0002',1,0,0,'acara keluarga'),('81016','AB0001',0,0,0,''),('81016','AB0002',0,0,0,''),('81017','AB0001',0,0,0,''),('81017','AB0002',0,0,0,''),('81018','AB0001',0,0,1,'tidak ada kabar'),('81018','AB0002',0,0,0,''),('81019','AB0001',0,0,0,''),('81019','AB0002',0,0,0,''),('81020','AB0001',0,0,0,''),('81020','AB0002',0,0,0,''),('81021','AB0001',0,0,0,''),('81021','AB0002',0,0,0,''),('81022','AB0001',0,0,0,''),('81022','AB0002',0,0,0,''),('81023','AB0001',0,0,0,''),('81023','AB0002',0,0,0,''),('81024','AB0001',0,0,0,''),('81024','AB0002',0,0,0,''),('81025','AB0001',0,0,0,''),('81025','AB0002',0,0,0,''),('81026','AB0001',0,0,0,''),('81026','AB0002',0,0,0,''),('81027','AB0001',0,0,0,''),('81027','AB0002',0,0,0,''),('81028','AB0001',0,0,0,''),('81028','AB0002',0,0,0,''),('81029','AB0001',0,0,0,''),('81029','AB0002',0,0,0,''),('81030','AB0001',0,0,0,''),('81030','AB0002',0,0,0,''),('81031','AB0001',0,0,0,''),('81031','AB0002',0,0,1,'tidak ada kabar'),('81032','AB0001',0,0,0,''),('81032','AB0002',0,0,0,''),('81033','AB0001',0,0,0,''),('81033','AB0002',0,0,0,''),('81034','AB0001',0,0,0,''),('81034','AB0002',0,0,0,''),('81035','AB0001',0,0,0,''),('81035','AB0002',0,0,0,''),('81036','AB0001',0,0,0,''),('81036','AB0002',0,0,0,''),('81037','AB0001',0,0,0,''),('81037','AB0002',0,0,0,''),('81038','AB0001',0,0,0,''),('81038','AB0002',0,0,0,''),('81039','AB0001',0,0,0,''),('81039','AB0002',0,0,0,''),('81040','AB0001',0,0,0,''),('81040','AB0002',0,0,0,''),('81041','AB0001',0,0,0,''),('81041','AB0002',0,0,0,''),('81042','AB0001',0,0,0,''),('81042','AB0002',0,0,0,''),('81043','AB0001',0,0,0,''),('81043','AB0002',0,0,0,''),('81044','AB0001',0,0,0,''),('81044','AB0002',0,0,0,''),('81045','AB0001',0,0,0,''),('81045','AB0002',0,0,0,''),('81046','AB0001',0,0,0,''),('81046','AB0002',0,0,0,''),('81047','AB0001',0,0,0,''),('81047','AB0002',0,0,0,''),('81048','AB0001',0,0,0,''),('81048','AB0002',0,0,0,''),('81049','AB0001',0,0,0,''),('81049','AB0002',0,0,0,''),('81050','AB0001',0,0,0,''),('81050','AB0002',0,0,0,''),('81051','AB0001',0,0,0,''),('81051','AB0002',0,0,0,''),('81052','AB0001',0,0,0,''),('81052','AB0002',0,0,0,''),('81053','AB0001',0,0,0,''),('81053','AB0002',0,0,0,''),('81054','AB0001',0,0,0,''),('81054','AB0002',0,0,0,''),('81055','AB0001',0,0,0,''),('81055','AB0002',0,0,0,''),('81056','AB0001',0,0,0,''),('81056','AB0002',0,0,0,''),('81057','AB0001',0,0,0,''),('81057','AB0002',0,0,0,''),('81058','AB0001',0,0,0,''),('81058','AB0002',0,0,0,''),('81059','AB0001',0,0,0,''),('81059','AB0002',0,0,0,''),('81060','AB0001',0,0,0,''),('81060','AB0002',0,0,0,''),('81061','AB0001',0,0,0,''),('81061','AB0002',0,0,0,''),('81062','AB0001',0,0,0,''),('81062','AB0002',0,0,0,''),('81063','AB0001',0,0,0,''),('81063','AB0002',0,0,0,''),('81064','AB0001',0,0,0,''),('81064','AB0002',0,0,0,''),('81065','AB0001',0,0,0,''),('81065','AB0002',0,0,0,''),('81066','AB0001',0,0,0,''),('81066','AB0002',0,0,0,''),('81067','AB0001',0,0,0,''),('81067','AB0002',0,0,0,''),('81068','AB0001',0,0,0,''),('81068','AB0002',0,0,0,''),('81069','AB0001',0,1,0,'sakit'),('81069','AB0002',0,0,0,''),('81070','AB0001',0,0,0,''),('81070','AB0002',0,0,0,''),('81071','AB0001',0,0,0,''),('81071','AB0002',0,0,0,''),('81072','AB0001',0,0,0,''),('81072','AB0002',0,0,0,''),('81073','AB0001',0,0,0,''),('81073','AB0002',0,0,0,''),('81074','AB0001',0,0,0,''),('81074','AB0002',0,0,0,''),('81075','AB0001',0,0,0,''),('81075','AB0002',0,0,0,''),('81076','AB0001',0,0,0,''),('81076','AB0002',0,0,0,''),('81077','AB0001',0,0,0,''),('81077','AB0002',0,0,0,''),('81078','AB0001',0,0,0,''),('81078','AB0002',0,0,0,''),('81079','AB0001',0,0,0,''),('81079','AB0002',0,0,0,''),('81080','AB0001',0,0,0,''),('81080','AB0002',0,0,0,''),('81081','AB0001',0,0,0,''),('81081','AB0002',0,0,0,''),('81082','AB0001',0,0,0,''),('81082','AB0002',0,1,0,'sakit'),('81083','AB0001',0,0,0,''),('81083','AB0002',0,0,0,''),('81084','AB0001',0,0,0,''),('81084','AB0002',0,0,0,''),('81085','AB0001',0,0,0,''),('81085','AB0002',0,0,0,''),('81086','AB0001',0,0,0,''),('81086','AB0002',0,0,0,''),('81087','AB0001',0,0,0,''),('81087','AB0002',0,0,0,''),('81088','AB0001',0,0,0,''),('81088','AB0002',0,0,0,''),('81089','AB0001',0,0,0,''),('81089','AB0002',0,0,0,''),('81090','AB0001',0,0,0,''),('81090','AB0002',0,0,0,''),('81091','AB0001',0,0,0,''),('81091','AB0002',0,0,0,''),('81092','AB0001',0,0,0,''),('81092','AB0002',0,0,0,''),('81093','AB0001',0,0,0,''),('81093','AB0002',0,0,0,''),('81094','AB0001',0,0,0,''),('81094','AB0002',0,0,0,''),('81095','AB0001',0,0,0,''),('81095','AB0002',0,0,0,''),('81096','AB0001',0,0,0,''),('81096','AB0002',0,0,0,''),('81097','AB0001',0,0,0,''),('81097','AB0002',0,0,0,''),('81098','AB0001',0,0,0,''),('81098','AB0002',0,1,0,'sakit'),('81099','AB0001',0,0,0,''),('81099','AB0002',0,0,0,''),('81100','AB0001',0,0,0,''),('81100','AB0002',0,1,0,'sakit');

/*Table structure for table `sub_tema` */

DROP TABLE IF EXISTS `sub_tema`;

CREATE TABLE `sub_tema` (
  `ID_SUB_TEMA` CHAR(4) NOT NULL,
  `ID_TEMA` CHAR(5) NOT NULL,
  `SUB_TEMA` MEDIUMTEXT,
  PRIMARY KEY (`ID_SUB_TEMA`),
  UNIQUE KEY `SUB_TEMA_PK` (`ID_SUB_TEMA`),
  KEY `MEMILIKISUB_FK` (`ID_TEMA`),
  CONSTRAINT `FK_SUB_TEMA_MEMILIKIS_TEMA` FOREIGN KEY (`ID_TEMA`) REFERENCES `tema` (`ID_TEMA`)
) ENGINE=INNODB DEFAULT CHARSET=latin1;

/*Data for the table `sub_tema` */

INSERT  INTO `sub_tema`(`ID_SUB_TEMA`,`ID_TEMA`,`SUB_TEMA`) VALUES ('ST01','TM001','Panca indra'),('ST02','TM001','Anggota Tubuh'),('ST03','TM001','Kebersihan'),('ST04','TM002','Agama'),('ST05','TM002','Kitab'),('ST06','TM003','Nama buah'),('ST07','TM003','Nama sayur'),('ST08','TM003','Jenis makanan'),('ST09','TM004','Tanaman'),('ST10','TM004','Hewan'),('ST11','TM005','Keluarga'),('ST12','TM005','Teman'),('ST13','TM005','Pendidikan'),('ST14','TM006','Jenis kerajinan'),('ST15','TM006','Tarian'),('ST16','TM006','Baju adat'),('ST17','TM007','Bendera'),('ST18','TM007','Lagu kebangsaan'),('ST19','TM007','Bahasa'),('ST20','TM007','Hari kemerdekaan');

/*Table structure for table `tagihan` */

DROP TABLE IF EXISTS `tagihan`;

CREATE TABLE `tagihan` (
  `KODE_TAGIHAN` VARCHAR(5) NOT NULL,
  `NIS` CHAR(5) NOT NULL,
  `ID_AKADEMIK` CHAR(4) NOT NULL,
  `JENIS_TAGIHAN` VARCHAR(30) NOT NULL,
  `BESAR_TAGIHAN` INT(11) DEFAULT NULL,
  PRIMARY KEY (`KODE_TAGIHAN`),
  UNIQUE KEY `TAGIHAN_PK` (`KODE_TAGIHAN`),
  KEY `MEMILIKI8_FK` (`NIS`),
  KEY `TERDAPAT_FK` (`ID_AKADEMIK`),
  CONSTRAINT `FK_TAGIHAN_MEMILIKI8_MURID` FOREIGN KEY (`NIS`) REFERENCES `murid` (`NIS`),
  CONSTRAINT `FK_TAGIHAN_TERDAPAT_TAHUN_AK` FOREIGN KEY (`ID_AKADEMIK`) REFERENCES `tahun_akademik` (`ID_AKADEMIK`)
) ENGINE=INNODB DEFAULT CHARSET=latin1;

/*Data for the table `tagihan` */

INSERT  INTO `tagihan`(`KODE_TAGIHAN`,`NIS`,`ID_AKADEMIK`,`JENIS_TAGIHAN`,`BESAR_TAGIHAN`) VALUES ('KD01','81001','AK01','BUKU',200000),('KD02','81002','AK01','STUDYTOUR',400000),('KD03','81003','AK01','SPP',1000000),('KD04','81004','AK01','ATRIBUT',200000),('KD05','81005','AK01','BUKU',200000),('KD06','81006','AK01','STUDYTOUR',400000),('KD07','81007','AK01','SPP',1000000),('KD08','81008','AK01','ATRIBUT',200000),('KD09','81009','AK01','BUKU',200000),('KD10','81010','AK01','STUDYTOUR',400000),('KD100','81100','AK01','ATRIBUT',200000),('KD11','81011','AK01','SPP',1000000),('KD12','81012','AK01','ATRIBUT',200000),('KD13','81013','AK01','BUKU',200000),('KD14','81014','AK01','STUDYTOUR',400000),('KD15','81015','AK01','SPP',1000000),('KD16','81016','AK01','ATRIBUT',200000),('KD17','81017','AK01','BUKU',200000),('KD18','81018','AK01','STUDYTOUR',400000),('KD19','81019','AK01','SPP',1000000),('KD20','81020','AK01','ATRIBUT',200000),('KD21','81021','AK01','BUKU',200000),('KD22','81022','AK01','STUDYTOUR',400000),('KD23','81023','AK01','SPP',1000000),('KD24','81024','AK01','ATRIBUT',200000),('KD25','81025','AK01','BUKU',200000),('KD26','81026','AK01','STUDYTOUR',400000),('KD27','81027','AK01','SPP',1000000),('KD28','81028','AK01','ATRIBUT',200000),('KD29','81029','AK01','BUKU',200000),('KD30','81030','AK01','STUDYTOUR',400000),('KD31','81031','AK01','SPP',1000000),('KD32','81032','AK01','ATRIBUT',200000),('KD33','81033','AK01','BUKU',200000),('KD34','81034','AK01','STUDYTOUR',400000),('KD35','81035','AK01','SPP',1000000),('KD36','81036','AK01','ATRIBUT',200000),('KD37','81037','AK01','BUKU',200000),('KD38','81038','AK01','STUDYTOUR',400000),('KD39','81039','AK01','SPP',1000000),('KD40','81040','AK01','ATRIBUT',200000),('KD41','81041','AK01','BUKU',200000),('KD42','81042','AK01','STUDYTOUR',400000),('KD43','81043','AK01','SPP',1000000),('KD44','81044','AK01','ATRIBUT',200000),('KD45','81045','AK01','BUKU',200000),('KD46','81046','AK01','STUDYTOUR',400000),('KD47','81047','AK01','SPP',1000000),('KD48','81048','AK01','ATRIBUT',200000),('KD49','81049','AK01','BUKU',200000),('KD50','81050','AK01','STUDYTOUR',400000),('KD51','81051','AK01','SPP',1000000),('KD52','81052','AK01','ATRIBUT',200000),('KD53','81053','AK01','BUKU',200000),('KD54','81054','AK01','STUDYTOUR',400000),('KD55','81055','AK01','SPP',1000000),('KD56','81056','AK01','ATRIBUT',200000),('KD57','81057','AK01','BUKU',200000),('KD58','81058','AK01','STUDYTOUR',400000),('KD59','81059','AK01','SPP',1000000),('KD60','81060','AK01','ATRIBUT',200000),('KD61','81061','AK01','BUKU',200000),('KD62','81062','AK01','STUDYTOUR',400000),('KD63','81063','AK01','SPP',1000000),('KD64','81064','AK01','ATRIBUT',200000),('KD65','81065','AK01','BUKU',200000),('KD66','81066','AK01','STUDYTOUR',400000),('KD67','81067','AK01','SPP',1000000),('KD68','81068','AK01','ATRIBUT',200000),('KD69','81069','AK01','BUKU',200000),('KD70','81070','AK01','STUDYTOUR',400000),('KD71','81071','AK01','SPP',1000000),('KD72','81072','AK01','ATRIBUT',200000),('KD73','81073','AK01','BUKU',200000),('KD74','81074','AK01','STUDYTOUR',400000),('KD75','81075','AK01','SPP',1000000),('KD76','81076','AK01','ATRIBUT',200000),('KD77','81077','AK01','BUKU',200000),('KD78','81078','AK01','STUDYTOUR',400000),('KD79','81079','AK01','SPP',1000000),('KD80','81080','AK01','ATRIBUT',200000),('KD81','81081','AK01','BUKU',200000),('KD82','81082','AK01','STUDYTOUR',400000),('KD83','81083','AK01','SPP',1000000),('KD84','81084','AK01','ATRIBUT',200000),('KD85','81085','AK01','BUKU',200000),('KD86','81086','AK01','STUDYTOUR',400000),('KD87','81087','AK01','SPP',1000000),('KD88','81088','AK01','ATRIBUT',200000),('KD89','81089','AK01','BUKU',200000),('KD90','81090','AK01','STUDYTOUR',400000),('KD91','81091','AK01','SPP',1000000),('KD92','81092','AK01','ATRIBUT',200000),('KD93','81093','AK01','BUKU',200000),('KD94','81094','AK01','STUDYTOUR',400000),('KD95','81095','AK01','SPP',1000000),('KD96','81096','AK01','ATRIBUT',200000),('KD97','81097','AK01','BUKU',200000),('KD98','81098','AK01','STUDYTOUR',400000),('KD99','81099','AK01','SPP',1000000);

/*Table structure for table `tahun_akademik` */

DROP TABLE IF EXISTS `tahun_akademik`;

CREATE TABLE `tahun_akademik` (
  `ID_AKADEMIK` CHAR(4) NOT NULL,
  `TAHUN_AKADEMIK` CHAR(5) NOT NULL,
  `TANGGAL_WAJIB_BAYAR` DATE NOT NULL,
  `BULAN` VARCHAR(10) NOT NULL,
  `SEMESTER` VARCHAR(15) NOT NULL,
  PRIMARY KEY (`ID_AKADEMIK`),
  UNIQUE KEY `TAHUN_AKADEMIK_PK` (`ID_AKADEMIK`)
) ENGINE=INNODB DEFAULT CHARSET=latin1;

/*Data for the table `tahun_akademik` */

INSERT  INTO `tahun_akademik`(`ID_AKADEMIK`,`TAHUN_AKADEMIK`,`TANGGAL_WAJIB_BAYAR`,`BULAN`,`SEMESTER`) VALUES ('AK01','2012-','2013-02-18','2','ganjil'),('AK02','2013-','2013-07-18','7','genap');

/*Table structure for table `tema` */

DROP TABLE IF EXISTS `tema`;

CREATE TABLE `tema` (
  `ID_TEMA` CHAR(5) NOT NULL,
  `KODE_MAPEL` CHAR(3) NOT NULL,
  `TEMA` VARCHAR(30) NOT NULL,
  PRIMARY KEY (`ID_TEMA`),
  UNIQUE KEY `TEMA_PK` (`ID_TEMA`),
  KEY `MEMPUNYAITEMA_FK` (`KODE_MAPEL`),
  CONSTRAINT `FK_TEMA_MEMPUNYAI_MATA_PEL` FOREIGN KEY (`KODE_MAPEL`) REFERENCES `mata_pelajaran` (`KODE_MAPEL`)
) ENGINE=INNODB DEFAULT CHARSET=latin1;

/*Data for the table `tema` */

INSERT  INTO `tema`(`ID_TEMA`,`KODE_MAPEL`,`TEMA`) VALUES ('TM001','1','Kesehatan'),('TM002','2','Kerohanian'),('TM003','8','Makanan'),('TM004','4','Lingkungan'),('TM005','5','Sosial'),('TM006','6','Budaya'),('TM007','7','Negara');

/*Table structure for table `guru_view` */

DROP TABLE IF EXISTS `guru_view`;

/*!50001 DROP VIEW IF EXISTS `guru_view` */;
/*!50001 DROP TABLE IF EXISTS `guru_view` */;

/*!50001 CREATE TABLE  `guru_view`(
 `NIP` char(5) ,
 `NAMA_GURU` varchar(25) ,
 `ALAMAT_GURU` varchar(35) ,
 `JK_GURU` smallint(6) ,
 `TEMPAT_LAHIR_GURU` varchar(20) ,
 `AGAMA` varchar(20) ,
 `TANGGAL_LAHIR_GURU` date ,
 `STATUS_GURU` smallint(6) ,
 `PENDIDIKAN_TERAKHIR` char(2) ,
 `NO_TELPN` char(13) ,
 `EMAIL` varchar(25) 
)*/;

/*Table structure for table `view2` */

DROP TABLE IF EXISTS `view2`;

/*!50001 DROP VIEW IF EXISTS `view2` */;
/*!50001 DROP TABLE IF EXISTS `view2` */;

/*!50001 CREATE TABLE  `view2`(
 `nis` char(5) ,
 `nama_murid` varchar(25) ,
 `tahun_angkatan` char(4) ,
 `kurikulum` varchar(15) ,
 `nama_kelas` varchar(25) ,
 `nama_file` varchar(100) ,
 `tanggal_penugasan` date 
)*/;

/*Table structure for table `view3` */

DROP TABLE IF EXISTS `view3`;

/*!50001 DROP VIEW IF EXISTS `view3` */;
/*!50001 DROP TABLE IF EXISTS `view3` */;

/*!50001 CREATE TABLE  `view3`(
 `nis` char(5) ,
 `nama_murid` varchar(25) ,
 `nama_guru` varchar(25) ,
 `hari` varchar(10) ,
 `jam` time ,
 `mata_pelajaran` varchar(10) ,
 `tema` varchar(30) ,
 `sub_tema` mediumtext ,
 `nama_karya` varchar(30) ,
 `tanggal_penugasan` date 
)*/;

/*Table structure for table `view4` */

DROP TABLE IF EXISTS `view4`;

/*!50001 DROP VIEW IF EXISTS `view4` */;
/*!50001 DROP TABLE IF EXISTS `view4` */;

/*!50001 CREATE TABLE  `view4`(
 `nama_guru` varchar(25) ,
 `mata_pelajaran` varchar(10) ,
 `nama_tugas` varchar(30) 
)*/;

/*View structure for view guru_view */

/*!50001 DROP TABLE IF EXISTS `guru_view` */;
/*!50001 DROP VIEW IF EXISTS `guru_view` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `guru_view` AS select `guru`.`NIP` AS `NIP`,`guru`.`NAMA_GURU` AS `NAMA_GURU`,`guru`.`ALAMAT_GURU` AS `ALAMAT_GURU`,`guru`.`JK_GURU` AS `JK_GURU`,`guru`.`TEMPAT_LAHIR_GURU` AS `TEMPAT_LAHIR_GURU`,`guru`.`AGAMA` AS `AGAMA`,`guru`.`TANGGAL_LAHIR_GURU` AS `TANGGAL_LAHIR_GURU`,`guru`.`STATUS_GURU` AS `STATUS_GURU`,`guru`.`PENDIDIKAN_TERAKHIR` AS `PENDIDIKAN_TERAKHIR`,`guru`.`NO_TELPN` AS `NO_TELPN`,`guru`.`EMAIL` AS `EMAIL` from `guru` */;

/*View structure for view view2 */

/*!50001 DROP TABLE IF EXISTS `view2` */;
/*!50001 DROP VIEW IF EXISTS `view2` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view2` AS select `m`.`NIS` AS `nis`,`m`.`NAMA_MURID` AS `nama_murid`,`a`.`TAHUN_ANGKATAN` AS `tahun_angkatan`,`kuri`.`KURIKULUM` AS `kurikulum`,`k`.`NAMA_KELAS` AS `nama_kelas`,`f`.`NAMA_FILE` AS `nama_file`,`hph`.`TANGGAL_PENUGASAN` AS `tanggal_penugasan` from (((((`murid` `m` join `angkatan` `a` on((`m`.`ID_ANGKATAN` = `a`.`ID_ANGKATAN`))) join `kelas` `k` on((`m`.`ID_ANGKATAN` = `k`.`ID_ANGKATAN`))) join `kurikulum` `kuri` on((`k`.`ID_KURIKULUM` = `kuri`.`ID_KURIKULUM`))) join `histori_penugasan_harian` `hph` on((`m`.`NIS` = `hph`.`NIS`))) join `file_upload` `f` on((`hph`.`ID_FILE` = `f`.`ID_FILE`))) */;

/*View structure for view view3 */

/*!50001 DROP TABLE IF EXISTS `view3` */;
/*!50001 DROP VIEW IF EXISTS `view3` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view3` AS select distinct `m`.`NIS` AS `nis`,`m`.`NAMA_MURID` AS `nama_murid`,`g`.`NAMA_GURU` AS `nama_guru`,`j`.`HARI` AS `hari`,`j`.`JAM` AS `jam`,`mp`.`MATA_PELAJARAN` AS `mata_pelajaran`,`t`.`TEMA` AS `tema`,`st`.`SUB_TEMA` AS `sub_tema`,`hk`.`NAMA_KARYA` AS `nama_karya`,`hph`.`TANGGAL_PENUGASAN` AS `tanggal_penugasan` from (((((((`murid` `m` join `guru` `g` on((`m`.`NIP` = `g`.`NIP`))) join `jadwal` `j` on((`m`.`NIP` = `j`.`NIP`))) join `mata_pelajaran` `mp` on((`j`.`KODE_MAPEL` = `mp`.`KODE_MAPEL`))) join `tema` `t` on((`j`.`KODE_MAPEL` = `t`.`KODE_MAPEL`))) join `sub_tema` `st` on((`t`.`ID_TEMA` = `st`.`ID_TEMA`))) join `hasil_karya` `hk` on((`st`.`ID_SUB_TEMA` = `hk`.`ID_SUB_TEMA`))) join `histori_penugasan_harian` `hph` on((`hk`.`ID_TUGAS2` = `hph`.`ID_TUGAS2`))) */;

/*View structure for view view4 */

/*!50001 DROP TABLE IF EXISTS `view4` */;
/*!50001 DROP VIEW IF EXISTS `view4` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view4` AS select distinct `g`.`NAMA_GURU` AS `nama_guru`,`m`.`MATA_PELAJARAN` AS `mata_pelajaran`,`k`.`NAMA_TUGAS` AS `nama_tugas` from (`guru` `g` join ((((`jadwal` `j` join `mata_pelajaran` `m` on((`m`.`KODE_MAPEL` = `j`.`KODE_MAPEL`))) join `tema` `t` on((`m`.`KODE_MAPEL` = `t`.`KODE_MAPEL`))) join `sub_tema` `s` on((`s`.`ID_TEMA` = `t`.`ID_TEMA`))) join `hasil_karya` `k` on((`k`.`ID_SUB_TEMA` = `s`.`ID_SUB_TEMA`)))) */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

CREATE OR REPLACE VIEW view_jadwal AS
SELECT DISTINCT m.nis,m.nama_murid,g.nama_guru,j.hari,j.jam,mp.mata_pelajaran,t.tema,st.sub_tema,hk.nama_karya,hph.tanggal_penugasan
FROM murid m JOIN guru g
USING(nip)
JOIN jadwal j
USING(nip)
JOIN mata_pelajaran mp
USING(kode_mapel)
JOIN tema t
USING(kode_mapel)
JOIN sub_tema st
USING(id_tema)
JOIN hasil_karya hk
USING(id_sub_tema)
JOIN histori_penugasan_harian hph
USING(id_tugas2);


CREATE OR REPLACE VIEW view_pelajaran AS
SELECT DISTINCT g.nama_guru, m.mata_pelajaran, k.nama_tugas
FROM guru g , jadwal j 
JOIN mata_pelajaran m ON m.kode_mapel=j.kode_mapel
JOIN tema t ON m.kode_mapel=t.kode_mapel
JOIN sub_tema s ON s.id_tema=t.id_tema
JOIN hasil_karya k ON k.id_sub_tema=s.id_sub_tema;



