-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 07, 2024 at 01:33 AM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_edufun`
--

-- --------------------------------------------------------

--
-- Table structure for table `artikel`
--

CREATE TABLE `artikel` (
  `artikel_id` bigint UNSIGNED NOT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `judul` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deskripsi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `kategori` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_penulis` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `artikel`
--

INSERT INTO `artikel` (`artikel_id`, `image_path`, `judul`, `deskripsi`, `kategori`, `id_penulis`, `created_at`, `updated_at`) VALUES
(1, 'storage/images/image_artikel_1.jpeg', 'cara instalasi android studio', '\nUntuk menginstal Android Studio, langkah pertama adalah mengunduh file instalasi dari situs resmi Android Studio sesuai dengan sistem operasi yang digunakan, baik itu Windows, macOS, atau Linux. Di Windows, setelah mengunduh file .exe, jalankan file tersebut dan ikuti panduan instalasi yang akan mencakup pengaturan SDK Android, Virtual Device, dan Emulator. Di macOS, file .dmg yang diunduh cukup diseret ke folder Applications, lalu ikuti wizard setup saat aplikasi pertama kali dibuka. Sedangkan di Linux, file .zip perlu diekstrak dan dijalankan melalui terminal. Setelah Android Studio berhasil diinstal, penting untuk mengatur SDK Android yang dibutuhkan dan membuat Android Virtual Device (AVD) untuk pengujian aplikasi di emulator. Panduan awal ini juga biasanya disertai dengan pemeriksaan pembaruan untuk memastikan semua komponen yang diperlukan sudah terpasang.', 'Software Engineering', 1, '2024-11-06 11:46:59', NULL),
(2, 'storage/images/image_artikel_2.jpeg', 'cara membuat video yang interaktif', 'Untuk membuat video yang interaktif, langkah awalnya adalah menentukan elemen interaktivitas yang ingin disertakan, seperti tombol pilihan, kuis, atau navigasi cabang yang memberi pemirsa kendali atas alur cerita. Salah satu teknik dasar adalah menggunakan platform video interaktif seperti H5P, Eko, atau Adobe Captivate, yang menawarkan fitur bawaan untuk menambahkan elemen interaktif seperti tautan, kuis, dan opsi jalan cerita.\n\nLangkah berikutnya adalah menyiapkan skrip yang memungkinkan alur video bercabang. Misalnya, jika membuat video edukasi, tambahkan titik keputusan di mana penonton bisa memilih topik tertentu untuk dieksplorasi lebih lanjut. Pastikan setiap elemen interaktif terintegrasi dengan baik secara visual dan fungsional agar pengalaman pengguna tetap lancar dan tidak membingungkan.', 'Interaktif Multimedia', 2, '2024-11-06 11:46:59', NULL),
(3, 'storage/images/image_artikel_3.jpeg', 'cara mengedit video menggunakan capcut', '\nMengedit video menggunakan CapCut sangatlah mudah dan cocok untuk berbagai kebutuhan, baik untuk pemula maupun pengguna berpengalaman. Untuk memulai, pengguna dapat membuka aplikasi CapCut, membuat proyek baru, dan memilih video dari galeri. Setelah video dimasukkan, berbagai fitur pengeditan tersedia, seperti memotong dan menyusun ulang klip menggunakan opsi Split atau Delete. Selain itu, CapCut menyediakan beragam efek visual dan transisi yang dapat diaplikasikan antara klip untuk memberikan tampilan yang lebih halus dan profesional. Di bagian audio, pengguna bisa menambahkan musik latar, efek suara, atau narasi dengan menyesuaikan volume dan sinkronisasi audio agar selaras dengan video. Fitur lain yang penting adalah penambahan teks dan stiker untuk memberikan informasi atau elemen dekoratif tambahan, di mana pengguna dapat memilih berbagai font, gaya, serta animasi. Setelah semua pengeditan selesai, video dapat diekspor dengan mengatur resolusi yang diinginkan untuk hasil akhir yang optimal. CapCut menyediakan pengalaman pengeditan yang intuitif, fleksibel, dan mendukung kreativitas.', 'Software Engineering', 3, '2024-11-06 11:46:59', NULL),
(4, 'storage/images/image_artikel_4.jpeg', 'cara mengedit video menggunakan after effect', 'Mengedit video menggunakan Adobe After Effects (AE) memungkinkan pengguna untuk menciptakan visual yang kompleks dan efek khusus dengan presisi tinggi. Untuk memulai, pengguna bisa mengimpor klip video ke dalam AE dan menempatkannya di Timeline atau Composition. Di sini, setiap klip dapat dipotong, diperpanjang, atau diposisikan ulang menggunakan berbagai alat. Setelah video siap, pengguna dapat menerapkan effects dari perpustakaan AE untuk menambahkan animasi, koreksi warna, atau efek visual, seperti blur, glow, atau motion tracking. Salah satu kekuatan AE adalah penggunaan keyframes, yang memungkinkan pengeditan detail per frame untuk animasi atau perubahan secara bertahap, seperti pergerakan objek atau perubahan warna.\n\nAE juga memiliki fitur masking dan rotoscoping, di mana pengguna dapat membuat area spesifik dari video menjadi transparan atau terpisah dari latar belakang, sehingga memungkinkan efek khusus yang lebih dinamis, seperti green screen. Selain itu, AE memungkinkan integrasi teks animasi dan grafik 3D untuk meningkatkan kualitas visual, di mana pengguna bisa menyesuaikan ukuran, posisi, serta gaya font dengan bebas. Setelah selesai mengedit, video dapat diekspor dengan berbagai format dan kualitas sesuai kebutuhan. AE menjadi pilihan utama bagi pembuat konten yang ingin membuat video dengan tingkat kreativitas tinggi dan hasil yang profesional.', 'Interaktif Multimedia', 1, '2024-11-06 11:46:59', NULL),
(5, 'storage/images/image_artikel_5.jpeg', 'cara membuat website menggunakan laravel', 'Untuk membuat website menggunakan Laravel, pertama-tama Anda perlu menginstal framework ini dan mempersiapkan lingkungan pengembangan. Laravel memerlukan PHP, Composer (sebagai dependency manager), dan server seperti Apache atau Nginx. Setelah Composer terpasang, buat proyek Laravel baru dengan perintah composer create-project laravel/laravel nama_proyek. Setelah proyek berhasil dibuat, masuk ke direktori proyek dan jalankan php artisan serve untuk mengaktifkan server lokal dan mengakses website melalui localhost.\n\nLaravel menggunakan pola Model-View-Controller (MVC) yang memisahkan logika aplikasi, tampilan, dan data. Anda dapat mulai dengan membuat route pada file web.php untuk menentukan jalur akses ke halaman tertentu. Di dalam Laravel, pengelolaan tampilan dapat dilakukan dengan mudah menggunakan Blade, mesin template yang memungkinkan penulisan HTML dinamis. Dengan struktur MVC, Anda bisa membuat controller untuk memproses logika aplikasi dan model untuk mengelola data, seperti menghubungkan dengan basis data MySQL melalui migration dan seeder.\n\nLaravel juga dilengkapi fitur keamanan, autentikasi, dan akses ke berbagai paket seperti Laravel Mix untuk mengelola asset front-end. Tahapan akhir meliputi pengaturan deployment di server produksi, memastikan semua konfigurasi sesuai untuk lingkungan web agar aplikasi dapat diakses oleh pengguna.', 'Software Engineering', 3, '2024-11-06 11:46:59', NULL),
(6, 'storage/images/image_artikel_6.jpeg', 'cara mengedit gambar menggunakan photoshop', 'Untuk mengedit gambar menggunakan Photoshop, pertama buka program Photoshop dan buka file gambar yang ingin diedit dengan memilih File > Open. Setelah gambar terbuka, Anda dapat menggunakan berbagai alat di toolbar, seperti Move Tool untuk memindahkan objek, Crop Tool untuk memotong area yang tidak diinginkan, dan Lasso Tool atau Magic Wand untuk memilih bagian tertentu dari gambar. Untuk menyesuaikan warna atau kecerahan, pilih Image > Adjustments dan pilih opsi seperti Brightness/Contrast, Levels, atau Hue/Saturation. Anda juga bisa menggunakan Layer untuk menambah elemen baru, seperti teks atau objek lainnya, dan memodifikasi efeknya dengan berbagai filter yang ada di Filter > Filter Gallery. Setelah selesai, simpan hasil editan dengan memilih File > Save As untuk menyimpan gambar dalam format yang diinginkan. Photoshop menawarkan banyak fitur lanjutan seperti Masking dan Blending Modes yang bisa digunakan untuk mengedit gambar dengan lebih kompleks dan presisi.', 'Interaktif Multimedia', 2, '2024-11-06 11:46:59', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
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
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_11_06_134511_penulis', 1),
(6, '2024_11_06_134512_artikel', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `penulis`
--

CREATE TABLE `penulis` (
  `penulis_id` bigint UNSIGNED NOT NULL,
  `foto_profil_path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `spesialis` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `penulis`
--

INSERT INTO `penulis` (`penulis_id`, `foto_profil_path`, `nama`, `spesialis`, `created_at`, `updated_at`) VALUES
(1, 'storage/images/image_1.jpeg', 'Bia Mecca Annisa', 'spesialis Data Science', NULL, NULL),
(2, 'storage/images/image_2.jpeg', 'Raka Putra Wicaksono', 'spesialis Interaktif Multimedia', NULL, NULL),
(3, 'storage/images/image_3.jpeg', 'Abi Firmansyah', 'spesialis Network Security', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `artikel`
--
ALTER TABLE `artikel`
  ADD PRIMARY KEY (`artikel_id`),
  ADD KEY `artikel_id_penulis_foreign` (`id_penulis`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `penulis`
--
ALTER TABLE `penulis`
  ADD PRIMARY KEY (`penulis_id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `artikel`
--
ALTER TABLE `artikel`
  MODIFY `artikel_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `penulis`
--
ALTER TABLE `penulis`
  MODIFY `penulis_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `artikel`
--
ALTER TABLE `artikel`
  ADD CONSTRAINT `artikel_id_penulis_foreign` FOREIGN KEY (`id_penulis`) REFERENCES `penulis` (`penulis_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
