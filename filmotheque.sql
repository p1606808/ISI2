-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  mar. 02 juin 2020 à 14:05
-- Version du serveur :  10.4.10-MariaDB
-- Version de PHP :  7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `filmotheque`
--

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `libelle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `categories`
--

INSERT INTO `categories` (`id`, `libelle`, `created_at`, `updated_at`) VALUES
(1, 'Porro.', '2020-06-02 11:16:45', '2020-06-02 11:16:45'),
(2, 'Quaerat.', '2020-06-02 11:16:45', '2020-06-02 11:16:45'),
(3, 'Fuga.', '2020-06-02 11:16:45', '2020-06-02 11:16:45'),
(4, 'Iure.', '2020-06-02 11:16:45', '2020-06-02 11:16:45'),
(5, 'Ipsum.', '2020-06-02 11:16:45', '2020-06-02 11:16:45'),
(6, 'Aut.', '2020-06-02 11:16:45', '2020-06-02 11:16:45'),
(7, 'Omnis.', '2020-06-02 11:16:45', '2020-06-02 11:16:45'),
(8, 'Ullam.', '2020-06-02 11:16:45', '2020-06-02 11:16:45'),
(9, 'Provident.', '2020-06-02 11:16:45', '2020-06-02 11:16:45'),
(10, 'Recusandae.', '2020-06-02 11:16:45', '2020-06-02 11:16:45');

-- --------------------------------------------------------

--
-- Structure de la table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `films`
--

DROP TABLE IF EXISTS `films`;
CREATE TABLE IF NOT EXISTS `films` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `titre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `anneeSortie` year(4) NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `categorie_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `films_categorie_id_foreign` (`categorie_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `films`
--

INSERT INTO `films` (`id`, `titre`, `anneeSortie`, `description`, `categorie_id`, `created_at`, `updated_at`) VALUES
(2, 'Nam autem vero.', 2012, 'Sint voluptas dicta qui vel perspiciatis error incidunt est voluptatibus.', 10, '2020-06-02 11:17:01', '2020-06-02 11:17:01'),
(3, 'Id commodi.', 1986, 'Qui ut fugiat et aut blanditiis et error possimus itaque incidunt harum laborum eos incidunt.', 6, '2020-06-02 11:17:01', '2020-06-02 11:17:01'),
(4, 'Pariatur esse.', 2019, 'Natus quasi nesciunt explicabo autem sunt hic ex dolorem sit inventore.', 10, '2020-06-02 11:17:01', '2020-06-02 11:17:01'),
(5, 'Sit laboriosam ipsum.', 2004, 'Modi necessitatibus perferendis accusamus molestiae sed est vel.', 6, '2020-06-02 11:17:01', '2020-06-02 11:17:01'),
(6, 'Omnis enim ut ex.', 2012, 'Dolorem omnis est blanditiis facere ratione omnis dolorem.', 4, '2020-06-02 11:17:01', '2020-06-02 11:17:01'),
(7, 'Possimus est laboriosam.', 2012, 'Nemo quasi nobis neque vel aut illo.', 5, '2020-06-02 11:17:01', '2020-06-02 11:17:01'),
(8, 'Nulla architecto voluptas velit incidunt.', 1998, 'Est quibusdam aut necessitatibus at tempore asperiores.', 9, '2020-06-02 11:17:01', '2020-06-02 11:17:01'),
(9, 'Cumque minima.', 1980, 'Sed sapiente est et molestias quaerat similique aliquam et quisquam exercitationem omnis voluptas ut.', 2, '2020-06-02 11:17:01', '2020-06-02 11:17:01'),
(10, 'Et autem harum.', 2004, 'Cumque quis enim aliquam est odio qui maxime animi.', 9, '2020-06-02 11:17:01', '2020-06-02 11:17:01');

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2019_08_19_000000_create_failed_jobs_table', 1),
(3, '2020_06_02_121146_create_categories_table', 2),
(6, '2020_06_02_131417_create_categories_table', 3),
(7, '2020_06_02_131447_create_films_table', 3);

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `films`
--
ALTER TABLE `films`
  ADD CONSTRAINT `films_categorie_id_foreign` FOREIGN KEY (`categorie_id`) REFERENCES `categories` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
