-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Gegenereerd op: 30 jul 2019 om 13:09
-- Serverversie: 10.1.30-MariaDB
-- PHP-versie: 7.2.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `comments`
--

CREATE TABLE `comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `comments`
--

INSERT INTO `comments` (`id`, `user_id`, `post_id`, `body`, `created_at`, `updated_at`, `title`) VALUES
(1, 1, 1, 'Nice!!', '2018-05-01 22:00:00', '2018-05-01 22:00:00', 'Dutch Death!'),
(2, 4, 1, 'Heavy as Hell', '2018-05-01 22:00:00', '2018-05-01 22:00:00', 'Live in Arnhem'),
(6, 3, 1, 'CD and DVD', '2018-05-03 08:21:29', '2018-05-03 08:21:29', 'NEW!!'),
(7, 1, 2, 'Yepper', '2018-05-03 08:29:41', '2018-05-03 08:29:41', 'Yepper!'),
(8, 3, 5, 'See them Live!', '2018-05-03 10:26:19', '2018-05-03 10:26:19', 'Great band.'),
(9, 2, 5, 'Saw them 10 times already.', '2018-05-03 10:26:33', '2018-05-03 10:26:33', 'You\'re right.'),
(14, 1, 13, 'Beste engelse Punk-band ever!!', '2018-05-11 15:59:49', '2018-05-11 15:59:49', 'Gezien in de Melkweg.'),
(17, 4, 7, '<h2>Members</h2>\r\n<dl>\r\n<dt>Current</dt>\r\n</dl>\r\n<ul>\r\n<li>Paolo Rossi – bass, clean vocals (2007–present)</li>\r\n<li>Francesco Paoli – lead vocals, rhythm guitar (2007–2009, 2017–present), drums, backing vocals, studio rhythm guitar (2009–2017)</li>\r\n<li>Francesco Ferrini – piano, string arrangements, orchestral effects (2010–present)</li>\r\n</ul>\r\n<dl>\r\n<dt>Former</dt>\r\n</dl>\r\n<ul>\r\n<li>Tommaso Riccardi – lead vocals, rhythm guitar (2009–2017)</li>\r\n<li>Cristiano Trionfera – lead guitar, backing vocals (2007–2017)</li>\r\n<li>Francesco Struglia – drums (2007–2009)</li>\r\n</ul>\r\n<dl>\r\n<dt>Session</dt>\r\n</dl>\r\n<ul>\r\n<li>Francesco Ferrini – piano, string arrangements, orchestral effects (2009–2010)</li>\r\n<li>Mauro Mercurio – drums (2009)</li>\r\n<li>Tommaso Riccardi – rhythm guitar (2009)</li>\r\n<li>Veronica Bordacchini – operatic vocals (2011–present)</li>\r\n</ul>\r\n<dl>\r\n<dt>Live</dt>\r\n</dl>\r\n<ul>\r\n<li>Veronica Bordacchini – operatic vocals (2013–present)</li>\r\n<li>Fabio Bartoletti – lead guitar (2017–present)</li>\r\n<li>David Folchitto – drums (2017–present)</li>\r\n</ul>', '2018-05-12 05:49:01', '2018-05-12 05:49:01', 'SUPERGROUP!!'),
(18, 1, 7, '<h2>Track listing</h2>\r\n<p>All lyrics written by Tommaso Riccardi and Paolo Rossi except where noted; all music composed by Francesco Paoli and Francesco Ferrini except where noted.</p>\r\n<table class=\"tracklist\" style=\"display:block;border-spacing:0px;border-collapse:collapse;padding:4px\">\r\n<tr>\r\n<th class=\"tlheader\" scope=\"col\" style=\"width:2em;padding-left:10px;padding-right:10px;text-align:right;background-color:#eee\"><abbr title=\"Number\">No.</abbr></th>\r\n<th class=\"tlheader\" scope=\"col\" style=\"width:100%;text-align:left;background-color:#eee\">Title</th>\r\n<th class=\"tlheader\" scope=\"col\" style=\"width:4em;padding-right:10px;text-align:right;background-color:#eee\">Length</th>\r\n</tr>\r\n<tr style=\"background-color:#fff\">\r\n<td style=\"padding-right:10px;text-align:right;vertical-align:top\">1.</td>\r\n<td style=\"vertical-align:top\">\"Marche Royale\"</td>\r\n<td style=\"padding-right:10px;text-align:right;vertical-align:top\">1:58</td>\r\n</tr>\r\n<tr style=\"background-color:#f7f7f7\">\r\n<td style=\"padding-right:10px;text-align:right;vertical-align:top\">2.</td>\r\n<td style=\"vertical-align:top\">\"In Aeternum\"</td>\r\n<td style=\"padding-right:10px;text-align:right;vertical-align:top\">5:26</td>\r\n</tr>\r\n<tr style=\"background-color:#fff\">\r\n<td style=\"padding-right:10px;text-align:right;vertical-align:top\">3.</td>\r\n<td style=\"vertical-align:top\">\"Healing Through War\" <span style=\"font-size:85%\">(Speech from \'De Bello Gallico\' by Julius Caesar)</span></td>\r\n<td style=\"padding-right:10px;text-align:right;vertical-align:top\">4:43</td>\r\n</tr>\r\n<tr style=\"background-color:#f7f7f7\">\r\n<td style=\"padding-right:10px;text-align:right;vertical-align:top\">4.</td>\r\n<td style=\"vertical-align:top\">\"The Fool\"</td>\r\n<td style=\"padding-right:10px;text-align:right;vertical-align:top\">4:06</td>\r\n</tr>\r\n<tr style=\"background-color:#fff\">\r\n<td style=\"padding-right:10px;text-align:right;vertical-align:top\">5.</td>\r\n<td style=\"vertical-align:top\">\"Cold As Perfection\" <span style=\"font-size:85%\">(Additional speaking by Nate Kantner)</span></td>\r\n<td style=\"padding-right:10px;text-align:right;vertical-align:top\">6:31</td>\r\n</tr>\r\n<tr style=\"background-color:#f7f7f7\">\r\n<td style=\"padding-right:10px;text-align:right;vertical-align:top\">6.</td>\r\n<td style=\"vertical-align:top\">\"Mitra\" <span style=\"font-size:85%\">(Additional speaking by Nate Kantner)</span></td>\r\n<td style=\"padding-right:10px;text-align:right;vertical-align:top\">3:49</td>\r\n</tr>\r\n<tr style=\"background-color:#fff\">\r\n<td style=\"padding-right:10px;text-align:right;vertical-align:top\">7.</td>\r\n<td style=\"vertical-align:top\">\"Paramour (Die Leidenschaft Bringt Leiden)\" <span style=\"font-size:85%\">(Lyrics taken from \'Trilogie der Leidenschaft\' by <a href=\"/wiki/Johann_Wolfgang_Von_Goethe\" class=\"mw-redirect\" title=\"Johann Wolfgang Von Goethe\">Johann Wolfgang Von Goethe</a>)</span></td>\r\n<td style=\"padding-right:10px;text-align:right;vertical-align:top\">3:43</td>\r\n</tr>\r\n<tr style=\"background-color:#f7f7f7\">\r\n<td style=\"padding-right:10px;text-align:right;vertical-align:top\">8.</td>\r\n<td style=\"vertical-align:top\">\"And the Vulture Beholds\"</td>\r\n<td style=\"padding-right:10px;text-align:right;vertical-align:top\">5:13</td>\r\n</tr>\r\n<tr style=\"background-color:#fff\">\r\n<td style=\"padding-right:10px;text-align:right;vertical-align:top\">9.</td>\r\n<td style=\"vertical-align:top\">\"Gravity\"</td>\r\n<td style=\"padding-right:10px;text-align:right;vertical-align:top\">5:12</td>\r\n</tr>\r\n<tr style=\"background-color:#f7f7f7\">\r\n<td style=\"padding-right:10px;text-align:right;vertical-align:top\">10.</td>\r\n<td style=\"vertical-align:top\">\"A Million Deaths\"</td>\r\n<td style=\"padding-right:10px;text-align:right;vertical-align:top\">5:27</td>\r\n</tr>\r\n<tr style=\"background-color:#fff\">\r\n<td style=\"padding-right:10px;text-align:right;vertical-align:top\">11.</td>\r\n<td style=\"vertical-align:top\">\"Syphilis\"</td>\r\n<td style=\"padding-right:10px;text-align:right;vertical-align:top\">7:22</td>\r\n</tr>\r\n<tr style=\"background-color:#f7f7f7\">\r\n<td style=\"padding-right:10px;text-align:right;vertical-align:top\">12.</td>\r\n<td style=\"vertical-align:top\">\"King\" <span style=\"font-size:85%\">(Written by Francesco Ferrini)</span></td>\r\n<td style=\"padding-right:10px;text-align:right;vertical-align:top\">3:59</td>\r\n</tr>\r\n</table>', '2018-05-12 05:59:54', '2018-05-12 05:59:54', 'Tracklist King');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_04_16_101636_add_colums_to_users_table', 1),
(4, '2018_04_17_093446_create_roles_table', 1),
(5, '2018_04_19_121426_add_intro_to_users_table', 1),
(9, '2018_04_22_093657_create_posts_table', 2),
(10, '2018_04_22_160817_create_comments_table', 2),
(11, '2018_04_23_103631_create_tasks_table', 2),
(12, '2018_04_29_082159_create_tags_table', 3),
(13, '2018_05_02_083840_create_agendas_table', 4),
(20, '2018_05_09_131400_add_columns_to_posts_table', 6),
(21, '2018_05_10_103143_add_title_to_comments_table', 6);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('l.j.van.der.meulen@gmail.com', '$2y$10$.L.DdPQKwy1iNfXKyMtvjO89duYCMIjAOl7fMSN.rLMc0SzrHaHCK', '2018-10-28 15:06:32');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `body` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `subtitle` varchar(191) DEFAULT NULL,
  `subbody` text,
  `cover_image` varchar(191) NOT NULL,
  `disabled` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `title`, `body`, `created_at`, `updated_at`, `subtitle`, `subbody`, `cover_image`, `disabled`) VALUES
(1, 1, 'Asphyx', '<ul>\r\n<li><i><a href=\"https://en.wikipedia.org/wiki/The_Rack_(album)\" title=\"The Rack (album)\" target=\"_blank\">The Rack</a></i> (1991, <a href=\"https://en.wikipedia.org/wiki/Century_Media_Records\" title=\"Century Media Records\" target=\"_blank\">Century Media</a>)</li>\r\n<li><i><a href=\"https://en.wikipedia.org/wiki/Last_One_on_Earth\" title=\"Last One on Earth\" target=\"_blank\">Last One on Earth</a></i> (1992, Century Media)</li>\r\n<li><i><a href=\"https://en.wikipedia.org/wiki/Asphyx_(album)\" title=\"Asphyx (album)\" target=\"_blank\">Asphyx</a></i> (1994, Century Media)</li>\r\n<li><i><a href=\"https://en.wikipedia.org/wiki/God_Cries\" title=\"God Cries\" target=\"_blank\">God Cries</a></i> (1996, Century Media)</li>\r\n<li><i><a href=\"https://en.wikipedia.org/wiki/Embrace_the_Death\" title=\"Embrace the Death\" target=\"_blank\">Embrace the Death</a></i> (1996, Century Media; recorded in 1990)</li>\r\n<li><i><a href=\"https://en.wikipedia.org/wiki/On_the_Wings_of_Inferno\" title=\"On the Wings of Inferno\" target=\"_blank\">On the Wings of Inferno</a></i> (2000, Century Media)</li>\r\n<li><i><a href=\"https://en.wikipedia.org/wiki/Death...The_Brutal_Way\" title=\"Death...The Brutal Way\" target=\"_blank\">Death...The Brutal Way</a></i> (2009, Century Media)</li>\r\n<li><i><a href=\"https://en.wikipedia.org/wiki/Deathhammer\" title=\"Deathhammer\" target=\"_blank\">Deathhammer</a></i> (2012, Century Media)</li>\r\n<li><i><a href=\"https://en.wikipedia.org/wiki/Incoming_Death\" class=\"mw-redirect\" title=\"Incoming Death\" target=\"_blank\">Incoming Death</a></i> (2016, Century Media)</li>\r\n</ul>', '2018-01-31 17:00:00', '2018-01-31 17:00:00', 'Discography Asphyx', 'text3', 'Asphyx.jpg', 0),
(2, 4, 'At The Gates', '<ul>\r\n<li><i><a href=\"https://en.wikipedia.org/wiki/The_Red_in_the_Sky_Is_Ours\" title=\"The Red in the Sky Is Ours\" target=\"_blank\">The Red in the Sky Is Ours</a></i> (1992)</li>\r\n<li><i><a href=\"https://en.wikipedia.org/wiki/With_Fear_I_Kiss_the_Burning_Darkness\" title=\"With Fear I Kiss the Burning Darkness\" target=\"_blank\">With Fear I Kiss the Burning Darkness</a></i> (1993)</li>\r\n<li><i><a href=\"https://en.wikipedia.org/wiki/Terminal_Spirit_Disease\" title=\"Terminal Spirit Disease\" target=\"_blank\">Terminal Spirit Disease</a></i> (1994)</li>\r\n<li><i><a href=\"https://en.wikipedia.org/wiki/Slaughter_of_the_Soul\" title=\"Slaughter of the Soul\" target=\"_blank\">Slaughter of the Soul</a></i> (1995)</li>\r\n<li><i><a href=\"https://en.wikipedia.org/wiki/At_War_with_Reality\" title=\"At War with Reality\" target=\"_blank\">At War with Reality</a></i> (2014)</li>\r\n<li><i><a href=\"/w/index.php?title=To_Drink_from_the_Night_Itself&amp;action=edit&amp;redlink=1\" class=\"new\" title=\"To Drink from the Night Itself (page does not exist)\" target=\"_blank\">To Drink from the Night Itself</a></i> (2018)</li>\r\n</ul>', '2018-02-01 17:00:00', '2018-02-01 17:00:00', 'Discography At The Gates', 'text1', 'At_The_Gates.jpg', 0),
(3, 2, 'August Burns Red', '<ul>\r\n<li><i><a href=\"https://en.wikipedia.org/wiki/Thrill_Seeker\" title=\"Thrill Seeker\" target=\"_blank\">Thrill Seeker</a></i> (2005)</li>\r\n<li><i><a href=\"https://en.wikipedia.org/wiki/Messengers_(album)\" title=\"Messengers (album)\" target=\"_blank\">Messengers</a></i> (2007)</li>\r\n<li><i><a href=\"https://en.wikipedia.org/wiki/Constellations_(August_Burns_Red_album)\" title=\"Constellations (August Burns Red album)\" target=\"_blank\">Constellations</a></i> (2009)</li>\r\n<li><i><a href=\"https://en.wikipedia.org/wiki/Leveler_(album)\" title=\"Leveler (album)\" target=\"_blank\">Leveler</a></i> (2011)</li>\r\n<li><i><a href=\"https://en.wikipedia.org/wiki/August_Burns_Red_Presents:_Sleddin%27_Hill\" title=\"August Burns Red Presents: Sleddin Hill\" target=\"_blank\">Sleddin Hill</a></i> (2012)</li>\r\n<li><i><a href=\"https://en.wikipedia.org/wiki/Rescue_%26_Restore\" title=\"Rescue &amp; Restore\" target=\"_blank\">Rescue &amp; Restore</a></i> (2013)</li>\r\n<li><i><a href=\"https://en.wikipedia.org/wiki/Found_in_Far_Away_Places\" title=\"Found in Far Away Places\" target=\"_blank\">Found in Far Away Places</a></i> (2015)</li>\r\n<li><i><a href=\"https://en.wikipedia.org/wiki/Phantom_Anthem\" title=\"Phantom Anthem\" target=\"_blank\">Phantom Anthem</a></i> (2017)</li>\r\n</ul>', '2018-02-02 17:00:00', '2018-02-02 17:00:00', 'Discography August Burns Red', 'text2', 'August_Burns_Red.jpg', 0),
(4, 4, 'Autopsy', '<ul>\r\n<li><i><a href=\"https://en.wikipedia.org/wiki/Severed_Survival\" title=\"Severed Survival\" target=\"_blank\">Severed Survival</a></i></li>\r\n<li><i><a href=\"https://en.wikipedia.org/wiki/Mental_Funeral\" title=\"Mental Funeral\" target=\"_blank\">Mental Funeral</a></i></li>\r\n<li><i><a href=\"https://en.wikipedia.org/wiki/Acts_of_the_Unspeakable\" title=\"Acts of the Unspeakable\" target=\"_blank\">Acts of the Unspeakable</a></i></li>\r\n<li><i><a href=\"https://en.wikipedia.org/wiki/Shitfun\" title=\"Shitfun\" target=\"_blank\">Shitfun</a></i></li>\r\n<li><i><a href=\"https://en.wikipedia.org/wiki/Macabre_Eternal\" title=\"Macabre Eternal\" target=\"_blank\">Macabre Eternal</a></i></li>\r\n<li><i><a href=\"https://en.wikipedia.org/wiki/The_Headless_Ritual\" title=\"The Headless Ritual\" target=\"_blank\">The Headless Ritual</a></i></li>\r\n<li><i><a href=\"https://en.wikipedia.org/wiki/Tourniquets,_Hacksaws_and_Graves\" title=\"Tourniquets, Hacksaws and Graves\" target=\"_blank\">Tourniquets, Hacksaws and Graves</a></i></li>\r\n</ul>', '2018-02-03 20:00:00', '2018-02-03 20:00:00', 'Discography Autopsy', 'text4', 'Autopsy.jpg', 0),
(5, 2, 'Brutal Truth', '<ul>\r\n<li><i><a href=\"https://en.wikipedia.org/wiki/Extreme_Conditions_Demand_Extreme_Responses\" title=\"Extreme Conditions Demand Extreme Responses\" target=\"_blank\">Extreme Conditions Demand Extreme Responses</a></i> (1992)</li>\r\n<li><i><a href=\"https://en.wikipedia.org/wiki/Need_to_Control\" title=\"Need to Control\" target=\"_blank\">Need to Control</a></i> (1994)</li>\r\n<li><i><a href=\"https://en.wikipedia.org/wiki/Kill_Trend_Suicide\" title=\"Kill Trend Suicide\" target=\"_blank\">Kill Trend Suicide</a></i> (1996)</li>\r\n<li><i><a href=\"https://en.wikipedia.org/wiki/Sounds_of_the_Animal_Kingdom\" title=\"Sounds of the Animal Kingdom\" target=\"_blank\">Sounds of the Animal Kingdom</a></i> (1997)</li>\r\n<li><i><a href=\"https://en.wikipedia.org/wiki/Evolution_Through_Revolution\" title=\"Evolution Through Revolution\" target=\"_blank\">Evolution Through Revolution</a></i> (2009)</li>\r\n<li><i><a href=\"https://en.wikipedia.org/wiki/End_Time_(album)\" title=\"End Time (album)\" target=\"_blank\">End Time</a></i> (2011)</li>\r\n</ul>', '2018-02-05 14:05:00', '2018-02-05 14:05:00', 'Discography Brutal Truth', 'text5', 'brutal-truth.jpg', 0),
(6, 3, 'Zo werkt het', '<h2>Blog: nieuw artikel uploaden:</h2>\r\n<p>Titel Blog, Text Blog en Categorie zijn verplicht in te vullen.<br />\r\nSubtitel en Subtext zijn optioneel.<br />\r\nSelecteer vervolgens eerst een foto en druk daarna op \'Upload naar Website\'.<br />\r\nP.S. Je kunt ook geen foto selecteren!</p>\r\n<p>De text in de blog kun je opmaken met <u>HTML!</u><br />\r\nVoor een goede snelle cursus ga naar: <a href=\"https://www.w3schools.com/html/\" target=\"_blank\">w3schools.com</a></p>', '2018-02-06 21:46:30', '2018-02-06 21:46:30', 'De Blogmaster', '', '', 0),
(7, 1, 'Fleshgod Apocalypse', '<ul>\r\n<li><i><a href=\"https://en.wikipedia.org/wiki/Oracles_(album)\" title=\"Oracles (album)\" target=\"_blank\">Oracles</a></i> (2009)</li>\r\n<li><i><a href=\"https://en.wikipedia.org/wiki/Agony_(Fleshgod_Apocalypse_album)\" title=\"Agony (Fleshgod Apocalypse album)\" target=\"_blank\">Agony</a></i> (2011)</li>\r\n<li><i><a href=\"https://en.wikipedia.org/wiki/Labyrinth_(Fleshgod_Apocalypse_album)\" title=\"Labyrinth (Fleshgod Apocalypse album)\" target=\"_blank\">Labyrinth</a></i> (2013)</li>\r\n<li><i><a href=\"https://en.wikipedia.org/wiki/King_(Fleshgod_Apocalypse_album)\" title=\"King (Fleshgod Apocalypse album)\" target=\"_blank\">King</a></i> (2016)</li>\r\n</ul>', '2018-02-09 11:06:30', '2018-02-09 11:06:30', 'Discography Fleshgod Apocalypse', '', '113185_photo.jpg', 0),
(8, 3, 'Immortal (Norway)', '<ul>\r\n<li><i><a href=\"https://en.wikipedia.org/wiki/Diabolical_Fullmoon_Mysticism\" title=\"Diabolical Fullmoon Mysticism\" target=\"_blank\">Diabolical Fullmoon Mysticism</a></i></li>\r\n<li><i><a href=\"https://en.wikipedia.org/wiki/Pure_Holocaust\" title=\"Pure Holocaust\" target=\"_blank\">Pure Holocaust</a></i></li>\r\n<li><i><a href=\"https://en.wikipedia.org/wiki/Battles_in_the_North\" title=\"Battles in the North\" target=\"_blank\">Battles in the North</a></i></li>\r\n<li><i><a href=\"https://en.wikipedia.org/wiki/Blizzard_Beasts\" title=\"Blizzard Beasts\" target=\"_blank\">Blizzard Beasts</a></i></li>\r\n<li><i><a href=\"https://en.wikipedia.org/wiki/At_the_Heart_of_Winter\" title=\"At the Heart of Winter\" target=\"_blank\">At the Heart of Winter</a></i></li>\r\n<li><i><a href=\"https://en.wikipedia.org/wiki/Damned_in_Black\" title=\"Damned in Black\" target=\"_blank\">Damned in Black</a></i></li>\r\n<li><i><a href=\"https://en.wikipedia.org/wiki/Sons_of_Northern_Darkness\" title=\"Sons of Northern Darkness\" target=\"_blank\">Sons of Northern Darkness</a></i></li>\r\n<li><i><a href=\"https://en.wikipedia.org/wiki/All_Shall_Fall\" title=\"All Shall Fall\" target=\"_blank\">All Shall Fall</a></i></li>\r\n</ul>\r\n', '2018-02-12 20:27:15', '2018-02-12 20:27:15', 'Discography Immortal', '', 'immortal.jpg', 0),
(9, 3, 'Strapping Young Lad', '<ul>\r\n<li><i><a href=\"https://en.wikipedia.org/wiki/Heavy_as_a_Really_Heavy_Thing\" title=\"Heavy as a Really Heavy Thing\" target=\"_blank\">Heavy as a Really Heavy Thing</a></i></li>\r\n<li><i><a href=\"https://en.wikipedia.org/wiki/City_(Strapping_Young_Lad_album)\" title=\"City (Strapping Young Lad album)\" target=\"_blank\">City</a></i></li>\r\n<li><i><a href=\"https://en.wikipedia.org/wiki/Strapping_Young_Lad_(album)\" title=\"Strapping Young Lad (album)\" target=\"_blank\">Strapping Young Lad</a></i></li>\r\n<li><i><a href=\"https://en.wikipedia.org/wiki/Alien_(Strapping_Young_Lad_album)\" title=\"Alien (Strapping Young Lad album)\" target=\"_blank\">Alien</a></i></li>\r\n<li><i><a href=\"https://en.wikipedia.org/wiki/The_New_Black\" title=\"The New Black\" target=\"_blank\">The New Black</a></i></li>\r\n</ul>\r\n', '2018-02-16 20:20:00', '2018-02-16 20:20:00', 'Discography Strapping Young Lad', '', 'StrappingYoungLad.jpg', 0),
(10, 2, 'Neurosis', '<ul>\r\n<li><i><a href=\"https://en.wikipedia.org/wiki/Pain_of_Mind\" title=\"Pain of Mind\" target=\"_blank\">Pain of Mind</a></i></li>\r\n<li><i><a href=\"https://en.wikipedia.org/wiki/The_Word_as_Law\" title=\"The Word as Law\" target=\"_blank\">The Word as Law</a></i></li>\r\n<li><i><a href=\"https://en.wikipedia.org/wiki/Souls_at_Zero\" title=\"Souls at Zero\" target=\"_blank\">Souls at Zero</a></i></li>\r\n<li><i><a href=\"https://en.wikipedia.org/wiki/Enemy_of_the_Sun\" title=\"Enemy of the Sun\" target=\"_blank\">Enemy of the Sun</a></i></li>\r\n<li><i><a href=\"https://en.wikipedia.org/wiki/Through_Silver_in_Blood\" title=\"Through Silver in Blood\" target=\"_blank\">Through Silver in Blood</a></i></li>\r\n<li><i><a href=\"https://en.wikipedia.org/wiki/Times_of_Grace_(album)\" title=\"Times of Grace (album)\" target=\"_blank\">Times of Grace</a></i></li>\r\n<li><i><a href=\"https://en.wikipedia.org/wiki/A_Sun_That_Never_Sets\" title=\"A Sun That Never Sets\" target=\"_blank\">A Sun That Never Sets</a></i></li>\r\n<li><i><a href=\"https://en.wikipedia.org/wiki/Neurosis_%26_Jarboe_(album)\" class=\"mw-redirect\" title=\"Neurosis & Jarboe (album)\" target=\"_blank\">Neurosis & Jarboe</a></i></li>\r\n<li><i><a href=\"https://en.wikipedia.org/wiki/The_Eye_of_Every_Storm\" title=\"The Eye of Every Storm\" target=\"_blank\">The Eye of Every Storm</a></i></li>\r\n<li><i><a href=\"https://en.wikipedia.org/wiki/Given_to_the_Rising\" title=\"Given to the Rising\" target=\"_blank\">Given to the Rising</a></i></li>\r\n<li><i><a href=\"https://en.wikipedia.org/wiki/Honor_Found_in_Decay\" title=\"Honor Found in Decay\" target=\"_blank\">Honor Found in Decay</a></i></li>\r\n<li><i><a href=\"https://en.wikipedia.org/wiki/Fires_Within_Fires\" title=\"Fires Within Fires\" target=\"_blank\">Fires Within Fires</a></i></li>\r\n</ul>\r\n', '2018-02-16 21:32:31', '2018-02-16 21:32:31', 'Discography Neurosis', '', 'neurosis.jpg', 0),
(11, 1, 'Arckanum', '<ul>\r\n	<li><em>Fran marder</em>&nbsp;(May 15, 1995) Necropolis</li>\r\n	<li><em>Kostogher</em>&nbsp;(Feb. 20, 1997) Necropolis</li>\r\n	<li><em>Kampen</em>&nbsp;(1998) Necropolis</li>\r\n	<li><em>The 11 Year Anniversary Album</em>&nbsp;(Nov. 1, 2004) Carnal (compilation album)</li>\r\n	<li><em>Antikosmos</em>&nbsp;(June 21, 2008) Debemur Morti/Moribund</li>\r\n	<li><em>&THORN;&THORN;&THORN;&THORN;&THORN;&THORN;&THORN;&THORN;&THORN;&THORN;&THORN;</em>&nbsp;(May 29, 2009) Debemur Morti</li>\r\n	<li><em>Sviga l&aelig;</em>&nbsp;(Oct. 18, 2010) Regain Records</li>\r\n	<li><em>Helv&iacute;tismyrkr</em>&nbsp;(Sept. 16, 2011) Season of Mist<a href=\"https://en.wikipedia.org/wiki/Arckanum#cite_note-5\">[5]</a></li>\r\n	<li><em>Fenris Kindir</em>&nbsp;(May 10, 2013) Season of Mist<a href=\"https://en.wikipedia.org/wiki/Arckanum#cite_note-6\">[6]</a></li>\r\n	<li><em>Den f&ouml;rstf&ouml;dde</em>&nbsp;(September 29th, 2017) Folter Records</li>\r\n</ul>', '2018-03-09 10:30:48', '2018-05-18 11:57:15', 'Discography Archanum', '<p>See you in hell</p>', 'hqdefault.jpg', 0),
(12, 4, 'Slayer', '<ul>\r\n<li><i><a href=\"/wiki/Show_No_Mercy\" title=\"Show No Mercy\">Show No Mercy</a></i></li>\r\n<li><i><a href=\"/wiki/Hell_Awaits\" title=\"Hell Awaits\">Hell Awaits</a></i></li>\r\n<li><i><a href=\"/wiki/Reign_in_Blood\" title=\"Reign in Blood\">Reign in Blood</a></i></li>\r\n<li><i><a href=\"/wiki/South_of_Heaven\" title=\"South of Heaven\">South of Heaven</a></i></li>\r\n<li><i><a href=\"/wiki/Seasons_in_the_Abyss\" title=\"Seasons in the Abyss\">Seasons in the Abyss</a></i></li>\r\n<li><i><a href=\"/wiki/Divine_Intervention_(album)\" title=\"Divine Intervention (album)\">Divine Intervention</a></i></li>\r\n<li><i><a href=\"/wiki/Undisputed_Attitude\" title=\"Undisputed Attitude\">Undisputed Attitude</a></i></li>\r\n<li><i><a href=\"/wiki/Diabolus_in_Musica\" title=\"Diabolus in Musica\">Diabolus in Musica</a></i></li>\r\n<li><i><a href=\"/wiki/God_Hates_Us_All\" title=\"God Hates Us All\">God Hates Us All</a></i></li>\r\n<li><i><a href=\"/wiki/Christ_Illusion\" title=\"Christ Illusion\">Christ Illusion</a></i></li>\r\n<li><i><a href=\"/wiki/World_Painted_Blood\" title=\"World Painted Blood\">World Painted Blood</a></i></li>\r\n<li><i><a href=\"/wiki/Repentless\" title=\"Repentless\">Repentless</a></i></li>\r\n</ul>', '2018-05-10 15:35:54', '2018-05-10 15:35:54', 'Discography Slayer', NULL, 'pri_66702711.jpg', 0),
(13, 1, 'Extreme Noise Terror', '<ul>\r\n<li><i><a href=\"/wiki/A_Holocaust_in_Your_Head\" title=\"A Holocaust in Your Head\">A Holocaust in Your Head</a></i> (1989)</li>\r\n<li><a rel=\"nofollow\" class=\"external text\" href=\"https://www.allmusic.com/album/retro-bution-mw0000235832\"><i>Retro-bution</i></a> (1995)</li>\r\n<li><i>Damage 381</i> (1997)</li>\r\n<li><i><a href=\"/wiki/Being_and_Nothing\" title=\"Being and Nothing\">Being and Nothing</a></i> (2001)</li>\r\n<li><i>Law of Retaliation</i> (2008)</li>\r\n<li><i><a href=\"/wiki/Extreme_Noise_Terror_(album)\" title=\"Extreme Noise Terror (album)\">Extreme Noise Terror</a></i> (2015)</li>\r\n</ul>', '2018-05-11 08:04:12', '2018-05-11 10:20:01', 'Discography E.N.T.', NULL, 'ent.jpg', 0),
(15, 1, 'Deftones', '<ul>\r\n	<li><em><a href=\"/wiki/Adrenaline_(album)\">Adrenaline</a></em></li>\r\n	<li><em><a href=\"/wiki/Around_the_Fur\">Around the Fur</a></em></li>\r\n	<li><em><a href=\"/wiki/White_Pony\">White Pony</a></em></li>\r\n	<li><em><a href=\"/wiki/Deftones_(album)\">Deftones</a></em></li>\r\n	<li><em><a href=\"/wiki/Saturday_Night_Wrist\">Saturday Night Wrist</a></em></li>\r\n	<li><em><a href=\"/wiki/Diamond_Eyes\">Diamond Eyes</a></em></li>\r\n	<li><em><a href=\"/wiki/Koi_No_Yokan\">Koi No Yokan</a></em></li>\r\n	<li><em><a href=\"/wiki/Gore_(album)\">Gore</a></em></li>\r\n</ul>', '2018-05-14 14:48:14', '2018-05-18 11:27:52', 'Discography Deftones', '<p>Toffe subtext</p>', 'deftonesband2016promocolor_638_1526650072.jpg', 0),
(16, 1, 'Rammstein', '<ul>\r\n<li><i><a href=\"/wiki/Herzeleid\" title=\"Herzeleid\">Herzeleid</a></i></li>\r\n<li><i><a href=\"/wiki/Sehnsucht_(Rammstein_album)\" title=\"Sehnsucht (Rammstein album)\">Sehnsucht</a></i></li>\r\n<li><i><a href=\"/wiki/Mutter_(Rammstein_album)\" class=\"mw-redirect\" title=\"Mutter (Rammstein album)\">Mutter</a></i></li>\r\n<li><i><a href=\"/wiki/Reise,_Reise\" title=\"Reise, Reise\">Reise, Reise</a></i></li>\r\n<li><i><a href=\"/wiki/Rosenrot\" title=\"Rosenrot\">Rosenrot</a></i></li>\r\n<li><i><a href=\"/wiki/Liebe_ist_f%C3%BCr_alle_da\" title=\"Liebe ist für alle da\">Liebe ist für alle da</a></i></li>\r\n</ul>', '2018-05-14 15:09:45', '2018-05-14 15:09:45', 'Discography Rammstein', 'jkl', 'Rammstein.jpg', 0),
(17, 1, 'Melvins', '<table class=\"wikitable\">\r\n<tr>\r\n<th>Date of Release</th>\r\n<th>Title</th>\r\n<th>Label</th>\r\n<th>Catalog Number</th>\r\n</tr>\r\n<tr>\r\n<td>1987</td>\r\n<td><i><a href=\"/wiki/Gluey_Porch_Treatments\" title=\"Gluey Porch Treatments\">Gluey Porch Treatments</a></i></td>\r\n<td><a href=\"/wiki/Alchemy_Records_(US)\" class=\"mw-redirect\" title=\"Alchemy Records (US)\">Alchemy Records</a></td>\r\n<td>VM103</td>\r\n</tr>\r\n<tr>\r\n<td>1989</td>\r\n<td><i><a href=\"/wiki/Ozma_(album)\" title=\"Ozma (album)\">Ozma</a></i></td>\r\n<td><a href=\"/wiki/Boner_Records\" title=\"Boner Records\">Boner Records</a></td>\r\n<td>BR16-2</td>\r\n</tr>\r\n<tr>\r\n<td>1991</td>\r\n<td><i><a href=\"/wiki/Bullhead_(album)\" title=\"Bullhead (album)\">Bullhead</a></i></td>\r\n<td><a href=\"/wiki/Boner_Records\" title=\"Boner Records\">Boner Records</a></td>\r\n<td>BR25-2</td>\r\n</tr>\r\n<tr>\r\n<td>1992</td>\r\n<td><i><a href=\"/wiki/Lysol_(album)\" title=\"Lysol (album)\">Lysol (aka Melvins aka Untitled aka Lice-all)</a></i></td>\r\n<td><a href=\"/wiki/Boner_Records\" title=\"Boner Records\">Boner Records</a></td>\r\n<td>BR35-2</td>\r\n</tr>\r\n<tr>\r\n<td>September 21, 1993</td>\r\n<td><i><a href=\"/wiki/Houdini_(album)\" title=\"Houdini (album)\">Houdini</a></i></td>\r\n<td><a href=\"/wiki/Atlantic_Records\" title=\"Atlantic Records\">Atlantic Records</a></td>\r\n<td>82532-2</td>\r\n</tr>\r\n<tr>\r\n<td>August 5, 1994</td>\r\n<td><i><a href=\"/wiki/Prick_(Melvins_album)\" title=\"Prick (Melvins album)\">Prick</a></i></td>\r\n<td><a href=\"/wiki/Amphetamine_Reptile_Records\" title=\"Amphetamine Reptile Records\">Amphetamine Reptile Records</a></td>\r\n<td>AmRep 031</td>\r\n</tr>\r\n<tr>\r\n<td>October 18, 1994</td>\r\n<td><i><a href=\"/wiki/Stoner_Witch\" title=\"Stoner Witch\">Stoner Witch</a></i></td>\r\n<td><a href=\"/wiki/Atlantic_Records\" title=\"Atlantic Records\">Atlantic Records</a></td>\r\n<td>82704-2</td>\r\n</tr>\r\n<tr>\r\n<td>July 15, 1996</td>\r\n<td><i><a href=\"/wiki/Stag_(Melvins_album)\" title=\"Stag (Melvins album)\">Stag</a></i></td>\r\n<td><a href=\"/wiki/Atlantic_Records\" title=\"Atlantic Records\">Atlantic Records</a></td>\r\n<td>82878-2</td>\r\n</tr>\r\n<tr>\r\n<td>May 5, 1997</td>\r\n<td><i><a href=\"/wiki/Honky_(album)\" title=\"Honky (album)\">Honky</a></i></td>\r\n<td><a href=\"/wiki/Amphetamine_Reptile_Records\" title=\"Amphetamine Reptile Records\">Amphetamine Reptile Records</a></td>\r\n<td>AmRep 064-2</td>\r\n</tr>\r\n<tr>\r\n<td>May 17, 1999</td>\r\n<td><i><a href=\"/wiki/The_Maggot\" title=\"The Maggot\">The Maggot</a></i></td>\r\n<td><a href=\"/wiki/Ipecac_Recordings\" title=\"Ipecac Recordings\">Ipecac Recordings</a></td>\r\n<td>IPC-002</td>\r\n</tr>\r\n<tr>\r\n<td>August 23, 1999</td>\r\n<td><i><a href=\"/wiki/The_Bootlicker\" title=\"The Bootlicker\">The Bootlicker</a></i></td>\r\n<td>Ipecac Recordings</td>\r\n<td>IPC-004</td>\r\n</tr>\r\n<tr>\r\n<td>February 7, 2000</td>\r\n<td><i><a href=\"/wiki/The_Crybaby\" title=\"The Crybaby\">The Crybaby</a></i></td>\r\n<td>Ipecac Recordings</td>\r\n<td>IPC-006</td>\r\n</tr>\r\n<tr>\r\n<td>February 6, 2001</td>\r\n<td><i><a href=\"/wiki/Electroretard\" title=\"Electroretard\">Electroretard</a></i></td>\r\n<td><a href=\"/wiki/Man%27s_Ruin_Records\" title=\"Man\'s Ruin Records\">Man\'s Ruin Records</a></td>\r\n<td>MR2002</td>\r\n</tr>\r\n<tr>\r\n<td>April 15, 2002</td>\r\n<td><i><a href=\"/wiki/Hostile_Ambient_Takeover\" title=\"Hostile Ambient Takeover\">Hostile Ambient Takeover</a></i></td>\r\n<td>Ipecac Recordings</td>\r\n<td>IPC-020</td>\r\n</tr>\r\n<tr>\r\n<td>August 23, 2004</td>\r\n<td><i><a href=\"/wiki/Pigs_of_the_Roman_Empire\" title=\"Pigs of the Roman Empire\">Pigs of the Roman Empire</a></i> w/<a href=\"/wiki/Lustmord\" title=\"Lustmord\">Lustmord</a></td>\r\n<td>Ipecac Recordings</td>\r\n<td>IPC-054</td>\r\n</tr>\r\n<tr>\r\n<td>October 19, 2004</td>\r\n<td><i><a href=\"/wiki/Never_Breathe_What_You_Can%27t_See\" title=\"Never Breathe What You Can\'t See\">Never Breathe What You Can\'t See</a></i> w/<a href=\"/wiki/Jello_Biafra\" title=\"Jello Biafra\">Jello Biafra</a></td>\r\n<td><a href=\"/wiki/Alternative_Tentacles\" title=\"Alternative Tentacles\">Alternative Tentacles</a></td>\r\n<td>Virus300</td>\r\n</tr>\r\n<tr>\r\n<td>September 26, 2005</td>\r\n<td><i><a href=\"/wiki/Sieg_Howdy!\" title=\"Sieg Howdy!\">Sieg Howdy!</a></i> w/<a href=\"/wiki/Jello_Biafra\" title=\"Jello Biafra\">Jello Biafra</a></td>\r\n<td><a href=\"/wiki/Alternative_Tentacles\" title=\"Alternative Tentacles\">Alternative Tentacles</a></td>\r\n<td>Virus350</td>\r\n</tr>\r\n<tr>\r\n<td>October 10, 2006</td>\r\n<td><i><a href=\"/wiki/(A)_Senile_Animal\" title=\"(A) Senile Animal\">(A) Senile Animal</a></i></td>\r\n<td>Ipecac Recordings</td>\r\n<td>IPC-082</td>\r\n</tr>\r\n<tr>\r\n<td>July 8, 2008</td>\r\n<td><i><a href=\"/wiki/Nude_with_Boots\" title=\"Nude with Boots\">Nude with Boots</a></i></td>\r\n<td>Ipecac Recordings</td>\r\n<td>IPC-105</td>\r\n</tr>\r\n<tr>\r\n<td>June 1, 2010</td>\r\n<td><i><a href=\"/wiki/The_Bride_Screamed_Murder\" title=\"The Bride Screamed Murder\">The Bride Screamed Murder</a></i></td>\r\n<td>Ipecac Recordings</td>\r\n<td>IPC-112</td>\r\n</tr>\r\n<tr>\r\n<td>June 5, 2012</td>\r\n<td><i><a href=\"/wiki/Freak_Puke\" title=\"Freak Puke\">Freak Puke</a></i></td>\r\n<td>Ipecac Recordings</td>\r\n<td>IPC-136</td>\r\n</tr>\r\n<tr>\r\n<td>April 29, 2013</td>\r\n<td><i><a href=\"/wiki/Everybody_Loves_Sausages\" title=\"Everybody Loves Sausages\">Everybody Loves Sausages</a></i></td>\r\n<td>Ipecac Recordings</td>\r\n<td>IPC-144</td>\r\n</tr>\r\n<tr>\r\n<td>November 5, 2013</td>\r\n<td><i><a href=\"/wiki/Tres_Cabrones\" title=\"Tres Cabrones\">Tres Cabrones</a></i></td>\r\n<td>Ipecac Recordings</td>\r\n<td>IPC-144</td>\r\n</tr>\r\n<tr>\r\n<td>October 14, 2014</td>\r\n<td><i><a href=\"/wiki/Hold_It_In\" title=\"Hold It In\">Hold It In</a></i></td>\r\n<td>Ipecac Recordings</td>\r\n<td>IPC-164</td>\r\n</tr>\r\n<tr>\r\n<td>June 3, 2016</td>\r\n<td><i><a href=\"/wiki/Basses_Loaded\" title=\"Basses Loaded\">Basses Loaded</a></i></td>\r\n<td>Ipecac Recordings</td>\r\n<td>IPM-MB1</td>\r\n</tr>\r\n<tr>\r\n<td>July 7, 2017</td>\r\n<td><i><a href=\"/wiki/A_Walk_with_Love_%26_Death\" title=\"A Walk with Love &amp; Death\">A Walk with Love &amp; Death</a></i></td>\r\n<td>Ipecac Recordings</td>\r\n<td>IPC-195</td>\r\n</tr>\r\n<tr>\r\n<td>April 20, 2018</td>\r\n<td><i><a href=\"/wiki/Pinkus_Abortion_Technician\" title=\"Pinkus Abortion Technician\">Pinkus Abortion Technician</a></i></td>\r\n<td>Ipecac Recordings</td>\r\n<td>IPC-201</td>\r\n</tr>\r\n</table>', '2018-05-15 15:00:16', '2018-05-15 15:00:16', 'Discography Melvins', NULL, 'melvins-2017-tour-dates-north-america-us.png', 0),
(18, 1, 'Grave', '<ul>\r\n	<li><em><a href=\"https://en.wikipedia.org/wiki/Into_the_Grave\">Into the Grave</a></em>&nbsp;(1991)</li>\r\n	<li><em><a href=\"https://en.wikipedia.org/wiki/You%27ll_Never_See%E2%80%A6\">You&#39;ll Never See&hellip;</a></em>&nbsp;(1992)</li>\r\n	<li><em><a href=\"https://en.wikipedia.org/wiki/Soulless_(album)\">Soulless</a></em>&nbsp;(1994)</li>\r\n	<li><em><a href=\"https://en.wikipedia.org/wiki/Hating_Life\">Hating Life</a></em>&nbsp;(1996)</li>\r\n	<li><em><a href=\"https://en.wikipedia.org/wiki/Back_from_the_Grave\">Back from the Grave</a></em>&nbsp;(2002)</li>\r\n	<li><em><a href=\"https://en.wikipedia.org/wiki/Fiendish_Regression\">Fiendish Regression</a></em>&nbsp;(2004)</li>\r\n	<li><em><a href=\"https://en.wikipedia.org/wiki/As_Rapture_Comes\">As Rapture Comes</a></em>&nbsp;(2006)</li>\r\n	<li><em><a href=\"https://en.wikipedia.org/wiki/Dominion_VIII\">Dominion VIII</a></em>&nbsp;(2008)</li>\r\n	<li><em><a href=\"https://en.wikipedia.org/wiki/Burial_Ground_(Grave_album)\">Burial Ground</a></em>&nbsp;(2010)</li>\r\n	<li><em><a href=\"https://en.wikipedia.org/wiki/Endless_Procession_of_Souls\">Endless Procession of Souls</a></em>&nbsp;(2012)</li>\r\n	<li><em>Out of Respect for the Dead</em>&nbsp;(2015)</li>\r\n</ul>', '2018-05-18 12:03:24', '2018-05-18 12:03:24', 'Discography Grave', NULL, 'grave_photo.jpg', 0);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `post_tag`
--

CREATE TABLE `post_tag` (
  `post_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `post_tag`
--

INSERT INTO `post_tag` (`post_id`, `tag_id`) VALUES
(1, 2),
(1, 9),
(2, 2),
(2, 3),
(2, 9),
(3, 4),
(4, 2),
(4, 9),
(5, 8),
(5, 9),
(7, 1),
(7, 2),
(7, 9),
(8, 3),
(8, 9),
(9, 1),
(9, 4),
(10, 5),
(10, 7),
(11, 3),
(11, 9),
(12, 1),
(12, 9),
(13, 5),
(13, 6),
(14, 9),
(15, 9),
(16, 9),
(16, 10),
(17, 1),
(17, 5),
(17, 7),
(18, 2),
(18, 9);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `roles`
--

INSERT INTO `roles` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Senior', '2018-04-23 10:56:59', '2018-04-23 10:56:59'),
(2, 'Huishoudelijke hulp', '2018-04-23 10:56:59', '2018-04-23 10:56:59'),
(3, 'Thuisbezoeker', '2018-04-23 10:56:59', '2018-04-23 10:56:59'),
(4, 'Boodschapper', '2018-04-23 10:56:59', '2018-04-23 10:56:59'),
(5, 'Klusser', '2018-04-23 10:56:59', '2018-04-23 10:56:59'),
(6, 'Hulpverlener', '2018-04-23 10:56:59', '2018-04-23 10:56:59'),
(7, 'Administrator', '2018-04-23 10:56:59', '2018-04-23 10:56:59');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `role_user`
--

CREATE TABLE `role_user` (
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `role_user`
--

INSERT INTO `role_user` (`role_id`, `user_id`) VALUES
(2, 1),
(2, 2),
(2, 3),
(2, 5),
(2, 6),
(3, 2),
(3, 3),
(3, 5),
(3, 6),
(4, 2),
(4, 3),
(4, 5),
(4, 6),
(4, 7),
(5, 1),
(5, 5),
(6, 3),
(7, 1),
(7, 4),
(7, 7);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `tags`
--

CREATE TABLE `tags` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `tags`
--

INSERT INTO `tags` (`id`, `name`) VALUES
(1, 'Thrash'),
(2, 'Death'),
(3, 'Black'),
(4, 'Speedcore'),
(5, 'Hardcore'),
(6, 'Punk'),
(7, 'Noise'),
(8, 'Grindcore'),
(9, 'Metal'),
(10, 'Speed');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `tasks`
--

CREATE TABLE `tasks` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `body` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `firstname` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lastname` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `street` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `streetnumber` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zipcode` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `place` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telephone` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `intro` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`, `firstname`, `lastname`, `street`, `streetnumber`, `zipcode`, `place`, `telephone`, `intro`) VALUES
(1, 'LieuweJelle', 'l.j.van.der.meulen@gmail.com', '$2y$10$fqO0PIPy5aHNO9FVXsFobeKJ8gsGFs/6fwV868FVBt3IMJZGEtskW', '0Zsn8jFdfdXidWGlLwNGFpo8SRIClYSdNJeVYANWVEnhfIvLkN949MUo4SxZ', '2018-04-23 10:58:28', '2018-05-07 06:59:31', 'Lieuwe Jelle', 'van der Meulen', 'Bedumerweg', '84', '9716AG', 'Groningen', '0612345678', 'Hallo, mijn naam is LieuweJelle!'),
(2, 'Gepper', 'gepper@home.nl', 'slayer', NULL, '2018-05-05 06:28:23', '2018-05-07 08:50:47', 'Gepkinus', 'Brouwer', 'Noorderstraat', '10', '9716AG', 'Groningen', '0612345678', 'Gepper hierzoot.'),
(3, 'Henkie', 'henk@home.nl', 'slayer', NULL, '2018-05-07 05:28:31', '2018-05-07 11:57:17', 'Henk', 'Troudes', 'Hoendiep', '123', '9718KL', 'Groningen', '0612345678', 'HoyHenkHier'),
(4, 'Jcuperus', 'jaepcuperus@hotmail.com', '$2y$10$3fgwxDSms1lBEE2DKaftT.dUH68a.saQgF3lWHerSMbFccxxNLqYK', 'LPn2BymI4BKQzTpBU2uhNQyJK2UCR8pueCNNvSGW8i6kkMTmMMR8v0Wmw0vo', '2018-05-08 09:11:30', '2018-05-13 14:09:59', 'Jaep', 'Cuperus', 'Achterweg', '1', '9000AB', 'Groningen', '0612345678', 'Hallo'),
(5, 'Pietsie', 'p@home.nl', '$2y$10$rMnP3CGccPsLa00sb.KeSedKAn4FY3/jPw7AubjYnGjwaUxDaaKia', NULL, '2018-05-13 14:26:44', '2018-05-13 14:26:44', 'Petra', 'Holverda', 'Stappersteeg', '34', '2222GG', 'Britsum', '0612345678', 'Mag graag schoonmaken.'),
(6, 'jan', 'j@j.nl', '$2y$10$arcnn90kjFEDv2BSsHkPwej2f4ubQdn1Ql6sASPz7u0vyHpfIobRi', NULL, '2018-05-14 05:38:06', '2018-05-14 05:38:06', 'Jan Peter', 'Jansen', 'Stappersteeg', '11', '1111aa', 'Groningen', '0612345678', 'Schoonmaken is leuk'),
(7, 'L.J. van der Meulen', 'l@l.nl', '$2y$10$RPFgWdcywcXzf6J4xZvdJuaDl.JliC9CvXIFzPBVHNmafg0Y1PK4e', NULL, '2018-05-14 06:07:41', '2018-05-14 06:07:41', 'leo', 'van der Meulen', 'Bedumerweg 84', '34', '9716AG', 'Groningen', '0612345678', 'hoy');

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexen voor tabel `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `post_tag`
--
ALTER TABLE `post_tag`
  ADD PRIMARY KEY (`post_id`,`tag_id`);

--
-- Indexen voor tabel `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexen voor tabel `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`role_id`,`user_id`);

--
-- Indexen voor tabel `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT voor een tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT voor een tabel `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT voor een tabel `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT voor een tabel `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT voor een tabel `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
