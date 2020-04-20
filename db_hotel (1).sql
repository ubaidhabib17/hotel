-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 20 Apr 2020 pada 06.17
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
(1, '   99', 350000, 'A modernly-designed spacious room! 24 sqm Deluxe room is completed with a range of facilities to enhance your stay. The facilities include an ensuite bathroom with shower, a comfortable bench bed, 43’ LED TV with 40 channels, and free high speed WiFi internet access to make sure that all guests feel comfortable and well-connected.<br><br></span><ul><li>24 sqm</li><li>20 rooms</li><li>Located on 8th and 9th floor </li><li>King-sized Bed</li><li>This room type can accommodate extra bed</li><li>Standing Shower & bathtub</li><li>Smoking room is not available for this room type</li><li>Connecting room is available for this room type</li><li>City view</li><li>Mini Fridge, coffee & tea maker, safe deposit box, hair dryer, living room, sofa and coffee table,43 inch LED TV in living room & bedroom</li><li>Living room, minimalist pantry, sofa and coffee maker</li><li>Suitable for family, business, honeymoon couple, and VIP</li></ul><br>', 0, 4),
(3, '100', 320000, 'Discover a sophisticated treat in a 48 sqm suite room facilitated with a separated&nbsp; living room, bathtub and minimalist pantry. This spacious room will pamper you to the finest pleasure. High speed internet access can be reached all day long.<br><span>This Suite rooms are equipped with Coffee Tea maker, fixed wall-mounted shower, mattress topper, mounted 43’ LED TV on the wall with 40 channels, safe deposit box, universal electrical outlet, open wardrobe with hangers, luggage rack, wall-mounted flashlight, Wi-fi, mini bar, non smoking room and connecting room<br><br></span><ul><li>48 sqm</li><li>2 rooms</li><li>Located on 8th and 9th floor&nbsp;</li><li>King-sized Bed</li><li>This room type can accommodate extra bed</li><li>Standing Shower &amp; bathtub</li><li>Smoking room is not available for this room type</li><li>Connecting room is available for this room type</li><li>City view</li><li>Mini Fridge, coffee &amp; tea maker, safe deposit box, hair dryer, living room, sofa and coffee table,43 inch LED TV in living room &amp; bedroom</li><li>Living room, minimalist pantry, sofa and coffee maker</li><li>Suitable for family, business, honeymoon couple, and VIP</li></ul><br>', 0, 3),
(4, '98', 400000, 'plpl', 0, 5);

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
(7, 'c46f51215be4f51b06b56db035c2c90f.jpg', 4);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_kategori_galeri`
--

CREATE TABLE `tbl_kategori_galeri` (
  `id_kategori_galeri` int(11) NOT NULL,
  `nama_kategori_galeri` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
(5, 'Family room');

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
(1, 'HOTEL BELANTIKA', 'GRESIK', 'hotelbelantika@gmail.com', 81245377581, 'Once being the home of Sunan Giri, one of the Java’s “nine saints”, Gresik retains spiritual air all around its city. With beautiful north coast beaches and inland waterfalls, Gresik is the city you must never miss. Located west of Gresik downtown, with Surabaya’s Juanda International Airport less than an-hour drive away, Hotel Bellantika Gresik is your home away from home in Gresik.', '22ba7c5da75a7a4f79f8e92ed4aa6292.png', 'facebook.com', 'twitter.com', 'gplus.com');

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
  MODIFY `id_galeri` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbl_kamar`
--
ALTER TABLE `tbl_kamar`
  MODIFY `id_kamar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `tbl_kamar_gambar`
--
ALTER TABLE `tbl_kamar_gambar`
  MODIFY `id_kamar_gambar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `tbl_kategori_galeri`
--
ALTER TABLE `tbl_kategori_galeri`
  MODIFY `id_kategori_galeri` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbl_kelas_kamar`
--
ALTER TABLE `tbl_kelas_kamar`
  MODIFY `id_kelas_kamar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

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
