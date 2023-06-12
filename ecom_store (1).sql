-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : lun. 12 juin 2023 à 21:23
-- Version du serveur : 10.4.27-MariaDB
-- Version de PHP : 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `ecom_store`
--

-- --------------------------------------------------------

--
-- Structure de la table `admins`
--

CREATE TABLE `admins` (
  `admin_id` int(10) NOT NULL,
  `admin_name` varchar(255) NOT NULL,
  `admin_email` varchar(255) NOT NULL,
  `admin_pass` varchar(255) NOT NULL,
  `admin_image` text NOT NULL,
  `admin_country` text NOT NULL,
  `admin_about` text NOT NULL,
  `admin_contact` varchar(255) NOT NULL,
  `admin_job` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `admins`
--

INSERT INTO `admins` (`admin_id`, `admin_name`, `admin_email`, `admin_pass`, `admin_image`, `admin_country`, `admin_about`, `admin_contact`, `admin_job`) VALUES
(1, 'NOUR_EDDINE', 'suptviptv5@gmail.com', '123456789', 'photo2.jpg', 'Maroc', 'WEB DEVELOPPEUR', '0708505557', 'WEB DEVELOPPEUR');

-- --------------------------------------------------------

--
-- Structure de la table `boxes_section`
--

CREATE TABLE `boxes_section` (
  `box_id` int(10) NOT NULL,
  `box_title` text NOT NULL,
  `box_desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `boxes_section`
--

INSERT INTO `boxes_section` (`box_id`, `box_title`, `box_desc`) VALUES
(1, 'MEILLEUR PRIX', ' produit bien structurée est organisée C’est particulièrement important si vous décidez de vendre vos produits dans le cadre de ventes flash'),
(2, 'MEILLEUR QUALITE', 'Le respect est l\'autre qualité où l\'on dénote des écarts importants .\r\nLa garantie du meilleur prix pour la meilleure qualité y est ainsi pour quelque chose, bien sûr. \r\n'),
(3, 'SALE 100 %', 'Gagner des coupon jusqu\'a 100 %\r\ndes promotions saisonieres .');

-- --------------------------------------------------------

--
-- Structure de la table `cart`
--

CREATE TABLE `cart` (
  `p_id` int(10) NOT NULL,
  `ip_add` varchar(255) NOT NULL,
  `qty` int(10) NOT NULL,
  `size` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `cart`
--

INSERT INTO `cart` (`p_id`, `ip_add`, `qty`, `size`) VALUES
(7, '::1', 3, 'Argenter'),
(8, '::1', 1, '');

-- --------------------------------------------------------

--
-- Structure de la table `customers`
--

CREATE TABLE `customers` (
  `customer_id` int(10) NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `customer_email` varchar(255) NOT NULL,
  `customer_pass` varchar(255) NOT NULL,
  `customer_country` text NOT NULL,
  `customer_city` text NOT NULL,
  `customer_contact` varchar(255) NOT NULL,
  `customer_address` text NOT NULL,
  `customer_image` text NOT NULL,
  `customer_ip` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `customers`
--

INSERT INTO `customers` (`customer_id`, `customer_name`, `customer_email`, `customer_pass`, `customer_country`, `customer_city`, `customer_contact`, `customer_address`, `customer_image`, `customer_ip`) VALUES
(2, 'BOUCHIKHI NOUR EDDINE', 'nourbouchieddinekhi@gmail.com', '123456789', 'MAROC', 'OUJDA', '0708505557', 'HAY SALAM AOUINT SERAK LOT AQUEL RUE K2 NUM 11 OUJDA', 'portrait-homme-blanc-isole_53876-40306 (1).jpg', '::1');

-- --------------------------------------------------------

--
-- Structure de la table `customer_orders`
--

CREATE TABLE `customer_orders` (
  `order_id` int(10) NOT NULL,
  `customer_id` int(10) NOT NULL,
  `due_amount` int(100) NOT NULL,
  `invoice_no` int(100) NOT NULL,
  `qty` int(10) NOT NULL,
  `size` text NOT NULL,
  `order_date` date NOT NULL,
  `order_status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `customer_orders`
--

INSERT INTO `customer_orders` (`order_id`, `customer_id`, `due_amount`, `invoice_no`, `qty`, `size`, `order_date`, `order_status`) VALUES
(10, 1, 479, 622556589, 1, '', '2022-07-17', 'pending'),
(11, 2, 499, 53109138, 1, '', '2022-07-18', 'pending'),
(12, 2, 499, 97985127, 1, '', '2022-07-18', 'pending'),
(13, 2, 499, 720300745, 1, '', '2022-07-18', 'pending'),
(14, 2, 499, 527362116, 1, '', '2022-07-18', 'pending'),
(15, 2, 1599, 2145437948, 1, '', '2022-07-18', 'pending'),
(16, 2, 1400, 1204216704, 1, '', '2022-07-18', 'pending');

-- --------------------------------------------------------

--
-- Structure de la table `payments`
--

CREATE TABLE `payments` (
  `payment_id` int(10) NOT NULL,
  `invoice_no` int(10) NOT NULL,
  `amount` int(10) NOT NULL,
  `payment_mode` text NOT NULL,
  `ref_no` int(10) NOT NULL,
  `code` int(10) NOT NULL,
  `payment_date` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `payments`
--

INSERT INTO `payments` (`payment_id`, `invoice_no`, `amount`, `payment_mode`, `ref_no`, `code`, `payment_date`) VALUES
(16, 53109138, 0, 'visa', 3323, 42322, '2022-07-18'),
(17, 53109138, 0, 'visa', 3323, 42322, '2022-07-18'),
(18, 53109138, 0, 'visa', 3323, 42322, '2022-07-18'),
(19, 53109138, 0, 'visa', 3323, 42322, '2022-07-18'),
(20, 53109138, 0, 'visa', 3323, 42322, '2022-07-18');

-- --------------------------------------------------------

--
-- Structure de la table `pending_orders`
--

CREATE TABLE `pending_orders` (
  `order_id` int(10) NOT NULL,
  `customer_id` int(10) NOT NULL,
  `invoice_no` int(10) NOT NULL,
  `product_id` text NOT NULL,
  `qty` int(10) NOT NULL,
  `size` text NOT NULL,
  `order_status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `pending_orders`
--

INSERT INTO `pending_orders` (`order_id`, `customer_id`, `invoice_no`, `product_id`, `qty`, `size`, `order_status`) VALUES
(6, 2, 2145437948, '5', 1, '', 'pending'),
(7, 2, 1204216704, '7', 1, '', 'pending');

-- --------------------------------------------------------

--
-- Structure de la table `products`
--

CREATE TABLE `products` (
  `product_id` int(10) NOT NULL,
  `p_cat_id` int(10) NOT NULL,
  `manufacturer_id` int(10) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `product_title` text NOT NULL,
  `product_img1` text NOT NULL,
  `product_img2` text NOT NULL,
  `product_img3` text NOT NULL,
  `product_price` int(10) NOT NULL,
  `product_keywords` text NOT NULL,
  `product_desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `products`
--

INSERT INTO `products` (`product_id`, `p_cat_id`, `manufacturer_id`, `date`, `product_title`, `product_img1`, `product_img2`, `product_img3`, `product_price`, `product_keywords`, `product_desc`) VALUES
(3, 1, 0, '2022-07-11 18:14:08', 'Pc Portable Gaming', 'photo1.jpg', 'photo2.jpg', 'photo3.jpg', 399, 'Pc Portable Gaming', '<p>GPU: carte graphique Intel HD</p>\r\n<p>M&eacute;moire: 16 go + / 256 go/512 go/1 to/2 to</p>\r\n<p>OS: Windows 10 / Windows 11</p>\r\n<p>Cam&eacute;ra: Avant 0.3MP</p>\r\n<p>HDMI/clavier r&eacute;tro&eacute;clair&eacute;/Bluetooth 4.0 / Intel 2.4G/5G double canal WIFI , BT 4.0</p>\r\n<p>Options de Configuration</p>\r\n<p>N5095 16 GO RAM DDR4</p>'),
(4, 2, 0, '2022-07-11 18:18:32', 'PC portable Lenovo IdeaPad', 'photo12.webp', 'photo22.webp', 'photo42.jpg', 999, 'PC portable Lenovo IdeaPad', '<p>1) 14/15.6 pouces FHD &eacute;cran Mat, anti-&eacute;blouissantes</p>\r\n<p>2) processeur AMD s&eacute;rie 5000 7nm</p>\r\n<p>3) batterie de grande capacit&eacute;</p>\r\n<p>4) type-c, USB2.0, HDMI, lecteur de carte</p>'),
(5, 8, 0, '2022-07-11 18:26:41', 'Xiaomi – pc portable MX350 Version globale', 'photo18.jpg', 'photo28.jpg', 'photo38.jpg', 1599, 'Xiaomi – pc portable MX350 Version globale', '<p>Pays inclus: f&eacute;d&eacute;ration de russie, espagne, France, italie, allemagne, pologne, Portugal, pays-bas, belgique, irlande, lituanie, hongrie, autriche, r&eacute;publique tch&egrave;que, su&egrave;de, espagne,&nbsp;danemark, bulgarie, slovaquie, slov&eacute;nie, finlande, croatie, lettonie, danemark, gr&egrave;ce, roumanie, &eacute;tats-unis,maroc.</p>'),
(6, 5, 0, '2022-07-11 18:31:11', 'hp-elitebook-840-g3', 'photo15.jpg', 'photo35.jpg', 'photo25.jpg', 400, 'pc-portable-14-hp-elitebook-840-g3', '<p>PC Portable reconditionn&eacute; HP Elite Book 840 G3 - Clavier FR AZERTY - Core i5-6300 2.40GHz (Turbo 3GHz) - 8Go DDR3 - 1To SSD - Produit reconditionn&eacute; .</p>'),
(7, 4, 0, '2022-07-11 18:36:34', 'Dell Latitude 3420', 'photo14.jpg', 'photo24.jpg', 'photo34.jpg', 1400, 'Dell Latitude 3420', '<p>Performances rapides : les processeurs allant jusqu&rsquo;&agrave; Intel&reg; Core&trade; i7 TGL-U de 11e g&eacute;n&eacute;ration offrent aux entreprises les performances, la facilit&eacute; de gestion</p>\r\n<p>Connectez-vous partout : travaillez en toute fluidit&eacute; lors de vos d&eacute;placements gr&acirc;ce &agrave; la technologie eSIM et au haut d&eacute;bit mobile LTE (en option) offrant des vitesses allant jusqu&rsquo;&agrave; 450 Mbit/s.&nbsp;</p>\r\n<p>Ports polyvalents : compatible avec plus d&rsquo;&eacute;crans et d&rsquo;accessoires, cet ordinateur offre une gamme compl&egrave;te de ports disponibles</p>\r\n<p>D&eacute;marrage rapide : d&eacute;marrez instantan&eacute;ment avec un lecteur d&rsquo;empreintes digitales int&eacute;gr&eacute; au bouton d&rsquo;alimentation.</p>\r\n<p>Grande autonomie : soyez plus efficace avec les options de batteries faible densit&eacute; &agrave; 3 ou 4 cellules.</p>'),
(8, 0, 0, '2022-07-11 18:48:34', 'DERE – Pc Portable R9 ', 'photo13.webp', 'photo23.webp', 'photo33.webp', 479, 'DERE – Pc Portable R9 Pro', 'Nombre de conducteurs: 4 noyaux et 4 fils\r\nFréquence: 2.0 GHz à 2.90 GHz\r\nProcessus: 10nm'),
(9, 0, 0, '2022-07-11 18:55:39', ' Dere V14S Ordinateur', 'photo17.jpg', 'photo27.jpg', 'photo37.jpg', 499, 'Ordinateur portable Dere V14S', 'Modèle: v14s\r\nTaille: 14,1 pouces\r\nMatériel: Plastique METAL / B ACD\r\nSystème d\'exploitation: Windows 10\r\nAffichage: 1920 * 1080'),
(10, 0, 0, '2022-07-11 18:55:39', ' TOPOSH PC Notebook', 'photo16.jpg', 'photo26.jpg', 'photo36.jpg', 499, 'Ordinateur TOPOSH PC Notebook', 'PROCESSEUR CPU & SYSTEME DE REFROIDISSEMENT: Le système de refroidissement à double tubes de cuivre permet une dissipation thermique rapide sans réduction de fréquence du netbook.\r\nEt grâce à l\'utilisation du processeur de haut de gamme Intel Celeron N5095');

-- --------------------------------------------------------

--
-- Structure de la table `product_categories`
--

CREATE TABLE `product_categories` (
  `p_cat_id` int(10) NOT NULL,
  `p_cat_title` text NOT NULL,
  `p_cat_desc` text NOT NULL,
  `p_cat_image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `product_categories`
--

INSERT INTO `product_categories` (`p_cat_id`, `p_cat_title`, `p_cat_desc`, `p_cat_image`) VALUES
(1, 'Toposh Gaming ', ' CPU: Intel generation celeron N5095\r\n\r\nGPU: carte graphique Intel HD\r\n\r\nMémoire: 16 go + / 256 go/512 go/1 to/2 to\r\n\r\nOS: Windows 10 / Windows 11\r\n\r\nCaméra: Avant 0.3MP\r\n\r\nHDMI/clavier rétroéclairé/Bluetooth 4.0 / Intel 2.4G/5G double canal WIFI , BT 4.0\r\n\r\nOptions de Configuration\r\nN5095 16 GO RAM DDR4', './PFEE/PFE/admin_area/product_images/article1/photo1.jpg'),
(2, 'Lenovo IdeaPad', '1) 14/15.6 pouces FHD écran Mat, anti-éblouissantes\r\n\r\n2) processeur AMD série 5000 7nm\r\n\r\n3) batterie de grande capacité\r\n\r\n4) type-c, USB2.0, HDMI, lecteur de carte', './PFEE/PFE/admin_area/product_images/article2/photo1.webp'),
(3, 'DERE – Pc Portable', 'Informations sur le produit\r\n\r\nModèle: R9 pro ordinateur portable\r\nMatériel: ABS en plastique\r\nCouleur: Argent/Noir/Rouge\r\nProcesseur: Intel Celeron N5095\r\nGraphiques: Intel®Ultra HD Graphique\r\nCaméra: 0.3MP\r\nSystème d\'exploitation: Windows 10\r\n\r\nProcesseur\r\n\r\nModèle: Intel®Celeron N5095\r\nNombre de conducteurs: 4 noyaux et 4 fils\r\nFréquence: 2.0 GHz à 2.90 GHz\r\nProcessus: 10nm\r\n\r\nCarte graphique\r\n\r\nModèle: Intel®UHD Graphique\r\nFréquence: 350 MHz-750 MHz\r\n4k décodage: le soutien à jouer 4K vidéo', './PFEE/PFE/admin_area/product_images/article3/photo1.webp'),
(4, 'Dell Latitude', 'Performances rapides : les processeurs allant jusqu’à Intel® Core™ i7 TGL-U de 11e génération offrent aux entreprises les performances, la facilité de gestion, les fonctions de sécurité intégrées et la stabilité d’Intel®, et s’alignent sur un calendrier de lancement évolutif. Téléchargez et exécutez en toute fluidité des applications exigeantes en ressources graphiques avec la carte graphique NVIDIA MX450 en option.\r\n\r\nConnectez-vous partout : travaillez en toute fluidité lors de vos déplacements grâce à la technologie eSIM et au haut débit mobile LTE (en option) offrant des vitesses allant jusqu’à 450 Mbit/s. La fonctionnalité Intel® Wi-Fi 6 offre une connectivité fiable, des vitesses élevées et une sécurité de nouvelle génération pour les PC et les réseaux sans fil*.\r\n\r\nPorts polyvalents : compatible avec plus d’écrans et d’accessoires, cet ordinateur offre une gamme complète de ports disponibles, comme USB-C™ 3.2 Gen 2 (x2) et des ports existants tels que HDMI et RJ45.\r\n\r\nDémarrage rapide : démarrez instantanément avec un lecteur d’empreintes digitales intégré au bouton d’alimentation.\r\n\r\nGrande autonomie : soyez plus efficace avec les options de batteries faible densité à 3 ou 4 cellules.', './PFEE/PFE/admin_area/product_images/article4/photo1.jpg'),
(5, 'hp-elitebook', 'PC Portable reconditionné HP Elite Book 840 G3 - Clavier FR AZERTY - Core i5-6300 2.40GHz (Turbo 3GHz) - 8Go DDR3 - 1To SSD - Produit reconditionné .', './PFEE/PFE/admin_area/product_images/article5/photo1.jpg'),
(6, ' TOPOSH PC Notebook ', 'COMPATIBILITY DU SYSTEME: Le notebook ordinateur portable est compatible avec le système d\'exploitation Windows 10,\r\n doté d\'un écran de 14 pouces qui dispose d\'une bonne luminosité, et d\'une résolution FullHD 1920 X 1080 pixels.\r\n\r\nPROCESSEUR CPU & SYSTEME DE REFROIDISSEMENT: Le système de refroidissement à double tubes de cuivre permet une dissipation thermique rapide sans réduction de fréquence du netbook.\r\nEt grâce à l\'utilisation du processeur de haut de gamme Intel Celeron N5095,\r\n la vitesse de traitement du logiciel est fluide avec une consommation et une dissipation thermique très faibles, l\'appareil est donc TOTALEMENT silencieux.\r\n\r\nUTILISATION BUREAUTIQUE: Le PC portable 14 pouces convient aux logiciels bureautiques, PS, Ai, DW etc... Ce modèle est un bon choix si vous appliquez des filtres Photoshop sur plusieurs couches,\r\nune modélisation 3D ou une expérience de jeu décente comme Plants vs Zombies, Minecraft, jeux éducatifs, jeux de cartes, échecs, dames, jeux de société par example.\r\n\r\nSPECIFICATIONS & STOCKAGE EXTENSIBLE: Ce modèle est doté d\'un caméra HD de 2 MégaPixels et d\'une mémoire RAM de 12 Go.\r\n Sa mémoire ROM SSD de 256 Go peut être complétée par une carte SSD M.2 d\'une capacité allant jusqu\'à 2 To.\r\n La batterie dispose d\'une capacité de 5000 mAh et d\'une autonomie moyen de 3 à 4h.\r\n\r\nCOTES CONNECTIQUES & CLAVIER RETRO ECLAIRE: On a un port USB 3.0, un port TF slot qui peut aussi servir d\'extension du stockage ROM,\r\n une prise DC 3.5 x 1.35 x 10 mm et un port Type-C. Doté d\'un clavier rétro éclairé d\'agencement US QWERTY.\r\n En plus, vous pouvez choisir la langue de saisie du clavier parmi les nombreuses langues nationales dans les paramètres en fonction de vos habitudes.', './PFEE/PFE/admin_area/product_images/article6/photo1.jpg'),
(7, 'Dere V14S ', '1. La langue du clavier est le clavier anglais, mais nous donnerons la membrane clavier russe, espagnol, français, allemand, italien, arabe\r\n2. Vous devez payer votre propre impôt pour l\'expédition de la Chine et vous n\'avez pas besoin de payer la taxe pour l\'expédition d\'Espagne et de Russie.\r\n3. Nous avons trois types de bouchons américains, des bouchons britanniques et des bouchons européens. Nous enverrons la fiche selon votre pays. Si vous avez des besoins particuliers, laissez-nous un message.\r\n4. Nous recommandons aux clients d\'enregistrer une vidéo lors de l\'ouverture du package. Ceci est une preuve importante si le colis a été endommagé par la compagnie de navigation.\r\nParamètres du produit:\r\nModèle: v14s\r\nTaille: 14,1 pouces\r\nMatériel: Plastique METAL / B ACD\r\nSystème d\'exploitation: Windows 10\r\nAffichage: 1920 * 1080\r\nCPU: Intel® Celeron® N5095 (4 Core 2.9 GHz)\r\nGraphiques: Intel Uhd Graphics 620\r\nMémoire: 12GB / LPDDR4x / intégré Non DDR Slot\r\nStockage: 256 Go / m.2 (512 Go en option)\r\nClavier: 87 claviers rétro-éclairés\r\nWiFi: 2.4g WiFi / 5G WiFi (802.11A // B / G / N / AC)\r\nBluetooth: 4.0\r\nCaméra avant: 1mp\r\nCadeaux gratuits lors de la commande de produits\r\nSouris filaire * 1\r\n7 Langues Couverture du clavier * 1\r\nHub * 1\r\nPad de souris * 1', './PFEE/PFE/admin_area/product_images/article7/photo1.jpg'),
(8, 'Xiaomi Version globale', '•Choisissez l\'expédition depuis la chine pour plus de 150 €, produit sans tva et droits de douane (pays ci-dessous):\r\n•Pays inclus: fédération de russie, espagne, France, italie, allemagne, pologne, Portugal, pays-bas, belgique, irlande, lituanie, hongrie, autriche, république tchèque, suède, espagne,\r\n danemark, bulgarie, slovaquie, slovénie, finlande, croatie, lettonie, danemark, grèce, roumanie, états-unis,maroc.', './PFEE/PFE/admin_area/product_images/article8/photo1.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `slider`
--

CREATE TABLE `slider` (
  `slide_id` int(10) NOT NULL,
  `slide_name` varchar(255) NOT NULL,
  `slide_image` text NOT NULL,
  `slide_url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `slider`
--

INSERT INTO `slider` (`slide_id`, `slide_name`, `slide_image`, `slide_url`) VALUES
(1, 'slide-12.jpg', 'slide-12.jpg', 'http://localhost/PFEE/PFE/admin_area/slides_images/slide-12.jpg'),
(2, 'slide-42.jpg', 'slide-42.jpg', 'http://localhost/PFEE/PFE/admin_area/slides_images/slide-42.jpg'),
(3, 'slide-32.jpg', 'slide-32.jpg', 'http://localhost/PFEE/PFE/admin_area/slides_images/slide-32.jpg'),
(4, 'slide-222.jpg', 'slide-222.jpg', 'http://localhost/PFEE/PFE/admin_area/slides_images/slide-222.jpg');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`admin_id`);

--
-- Index pour la table `boxes_section`
--
ALTER TABLE `boxes_section`
  ADD PRIMARY KEY (`box_id`);

--
-- Index pour la table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`p_id`);

--
-- Index pour la table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customer_id`);

--
-- Index pour la table `customer_orders`
--
ALTER TABLE `customer_orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Index pour la table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`payment_id`);

--
-- Index pour la table `pending_orders`
--
ALTER TABLE `pending_orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Index pour la table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Index pour la table `product_categories`
--
ALTER TABLE `product_categories`
  ADD PRIMARY KEY (`p_cat_id`);

--
-- Index pour la table `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`slide_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `admins`
--
ALTER TABLE `admins`
  MODIFY `admin_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `boxes_section`
--
ALTER TABLE `boxes_section`
  MODIFY `box_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `cart`
--
ALTER TABLE `cart`
  MODIFY `p_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `customers`
--
ALTER TABLE `customers`
  MODIFY `customer_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `customer_orders`
--
ALTER TABLE `customer_orders`
  MODIFY `order_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT pour la table `payments`
--
ALTER TABLE `payments`
  MODIFY `payment_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT pour la table `pending_orders`
--
ALTER TABLE `pending_orders`
  MODIFY `order_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `p_cat_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `slider`
--
ALTER TABLE `slider`
  MODIFY `slide_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
