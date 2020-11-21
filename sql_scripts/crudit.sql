-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 21-Nov-2020 às 22:04
-- Versão do servidor: 10.4.16-MariaDB
-- versão do PHP: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `crudit`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_11_21_175444_create_todos_table', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `todos`
--

CREATE TABLE `todos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT 0,
  `created_by` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `todos`
--

INSERT INTO `todos` (`id`, `title`, `body`, `completed`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 'Et nobis animi perspiciatis quaerat.', 'Debitis sint doloremque quia aperiam nemo. Id dolores et est corrupti iusto beatae. Dignissimos aut a expedita harum quia.', 1, 8, '2020-11-21 23:57:57', '2020-11-21 23:57:57'),
(2, 'Nam quia soluta omnis et.', 'Eum velit suscipit iusto aliquam commodi. Quis maiores est qui recusandae. Quis molestias aut aut sed nobis est ullam temporibus. Voluptatem temporibus minima aut accusantium.', 0, 5, '2020-11-21 23:57:57', '2020-11-21 23:57:57'),
(3, 'Enim ad eos culpa voluptatem quia aut voluptates eaque.', 'Possimus sequi consequatur nihil autem est illo rerum. Et eum beatae dolores quos hic. Et magni aut aut natus.', 0, 9, '2020-11-21 23:57:57', '2020-11-21 23:57:57'),
(4, 'Quisquam non aut asperiores doloremque ea dolorem vitae.', 'In eaque quae voluptates doloribus ipsum voluptatem. Deleniti iure pariatur est hic eos ut. Mollitia velit sint et rerum perspiciatis ipsum. Corrupti iste ipsa et ut vitae accusamus animi occaecati.', 0, 8, '2020-11-21 23:57:57', '2020-11-21 23:57:57'),
(5, 'Voluptate iste molestiae ipsum ut et facilis.', 'Ut non laudantium omnis nihil. Blanditiis assumenda beatae laborum in blanditiis nemo. Libero sit magni sequi vero fugit minus sapiente. Velit quia hic quam eos.', 0, 10, '2020-11-21 23:57:57', '2020-11-21 23:57:57'),
(6, 'Culpa est quo quam est rerum eum culpa dolores.', 'Possimus soluta asperiores ut error pariatur earum. Error facilis ipsum beatae laboriosam. Ut rerum a a ad molestiae voluptatem ut. Nisi deserunt minus quo cum fugiat dolores.', 0, 10, '2020-11-21 23:57:57', '2020-11-21 23:57:57'),
(7, 'Illo non non ut dicta ut placeat dolorem.', 'Porro veritatis aliquid aut iste nobis porro magni. Id pariatur nulla maxime ipsam. Quas exercitationem occaecati pariatur quo nulla. Consectetur voluptatem dicta asperiores non voluptate nulla. Quasi quos maxime nihil similique est et.', 1, 1, '2020-11-21 23:57:57', '2020-11-21 23:57:57'),
(8, 'Corporis itaque quisquam saepe odio autem possimus non.', 'Similique rem cum aut omnis earum dolor. Natus quisquam voluptatum cum accusamus doloremque. Consequatur quis velit voluptas iste ducimus numquam. Corrupti illum quia est atque odio.', 1, 3, '2020-11-21 23:57:57', '2020-11-21 23:57:57'),
(9, 'Quos ut hic accusamus quidem sit.', 'Nihil labore inventore consequatur. Delectus magnam molestiae illo quisquam est. Nobis fuga aliquid vitae sint eius est. Blanditiis debitis deserunt eius dolorem laudantium.', 1, 7, '2020-11-21 23:57:57', '2020-11-21 23:57:57'),
(10, 'Aut nesciunt et est expedita expedita inventore libero enim.', 'Vel voluptatem a facilis ipsum incidunt. Et voluptates sapiente ad voluptas in aut. Libero esse rerum quia natus reprehenderit accusantium. Doloremque provident quo et eligendi dolor vel.', 1, 5, '2020-11-21 23:57:57', '2020-11-21 23:57:57'),
(11, 'Nulla eos fugiat dicta dolores occaecati reprehenderit aspernatur hic.', 'Officia accusamus nulla rem exercitationem saepe hic hic. Enim eum voluptas repellat ut voluptatem non nihil consequatur. Similique error assumenda quod eum atque.', 1, 9, '2020-11-21 23:57:57', '2020-11-21 23:57:57'),
(12, 'Eum expedita ab porro quasi voluptate sed.', 'Aspernatur est voluptas pariatur ea id voluptas rerum. Quas blanditiis soluta iste. Quidem totam aperiam repudiandae odit quia aperiam magni eos. Quos illum ea et assumenda tenetur.', 1, 3, '2020-11-21 23:57:57', '2020-11-21 23:57:57'),
(13, 'Nostrum sint cumque quaerat modi labore accusamus.', 'Qui vel ipsam ratione consequatur. Incidunt ad rerum consequuntur hic et eaque. Laboriosam libero placeat ex fugiat atque eaque.', 1, 9, '2020-11-21 23:57:57', '2020-11-21 23:57:57'),
(14, 'Fugit amet itaque vel aut.', 'Dolor illo et natus est. Est distinctio eveniet vel iste natus deleniti quos.', 1, 1, '2020-11-21 23:57:57', '2020-11-21 23:57:57'),
(15, 'Corporis est in consequatur sit dolores sed.', 'A facilis cupiditate ratione voluptas magni facilis delectus veritatis. Velit in veniam ut quis enim inventore laudantium.', 0, 5, '2020-11-21 23:57:57', '2020-11-21 23:57:57'),
(16, 'Reiciendis iusto voluptatem fugiat debitis quibusdam nihil quis.', 'Quidem temporibus ratione magnam aliquid eveniet. Distinctio possimus repellendus est ex. Quis quia impedit velit nihil.', 0, 4, '2020-11-21 23:57:57', '2020-11-21 23:57:57'),
(17, 'Voluptatibus necessitatibus quia ad quo et.', 'Est dolores modi praesentium temporibus in quo. Sed dicta sunt amet natus aperiam illum. Dolore soluta vel ea sunt saepe accusantium neque. Asperiores consequuntur praesentium maxime totam quia enim optio.', 0, 8, '2020-11-21 23:57:57', '2020-11-21 23:57:57'),
(18, 'Accusamus aut rem ab fugiat aut enim officia.', 'Velit ipsum rerum quasi cupiditate et. Mollitia nam ex rerum perferendis. Accusantium dolores fugiat veritatis omnis omnis enim.', 0, 7, '2020-11-21 23:57:57', '2020-11-21 23:57:57'),
(19, 'Fuga itaque nam ut deserunt dolor.', 'Voluptate molestiae cupiditate quia et. Et vel aut qui molestiae eveniet qui sit. Ea tenetur eum nihil quo dolorum sit voluptatem ut. Molestias voluptatum provident dolores iste iusto reprehenderit.', 1, 3, '2020-11-21 23:57:57', '2020-11-21 23:57:57'),
(20, 'Dolores non voluptas natus illo sint.', 'Ipsam nesciunt ullam velit quis ut et. Repellat est quae ut dolor ratione sequi dolor laboriosam. Sunt accusamus tempore aut quia voluptate. Molestiae id ex sed consequatur in.', 0, 6, '2020-11-21 23:57:57', '2020-11-21 23:57:57'),
(21, 'Maiores deserunt adipisci sed voluptates sint consequatur quo.', 'Itaque nostrum et beatae non. Adipisci et est est. Fuga voluptatem voluptates sit a. Commodi qui sint fugiat rerum. Officia tempore facilis hic.', 1, 1, '2020-11-21 23:57:57', '2020-11-21 23:57:57'),
(22, 'Ut dolor id necessitatibus.', 'Sint atque quasi voluptas nesciunt ratione quia voluptatum. Omnis non illum earum. Quia qui natus eos animi.', 1, 6, '2020-11-21 23:57:57', '2020-11-21 23:57:57'),
(23, 'Error esse autem sint sed dolorum quia.', 'Sint minima minima nam animi accusantium. Fugiat odio et recusandae sapiente aspernatur numquam.', 0, 2, '2020-11-21 23:57:57', '2020-11-21 23:57:57'),
(24, 'Recusandae minus illum illo error.', 'Neque aut cumque laborum molestiae commodi similique numquam. Optio quia provident debitis. Cumque eos hic culpa quisquam.', 0, 2, '2020-11-21 23:57:57', '2020-11-21 23:57:57'),
(25, 'Ut numquam rem et est incidunt.', 'Consequuntur adipisci voluptatibus molestiae laudantium vitae excepturi atque. Nisi asperiores error est. Fugit cum temporibus aperiam adipisci quos. Ut amet ut dolor sit tempora.', 1, 3, '2020-11-21 23:57:57', '2020-11-21 23:57:57'),
(26, 'Qui aspernatur nemo ipsam adipisci illum dolorem autem.', 'Quos autem quam accusantium odio magnam et. Voluptas nihil aspernatur omnis et recusandae rerum tenetur. Repellendus maiores quod quam nesciunt.', 0, 7, '2020-11-21 23:57:57', '2020-11-21 23:57:57'),
(27, 'Expedita et alias eligendi soluta est et.', 'Neque quis est accusamus voluptatibus aspernatur nam dolor. Fugiat omnis harum ullam. Eum quia quam modi.', 1, 5, '2020-11-21 23:57:57', '2020-11-21 23:57:57'),
(28, 'Velit quas quos mollitia itaque eos cum eum.', 'Quia ex voluptatem ullam aut voluptate deserunt. Ducimus sunt sunt eveniet odio. Non qui tenetur repellendus tempore eligendi. Inventore autem nam quo itaque magnam. Ea voluptatibus rerum exercitationem enim omnis assumenda.', 1, 8, '2020-11-21 23:57:57', '2020-11-21 23:57:57'),
(29, 'Quaerat optio officiis et iusto non et.', 'Optio voluptatem ratione et molestiae et ad. Voluptatem beatae corrupti aliquam ut quibusdam corrupti. Delectus corrupti dolor quas ipsum laborum.', 0, 5, '2020-11-21 23:57:57', '2020-11-21 23:57:57'),
(30, 'Omnis voluptas ut magni vel consectetur ab dolorem.', 'Accusamus architecto nulla ratione et omnis officia vero. Dolor est nemo accusamus cupiditate sapiente quia expedita. Quis architecto perferendis non tenetur eius. Eos et non numquam.', 0, 5, '2020-11-21 23:57:57', '2020-11-21 23:57:57'),
(31, 'Aperiam illum fugiat at neque eos quia voluptatem.', 'Autem reiciendis illo labore. Corrupti quia eum et maiores dolor adipisci non dolore. Dolorum voluptatem vero atque iste alias quia quia. Eius nesciunt fugiat recusandae.', 0, 1, '2020-11-21 23:57:57', '2020-11-21 23:57:57'),
(32, 'Eaque sit cumque rerum voluptate est voluptatem.', 'Aliquam corporis enim sed est repudiandae. Asperiores nostrum consectetur dignissimos nostrum pariatur inventore corporis tenetur. Ullam corrupti tempora est laboriosam et omnis facilis.', 1, 4, '2020-11-21 23:57:57', '2020-11-21 23:57:57'),
(33, 'Dolorem pariatur commodi sit qui ut.', 'Voluptate ex autem in recusandae animi omnis sint molestiae. Est voluptatem ab nam consequatur voluptatibus. Ut quis numquam corrupti suscipit porro corrupti eos in.', 0, 3, '2020-11-21 23:57:57', '2020-11-21 23:57:57'),
(34, 'Magni officiis et suscipit nemo.', 'Minima qui laudantium nulla sunt repudiandae molestiae dolorem. Voluptatem et temporibus et saepe quia consequatur. Sint debitis natus quaerat velit accusantium. Vel quo dicta animi quo esse voluptatem aut ut.', 0, 10, '2020-11-21 23:57:57', '2020-11-21 23:57:57'),
(35, 'Voluptas aut et dolor nemo modi eveniet et.', 'Ratione cupiditate cupiditate quo et aperiam voluptatem. Nisi est sapiente ut iure et. Eveniet aut accusamus sequi et ea sit.', 0, 1, '2020-11-21 23:57:57', '2020-11-21 23:57:57'),
(36, 'Molestiae similique rem fugit et optio.', 'Et eius facere ad quibusdam consequatur. Mollitia sapiente veniam enim omnis temporibus. Quasi voluptas labore sint doloribus.', 1, 4, '2020-11-21 23:57:57', '2020-11-21 23:57:57'),
(37, 'Sunt et repudiandae quo inventore.', 'Nobis odio ducimus vel. Doloribus et voluptates necessitatibus expedita corrupti est. Recusandae tempora delectus beatae aspernatur. Qui et vel ut consectetur officiis corrupti.', 0, 10, '2020-11-21 23:57:57', '2020-11-21 23:57:57'),
(38, 'Provident rem voluptatibus maiores dolores possimus molestias deserunt.', 'Dolorum omnis nihil ipsam quia eveniet dolorem dolorem. Velit iste enim suscipit atque. Provident quaerat ut maxime amet.', 0, 8, '2020-11-21 23:57:57', '2020-11-21 23:57:57'),
(39, 'Dolore rerum pariatur deleniti dignissimos.', 'Autem esse expedita animi. Ut voluptate dolorum molestiae neque a porro. Repellendus excepturi sint omnis exercitationem dolore.', 1, 8, '2020-11-21 23:57:57', '2020-11-21 23:57:57'),
(40, 'Quod maiores quia voluptatum rem dolores quidem rerum.', 'Modi nam et rerum delectus. Quisquam ut veritatis nisi unde illo eum voluptatibus consequatur. Atque neque est et quisquam dolore numquam. Et animi saepe voluptas.', 1, 9, '2020-11-21 23:57:57', '2020-11-21 23:57:57'),
(41, 'A illum tempora et autem.', 'Odit repudiandae est in saepe reiciendis porro. Eos tenetur porro veritatis non eius. Aut id incidunt optio sequi sequi ut dicta. Dolor est consequatur quod quo rem.', 1, 10, '2020-11-21 23:57:57', '2020-11-21 23:57:57'),
(42, 'Omnis explicabo voluptatibus deserunt nobis ex a.', 'Est ut et ad esse. Et atque omnis molestiae nesciunt quibusdam tenetur. Exercitationem velit doloremque cupiditate possimus sit officia.', 1, 4, '2020-11-21 23:57:57', '2020-11-21 23:57:57'),
(43, 'Ut voluptas et aperiam.', 'Soluta ut placeat repellendus neque nam et sint. Optio qui omnis quibusdam quos reprehenderit incidunt et. Consequuntur ea eum ratione sint maxime non. Pariatur voluptas molestias expedita.', 0, 10, '2020-11-21 23:57:57', '2020-11-21 23:57:57'),
(44, 'Voluptatibus sint voluptatibus sed fugiat.', 'Sint fuga labore sed quia et. Quaerat facere illo exercitationem et.', 0, 4, '2020-11-21 23:57:57', '2020-11-21 23:57:57'),
(45, 'Sed est ut ut magni rem.', 'Voluptatum amet fugiat esse numquam quisquam aut. In atque delectus dignissimos dolor vitae sapiente. A tempora eveniet mollitia officia est et est.', 1, 5, '2020-11-21 23:57:57', '2020-11-21 23:57:57'),
(46, 'Beatae enim voluptatibus voluptatum quibusdam asperiores excepturi alias.', 'Optio totam qui dolorem quaerat velit nulla qui esse. Quod cumque quibusdam sit dolorem quia nihil iusto. Tempore pariatur quae totam facilis.', 1, 5, '2020-11-21 23:57:57', '2020-11-21 23:57:57'),
(47, 'Error molestiae ab eos doloremque harum dolorem minima expedita.', 'Dolor molestiae laborum porro tempore amet. Perspiciatis blanditiis commodi aperiam sit. Modi natus nobis repudiandae magni.', 1, 7, '2020-11-21 23:57:57', '2020-11-21 23:57:57'),
(48, 'Cumque molestiae ipsa atque et voluptas.', 'Sit sint blanditiis eos quo dolore voluptatem aliquid ab. Reiciendis minima aut culpa. Expedita beatae voluptatibus aut occaecati explicabo. Temporibus consequatur cum amet dolores iste ducimus quia ipsam.', 1, 9, '2020-11-21 23:57:57', '2020-11-21 23:57:57'),
(49, 'Adipisci illo veritatis voluptates et a explicabo dolore sit.', 'Qui quasi nesciunt quo dolor molestiae eos voluptas. Animi sint placeat soluta rem adipisci dolor fugit. Omnis autem sit voluptatum.', 1, 2, '2020-11-21 23:57:57', '2020-11-21 23:57:57'),
(50, 'Tenetur molestias quis eos aut maiores ducimus laboriosam consequuntur.', 'Quia alias incidunt blanditiis. Illum esse architecto repellendus culpa et mollitia necessitatibus. Dolores fuga et veniam voluptatem quam saepe.', 0, 5, '2020-11-21 23:57:57', '2020-11-21 23:57:57'),
(51, 'tarefa', 'teste', 0, 11, '2020-11-22 00:02:29', '2020-11-22 00:02:29');

-- --------------------------------------------------------

--
-- Estrutura da tabela `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `gender`, `state`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Ariane Zboncak', 'cole.roscoe@example.net', '2020-11-21 23:57:43', '$2y$10$8TCxagY2ExmewYr39m5D8uPMkG4NEqKKjfixHk2ZN5/OZy91YC/mm', 'N', 'SP', 'E8jpT4tWKe', '2020-11-21 23:57:43', '2020-11-21 23:57:43'),
(2, 'Rex Jacobson DVM', 'olga19@example.org', '2020-11-21 23:57:43', '$2y$10$7tR5a7lCuLelPK5.3oLuR.YOiyy6hamYQoNP9v1b5PaBS8d67wOtK', 'N', 'SP', 'bJMxCOqPoF', '2020-11-21 23:57:43', '2020-11-21 23:57:43'),
(3, 'Miss Ardith Hammes III', 'raheem.gislason@example.com', '2020-11-21 23:57:43', '$2y$10$X1KRXwqnSGKYbO1z2QiX6.EXzUS1QtEc77jAXMVR.JvEgWiTpnpf6', 'N', 'SP', 'UqferG8ea8', '2020-11-21 23:57:43', '2020-11-21 23:57:43'),
(4, 'Prof. Lucas Rau DDS', 'steve56@example.com', '2020-11-21 23:57:43', '$2y$10$gb1X2hghfL5G2U3k6gL4COrwy2UXAmzcsAHgPxFfnaNrLG2H9.MCC', 'N', 'SP', 'IgnRQnYLyL', '2020-11-21 23:57:43', '2020-11-21 23:57:43'),
(5, 'Macey Hansen', 'nichole20@example.com', '2020-11-21 23:57:43', '$2y$10$Wp711.nHJCmT66yLN11UrOZD.seSjQpbr1xjBxchaVq3s4HadDD.i', 'N', 'SP', 'kUuZfm00Ua', '2020-11-21 23:57:43', '2020-11-21 23:57:43'),
(6, 'Jaida Mitchell', 'cronin.martina@example.org', '2020-11-21 23:57:43', '$2y$10$Oz.fl/J8mo/uecfV5fsyTeRMTRDamCIvWjzs.UblDM7Q.rYIFej/m', 'N', 'SP', 'HXcojF861o', '2020-11-21 23:57:43', '2020-11-21 23:57:43'),
(7, 'Bonita Roob PhD', 'bnolan@example.org', '2020-11-21 23:57:43', '$2y$10$rS0x2COvmOHaPvhQKstV9OngFDDJ9q9POSHevA3nT9jh6dtjIdTUC', 'N', 'SP', 'gv9ZAkDJlD', '2020-11-21 23:57:43', '2020-11-21 23:57:43'),
(8, 'Morgan Hintz', 'tryan@example.org', '2020-11-21 23:57:43', '$2y$10$QyYtDfn5kdGYKCEZGw5zm.TE46p1v5/EpWRuKVnPav9dXmVQBjYKS', 'N', 'SP', 'YTkpq6nT9i', '2020-11-21 23:57:43', '2020-11-21 23:57:43'),
(9, 'Finn Gutkowski', 'kassulke.mark@example.com', '2020-11-21 23:57:43', '$2y$10$NVdjuMjgPTrCbLMfq7sQVOtTdjJWn9bq.dHjamAqikcAUnSiNYOpG', 'N', 'SP', 'baTasVLmgy', '2020-11-21 23:57:43', '2020-11-21 23:57:43'),
(10, 'Waylon Johnson II', 'haylee.wuckert@example.com', '2020-11-21 23:57:43', '$2y$10$gw6Bgxinc28zUHLSw7.I5.x/rxUA9FlsF0HcOza4ztM.ZEAuTkm2O', 'N', 'SP', 'g2ROcCpT2x', '2020-11-21 23:57:43', '2020-11-21 23:57:43'),
(11, 'Renato Cunha', 'renato@email.com', NULL, '$2y$10$eeu.65mwYg4N0C.q3MKeVO5VVYjtqXw0j2vMUoKuHmW4Mf7VFb0RG', 'M', 'PE', NULL, '2020-11-22 00:01:38', '2020-11-22 00:01:38');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Índices para tabela `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Índices para tabela `todos`
--
ALTER TABLE `todos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `todos_created_by_foreign` (`created_by`);

--
-- Índices para tabela `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `todos`
--
ALTER TABLE `todos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT de tabela `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `todos`
--
ALTER TABLE `todos`
  ADD CONSTRAINT `todos_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
