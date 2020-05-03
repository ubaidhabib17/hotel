-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 03 Bulan Mei 2020 pada 08.17
-- Versi server: 10.4.11-MariaDB
-- Versi PHP: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_hotel`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_galeri`
--

CREATE TABLE `tbl_galeri` (
  `id_galeri` int(11) NOT NULL,
  `nama_galeri` varchar(25) NOT NULL,
  `gambar` varchar(50) NOT NULL,
  `kategori_galeri_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_galeri`
--

INSERT INTO `tbl_galeri` (`id_galeri`, `nama_galeri`, `gambar`, `kategori_galeri_id`) VALUES
(1, 'Fasilitas Kolam Renang', '78b19d734955181de615992c88c2016d.jpg', 1),
(2, 'Fasilitas Gym', 'cfec239d6621a9ee340697f3167a03a2.jpg', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_kamar`
--

CREATE TABLE `tbl_kamar` (
  `id_kamar` int(11) NOT NULL,
  `nomer_kamar` char(5) NOT NULL,
  `harga_kamar` bigint(15) NOT NULL,
  `fasilitas_kamar` text NOT NULL,
  `status_kamar` int(2) NOT NULL,
  `kelas_kamar_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_kamar`
--

INSERT INTO `tbl_kamar` (`id_kamar`, `nomer_kamar`, `harga_kamar`, `fasilitas_kamar`, `status_kamar`, `kelas_kamar_id`) VALUES
(1, '   87', 350000, 'Kamar luas yang dirancang secara modern! Kamar Deluxe 24 meter persegi dilengkapi dengan berbagai fasilitas untuk meningkatkan masa tinggal Anda.Fasilitas termasuk kamar mandi dalam dengan shower, tempat tidur bangku yang nyaman, TV LED 43 \'dengan 40 saluran, dan akses internet WiFi kecepatan tinggi gratis untuk memastikan bahwa semua tamu merasa nyaman dan terhubung dengan baik.<br><br></span><ul><li>24 meter persegi</li><li>20 kamar</li><li>Terletak di lantai 6 hingga 9 </li><li>Tempat Tidur Double & Twin</li><li>10 Kamar Tempat Tidur Double dan 10 Kamar Tempat Tidur Twin</li><li>Jenis kamar ini dapat menampung tempat tidur tambahan</li><li>Mandi Berdiri</li><li>Kamar merokok tidak tersedia untuk tipe kamar ini</li><li>Kamar terhubung tersedia untuk jenis kamar ini</li><li>Pemandangan kota</li><li>Kulkas Mini, pembuat kopi & teh, brankas</li><li>TV LED 43 inci</li><li>Cocok untuk keluarga, bisnis, dan wisatawan</li></ul><br>', 0, 4),
(3, ' 100', 320000, 'Temukan suguhan canggih di kamar suite 48 m2 yang dilengkapi dengan ruang tamu terpisah, bathtub, dan dapur minimalis. Kamar luas ini akan memanjakan Anda untuk kesenangan terbaik. Akses internet kecepatan tinggi dapat dicapai sepanjang hari.<br><span>Kamar Suite ini dilengkapi dengan pembuat teh kopi, shower tetap di dinding, puncak kasur, TV LED 43 \'di dinding dengan 40 saluran, brankas, outlet listrik universal, lemari pakaian terbuka dengan gantungan, rak bagasi, terpasang di dinding senter, Wi-fi, mini bar, kamar bebas rokok dan kamar terhubung.<br><br></span><ul><li>48 m2</li><li>2 kamar</li><li>Terletak di lantai 8 dan 9 </li><li>Tempat Tidur Double dan Twin</li><li>Jenis kamar ini dapat menampung tempat tidur tambahan</li><li>Mandi Berdiri</li><li>Kamar merokok tidak tersedia untuk tipe kamar ini</li><li>Kamar terhubung tersedia untuk jenis kamar ini</li><li>Pemandangan kota</li><li>Kulkas Mini, pembuat kopi & teh, brankas, pengering rambut, ruang tamu, sofa, dan meja kopi, TV LED 43 inci di ruang tamu & kamar tidur</li><li>Ruang tamu, dapur minimalis, sofa, dan pembuat kopi</li><li>\r\nCocok untuk keluarga, bisnis, pasangan bulan madu, dan VIP</li></ul><br>', 0, 3),
(4, '  98', 400000, 'Kamar yang ideal untuk berbagi dengan teman! Kamar 24 meter persegi yang menampilkan jendela dan fasilitas berkualitas tinggi, kamar Superior ini dilengkapi dengan pembuat teh kopi, kamar mandi ensuite dengan shower, TV LED 43 \"dengan 40 saluran, dan outlet listrik di kedua sisi tempat tidur untuk kenyamanan pengisian, Jika Anda ingin ingin meminta tempat tidur tambahan atau kamar terhubung, harap sebutkan di bagian komentar selama proses pemesanan.<br><br></span><ul><li>24 meter persegi</li><li>120 kamar</li><li>Terletak di lantai 3 hingga lantai 9 </li><li>Tempat Tidur Double dan Twin</li><li>40 Kamar Tempat Tidur Double dan 80 Kamar Tempat Tidur Twin</li><li>Jenis kamar ini dapat menampung tempat tidur tambahan</li><li>Mandi Berdiri</li><li>Tersedia ruang merokok untuk tipe kamar ini (lantai 3 dan 5)</li><li>Kamar terhubung tersedia untuk jenis kamar ini</li><li>Pemandangan kota</li><li>Kulkas Mini, pembuat kopi & teh, brankas</li><li>TV LED 43 inci</li><li>Cocok untuk keluarga, bisnis, dan wisatawan</li></ul><br>', 0, 6),
(5, '  101', 320000, 'Temukan suguhan canggih di kamar suite 48 m2 yang dilengkapi dengan ruang tamu terpisah, bathtub, dan dapur minimalis. Kamar luas ini akan memanjakan Anda untuk kesenangan terbaik. Akses internet kecepatan tinggi dapat dicapai sepanjang hari.<br><span>Kamar Suite ini dilengkapi dengan pembuat teh kopi, shower tetap di dinding, puncak kasur, TV LED 43 \'di dinding dengan 40 saluran, brankas, outlet listrik universal, lemari pakaian terbuka dengan gantungan, rak bagasi, terpasang di dinding senter, Wi-fi, mini bar, kamar bebas rokok dan kamar terhubung.<br><br></span><ul><li>48 m2</li><li>2 kamar</li><li>Terletak di lantai 8 dan 9 </li><li>Tempat Tidur Double dan Twin</li><li>Jenis kamar ini dapat menampung tempat tidur tambahan</li><li>Mandi Berdiri</li><li>Kamar merokok tidak tersedia untuk tipe kamar ini</li><li>Kamar terhubung tersedia untuk jenis kamar ini</li><li>Pemandangan kota</li><li>Kulkas Mini, pembuat kopi & teh, brankas, pengering rambut, ruang tamu, sofa, dan meja kopi, TV LED 43 inci di ruang tamu & kamar tidur</li><li>Ruang tamu, dapur minimalis, sofa, dan pembuat kopi</li><li>\r\nCocok untuk keluarga, bisnis, pasangan bulan madu, dan VIP</li></ul><br>', 0, 3),
(6, '102', 320000, 'Temukan suguhan canggih di kamar suite 48 m2\r\nyang dilengkapi dengan ruang tamu terpisah, bathtub, dan dapur minimalis. Kamar\r\nluas ini akan memanjakan Anda untuk kesenangan terbaik. Akses internet\r\nkecepatan tinggi dapat dicapai sepanjang hari.&lt;br&gt;&lt;span&gt;Kamar Suite\r\nini dilengkapi dengan pembuat teh kopi, shower tetap di dinding, puncak kasur,\r\nTV LED 43 \'di dinding dengan 40 saluran, brankas, outlet listrik universal,\r\nlemari pakaian terbuka dengan gantungan, rak bagasi, terpasang di dinding\r\nsenter, Wi-fi, mini bar, kamar bebas rokok dan kamar\r\nterhubung.&lt;br&gt;&lt;br&gt;&lt;/span&gt;&lt;ul&gt;&lt;li&gt;48\r\nm2&lt;/li&gt;&lt;li&gt;2 kamar&lt;/li&gt;&lt;li&gt;Terletak di lantai 8 dan\r\n9&nbsp;&lt;/li&gt;&lt;li&gt;Tempat Tidur Double dan Twin&lt;/li&gt;&lt;li&gt;Jenis\r\nkamar ini dapat menampung tempat tidur tambahan&lt;/li&gt;&lt;li&gt;Mandi\r\nBerdiri&lt;/li&gt;&lt;li&gt;Kamar merokok tidak tersedia untuk tipe kamar\r\nini&lt;/li&gt;&lt;li&gt;Kamar terhubung tersedia untuk jenis kamar\r\nini&lt;/li&gt;&lt;li&gt;Pemandangan kota&lt;/li&gt;&lt;li&gt;Kulkas Mini,\r\npembuat kopi &amp; teh, brankas, pengering rambut, ruang tamu, sofa, dan meja\r\nkopi, TV LED 43 inci di ruang tamu &amp; kamar tidur&lt;/li&gt;&lt;li&gt;Ruang\r\ntamu, dapur minimalis, sofa, dan pembuat kopi&lt;/li&gt;&lt;li&gt;\r\n\r\nCocok untuk keluarga, bisnis, pasangan bulan\r\nmadu, dan VIP&lt;/li&gt;&lt;/ul&gt;&lt;br&gt;', 0, 3),
(7, ' 88', 350000, 'Kamar luas yang dirancang secara modern! Kamar Deluxe 24 meter persegi dilengkapi dengan berbagai fasilitas untuk meningkatkan masa tinggal Anda.Fasilitas termasuk kamar mandi dalam dengan shower, tempat tidur bangku yang nyaman, TV LED 43 \'dengan 40 saluran, dan akses internet WiFi kecepatan tinggi gratis untuk memastikan bahwa semua tamu merasa nyaman dan terhubung dengan baik.<br><br></span><ul><li>24 meter persegi</li><li>20 kamar</li><li>Terletak di lantai 6 hingga 9 </li><li>Tempat Tidur Double & Twin</li><li>10 Kamar Tempat Tidur Double dan 10 Kamar Tempat Tidur Twin</li><li>Jenis kamar ini dapat menampung tempat tidur tambahan</li><li>Mandi Berdiri</li><li>Kamar merokok tidak tersedia untuk tipe kamar ini</li><li>Kamar terhubung tersedia untuk jenis kamar ini</li><li>Pemandangan kota</li><li>Kulkas Mini, pembuat kopi & teh, brankas</li><li>TV LED 43 inci</li><li>Cocok untuk keluarga, bisnis, dan wisatawan</li></ul><br>', 0, 4),
(8, ' 89', 350000, 'Kamar luas yang dirancang secara modern! Kamar Deluxe 24 meter persegi dilengkapi dengan berbagai fasilitas untuk meningkatkan masa tinggal Anda.Fasilitas termasuk kamar mandi dalam dengan shower, tempat tidur bangku yang nyaman, TV LED 43 \'dengan 40 saluran, dan akses internet WiFi kecepatan tinggi gratis untuk memastikan bahwa semua tamu merasa nyaman dan terhubung dengan baik.<br><br></span><ul><li>24 meter persegi</li><li>20 kamar</li><li>Terletak di lantai 6 hingga 9 </li><li>Tempat Tidur Double & Twin</li><li>10 Kamar Tempat Tidur Double dan 10 Kamar Tempat Tidur Twin</li><li>Jenis kamar ini dapat menampung tempat tidur tambahan</li><li>Mandi Berdiri</li><li>Kamar merokok tidak tersedia untuk tipe kamar ini</li><li>Kamar terhubung tersedia untuk jenis kamar ini</li><li>Pemandangan kota</li><li>Kulkas Mini, pembuat kopi & teh, brankas</li><li>TV LED 43 inci</li><li>Cocok untuk keluarga, bisnis, dan wisatawan</li></ul><br>', 0, 4),
(9, '   97', 400000, 'Kamar yang ideal untuk berbagi dengan teman! Kamar 24 meter persegi yang menampilkan jendela dan fasilitas berkualitas tinggi, kamar Superior ini dilengkapi dengan pembuat teh kopi, kamar mandi ensuite dengan shower, TV LED 43 \"dengan 40 saluran, dan outlet listrik di kedua sisi tempat tidur untuk kenyamanan pengisian, Jika Anda ingin ingin meminta tempat tidur tambahan atau kamar terhubung, harap sebutkan di bagian komentar selama proses pemesanan.<br><br></span><ul><li>24 meter persegi</li><li>120 kamar</li><li>Terletak di lantai 3 hingga lantai 9 </li><li>Tempat Tidur Double dan Twin</li><li>40 Kamar Tempat Tidur Double dan 80 Kamar Tempat Tidur Twin</li><li>Jenis kamar ini dapat menampung tempat tidur tambahan</li><li>Mandi Berdiri</li><li>Tersedia ruang merokok untuk tipe kamar ini (lantai 3 dan 5)</li><li>Kamar terhubung tersedia untuk jenis kamar ini</li><li>Pemandangan kota</li><li>Kulkas Mini, pembuat kopi & teh, brankas</li><li>TV LED 43 inci</li><li>\r\nCocok untuk keluarga, bisnis, dan wisatawan</li></ul><br>\r\n', 0, 6),
(10, ' 96', 400000, 'Kamar yang ideal untuk berbagi dengan teman! Kamar 24 meter persegi yang menampilkan jendela dan fasilitas berkualitas tinggi, kamar Superior ini dilengkapi dengan pembuat teh kopi, kamar mandi ensuite dengan shower, TV LED 43 \"dengan 40 saluran, dan outlet listrik di kedua sisi tempat tidur untuk kenyamanan pengisian, Jika Anda ingin ingin meminta tempat tidur tambahan atau kamar terhubung, harap sebutkan di bagian komentar selama proses pemesanan.<br><br></span><ul><li>24 meter persegi</li><li>120 kamar</li><li>Terletak di lantai 3 hingga lantai 9 </li><li>Tempat Tidur Double dan Twin</li><li>40 Kamar Tempat Tidur Double dan 80 Kamar Tempat Tidur Twin</li><li>Jenis kamar ini dapat menampung tempat tidur tambahan</li><li>Mandi Berdiri</li><li>Tersedia ruang merokok untuk tipe kamar ini (lantai 3 dan 5)</li><li>Kamar terhubung tersedia untuk jenis kamar ini</li><li>Pemandangan kota</li><li>Kulkas Mini, pembuat kopi & teh, brankas</li><li>TV LED 43 inci</li><li>\r\nCocok untuk keluarga, bisnis, dan wisatawan</li></ul><br>\r\n', 0, 6);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_kamar_gambar`
--

CREATE TABLE `tbl_kamar_gambar` (
  `id_kamar_gambar` int(11) NOT NULL,
  `nama_kamar_gambar` varchar(50) NOT NULL,
  `kamar_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_kamar_gambar`
--

INSERT INTO `tbl_kamar_gambar` (`id_kamar_gambar`, `nama_kamar_gambar`, `kamar_id`) VALUES
(1, 'c2385bd5044ea0cb792c71025f139bca.jpg', 1),
(4, '8245afb28f9c7f530c75d47d56799d7b.jpg', 3),
(5, '18c59e74ca45cc7d5e9861f0f7bb3e63.jpg', 3),
(6, '61848d4b1b60526aaafafd90f480d625.jpg', 4),
(7, 'c46f51215be4f51b06b56db035c2c90f.jpg', 4),
(8, '42d015820a33d82e30b9723040673973.jpeg', 5),
(9, '776ad5d12376a1a1589d2186cea113e7.jpeg', 6),
(10, '555a6f131d613a5159564e95c8e0e8e9.jpeg', 7),
(11, 'b0557a72a982d8e6211d73e3f1d22aa2.jpeg', 8),
(12, 'aac3745f6334fd13ebeb476f898cfbe8.jpeg', 9),
(13, '574c2d3f7bf865f513b5245c96ce0631.jpeg', 10);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_kategori_galeri`
--

CREATE TABLE `tbl_kategori_galeri` (
  `id_kategori_galeri` int(11) NOT NULL,
  `nama_kategori_galeri` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_kategori_galeri`
--

INSERT INTO `tbl_kategori_galeri` (`id_kategori_galeri`, `nama_kategori_galeri`) VALUES
(1, 'Kolam Renang'),
(2, 'Gym');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_kelas_kamar`
--

CREATE TABLE `tbl_kelas_kamar` (
  `id_kelas_kamar` int(11) NOT NULL,
  `nama_kelas_kamar` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_kelas_kamar`
--

INSERT INTO `tbl_kelas_kamar` (`id_kelas_kamar`, `nama_kelas_kamar`) VALUES
(3, 'Suite Room'),
(4, 'Deluxe Room'),
(6, 'Family Room');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_reservasi`
--

CREATE TABLE `tbl_reservasi` (
  `id_reservasi` int(11) NOT NULL,
  `nama_reservasi` varchar(25) NOT NULL,
  `telp_reservasi` varchar(12) NOT NULL,
  `alamat_reservasi` text NOT NULL,
  `tgl_reservasi_masuk` date NOT NULL,
  `tgl_reservasi_keluar` date NOT NULL,
  `kamar_id` int(11) NOT NULL,
  `status_reservasi` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_reservasi_pembayaran`
--

CREATE TABLE `tbl_reservasi_pembayaran` (
  `id_reservasi_pembayaran` int(11) NOT NULL,
  `tgl_pembayaran` date NOT NULL,
  `nominal_pembayaran` int(11) NOT NULL,
  `uang_bayar` int(11) NOT NULL,
  `kembalian` int(11) NOT NULL,
  `reservasi_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_saran`
--

CREATE TABLE `tbl_saran` (
  `id_saran` int(11) NOT NULL,
  `nama_saran` varchar(20) NOT NULL,
  `email_saran` varchar(25) NOT NULL,
  `telp_saran` bigint(15) NOT NULL,
  `isi_saran` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_saran`
--

INSERT INTO `tbl_saran` (`id_saran`, `nama_saran`, `email_saran`, `telp_saran`, `isi_saran`) VALUES
(0, 'gufron', 'gufron@gmail.com', 3232311432121, 'es tehnya kurang manis');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_tentang_hotel`
--

CREATE TABLE `tbl_tentang_hotel` (
  `id_tentang_hotel` int(11) NOT NULL,
  `nama_hotel` varchar(20) NOT NULL,
  `alamat_tentang_hotel` varchar(35) NOT NULL,
  `email_tentang_hotel` varchar(25) NOT NULL,
  `telp_tentang_hotel` bigint(15) NOT NULL,
  `isi_tentang_hotel` text NOT NULL,
  `logo` varchar(50) NOT NULL,
  `fb` varchar(50) NOT NULL,
  `tw` varchar(50) NOT NULL,
  `gp` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_tentang_hotel`
--

INSERT INTO `tbl_tentang_hotel` (`id_tentang_hotel`, `nama_hotel`, `alamat_tentang_hotel`, `email_tentang_hotel`, `telp_tentang_hotel`, `isi_tentang_hotel`, `logo`, `fb`, `tw`, `gp`) VALUES
(1, 'HOTEL BELANTIKA', 'GRESIK', 'hotelbelantika@gmail.com', 6281245377581, '<div>Tempat sempurna untuk liburan dan bisnis. Hotel Belantika menawarkan konsep modern dengan standar hotel internasional, serta harapan yang melebihi dan di atas untuk layanan dan fasilitas, Hotel Belantika menyambut Anda untuk masa tinggal yang benar-benar tak terlupakan.</div><div><br></div><div>Untuk kenyamanan maksimal. Hotel Belantika terletak tepat di sebelah Gressmall, sementara di dalam hotel Anda akan menemukan kolam renang dan fasilitas spa, serta pusat kebugaran untuk membuat Anda tetap aktif dan sehat. Untuk pelancong bisnis, Hotel Belantika juga dilengkapi dengan satu ruang pertemuan besar dengan ruang breakout yang lebih kecil, dan satu ballroom dengan kapasitas untuk menampung 1900 orang, dengan total hingga 2600 tamu di semua tempat acara.</div><div><br></div><div>Gastronomi abadi dengan sentuhan kontemporer. Restoran Nira menyajikan sarapan kontinental di pagi hari bersama dengan berbagai pilihan bersantap sepanjang hari yang menghadirkan beragam masakan khas Indonesia dan Asia dan favorit internasional.<br><br>Hotel Belantika secara strategis terletak di jantung kota Gresik, terhubung dengan pusat perbelanjaan Gressmall, akses mudah ke jalan tol lingkar Gresik - Surabaya dan Jalur Pantai Utara (Rute Nasional Indonesia 1 adalah jalan utama di Jawa, Indonesia. Melewati 5 provinsi di sepanjang pantai utara, Banten, Jakarta, Jawa Barat, Jawa Tengah, dan Jawa Timur), juga akses mudah ke Kawasan Industri Gresik. Hotel ini juga memiliki ruang pertemuan besar dan ballroom untuk kapasitas hingga 3000 orang dengan gaya berdiri. Hotel ini berlokasi ideal untuk menjelajahi pemandangan dan atraksi tanpa batas di salah satu tujuan wisata religius paling menarik di Indonesia<br></div>', '22ba7c5da75a7a4f79f8e92ed4aa6292.png', 'http://facebook.com', 'http://twitter.com', 'http://gplus.com');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id_user` int(11) NOT NULL,
  `nama_user` varchar(20) NOT NULL,
  `email_user` varchar(20) NOT NULL,
  `telp_user` bigint(15) NOT NULL,
  `username_user` varchar(10) NOT NULL,
  `password_user` varchar(50) NOT NULL,
  `user_group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_user`
--

INSERT INTO `tbl_user` (`id_user`, `nama_user`, `email_user`, `telp_user`, `username_user`, `password_user`, `user_group_id`) VALUES
(1, 'Pemilik Hotel', 'owner@gmail.com', 123444231231, 'owner', 'e10adc3949ba59abbe56e057f20f883e', 1),
(2, 'ubaid', 'ubaid@gmail.com', 2232131231, 'ubaid', 'e10adc3949ba59abbe56e057f20f883e', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_user_group`
--

CREATE TABLE `tbl_user_group` (
  `id_user_group` int(11) NOT NULL,
  `nama_user_group` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_user_group`
--

INSERT INTO `tbl_user_group` (`id_user_group`, `nama_user_group`) VALUES
(1, 'admin'),
(2, 'operator');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tbl_galeri`
--
ALTER TABLE `tbl_galeri`
  ADD PRIMARY KEY (`id_galeri`),
  ADD KEY `kategori_galeri_id` (`kategori_galeri_id`);

--
-- Indeks untuk tabel `tbl_kamar`
--
ALTER TABLE `tbl_kamar`
  ADD PRIMARY KEY (`id_kamar`),
  ADD KEY `kelas_kamar_id` (`kelas_kamar_id`);

--
-- Indeks untuk tabel `tbl_kamar_gambar`
--
ALTER TABLE `tbl_kamar_gambar`
  ADD PRIMARY KEY (`id_kamar_gambar`),
  ADD KEY `kamar_id` (`kamar_id`);

--
-- Indeks untuk tabel `tbl_kategori_galeri`
--
ALTER TABLE `tbl_kategori_galeri`
  ADD PRIMARY KEY (`id_kategori_galeri`);

--
-- Indeks untuk tabel `tbl_kelas_kamar`
--
ALTER TABLE `tbl_kelas_kamar`
  ADD PRIMARY KEY (`id_kelas_kamar`);

--
-- Indeks untuk tabel `tbl_reservasi`
--
ALTER TABLE `tbl_reservasi`
  ADD PRIMARY KEY (`id_reservasi`),
  ADD KEY `kamar_id` (`kamar_id`);

--
-- Indeks untuk tabel `tbl_reservasi_pembayaran`
--
ALTER TABLE `tbl_reservasi_pembayaran`
  ADD PRIMARY KEY (`id_reservasi_pembayaran`),
  ADD KEY `reservasi_id` (`reservasi_id`);

--
-- Indeks untuk tabel `tbl_saran`
--
ALTER TABLE `tbl_saran`
  ADD PRIMARY KEY (`id_saran`);

--
-- Indeks untuk tabel `tbl_tentang_hotel`
--
ALTER TABLE `tbl_tentang_hotel`
  ADD PRIMARY KEY (`id_tentang_hotel`);

--
-- Indeks untuk tabel `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id_user`),
  ADD KEY `user_group_id` (`user_group_id`);

--
-- Indeks untuk tabel `tbl_user_group`
--
ALTER TABLE `tbl_user_group`
  ADD PRIMARY KEY (`id_user_group`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tbl_galeri`
--
ALTER TABLE `tbl_galeri`
  MODIFY `id_galeri` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `tbl_kamar`
--
ALTER TABLE `tbl_kamar`
  MODIFY `id_kamar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `tbl_kamar_gambar`
--
ALTER TABLE `tbl_kamar_gambar`
  MODIFY `id_kamar_gambar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `tbl_kategori_galeri`
--
ALTER TABLE `tbl_kategori_galeri`
  MODIFY `id_kategori_galeri` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `tbl_kelas_kamar`
--
ALTER TABLE `tbl_kelas_kamar`
  MODIFY `id_kelas_kamar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `tbl_reservasi`
--
ALTER TABLE `tbl_reservasi`
  MODIFY `id_reservasi` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbl_reservasi_pembayaran`
--
ALTER TABLE `tbl_reservasi_pembayaran`
  MODIFY `id_reservasi_pembayaran` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbl_tentang_hotel`
--
ALTER TABLE `tbl_tentang_hotel`
  MODIFY `id_tentang_hotel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `tbl_user_group`
--
ALTER TABLE `tbl_user_group`
  MODIFY `id_user_group` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `tbl_galeri`
--
ALTER TABLE `tbl_galeri`
  ADD CONSTRAINT `tbl_galeri_ibfk_1` FOREIGN KEY (`kategori_galeri_id`) REFERENCES `tbl_kategori_galeri` (`id_kategori_galeri`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `tbl_kamar`
--
ALTER TABLE `tbl_kamar`
  ADD CONSTRAINT `tbl_kamar_ibfk_1` FOREIGN KEY (`kelas_kamar_id`) REFERENCES `tbl_kelas_kamar` (`id_kelas_kamar`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `tbl_kamar_gambar`
--
ALTER TABLE `tbl_kamar_gambar`
  ADD CONSTRAINT `tbl_kamar_gambar_ibfk_1` FOREIGN KEY (`kamar_id`) REFERENCES `tbl_kamar` (`id_kamar`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `tbl_reservasi`
--
ALTER TABLE `tbl_reservasi`
  ADD CONSTRAINT `tbl_reservasi_ibfk_1` FOREIGN KEY (`kamar_id`) REFERENCES `tbl_kamar` (`id_kamar`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `tbl_reservasi_pembayaran`
--
ALTER TABLE `tbl_reservasi_pembayaran`
  ADD CONSTRAINT `tbl_reservasi_pembayaran_ibfk_1` FOREIGN KEY (`reservasi_id`) REFERENCES `tbl_reservasi` (`id_reservasi`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD CONSTRAINT `tbl_user_ibfk_1` FOREIGN KEY (`user_group_id`) REFERENCES `tbl_user_group` (`id_user_group`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
