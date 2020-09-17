-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 08, 2017 at 06:10 PM
-- Server version: 5.6.21
-- PHP Version: 5.5.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `db_perpus`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(2) NOT NULL,
  `u` varchar(15) NOT NULL,
  `p` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `u`, `p`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `r_config`
--

CREATE TABLE IF NOT EXISTS `r_config` (
  `id` int(1) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `logo` varchar(100) NOT NULL,
  `pimpinan` varchar(100) NOT NULL,
  `pimpinan_nip` varchar(100) NOT NULL,
  `petugas` varchar(100) NOT NULL,
  `petugas_nip` varchar(100) NOT NULL,
  `profil` longtext NOT NULL,
  `denda` int(9) NOT NULL,
  `maks_buku` int(2) NOT NULL,
  `maks_hari` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `r_config`
--

INSERT INTO `r_config` (`id`, `nama`, `alamat`, `logo`, `pimpinan`, `pimpinan_nip`, `petugas`, `petugas_nip`, `profil`, `denda`, `maks_buku`, `maks_hari`) VALUES
(0, 'Program Studi Teknik Informatika UMMU', 'Jl. KH. Ahmad Dahlan No 100 Kel. Sasa Kecamatan Ternate Selatan Kode Pos 97715 Telp. Fax 0921-326136', 'Logo1.gif', 'Santosa ST, M.Cs', '1205057601', 'Sahriar Hamza S.Kom, MT', '122 007 7901', 'Selamat Datang Di Perpustakaan Prodi Teknik Informatika UMMU', 500, 3, 7);

-- --------------------------------------------------------

--
-- Table structure for table `r_jenis`
--

CREATE TABLE IF NOT EXISTS `r_jenis` (
`id` int(4) NOT NULL,
  `nama` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `r_jenis`
--

INSERT INTO `r_jenis` (`id`, `nama`) VALUES
(1, 'Buku'),
(2, 'Majalah'),
(3, 'Surat Kabar'),
(5, 'CD/DVD'),
(6, 'Tabloida');

-- --------------------------------------------------------

--
-- Table structure for table `r_kelas`
--

CREATE TABLE IF NOT EXISTS `r_kelas` (
  `id` int(4) NOT NULL,
  `nama` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `r_kelas`
--

INSERT INTO `r_kelas` (`id`, `nama`) VALUES
(7382, 'Komputer'),
(7392, 'Karya Ilmiah'),
(8392, 'Jaringan Komputer'),
(8738, 'Programing');

-- --------------------------------------------------------

--
-- Table structure for table `r_libur`
--

CREATE TABLE IF NOT EXISTS `r_libur` (
`id` int(4) NOT NULL,
  `tanggal` date NOT NULL,
  `nama` varchar(200) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `r_libur`
--

INSERT INTO `r_libur` (`id`, `tanggal`, `nama`) VALUES
(1, '2017-08-17', 'Hari Kemerdekaan Republik Indonesia');

-- --------------------------------------------------------

--
-- Table structure for table `r_lokasi`
--

CREATE TABLE IF NOT EXISTS `r_lokasi` (
`id` int(4) NOT NULL,
  `nama` varchar(200) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `r_lokasi`
--

INSERT INTO `r_lokasi` (`id`, `nama`) VALUES
(7, 'P01'),
(8, 'K02'),
(9, 'KI03'),
(10, 'JK04');

-- --------------------------------------------------------

--
-- Table structure for table `t_anggota`
--

CREATE TABLE IF NOT EXISTS `t_anggota` (
`id` int(6) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `jk` enum('L','P') NOT NULL,
  `agama` enum('Islam','Kristen','Katolik','Hindu','Budha') NOT NULL,
  `tmp_lahir` varchar(100) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `foto` varchar(100) NOT NULL,
  `tgl_daftar` date NOT NULL,
  `jenis` enum('Mahasiswa','Dosen') NOT NULL,
  `stat` enum('0','1') NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_anggota`
--

INSERT INTO `t_anggota` (`id`, `nama`, `alamat`, `jk`, `agama`, `tmp_lahir`, `tgl_lahir`, `foto`, `tgl_daftar`, `jenis`, `stat`) VALUES
(1, 'Sahrudin Abdul', 'Kel. Sasa', 'L', 'Islam', 'Tidore', '1992-10-27', '', '2017-10-07', 'Mahasiswa', '1'),
(2, 'Ardika Aswin', 'Kel. Sasa', 'P', 'Islam', 'Tidore', '1998-03-24', '', '2017-10-08', 'Mahasiswa', '1'),
(3, 'Nofianti Haiyun', 'Kel. Jambula', 'P', 'Islam', 'Maidi', '1992-11-11', '', '2017-10-08', 'Mahasiswa', '1'),
(4, 'Nurdiani Azis', 'Kel. Gambesi', 'P', 'Islam', 'Koititi', '1996-09-18', '', '2017-10-08', 'Mahasiswa', '1'),
(6, 'nursanti ali', 'kel. kalumata', 'P', 'Islam', 'tidore', '1975-03-02', '', '2017-10-08', 'Mahasiswa', '1'),
(9, 'siti Hawa Naser', 'kel. mangga dua', 'P', 'Islam', 'Tidore', '1999-11-09', '', '2017-10-08', 'Mahasiswa', '1'),
(10, 'Sandrawati noho', 'Kel. Gambesi', 'P', 'Islam', 'jailolo', '1995-07-05', '', '2017-10-08', 'Mahasiswa', '1'),
(11, 'Rima hamja', 'Kel. Jambula', 'P', 'Islam', 'ibu', '1995-11-06', '', '2017-10-08', 'Mahasiswa', '1'),
(12, 'Ina Teher', 'Kel. Sasa', 'P', 'Islam', 'Tidore', '1997-04-09', '', '2017-10-08', 'Mahasiswa', '1'),
(13, 'Asriyani ali', 'kel. mangga dua', 'P', 'Islam', 'Tidore', '1999-03-19', '', '2017-10-08', 'Mahasiswa', '1'),
(14, 'husna Hanafi', 'Kel. Gambesi', 'P', 'Islam', 'Tidore', '1984-10-10', '', '2017-10-08', 'Mahasiswa', '1'),
(15, 'Minarti malan', 'kel. kalumata', 'P', 'Islam', 'Tidore', '1998-12-05', '', '2017-10-08', 'Mahasiswa', '1'),
(16, 'Rita Hasan', 'Kel. Ngade', 'P', 'Islam', 'Tidore', '1995-08-13', '', '2017-10-08', 'Mahasiswa', '1'),
(17, 'Harun Senen', 'kel.tobololo', 'L', 'Islam', 'Ternate', '1994-09-09', '', '2017-10-08', 'Mahasiswa', '1');

-- --------------------------------------------------------

--
-- Table structure for table `t_buku`
--

CREATE TABLE IF NOT EXISTS `t_buku` (
`id` int(6) NOT NULL,
  `id_kelas` varchar(6) NOT NULL,
  `id_jenis` int(2) NOT NULL,
  `judul` varchar(250) NOT NULL,
  `pengarang` varchar(250) NOT NULL,
  `penerbit` varchar(250) NOT NULL,
  `th_terbit` year(4) NOT NULL,
  `isbn` varchar(50) NOT NULL,
  `jml_hal` int(6) NOT NULL,
  `asal_perolehan` varchar(100) NOT NULL,
  `harga` decimal(12,2) NOT NULL,
  `id_lokasi` int(2) NOT NULL,
  `stat` enum('B','RR','RB','H') NOT NULL,
  `stat_pinjam` enum('P','R') NOT NULL,
  `deskripsi` varchar(250) NOT NULL,
  `tgl_input` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_buku`
--

INSERT INTO `t_buku` (`id`, `id_kelas`, `id_jenis`, `judul`, `pengarang`, `penerbit`, `th_terbit`, `isbn`, `jml_hal`, `asal_perolehan`, `harga`, `id_lokasi`, `stat`, `stat_pinjam`, `deskripsi`, `tgl_input`) VALUES
(1, '7382', 1, 'Konsep Sistem Pakar', 'Muhammad Arhami', 'Andi', 2004, '979-731-729-3', 205, 'Donasi', '0.00', 8, 'B', 'P', '- Representasi Pengetahuan. - Metode Inferensi. - Penalaran dengan Uncertainly. - Penalaran Inexact. - Perancangan Sistem Pakar. - Pendekatan Baru untuk Penjelasan Sistem.', '2017-10-08 19:54:54'),
(2, '7382', 1, 'Perancangan Basis Data  dalam All in1', 'Indrajanim S.Kom., MM.', 'Elex Media Komputindo', 2011, '978-979-27-9980-4', 337, 'Donasi', '0.00', 8, 'B', 'P', '- Teori Singkat Perancangan Basis Data. - Teknik Pengumpulan Data. - Analisis Sistem. - Perancangan Basis Data. - Impelementasi. - Kasus-Kasus Perancangan Basis Data. - Source Code.', '2017-10-08 20:00:23'),
(3, '8738', 1, 'Borland Delphi 5.0', 'M. Agus J, Alam', 'Elex Media Komputindo', 2000, '979-20-1466-7', 215, 'Donasi', '0.00', 7, 'RR', 'P', '- Mengenal dan mencoba. - borland delphi 5.0.- Tipe Data, Variabel dan operator. - kontrol program. - ineteraksi dengan borland delphi 5.0 lewat VCL. - pengantar operasi database.', '2017-10-08 20:05:14'),
(4, '8392', 1, 'Teknologi Komunikasi Data Modern', 'Jusak', 'Andi', 2013, '978-979-29-3313-0', 360, 'Donasi', '0.00', 10, 'B', 'R', 'Konsep Tentang 4G. - Teknologi Komunikasi Pita Lebar. - Teknologi Informasi dan komunikasi di Indonesia', '2017-10-08 20:09:23'),
(5, '8738', 1, 'Sistem Informasi Geografis', 'Eddy Prahasta Ir., MT.', 'Informatika', 2004, '979-3338-05-9', 666, 'Donasi', '0.00', 7, 'B', 'R', '- Membaca dan menampilkan field, record, dan table. - Membaca dan menampilkan Theme, view, dan peta tematik secara otomatis. - Melakukan query dan analisis spasial.', '2017-10-08 20:14:55');

-- --------------------------------------------------------

--
-- Table structure for table `t_pengunjung`
--

CREATE TABLE IF NOT EXISTS `t_pengunjung` (
`id` int(6) NOT NULL,
  `nama` varchar(150) NOT NULL,
  `jk` enum('L','P') NOT NULL,
  `jenis` enum('Mahasiswa','Dosen') NOT NULL,
  `perlu` varchar(255) NOT NULL,
  `saran` varchar(255) NOT NULL,
  `tgl` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_pengunjung`
--

INSERT INTO `t_pengunjung` (`id`, `nama`, `jk`, `jenis`, `perlu`, `saran`, `tgl`) VALUES
(1, 'Sahrudin Abdul', 'L', 'Mahasiswa', 'Baca Buku####', 'Kembangkan Lagi', '2017-10-08 19:41:09');

-- --------------------------------------------------------

--
-- Table structure for table `t_trans`
--

CREATE TABLE IF NOT EXISTS `t_trans` (
`id` int(6) NOT NULL,
  `id_buku` int(6) NOT NULL,
  `id_anggota` int(6) NOT NULL,
  `tgl_pinjam` date NOT NULL,
  `tgl_kembali` date NOT NULL,
  `stat` enum('P','K') NOT NULL,
  `ket` varchar(100) NOT NULL,
  `telat` int(2) NOT NULL,
  `denda` decimal(10,2) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_trans`
--

INSERT INTO `t_trans` (`id`, `id_buku`, `id_anggota`, `tgl_pinjam`, `tgl_kembali`, `stat`, `ket`, `telat`, `denda`) VALUES
(1, 2, 2, '2017-10-08', '2017-10-17', 'P', 'Belajar', 0, '0.00'),
(2, 3, 2, '2017-10-08', '2017-10-17', 'P', 'Belajar', 0, '0.00'),
(3, 1, 4, '2017-10-08', '2017-10-17', 'P', 'Buat Tugas', 0, '0.00'),
(4, 1, 10, '2017-10-08', '2017-10-17', 'P', 'Belajar', 0, '0.00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `r_jenis`
--
ALTER TABLE `r_jenis`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `r_kelas`
--
ALTER TABLE `r_kelas`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `r_libur`
--
ALTER TABLE `r_libur`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `r_lokasi`
--
ALTER TABLE `r_lokasi`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `t_anggota`
--
ALTER TABLE `t_anggota`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `t_buku`
--
ALTER TABLE `t_buku`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `t_pengunjung`
--
ALTER TABLE `t_pengunjung`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `t_trans`
--
ALTER TABLE `t_trans`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `r_jenis`
--
ALTER TABLE `r_jenis`
MODIFY `id` int(4) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `r_libur`
--
ALTER TABLE `r_libur`
MODIFY `id` int(4) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `r_lokasi`
--
ALTER TABLE `r_lokasi`
MODIFY `id` int(4) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `t_anggota`
--
ALTER TABLE `t_anggota`
MODIFY `id` int(6) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `t_buku`
--
ALTER TABLE `t_buku`
MODIFY `id` int(6) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `t_pengunjung`
--
ALTER TABLE `t_pengunjung`
MODIFY `id` int(6) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `t_trans`
--
ALTER TABLE `t_trans`
MODIFY `id` int(6) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
