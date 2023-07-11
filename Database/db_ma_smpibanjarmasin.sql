-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 11 Jul 2023 pada 15.00
-- Versi server: 10.4.27-MariaDB
-- Versi PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_ma_smpibanjarmasin`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `catatan`
--

CREATE TABLE `catatan` (
  `Id_catatan` int(10) NOT NULL,
  `Tanggal` varchar(10) NOT NULL,
  `Semester` varchar(10) NOT NULL,
  `Id_siswa` varchar(10) NOT NULL,
  `Id_walikelas` varchar(10) NOT NULL,
  `Id_orgtua` varchar(10) NOT NULL,
  `Id_poin` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `catatan`
--

INSERT INTO `catatan` (`Id_catatan`, `Tanggal`, `Semester`, `Id_siswa`, `Id_walikelas`, `Id_orgtua`, `Id_poin`) VALUES
(1, '2022-06-28', '2', '1', '1', '1', '1');

-- --------------------------------------------------------

--
-- Struktur dari tabel `hubungan`
--

CREATE TABLE `hubungan` (
  `Id_hubungan` int(10) NOT NULL,
  `Id_siswa` varchar(10) NOT NULL,
  `Id_orgtua` varchar(10) NOT NULL,
  `Status hub anak` varchar(255) NOT NULL,
  `Keterangan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `hubungan`
--

INSERT INTO `hubungan` (`Id_hubungan`, `Id_siswa`, `Id_orgtua`, `Status hub anak`, `Keterangan`) VALUES
(1, '1', '1', 'KANDUNG', 'AYAH ');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kelas`
--

CREATE TABLE `kelas` (
  `id_kelas` int(10) NOT NULL,
  `Nama_kelas` varchar(255) NOT NULL,
  `Jurusan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `kelas`
--

INSERT INTO `kelas` (`id_kelas`, `Nama_kelas`, `Jurusan`) VALUES
(1, '12', 'IPA'),
(2, '11', 'IPA');

-- --------------------------------------------------------

--
-- Struktur dari tabel `orang_tua`
--

CREATE TABLE `orang_tua` (
  `Id_orgtua` int(10) NOT NULL,
  `Nama_orangtua` varchar(255) NOT NULL,
  `Tanggal_lahir` varchar(255) NOT NULL,
  `Telp` varchar(255) NOT NULL,
  `Pendidikan_terakhir` varchar(255) NOT NULL,
  `Status_pekerjaan` varchar(255) NOT NULL,
  `Pekerjaan` varchar(255) NOT NULL,
  `Nik_nomorKTP` varchar(255) NOT NULL,
  `Alamat_orgtua` varchar(255) NOT NULL,
  `Status_orgtua` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `orang_tua`
--

INSERT INTO `orang_tua` (`Id_orgtua`, `Nama_orangtua`, `Tanggal_lahir`, `Telp`, `Pendidikan_terakhir`, `Status_pekerjaan`, `Pekerjaan`, `Nik_nomorKTP`, `Alamat_orgtua`, `Status_orgtua`) VALUES
(1, 'Yusuf', '1967-07-10', '0213456', 'S1', 'AKTIF', 'Swasta', '620304567', 'Banjarmasin', 'KANDUNG');

-- --------------------------------------------------------

--
-- Struktur dari tabel `poin`
--

CREATE TABLE `poin` (
  `Id_poin` int(10) NOT NULL,
  `Nama_poin` varchar(255) NOT NULL,
  `Bobot` varchar(255) NOT NULL,
  `Tipe_poin` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `poin`
--

INSERT INTO `poin` (`Id_poin`, `Nama_poin`, `Bobot`, `Tipe_poin`) VALUES
(1, 'Juara Nasional', '50', 'PRESTASI'),
(2, 'Terlambat', '10', 'PELANGGARAN');

-- --------------------------------------------------------

--
-- Struktur dari tabel `siswa`
--

CREATE TABLE `siswa` (
  `Id_Siswa` int(10) NOT NULL,
  `Nis` int(30) NOT NULL,
  `Nisn` int(30) NOT NULL,
  `Nama_Siswa` varchar(255) NOT NULL,
  `Nik` int(30) NOT NULL,
  `Tanggal lahir` varchar(255) NOT NULL,
  `Jenis Kelamin` varchar(10) NOT NULL,
  `Tingkat Kelas` varchar(255) NOT NULL,
  `Jurusan` varchar(255) NOT NULL,
  `Wali kelas` varchar(30) NOT NULL,
  `Alamat` varchar(255) NOT NULL,
  `Telp` varchar(12) NOT NULL,
  `Status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `siswa`
--

INSERT INTO `siswa` (`Id_Siswa`, `Nis`, `Nisn`, `Nama_Siswa`, `Nik`, `Tanggal lahir`, `Jenis Kelamin`, `Tingkat Kelas`, `Jurusan`, `Wali kelas`, `Alamat`, `Telp`, `Status`) VALUES
(2, 11234, 55432, 'Arya', 6203044, '2023-07-09', 'LAKI-LAKI', '12', 'IPS', 'Taufik', 'Banjarmasin', '62030', 'AKTIF ');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `Id_user` int(10) NOT NULL,
  `Nik` varchar(25) NOT NULL,
  `Nama` varchar(255) NOT NULL,
  `Level` varchar(15) NOT NULL,
  `Status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`Id_user`, `Nik`, `Nama`, `Level`, `Status`) VALUES
(1, '620304567', 'Rezqy', 'ADMIN', 'GURU'),
(2, '620303012', 'Bayu', 'MEMBER', 'MURID');

-- --------------------------------------------------------

--
-- Struktur dari tabel `wali_kelas`
--

CREATE TABLE `wali_kelas` (
  `id_wali` int(10) NOT NULL,
  `Nama_wali_kelas` varchar(255) NOT NULL,
  `Tanggal_lahir` varchar(10) NOT NULL,
  `Telp` varchar(12) NOT NULL,
  `Pendidikan` varchar(50) NOT NULL,
  `Status` varchar(20) NOT NULL,
  `Wali_Kelas` varchar(20) NOT NULL,
  `Jenis_Kelamin` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `wali_kelas`
--

INSERT INTO `wali_kelas` (`id_wali`, `Nama_wali_kelas`, `Tanggal_lahir`, `Telp`, `Pendidikan`, `Status`, `Wali_Kelas`, `Jenis_Kelamin`) VALUES
(1, 'Taufik', '1988-07-10', '0876543', 'S1', 'MENIKAH', '12', 'LAKI-LAKI'),
(2, 'Bambang', '1965-07-10', '023145', 'S2', 'MENIKAH', '11', 'LAKI-LAKI');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `catatan`
--
ALTER TABLE `catatan`
  ADD PRIMARY KEY (`Id_catatan`);

--
-- Indeks untuk tabel `hubungan`
--
ALTER TABLE `hubungan`
  ADD PRIMARY KEY (`Id_hubungan`);

--
-- Indeks untuk tabel `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`id_kelas`);

--
-- Indeks untuk tabel `orang_tua`
--
ALTER TABLE `orang_tua`
  ADD PRIMARY KEY (`Id_orgtua`);

--
-- Indeks untuk tabel `poin`
--
ALTER TABLE `poin`
  ADD PRIMARY KEY (`Id_poin`);

--
-- Indeks untuk tabel `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`Id_Siswa`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`Id_user`);

--
-- Indeks untuk tabel `wali_kelas`
--
ALTER TABLE `wali_kelas`
  ADD PRIMARY KEY (`id_wali`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `catatan`
--
ALTER TABLE `catatan`
  MODIFY `Id_catatan` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `hubungan`
--
ALTER TABLE `hubungan`
  MODIFY `Id_hubungan` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `kelas`
--
ALTER TABLE `kelas`
  MODIFY `id_kelas` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `orang_tua`
--
ALTER TABLE `orang_tua`
  MODIFY `Id_orgtua` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `poin`
--
ALTER TABLE `poin`
  MODIFY `Id_poin` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `siswa`
--
ALTER TABLE `siswa`
  MODIFY `Id_Siswa` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `Id_user` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `wali_kelas`
--
ALTER TABLE `wali_kelas`
  MODIFY `id_wali` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
