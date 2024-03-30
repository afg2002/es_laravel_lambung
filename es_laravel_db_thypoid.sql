-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 30 Mar 2024 pada 21.12
-- Versi server: 8.0.30
-- Versi PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `es_laravel_db_thypoid`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `aturan`
--

CREATE TABLE `aturan` (
  `id` bigint UNSIGNED NOT NULL,
  `kode_penyakit` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kode_gejala` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `aturan`
--

INSERT INTO `aturan` (`id`, `kode_penyakit`, `kode_gejala`, `created_at`, `updated_at`) VALUES
(1, 'P01', 'G01,G02,G03,G04,G08,G24', '2024-03-29 20:53:11', '2024-03-30 05:09:42'),
(2, 'P02', 'G03,G05,G14,G15,G16,G17,G21', '2024-03-29 20:53:11', '2024-03-30 04:34:35'),
(3, 'P03', 'G01,G02,G04,G05,G06,G07,G09,G10,G13,G16,G17,G19,G20', '2024-03-29 20:53:11', '2024-03-30 05:20:22'),
(4, 'P04', 'G05,G06,G07,G08,G09,G23', '2024-03-29 20:53:11', '2024-03-30 05:22:08'),
(5, 'P05', 'G02,G04,G05,G08,G09,G10,G11,G12,G14,G16,G19,G20', '2024-03-29 20:53:11', '2024-03-30 05:24:20'),
(6, 'P06', 'G01,G02,G03,G04,G05,G12,G19', '2024-03-29 20:53:11', '2024-03-30 05:29:41'),
(7, 'P07', 'G01,G02,G03,G04,G05,G08,G18,G21,G22,G24', '2024-03-30 05:16:49', '2024-03-30 21:08:23');

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `gejala`
--

CREATE TABLE `gejala` (
  `kode_gejala` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_gejala` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deskripsi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `gejala`
--

INSERT INTO `gejala` (`kode_gejala`, `nama_gejala`, `deskripsi`, `created_at`, `updated_at`) VALUES
('G01', 'Mual dan Muntah', 'Seseorang mengalami sensasi ingin muntah atau muntah.', NULL, NULL),
('G02', 'Nafsu Makan Berkurang', 'Kurangnya keinginan untuk makan atau nafsu makan yang menurun.', NULL, NULL),
('G03', 'Perut Sakit', 'Seseorang mengalami nyeri pada perut.', NULL, NULL),
('G04', 'Perut Kembung', 'Pembesaran atau distensi pada perut.', NULL, NULL),
('G05', 'Nyeri Ulu Hati', 'Seseorang merasakan nyeri pada bagian atas perut atau ulu hati.', NULL, NULL),
('G06', 'Panas di Dada', 'Seseorang mengalami sensasi panas pada dada.', NULL, NULL),
('G07', 'Muntah Darah', 'Keluarnya darah dari mulut ketika muntah.', NULL, NULL),
('G08', 'Sendawa', 'Keluar angin dari lambung melalui mulut.', NULL, NULL),
('G09', 'Berat Badan Turun', 'Penurunan berat badan secara signifikan tanpa alasan yang jelas.', NULL, NULL),
('G10', 'Lemah Letih Lesu', 'Seseorang merasa lemah, letih, atau lesu secara terus-menerus.', NULL, NULL),
('G11', 'Sakit Pada Tukak Lambung', ' luka atau ulkus pada lambung yang menyebabkan penderitanya mengalami keluhan seperti perut kembung, nyeri ulu hati, dan mual.', NULL, NULL),
('G12', 'Sesak Napas', 'Kesulitan bernapas atau merasa napas tidak cukup.\\nNapas terasa pendek dan cepat.\\nDada terasa sesak atau tertekan.\\nBatuk kering atau berdahak.', NULL, NULL),
('G13', 'Kejang Perut', 'Kontraksi otot perut yang kuat dan tidak nyaman.\\nNyeri perut yang tajam dan kram.\\nBisa disertai dengan mual, muntah, atau diare.', NULL, NULL),
('G14', 'Sembelit', 'Kesulitan buang air besar.\\nFeses keras dan kering.\\nPerut kembung dan tidak nyaman.\\nHarus mengejan keras saat buang air besar.', NULL, NULL),
('G15', 'Perubahan Suhu Tubuh dan Keringat Dingin', 'Demam (suhu tubuh lebih tinggi dari 38°C) atau kedinginan (suhu tubuh lebih rendah dari 36°C).\\nBerkeringat dingin, terutama di malam hari.\\nMenggigil.', NULL, NULL),
('G16', 'Perasaan Kenyang Berlebihan', 'Merasa cepat kenyang setelah makan sedikit.\\nTidak nafsu makan.\\nMual atau muntah setelah makan.\\nPerut terasa penuh dan tidak nyaman.', NULL, NULL),
('G17', 'BAB Hitam', 'Kondisi feses berwarna hitam.', '2024-03-30 04:02:41', '2024-03-30 04:05:13'),
('G18', 'Sering Cegukan', 'Cegukan atau singultus adalah kontraksi pada otot diafragma (otot yang membatasi dada dan perut) yang terjadi secara tiba-tiba dan tidak disadari. Saat kontraksi tersebut terjadi, pita suara menutup hingga menimbulkan suara cegukan dengan bunyi ‘hik’.', '2024-03-30 04:04:23', '2024-03-30 04:04:23'),
('G19', 'BAB Berdarah', 'Kondisi bab mengandung darah.', '2024-03-30 04:04:47', '2024-03-30 04:04:47'),
('G20', 'Anemia', 'Terjadi kekurangan darah.', '2024-03-30 04:05:29', '2024-03-30 04:05:29'),
('G21', 'Sulit Tidur', 'Sulit Tidur', '2024-03-30 04:05:42', '2024-03-30 04:05:42'),
('G22', 'Sakit Tenggorokan', 'Sakit tenggorokan adalah rasa nyeri, gatal, tidak nyaman, atau kering pada tenggorokan.', '2024-03-30 04:06:22', '2024-03-30 04:06:22'),
('G23', 'Kadar Gula Tidak Terkontrol', 'Kadar gula pada tubuh tidak terkontrol atau tinggi', '2024-03-30 04:06:58', '2024-03-30 04:06:58'),
('G24', 'Asam dan Pahit pada Mulut', 'Mulut terasa pahit dan asam.', '2024-03-30 04:07:42', '2024-03-30 04:07:42');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_10_25_132310_create_gejalas_table', 1),
(6, '2023_10_25_132316_create_penyakits_table', 1),
(7, '2023_10_25_132326_create_aturans_table', 1),
(8, '2023_10_26_105509_create_pertanyaans_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `penyakit`
--

CREATE TABLE `penyakit` (
  `kode_penyakit` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_penyakit` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deskripsi` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `penyakit`
--

INSERT INTO `penyakit` (`kode_penyakit`, `nama_penyakit`, `deskripsi`, `created_at`, `updated_at`) VALUES
('P01', 'Maag', 'Maag adalah kondisi yang melibatkan peradangan pada dinding lambung atau luka pada lambung.', NULL, NULL),
('P02', 'Dispepsia', 'Dispepsia adalah gangguan pencernaan yang sering kali menimbulkan rasa tidak nyaman di perut atas.', NULL, NULL),
('P03', 'Kanker Lambung', 'Kanker lambung adalah pertumbuhan sel-sel ganas yang tidak terkontrol pada lapisan dalam lambung.', NULL, NULL),
('P04', 'Gastroparesis', 'Gastroparesis adalah kondisi dimana lambung tidak dapat bergerak mendorong makanan ke usus kecil.', NULL, NULL),
('P05', 'Tukak Lambung', 'Tukak lambung adalah luka atau erosi pada lapisan dalam lambung, usus halus bagian atas, atau esofagus bagian atas.', NULL, NULL),
('P06', 'Gastroteritis', 'Infeksi usus ditandai dengan diare, kram, mual, muntah, dan demam. Flu perut biasanya menyebar melalui kontak dengan orang yang terinfeksi atau melalui makanan atau air yang terkontaminasi. Diare, kram, mual, muntah, dan demam ringan adalah gejala yang umum terjadi. Menghindari makanan dan air yang terkontaminasi serta sering mencuci tangan dapat membantu mencegah infeksi. Istirahat dan rehidrasi adalah penanganan utama.', NULL, NULL),
('P07', 'GERD', 'GERD adalah kondisi ketika asam lambung naik dari perut menuju kerongkongan (refluks asam), yang disebabkan oleh katup yang melemah di bagian bawah kerongkongan', '2024-03-30 05:12:06', '2024-03-30 05:12:06');

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pertanyaan`
--

CREATE TABLE `pertanyaan` (
  `kode_pertanyaan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `urutan` int NOT NULL,
  `pertanyaan` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pilihan_jawaban` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `pertanyaan`
--

INSERT INTO `pertanyaan` (`kode_pertanyaan`, `urutan`, `pertanyaan`, `pilihan_jawaban`, `created_at`, `updated_at`) VALUES
('T01', 1, 'Apa saja gejala umum (symptom) pasien?', 'G01,G02,G03,G04,G05,G06,G07,G08,G09,G10,G11,G12,G13,G14,G15,G16,G17,G18,G19,G20,G21,G22,G23,G24', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin Venny', 'venny0308', '$2y$10$13/uFkrouW1dcBzJ6g10u.IVsvYJw47/9oE/HNmMRhkiXavouJdfe', NULL, NULL, NULL),
(2, 'Raina Mardhiyah', 'kasiyah01', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Rt939F25Ak', '2024-03-29 20:53:11', '2024-03-29 20:53:11'),
(3, 'Eli Hasanah', 'yprasetyo', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'QkAnurSU2j', '2024-03-29 20:53:11', '2024-03-29 20:53:11'),
(4, 'Rahayu Hesti Yulianti', 'winarsih.ajimat', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'k8LXGcopzB', '2024-03-29 20:53:11', '2024-03-29 20:53:11'),
(5, 'Clara Farida', 'putri15', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '0VfkhtTwiQ', '2024-03-29 20:53:11', '2024-03-29 20:53:11'),
(6, 'Rini Cici Pratiwi M.Pd', 'rharyanto', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'yCIWHTPeyB', '2024-03-29 20:53:11', '2024-03-29 20:53:11'),
(7, 'Bella Handayani', 'daniswara52', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'uNR8IiiZSw', '2024-03-29 20:53:11', '2024-03-29 20:53:11'),
(8, 'Hendri Hutasoit', 'lpuspasari', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'gjsJR2QHcv', '2024-03-29 20:53:11', '2024-03-29 20:53:11'),
(9, 'Zahra Violet Melani', 'raden89', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'POYiJ97Ljd', '2024-03-29 20:53:11', '2024-03-29 20:53:11'),
(10, 'Dian Yunita Wastuti M.Farm', 'nashiruddin.sabar', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'bTmWGkiIgj', '2024-03-29 20:53:11', '2024-03-29 20:53:11'),
(11, 'Novi Mayasari', 'pertiwi.gamanto', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ucUY4BZvZi', '2024-03-29 20:53:11', '2024-03-29 20:53:11');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `aturan`
--
ALTER TABLE `aturan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `aturan_kode_penyakit_foreign` (`kode_penyakit`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `gejala`
--
ALTER TABLE `gejala`
  ADD UNIQUE KEY `gejala_kode_gejala_unique` (`kode_gejala`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`username`);

--
-- Indeks untuk tabel `penyakit`
--
ALTER TABLE `penyakit`
  ADD UNIQUE KEY `penyakit_kode_penyakit_unique` (`kode_penyakit`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `pertanyaan`
--
ALTER TABLE `pertanyaan`
  ADD PRIMARY KEY (`kode_pertanyaan`),
  ADD UNIQUE KEY `pertanyaan_urutan_unique` (`urutan`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `aturan`
--
ALTER TABLE `aturan`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `aturan`
--
ALTER TABLE `aturan`
  ADD CONSTRAINT `aturan_kode_penyakit_foreign` FOREIGN KEY (`kode_penyakit`) REFERENCES `penyakit` (`kode_penyakit`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
